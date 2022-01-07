; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_amd.c_amd_link_hb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_amd.c_amd_link_hb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_ntb_softc = type { i32, i32 }

@AMD_LINK_HB_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @amd_link_hb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amd_link_hb(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.amd_ntb_softc*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.amd_ntb_softc*
  store %struct.amd_ntb_softc* %5, %struct.amd_ntb_softc** %3, align 8
  %6 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %3, align 8
  %7 = call i64 @amd_ntb_poll_link(%struct.amd_ntb_softc* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %3, align 8
  %11 = getelementptr inbounds %struct.amd_ntb_softc, %struct.amd_ntb_softc* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @ntb_link_event(i32 %12)
  br label %14

14:                                               ; preds = %9, %1
  %15 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %3, align 8
  %16 = call i32 @amd_link_is_up(%struct.amd_ntb_softc* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %14
  %19 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %3, align 8
  %20 = getelementptr inbounds %struct.amd_ntb_softc, %struct.amd_ntb_softc* %19, i32 0, i32 0
  %21 = load i32, i32* @AMD_LINK_HB_TIMEOUT, align 4
  %22 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %3, align 8
  %23 = call i32 @callout_reset(i32* %20, i32 %21, void (i8*)* @amd_link_hb, %struct.amd_ntb_softc* %22)
  br label %31

24:                                               ; preds = %14
  %25 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %3, align 8
  %26 = getelementptr inbounds %struct.amd_ntb_softc, %struct.amd_ntb_softc* %25, i32 0, i32 0
  %27 = load i32, i32* @AMD_LINK_HB_TIMEOUT, align 4
  %28 = mul nsw i32 %27, 10
  %29 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %3, align 8
  %30 = call i32 @callout_reset(i32* %26, i32 %28, void (i8*)* @amd_link_hb, %struct.amd_ntb_softc* %29)
  br label %31

31:                                               ; preds = %24, %18
  ret void
}

declare dso_local i64 @amd_ntb_poll_link(%struct.amd_ntb_softc*) #1

declare dso_local i32 @ntb_link_event(i32) #1

declare dso_local i32 @amd_link_is_up(%struct.amd_ntb_softc*) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.amd_ntb_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
