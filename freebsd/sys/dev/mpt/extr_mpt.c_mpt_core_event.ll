; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt.c_mpt_core_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt.c_mpt_core_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32*, i32 }

@MPT_PRT_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"mpt_core_event: 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"EvtLogData: IOCLogInfo: 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"\09EvtLogData: Event Data:\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"  %08x\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpt_softc*, i32*, %struct.TYPE_3__*)* @mpt_core_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpt_core_event(%struct.mpt_softc* %0, i32* %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mpt_softc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  store %struct.mpt_softc* %0, %struct.mpt_softc** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  %9 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %10 = load i32, i32* @MPT_PRT_DEBUG, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = and i32 %13, 255
  %15 = call i32 @mpt_lprt(%struct.mpt_softc* %9, i32 %10, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %18, 255
  switch i32 %19, label %53 [
    i32 129, label %20
    i32 130, label %21
    i32 131, label %51
    i32 128, label %52
  ]

20:                                               ; preds = %3
  br label %54

21:                                               ; preds = %3
  %22 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %22, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %28 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %45, %21
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %29
  %36 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prtc(%struct.mpt_softc* %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %35
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %29

48:                                               ; preds = %29
  %49 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %50 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prtc(%struct.mpt_softc* %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %54

51:                                               ; preds = %3
  br label %54

52:                                               ; preds = %3
  br label %54

53:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %55

54:                                               ; preds = %52, %51, %48, %20
  store i32 1, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %53
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @mpt_lprt(%struct.mpt_softc*, i32, i8*, i32) #1

declare dso_local i32 @mpt_prt(%struct.mpt_softc*, i8*, ...) #1

declare dso_local i32 @mpt_prtc(%struct.mpt_softc*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
