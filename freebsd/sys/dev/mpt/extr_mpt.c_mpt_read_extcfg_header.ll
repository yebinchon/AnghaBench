; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt.c_mpt_read_extcfg_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt.c_mpt_read_extcfg_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i64, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [45 x i8] c"mpt_extread_cfg_header: Get request failed!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@MPI_CONFIG_ACTION_PAGE_HEADER = common dso_local global i32 0, align 4
@MPI_CONFIG_PAGETYPE_EXTENDED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"read_extcfg_header timed out\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@MPI_IOCSTATUS_MASK = common dso_local global i32 0, align 4
@MPT_PRT_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"Invalid Page Type %d Number %d Addr 0x%0x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"mpt_read_extcfg_header: Config Info Status %x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpt_read_extcfg_header(%struct.mpt_softc* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.TYPE_15__* %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.mpt_softc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_15__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_12__*, align 8
  %19 = alloca %struct.TYPE_13__, align 8
  %20 = alloca %struct.TYPE_14__*, align 8
  %21 = alloca i32, align 4
  store %struct.mpt_softc* %0, %struct.mpt_softc** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store %struct.TYPE_15__* %5, %struct.TYPE_15__** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %22 = load %struct.mpt_softc*, %struct.mpt_softc** %10, align 8
  %23 = load i32, i32* %16, align 4
  %24 = call %struct.TYPE_12__* @mpt_get_request(%struct.mpt_softc* %22, i32 %23)
  store %struct.TYPE_12__* %24, %struct.TYPE_12__** %18, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %26 = icmp eq %struct.TYPE_12__* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %8
  %28 = load %struct.mpt_softc*, %struct.mpt_softc** %10, align 8
  %29 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %28, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @ENOMEM, align 4
  store i32 %30, i32* %9, align 4
  br label %116

31:                                               ; preds = %8
  %32 = load i32, i32* @MPI_CONFIG_ACTION_PAGE_HEADER, align 4
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 7
  store i32 %32, i32* %33, align 8
  %34 = load i32, i32* %11, align 4
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  store i32 %34, i32* %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 6
  store i64 0, i64* %36, align 8
  %37 = load i32, i32* %12, align 4
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 1
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* @MPI_CONFIG_PAGETYPE_EXTENDED, align 4
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 5
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* %13, align 4
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 4
  store i32 %41, i32* %42, align 8
  %43 = load i32, i32* %14, align 4
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 2
  store i32 %43, i32* %44, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 3
  store i64 0, i64* %45, align 8
  %46 = load %struct.mpt_softc*, %struct.mpt_softc** %10, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %48 = load i32, i32* %16, align 4
  %49 = load i32, i32* %17, align 4
  %50 = call i32 @mpt_issue_cfg_req(%struct.mpt_softc* %46, %struct.TYPE_12__* %47, %struct.TYPE_13__* %19, i32 0, i32 0, i32 %48, i32 %49)
  store i32 %50, i32* %21, align 4
  %51 = load i32, i32* %21, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %31
  %54 = load %struct.mpt_softc*, %struct.mpt_softc** %10, align 8
  %55 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %54, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %56, i32* %9, align 4
  br label %116

57:                                               ; preds = %31
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @MPI_IOCSTATUS_MASK, align 4
  %62 = and i32 %60, %61
  switch i32 %62, label %104 [
    i32 128, label %63
    i32 129, label %96
  ]

63:                                               ; preds = %57
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %65, align 8
  store %struct.TYPE_14__* %66, %struct.TYPE_14__** %20, align 8
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 4
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 4
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 4
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @le16toh(i32 %87)
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 4
  store i32 0, i32* %21, align 4
  br label %111

96:                                               ; preds = %57
  %97 = load %struct.mpt_softc*, %struct.mpt_softc** %10, align 8
  %98 = load i32, i32* @MPT_PRT_DEBUG, align 4
  %99 = load i32, i32* @MPI_CONFIG_PAGETYPE_EXTENDED, align 4
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* %13, align 4
  %102 = call i32 @mpt_lprt(%struct.mpt_softc* %97, i32 %98, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %99, i32 %100, i32 %101)
  %103 = load i32, i32* @EINVAL, align 4
  store i32 %103, i32* %21, align 4
  br label %111

104:                                              ; preds = %57
  %105 = load %struct.mpt_softc*, %struct.mpt_softc** %10, align 8
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %105, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* @EIO, align 4
  store i32 %110, i32* %21, align 4
  br label %111

111:                                              ; preds = %104, %96, %63
  %112 = load %struct.mpt_softc*, %struct.mpt_softc** %10, align 8
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %114 = call i32 @mpt_free_request(%struct.mpt_softc* %112, %struct.TYPE_12__* %113)
  %115 = load i32, i32* %21, align 4
  store i32 %115, i32* %9, align 4
  br label %116

116:                                              ; preds = %111, %53, %27
  %117 = load i32, i32* %9, align 4
  ret i32 %117
}

declare dso_local %struct.TYPE_12__* @mpt_get_request(%struct.mpt_softc*, i32) #1

declare dso_local i32 @mpt_prt(%struct.mpt_softc*, i8*, ...) #1

declare dso_local i32 @mpt_issue_cfg_req(%struct.mpt_softc*, %struct.TYPE_12__*, %struct.TYPE_13__*, i32, i32, i32, i32) #1

declare dso_local i32 @le16toh(i32) #1

declare dso_local i32 @mpt_lprt(%struct.mpt_softc*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @mpt_free_request(%struct.mpt_softc*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
