; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt.c_mpt_read_cfg_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt.c_mpt_read_cfg_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i64 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"mpt_read_cfg_page: Get request failed!\0A\00", align 1
@MPI_CONFIG_PAGETYPE_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"read_cfg_page(%d) timed out\0A\00", align 1
@MPI_IOCSTATUS_MASK = common dso_local global i32 0, align 4
@MPI_IOCSTATUS_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"mpt_read_cfg_page: Config Info Status %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpt_read_cfg_page(%struct.mpt_softc* %0, i32 %1, i32 %2, %struct.TYPE_12__* %3, i64 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.mpt_softc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_10__*, align 8
  %17 = alloca %struct.TYPE_11__, align 4
  %18 = alloca i32, align 4
  store %struct.mpt_softc* %0, %struct.mpt_softc** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %12, align 8
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %19 = load %struct.mpt_softc*, %struct.mpt_softc** %9, align 8
  %20 = load i32, i32* %14, align 4
  %21 = call %struct.TYPE_10__* @mpt_get_request(%struct.mpt_softc* %19, i32 %20)
  store %struct.TYPE_10__* %21, %struct.TYPE_10__** %16, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %23 = icmp eq %struct.TYPE_10__* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %7
  %25 = load %struct.mpt_softc*, %struct.mpt_softc** %9, align 8
  %26 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %25, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %100

27:                                               ; preds = %7
  %28 = load i32, i32* %10, align 4
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 5
  store i32 %32, i32* %33, align 4
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 4
  store i32 %36, i32* %37, align 4
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 3
  store i32 %40, i32* %41, align 4
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @MPI_CONFIG_PAGETYPE_MASK, align 4
  %46 = and i32 %44, %45
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* %11, align 4
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 2
  store i32 %48, i32* %49, align 4
  %50 = load %struct.mpt_softc*, %struct.mpt_softc** %9, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.mpt_softc*, %struct.mpt_softc** %9, align 8
  %56 = call i32 @MPT_RQSL(%struct.mpt_softc* %55)
  %57 = add nsw i32 %54, %56
  %58 = load i64, i64* %13, align 8
  %59 = load i32, i32* %14, align 4
  %60 = load i32, i32* %15, align 4
  %61 = call i32 @mpt_issue_cfg_req(%struct.mpt_softc* %50, %struct.TYPE_10__* %51, %struct.TYPE_11__* %17, i32 %57, i64 %58, i32 %59, i32 %60)
  store i32 %61, i32* %18, align 4
  %62 = load i32, i32* %18, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %27
  %65 = load %struct.mpt_softc*, %struct.mpt_softc** %9, align 8
  %66 = load i32, i32* %10, align 4
  %67 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %65, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  store i32 -1, i32* %8, align 4
  br label %100

68:                                               ; preds = %27
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @MPI_IOCSTATUS_MASK, align 4
  %73 = and i32 %71, %72
  %74 = load i32, i32* @MPI_IOCSTATUS_SUCCESS, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %85

76:                                               ; preds = %68
  %77 = load %struct.mpt_softc*, %struct.mpt_softc** %9, align 8
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %77, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  %82 = load %struct.mpt_softc*, %struct.mpt_softc** %9, align 8
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %84 = call i32 @mpt_free_request(%struct.mpt_softc* %82, %struct.TYPE_10__* %83)
  store i32 -1, i32* %8, align 4
  br label %100

85:                                               ; preds = %68
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = inttoptr i64 %89 to i32*
  %91 = load %struct.mpt_softc*, %struct.mpt_softc** %9, align 8
  %92 = call i32 @MPT_RQSL(%struct.mpt_softc* %91)
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %90, i64 %93
  %95 = load i64, i64* %13, align 8
  %96 = call i32 @memcpy(%struct.TYPE_12__* %86, i32* %94, i64 %95)
  %97 = load %struct.mpt_softc*, %struct.mpt_softc** %9, align 8
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %99 = call i32 @mpt_free_request(%struct.mpt_softc* %97, %struct.TYPE_10__* %98)
  store i32 0, i32* %8, align 4
  br label %100

100:                                              ; preds = %85, %76, %64, %24
  %101 = load i32, i32* %8, align 4
  ret i32 %101
}

declare dso_local %struct.TYPE_10__* @mpt_get_request(%struct.mpt_softc*, i32) #1

declare dso_local i32 @mpt_prt(%struct.mpt_softc*, i8*, ...) #1

declare dso_local i32 @mpt_issue_cfg_req(%struct.mpt_softc*, %struct.TYPE_10__*, %struct.TYPE_11__*, i32, i64, i32, i32) #1

declare dso_local i32 @MPT_RQSL(%struct.mpt_softc*) #1

declare dso_local i32 @mpt_free_request(%struct.mpt_softc*, %struct.TYPE_10__*) #1

declare dso_local i32 @memcpy(%struct.TYPE_12__*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
