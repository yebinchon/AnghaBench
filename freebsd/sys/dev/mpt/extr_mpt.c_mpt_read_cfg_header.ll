; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt.c_mpt_read_cfg_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt.c_mpt_read_cfg_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i64, i64, i32 }

@.str = private unnamed_addr constant [42 x i8] c"mpt_read_cfg_header: Get request failed!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@MPI_CONFIG_ACTION_PAGE_HEADER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"read_cfg_header timed out\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@MPI_IOCSTATUS_MASK = common dso_local global i32 0, align 4
@MPT_PRT_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"Invalid Page Type %d Number %d Addr 0x%0x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"mpt_read_cfg_header: Config Info Status %x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpt_read_cfg_header(%struct.mpt_softc* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.mpt_softc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_8__*, align 8
  %17 = alloca %struct.TYPE_9__, align 8
  %18 = alloca %struct.TYPE_10__*, align 8
  %19 = alloca i32, align 4
  store %struct.mpt_softc* %0, %struct.mpt_softc** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %20 = load %struct.mpt_softc*, %struct.mpt_softc** %9, align 8
  %21 = load i32, i32* %14, align 4
  %22 = call %struct.TYPE_8__* @mpt_get_request(%struct.mpt_softc* %20, i32 %21)
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %16, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %24 = icmp eq %struct.TYPE_8__* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %7
  %26 = load %struct.mpt_softc*, %struct.mpt_softc** %9, align 8
  %27 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %26, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ENOMEM, align 4
  store i32 %28, i32* %8, align 4
  br label %85

29:                                               ; preds = %7
  %30 = load i32, i32* @MPI_CONFIG_ACTION_PAGE_HEADER, align 4
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 5
  store i32 %30, i32* %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 4
  store i64 0, i64* %32, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 3
  store i64 0, i64* %33, align 8
  %34 = load i32, i32* %11, align 4
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  store i32 %34, i32* %35, align 8
  %36 = load i32, i32* %10, align 4
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* %12, align 4
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 2
  store i32 %38, i32* %39, align 8
  %40 = load %struct.mpt_softc*, %struct.mpt_softc** %9, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* %15, align 4
  %44 = call i32 @mpt_issue_cfg_req(%struct.mpt_softc* %40, %struct.TYPE_8__* %41, %struct.TYPE_9__* %17, i32 0, i32 0, i32 %42, i32 %43)
  store i32 %44, i32* %19, align 4
  %45 = load i32, i32* %19, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %29
  %48 = load %struct.mpt_softc*, %struct.mpt_softc** %9, align 8
  %49 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %48, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %50, i32* %8, align 4
  br label %85

51:                                               ; preds = %29
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @MPI_IOCSTATUS_MASK, align 4
  %56 = and i32 %54, %55
  switch i32 %56, label %73 [
    i32 128, label %57
    i32 129, label %65
  ]

57:                                               ; preds = %51
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  store %struct.TYPE_10__* %60, %struct.TYPE_10__** %18, align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i32*, i32** %13, align 8
  %64 = call i32 @bcopy(i32* %62, i32* %63, i32 4)
  store i32 0, i32* %19, align 4
  br label %80

65:                                               ; preds = %51
  %66 = load %struct.mpt_softc*, %struct.mpt_softc** %9, align 8
  %67 = load i32, i32* @MPT_PRT_DEBUG, align 4
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @mpt_lprt(%struct.mpt_softc* %66, i32 %67, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %68, i32 %69, i32 %70)
  %72 = load i32, i32* @EINVAL, align 4
  store i32 %72, i32* %19, align 4
  br label %80

73:                                               ; preds = %51
  %74 = load %struct.mpt_softc*, %struct.mpt_softc** %9, align 8
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %74, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* @EIO, align 4
  store i32 %79, i32* %19, align 4
  br label %80

80:                                               ; preds = %73, %65, %57
  %81 = load %struct.mpt_softc*, %struct.mpt_softc** %9, align 8
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %83 = call i32 @mpt_free_request(%struct.mpt_softc* %81, %struct.TYPE_8__* %82)
  %84 = load i32, i32* %19, align 4
  store i32 %84, i32* %8, align 4
  br label %85

85:                                               ; preds = %80, %47, %25
  %86 = load i32, i32* %8, align 4
  ret i32 %86
}

declare dso_local %struct.TYPE_8__* @mpt_get_request(%struct.mpt_softc*, i32) #1

declare dso_local i32 @mpt_prt(%struct.mpt_softc*, i8*, ...) #1

declare dso_local i32 @mpt_issue_cfg_req(%struct.mpt_softc*, %struct.TYPE_8__*, %struct.TYPE_9__*, i32, i32, i32, i32) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i32 @mpt_lprt(%struct.mpt_softc*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @mpt_free_request(%struct.mpt_softc*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
