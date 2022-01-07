; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt.c_mpt_write_cfg_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt.c_mpt_write_cfg_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i64, i64 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32 }

@MPI_CONFIG_PAGEATTR_MASK = common dso_local global i32 0, align 4
@MPI_CONFIG_PAGEATTR_CHANGEABLE = common dso_local global i32 0, align 4
@MPI_CONFIG_PAGEATTR_PERSISTENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"page type 0x%x not changeable\0A\00", align 1
@MPI_CONFIG_PAGETYPE_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"mpt_write_cfg_page timed out\0A\00", align 1
@MPI_IOCSTATUS_MASK = common dso_local global i32 0, align 4
@MPI_IOCSTATUS_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"mpt_write_cfg_page: Config Info Status %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpt_write_cfg_page(%struct.mpt_softc* %0, i32 %1, i32 %2, %struct.TYPE_12__* %3, i64 %4, i32 %5, i32 %6) #0 {
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
  %19 = alloca i32, align 4
  store %struct.mpt_softc* %0, %struct.mpt_softc** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %12, align 8
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @MPI_CONFIG_PAGEATTR_MASK, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %18, align 4
  %25 = load i32, i32* %18, align 4
  %26 = load i32, i32* @MPI_CONFIG_PAGEATTR_CHANGEABLE, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %7
  %29 = load i32, i32* %18, align 4
  %30 = load i32, i32* @MPI_CONFIG_PAGEATTR_PERSISTENT, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %28
  %33 = load %struct.mpt_softc*, %struct.mpt_softc** %9, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @MPI_CONFIG_PAGETYPE_MASK, align 4
  %38 = and i32 %36, %37
  %39 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %33, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %38)
  store i32 -1, i32* %8, align 4
  br label %115

40:                                               ; preds = %28, %7
  %41 = load %struct.mpt_softc*, %struct.mpt_softc** %9, align 8
  %42 = load i32, i32* %14, align 4
  %43 = call %struct.TYPE_10__* @mpt_get_request(%struct.mpt_softc* %41, i32 %42)
  store %struct.TYPE_10__* %43, %struct.TYPE_10__** %16, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %45 = icmp eq %struct.TYPE_10__* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i32 -1, i32* %8, align 4
  br label %115

47:                                               ; preds = %40
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.mpt_softc*, %struct.mpt_softc** %9, align 8
  %52 = call i64 @MPT_RQSL(%struct.mpt_softc* %51)
  %53 = add nsw i64 %50, %52
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %55 = load i64, i64* %13, align 8
  %56 = call i32 @memcpy(i64 %53, %struct.TYPE_12__* %54, i64 %55)
  %57 = load i32, i32* %10, align 4
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  store i32 %57, i32* %58, align 4
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 5
  store i32 %61, i32* %62, align 4
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 4
  store i32 %65, i32* %66, align 4
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 3
  store i32 %69, i32* %70, align 4
  %71 = load i32, i32* %11, align 4
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 2
  store i32 %71, i32* %72, align 4
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  store i32 %75, i32* %76, align 4
  %77 = load %struct.mpt_softc*, %struct.mpt_softc** %9, align 8
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.mpt_softc*, %struct.mpt_softc** %9, align 8
  %83 = call i64 @MPT_RQSL(%struct.mpt_softc* %82)
  %84 = add nsw i64 %81, %83
  %85 = load i64, i64* %13, align 8
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* %15, align 4
  %88 = call i32 @mpt_issue_cfg_req(%struct.mpt_softc* %77, %struct.TYPE_10__* %78, %struct.TYPE_11__* %17, i64 %84, i64 %85, i32 %86, i32 %87)
  store i32 %88, i32* %19, align 4
  %89 = load i32, i32* %19, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %47
  %92 = load %struct.mpt_softc*, %struct.mpt_softc** %9, align 8
  %93 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %92, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %115

94:                                               ; preds = %47
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @MPI_IOCSTATUS_MASK, align 4
  %99 = and i32 %97, %98
  %100 = load i32, i32* @MPI_IOCSTATUS_SUCCESS, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %111

102:                                              ; preds = %94
  %103 = load %struct.mpt_softc*, %struct.mpt_softc** %9, align 8
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %103, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %106)
  %108 = load %struct.mpt_softc*, %struct.mpt_softc** %9, align 8
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %110 = call i32 @mpt_free_request(%struct.mpt_softc* %108, %struct.TYPE_10__* %109)
  store i32 -1, i32* %8, align 4
  br label %115

111:                                              ; preds = %94
  %112 = load %struct.mpt_softc*, %struct.mpt_softc** %9, align 8
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %114 = call i32 @mpt_free_request(%struct.mpt_softc* %112, %struct.TYPE_10__* %113)
  store i32 0, i32* %8, align 4
  br label %115

115:                                              ; preds = %111, %102, %91, %46, %32
  %116 = load i32, i32* %8, align 4
  ret i32 %116
}

declare dso_local i32 @mpt_prt(%struct.mpt_softc*, i8*, ...) #1

declare dso_local %struct.TYPE_10__* @mpt_get_request(%struct.mpt_softc*, i32) #1

declare dso_local i32 @memcpy(i64, %struct.TYPE_12__*, i64) #1

declare dso_local i64 @MPT_RQSL(%struct.mpt_softc*) #1

declare dso_local i32 @mpt_issue_cfg_req(%struct.mpt_softc*, %struct.TYPE_10__*, %struct.TYPE_11__*, i64, i64, i32, i32) #1

declare dso_local i32 @mpt_free_request(%struct.mpt_softc*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
