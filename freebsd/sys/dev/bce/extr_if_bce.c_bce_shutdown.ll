; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bce/extr_if_bce.c_bce_shutdown.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bce/extr_if_bce.c_bce_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bce_softc = type { i32 }

@BCE_VERBOSE = common dso_local global i32 0, align 4
@BCE_NO_WOL_FLAG = common dso_local global i32 0, align 4
@BCE_DRV_MSG_CODE_UNLOAD_LNK_DN = common dso_local global i32 0, align 4
@BCE_DRV_MSG_CODE_UNLOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @bce_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bce_shutdown(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bce_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.bce_softc* @device_get_softc(i32 %5)
  store %struct.bce_softc* %6, %struct.bce_softc** %3, align 8
  %7 = load i32, i32* @BCE_VERBOSE, align 4
  %8 = call i32 @DBENTER(i32 %7)
  %9 = load %struct.bce_softc*, %struct.bce_softc** %3, align 8
  %10 = call i32 @BCE_LOCK(%struct.bce_softc* %9)
  %11 = load %struct.bce_softc*, %struct.bce_softc** %3, align 8
  %12 = call i32 @bce_stop(%struct.bce_softc* %11)
  %13 = load %struct.bce_softc*, %struct.bce_softc** %3, align 8
  %14 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @BCE_NO_WOL_FLAG, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @BCE_DRV_MSG_CODE_UNLOAD_LNK_DN, align 4
  store i32 %20, i32* %4, align 4
  br label %23

21:                                               ; preds = %1
  %22 = load i32, i32* @BCE_DRV_MSG_CODE_UNLOAD, align 4
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = load %struct.bce_softc*, %struct.bce_softc** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @bce_reset(%struct.bce_softc* %24, i32 %25)
  %27 = load %struct.bce_softc*, %struct.bce_softc** %3, align 8
  %28 = call i32 @BCE_UNLOCK(%struct.bce_softc* %27)
  %29 = load i32, i32* @BCE_VERBOSE, align 4
  %30 = call i32 @DBEXIT(i32 %29)
  ret i32 0
}

declare dso_local %struct.bce_softc* @device_get_softc(i32) #1

declare dso_local i32 @DBENTER(i32) #1

declare dso_local i32 @BCE_LOCK(%struct.bce_softc*) #1

declare dso_local i32 @bce_stop(%struct.bce_softc*) #1

declare dso_local i32 @bce_reset(%struct.bce_softc*, i32) #1

declare dso_local i32 @BCE_UNLOCK(%struct.bce_softc*) #1

declare dso_local i32 @DBEXIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
