; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwn/extr_if_iwn.c_iwn_calib_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwn/extr_if_iwn.c_iwn_calib_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwn_softc = type { i32, i32 }

@IWN_DEBUG_CALIBRATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"sending request for statistics\00", align 1
@IWN_CMD_GET_STATISTICS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @iwn_calib_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwn_calib_timeout(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.iwn_softc*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.iwn_softc*
  store %struct.iwn_softc* %6, %struct.iwn_softc** %3, align 8
  %7 = load %struct.iwn_softc*, %struct.iwn_softc** %3, align 8
  %8 = call i32 @IWN_LOCK_ASSERT(%struct.iwn_softc* %7)
  %9 = load %struct.iwn_softc*, %struct.iwn_softc** %3, align 8
  %10 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %10, align 4
  %13 = icmp sge i32 %12, 120
  br i1 %13, label %14, label %23

14:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  %15 = load %struct.iwn_softc*, %struct.iwn_softc** %3, align 8
  %16 = load i32, i32* @IWN_DEBUG_CALIBRATE, align 4
  %17 = call i32 @DPRINTF(%struct.iwn_softc* %15, i32 %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %18 = load %struct.iwn_softc*, %struct.iwn_softc** %3, align 8
  %19 = load i32, i32* @IWN_CMD_GET_STATISTICS, align 4
  %20 = call i32 @iwn_cmd(%struct.iwn_softc* %18, i32 %19, i32* %4, i32 4, i32 1)
  %21 = load %struct.iwn_softc*, %struct.iwn_softc** %3, align 8
  %22 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %21, i32 0, i32 0
  store i32 0, i32* %22, align 4
  br label %23

23:                                               ; preds = %14, %1
  %24 = load %struct.iwn_softc*, %struct.iwn_softc** %3, align 8
  %25 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %24, i32 0, i32 1
  %26 = call i32 @msecs_to_ticks(i32 500)
  %27 = load %struct.iwn_softc*, %struct.iwn_softc** %3, align 8
  %28 = call i32 @callout_reset(i32* %25, i32 %26, void (i8*)* @iwn_calib_timeout, %struct.iwn_softc* %27)
  ret void
}

declare dso_local i32 @IWN_LOCK_ASSERT(%struct.iwn_softc*) #1

declare dso_local i32 @DPRINTF(%struct.iwn_softc*, i32, i8*, i8*) #1

declare dso_local i32 @iwn_cmd(%struct.iwn_softc*, i32, i32*, i32, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.iwn_softc*) #1

declare dso_local i32 @msecs_to_ticks(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
