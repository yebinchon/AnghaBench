; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/mtkswitch/extr_mtkswitch_rt3050.c_mtkswitch_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/mtkswitch/extr_mtkswitch_rt3050.c_mtkswitch_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtkswitch_softc = type { i32 }

@MA_NOTOWNED = common dso_local global i32 0, align 4
@MTKSWITCH_STRT = common dso_local global i32 0, align 4
@STRT_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtkswitch_softc*)* @mtkswitch_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtkswitch_reset(%struct.mtkswitch_softc* %0) #0 {
  %2 = alloca %struct.mtkswitch_softc*, align 8
  store %struct.mtkswitch_softc* %0, %struct.mtkswitch_softc** %2, align 8
  %3 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %4 = load i32, i32* @MA_NOTOWNED, align 4
  %5 = call i32 @MTKSWITCH_LOCK_ASSERT(%struct.mtkswitch_softc* %3, i32 %4)
  %6 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %7 = call i32 @MTKSWITCH_LOCK(%struct.mtkswitch_softc* %6)
  %8 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %9 = load i32, i32* @MTKSWITCH_STRT, align 4
  %10 = load i32, i32* @STRT_RESET, align 4
  %11 = call i32 @MTKSWITCH_WRITE(%struct.mtkswitch_softc* %8, i32 %9, i32 %10)
  br label %12

12:                                               ; preds = %17, %1
  %13 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %14 = load i32, i32* @MTKSWITCH_STRT, align 4
  %15 = call i64 @MTKSWITCH_READ(%struct.mtkswitch_softc* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %12

18:                                               ; preds = %12
  %19 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %20 = call i32 @MTKSWITCH_UNLOCK(%struct.mtkswitch_softc* %19)
  ret i32 0
}

declare dso_local i32 @MTKSWITCH_LOCK_ASSERT(%struct.mtkswitch_softc*, i32) #1

declare dso_local i32 @MTKSWITCH_LOCK(%struct.mtkswitch_softc*) #1

declare dso_local i32 @MTKSWITCH_WRITE(%struct.mtkswitch_softc*, i32, i32) #1

declare dso_local i64 @MTKSWITCH_READ(%struct.mtkswitch_softc*, i32) #1

declare dso_local i32 @MTKSWITCH_UNLOCK(%struct.mtkswitch_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
