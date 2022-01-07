; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx.c_ahc_force_renegotiation.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx.c_ahc_force_renegotiation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i32 }
%struct.ahc_devinfo = type { i32, i32, i32 }
%struct.ahc_initiator_tinfo = type { i32 }
%struct.ahc_tmode_tstate = type { i32 }

@AHC_NEG_IF_NON_ASYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahc_softc*, %struct.ahc_devinfo*)* @ahc_force_renegotiation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahc_force_renegotiation(%struct.ahc_softc* %0, %struct.ahc_devinfo* %1) #0 {
  %3 = alloca %struct.ahc_softc*, align 8
  %4 = alloca %struct.ahc_devinfo*, align 8
  %5 = alloca %struct.ahc_initiator_tinfo*, align 8
  %6 = alloca %struct.ahc_tmode_tstate*, align 8
  store %struct.ahc_softc* %0, %struct.ahc_softc** %3, align 8
  store %struct.ahc_devinfo* %1, %struct.ahc_devinfo** %4, align 8
  %7 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %8 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %9 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %12 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %15 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.ahc_initiator_tinfo* @ahc_fetch_transinfo(%struct.ahc_softc* %7, i32 %10, i32 %13, i32 %16, %struct.ahc_tmode_tstate** %6)
  store %struct.ahc_initiator_tinfo* %17, %struct.ahc_initiator_tinfo** %5, align 8
  %18 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %19 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %20 = load %struct.ahc_tmode_tstate*, %struct.ahc_tmode_tstate** %6, align 8
  %21 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %5, align 8
  %22 = load i32, i32* @AHC_NEG_IF_NON_ASYNC, align 4
  %23 = call i32 @ahc_update_neg_request(%struct.ahc_softc* %18, %struct.ahc_devinfo* %19, %struct.ahc_tmode_tstate* %20, %struct.ahc_initiator_tinfo* %21, i32 %22)
  ret void
}

declare dso_local %struct.ahc_initiator_tinfo* @ahc_fetch_transinfo(%struct.ahc_softc*, i32, i32, i32, %struct.ahc_tmode_tstate**) #1

declare dso_local i32 @ahc_update_neg_request(%struct.ahc_softc*, %struct.ahc_devinfo*, %struct.ahc_tmode_tstate*, %struct.ahc_initiator_tinfo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
