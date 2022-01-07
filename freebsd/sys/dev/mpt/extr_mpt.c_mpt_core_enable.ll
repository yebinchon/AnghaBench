; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt.c_mpt_core_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt.c_mpt_core_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i32 }

@MPT_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"failed to enable port 0\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpt_softc*)* @mpt_core_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpt_core_enable(%struct.mpt_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mpt_softc*, align 8
  store %struct.mpt_softc* %0, %struct.mpt_softc** %3, align 8
  %4 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %5 = call i32 @MPT_LOCK(%struct.mpt_softc* %4)
  %6 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %7 = call i32 @mpt_send_event_request(%struct.mpt_softc* %6, i32 1)
  %8 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %9 = call i32 @mpt_intr(%struct.mpt_softc* %8)
  %10 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %11 = call i32 @mpt_enable_ints(%struct.mpt_softc* %10)
  %12 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %13 = call i32 @mpt_intr(%struct.mpt_softc* %12)
  %14 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %15 = call i64 @mpt_send_port_enable(%struct.mpt_softc* %14, i32 0)
  %16 = load i64, i64* @MPT_OK, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %20 = call i32 @mpt_prt(%struct.mpt_softc* %19, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %22 = call i32 @MPT_UNLOCK(%struct.mpt_softc* %21)
  %23 = load i32, i32* @ENXIO, align 4
  store i32 %23, i32* %2, align 4
  br label %27

24:                                               ; preds = %1
  %25 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %26 = call i32 @MPT_UNLOCK(%struct.mpt_softc* %25)
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %24, %18
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @MPT_LOCK(%struct.mpt_softc*) #1

declare dso_local i32 @mpt_send_event_request(%struct.mpt_softc*, i32) #1

declare dso_local i32 @mpt_intr(%struct.mpt_softc*) #1

declare dso_local i32 @mpt_enable_ints(%struct.mpt_softc*) #1

declare dso_local i64 @mpt_send_port_enable(%struct.mpt_softc*, i32) #1

declare dso_local i32 @mpt_prt(%struct.mpt_softc*, i8*) #1

declare dso_local i32 @MPT_UNLOCK(%struct.mpt_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
