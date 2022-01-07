; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt.c_mpt_read_extcfg_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt.c_mpt_read_extcfg_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i64 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [43 x i8] c"mpt_read_extcfg_page: Get request failed!\0A\00", align 1
@MPI_CONFIG_PAGETYPE_EXTENDED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"read_extcfg_page(%d) timed out\0A\00", align 1
@MPI_IOCSTATUS_MASK = common dso_local global i32 0, align 4
@MPI_IOCSTATUS_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"mpt_read_extcfg_page: Config Info Status %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpt_read_extcfg_page(%struct.mpt_softc* %0, i32 %1, i32 %2, %struct.TYPE_11__* %3, i8* %4, i64 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.mpt_softc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_9__*, align 8
  %19 = alloca %struct.TYPE_10__, align 8
  %20 = alloca i32, align 4
  store %struct.mpt_softc* %0, %struct.mpt_softc** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %13, align 8
  store i8* %4, i8** %14, align 8
  store i64 %5, i64* %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %21 = load %struct.mpt_softc*, %struct.mpt_softc** %10, align 8
  %22 = load i32, i32* %16, align 4
  %23 = call %struct.TYPE_9__* @mpt_get_request(%struct.mpt_softc* %21, i32 %22)
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %18, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %25 = icmp eq %struct.TYPE_9__* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %8
  %27 = load %struct.mpt_softc*, %struct.mpt_softc** %10, align 8
  %28 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %27, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %9, align 4
  br label %103

29:                                               ; preds = %8
  %30 = load i32, i32* %11, align 4
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  store i32 %30, i32* %31, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 7
  store i32 %34, i32* %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 6
  store i64 0, i64* %36, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 5
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* @MPI_CONFIG_PAGETYPE_EXTENDED, align 4
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 4
  store i32 %41, i32* %42, align 8
  %43 = load i32, i32* %12, align 4
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 3
  store i32 %43, i32* %44, align 4
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 2
  store i32 %47, i32* %48, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  store i32 %51, i32* %52, align 4
  %53 = load %struct.mpt_softc*, %struct.mpt_softc** %10, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.mpt_softc*, %struct.mpt_softc** %10, align 8
  %59 = call i32 @MPT_RQSL(%struct.mpt_softc* %58)
  %60 = add nsw i32 %57, %59
  %61 = load i64, i64* %15, align 8
  %62 = load i32, i32* %16, align 4
  %63 = load i32, i32* %17, align 4
  %64 = call i32 @mpt_issue_cfg_req(%struct.mpt_softc* %53, %struct.TYPE_9__* %54, %struct.TYPE_10__* %19, i32 %60, i64 %61, i32 %62, i32 %63)
  store i32 %64, i32* %20, align 4
  %65 = load i32, i32* %20, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %29
  %68 = load %struct.mpt_softc*, %struct.mpt_softc** %10, align 8
  %69 = load i32, i32* %11, align 4
  %70 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %68, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  store i32 -1, i32* %9, align 4
  br label %103

71:                                               ; preds = %29
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @MPI_IOCSTATUS_MASK, align 4
  %76 = and i32 %74, %75
  %77 = load i32, i32* @MPI_IOCSTATUS_SUCCESS, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %88

79:                                               ; preds = %71
  %80 = load %struct.mpt_softc*, %struct.mpt_softc** %10, align 8
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %80, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %83)
  %85 = load %struct.mpt_softc*, %struct.mpt_softc** %10, align 8
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %87 = call i32 @mpt_free_request(%struct.mpt_softc* %85, %struct.TYPE_9__* %86)
  store i32 -1, i32* %9, align 4
  br label %103

88:                                               ; preds = %71
  %89 = load i8*, i8** %14, align 8
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = inttoptr i64 %92 to i32*
  %94 = load %struct.mpt_softc*, %struct.mpt_softc** %10, align 8
  %95 = call i32 @MPT_RQSL(%struct.mpt_softc* %94)
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %93, i64 %96
  %98 = load i64, i64* %15, align 8
  %99 = call i32 @memcpy(i8* %89, i32* %97, i64 %98)
  %100 = load %struct.mpt_softc*, %struct.mpt_softc** %10, align 8
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %102 = call i32 @mpt_free_request(%struct.mpt_softc* %100, %struct.TYPE_9__* %101)
  store i32 0, i32* %9, align 4
  br label %103

103:                                              ; preds = %88, %79, %67, %26
  %104 = load i32, i32* %9, align 4
  ret i32 %104
}

declare dso_local %struct.TYPE_9__* @mpt_get_request(%struct.mpt_softc*, i32) #1

declare dso_local i32 @mpt_prt(%struct.mpt_softc*, i8*, ...) #1

declare dso_local i32 @mpt_issue_cfg_req(%struct.mpt_softc*, %struct.TYPE_9__*, %struct.TYPE_10__*, i32, i64, i32, i32) #1

declare dso_local i32 @MPT_RQSL(%struct.mpt_softc*) #1

declare dso_local i32 @mpt_free_request(%struct.mpt_softc*, %struct.TYPE_9__*) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
