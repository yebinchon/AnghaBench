; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_user.c_mpt_user_read_extcfg_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_user.c_mpt_user_read_extcfg_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i32 }
%struct.mpt_ext_cfg_page_req = type { %struct.TYPE_11__, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i64, i32, i32, i32, i32, i64, i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"mpt_user_read_extcfg_header: Get request failed!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@MPI_CONFIG_ACTION_PAGE_HEADER = common dso_local global i32 0, align 4
@MPI_CONFIG_PAGETYPE_EXTENDED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"mpt_user_read_extcfg_header timed out\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@MPI_IOCSTATUS_MASK = common dso_local global i32 0, align 4
@MPI_IOCSTATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpt_softc*, %struct.mpt_ext_cfg_page_req*)* @mpt_user_read_extcfg_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpt_user_read_extcfg_header(%struct.mpt_softc* %0, %struct.mpt_ext_cfg_page_req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mpt_softc*, align 8
  %5 = alloca %struct.mpt_ext_cfg_page_req*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_13__, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32, align 4
  store %struct.mpt_softc* %0, %struct.mpt_softc** %4, align 8
  store %struct.mpt_ext_cfg_page_req* %1, %struct.mpt_ext_cfg_page_req** %5, align 8
  %10 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %11 = load i32, i32* @TRUE, align 4
  %12 = call %struct.TYPE_12__* @mpt_get_request(%struct.mpt_softc* %10, i32 %11)
  store %struct.TYPE_12__* %12, %struct.TYPE_12__** %6, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %14 = icmp eq %struct.TYPE_12__* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %17 = call i32 @mpt_prt(%struct.mpt_softc* %16, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENOMEM, align 4
  store i32 %18, i32* %3, align 4
  br label %111

19:                                               ; preds = %2
  %20 = load i32, i32* @MPI_CONFIG_ACTION_PAGE_HEADER, align 4
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 7
  store i32 %20, i32* %21, align 4
  %22 = load %struct.mpt_ext_cfg_page_req*, %struct.mpt_ext_cfg_page_req** %5, align 8
  %23 = getelementptr inbounds %struct.mpt_ext_cfg_page_req, %struct.mpt_ext_cfg_page_req* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 6
  store i32 %25, i32* %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 5
  store i64 0, i64* %27, align 8
  %28 = load %struct.mpt_ext_cfg_page_req*, %struct.mpt_ext_cfg_page_req** %5, align 8
  %29 = getelementptr inbounds %struct.mpt_ext_cfg_page_req, %struct.mpt_ext_cfg_page_req* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 4
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* @MPI_CONFIG_PAGETYPE_EXTENDED, align 4
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 3
  store i32 %33, i32* %34, align 8
  %35 = load %struct.mpt_ext_cfg_page_req*, %struct.mpt_ext_cfg_page_req** %5, align 8
  %36 = getelementptr inbounds %struct.mpt_ext_cfg_page_req, %struct.mpt_ext_cfg_page_req* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @le32toh(i32 %37)
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 2
  store i32 %38, i32* %39, align 4
  %40 = load %struct.mpt_ext_cfg_page_req*, %struct.mpt_ext_cfg_page_req** %5, align 8
  %41 = getelementptr inbounds %struct.mpt_ext_cfg_page_req, %struct.mpt_ext_cfg_page_req* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  store i32 %43, i32* %44, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  store i64 0, i64* %45, align 8
  %46 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %48 = load i32, i32* @TRUE, align 4
  %49 = call i32 @mpt_issue_cfg_req(%struct.mpt_softc* %46, %struct.TYPE_12__* %47, %struct.TYPE_13__* %7, i32 0, i32 0, i32 %48, i32 5000)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %19
  %53 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %54 = call i32 @mpt_prt(%struct.mpt_softc* %53, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %55, i32* %3, align 4
  br label %111

56:                                               ; preds = %19
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @htole16(i32 %59)
  %61 = load %struct.mpt_ext_cfg_page_req*, %struct.mpt_ext_cfg_page_req** %5, align 8
  %62 = getelementptr inbounds %struct.mpt_ext_cfg_page_req, %struct.mpt_ext_cfg_page_req* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @MPI_IOCSTATUS_MASK, align 4
  %67 = and i32 %65, %66
  %68 = load i32, i32* @MPI_IOCSTATUS_SUCCESS, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %107

70:                                               ; preds = %56
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %72, align 8
  store %struct.TYPE_14__* %73, %struct.TYPE_14__** %8, align 8
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.mpt_ext_cfg_page_req*, %struct.mpt_ext_cfg_page_req** %5, align 8
  %79 = getelementptr inbounds %struct.mpt_ext_cfg_page_req, %struct.mpt_ext_cfg_page_req* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 4
  store i32 %77, i32* %80, align 4
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.mpt_ext_cfg_page_req*, %struct.mpt_ext_cfg_page_req** %5, align 8
  %86 = getelementptr inbounds %struct.mpt_ext_cfg_page_req, %struct.mpt_ext_cfg_page_req* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 3
  store i32 %84, i32* %87, align 4
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.mpt_ext_cfg_page_req*, %struct.mpt_ext_cfg_page_req** %5, align 8
  %93 = getelementptr inbounds %struct.mpt_ext_cfg_page_req, %struct.mpt_ext_cfg_page_req* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 2
  store i32 %91, i32* %94, align 4
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.mpt_ext_cfg_page_req*, %struct.mpt_ext_cfg_page_req** %5, align 8
  %99 = getelementptr inbounds %struct.mpt_ext_cfg_page_req, %struct.mpt_ext_cfg_page_req* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 1
  store i32 %97, i32* %100, align 4
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.mpt_ext_cfg_page_req*, %struct.mpt_ext_cfg_page_req** %5, align 8
  %105 = getelementptr inbounds %struct.mpt_ext_cfg_page_req, %struct.mpt_ext_cfg_page_req* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 0
  store i32 %103, i32* %106, align 4
  br label %107

107:                                              ; preds = %70, %56
  %108 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %110 = call i32 @mpt_free_request(%struct.mpt_softc* %108, %struct.TYPE_12__* %109)
  store i32 0, i32* %3, align 4
  br label %111

111:                                              ; preds = %107, %52, %15
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local %struct.TYPE_12__* @mpt_get_request(%struct.mpt_softc*, i32) #1

declare dso_local i32 @mpt_prt(%struct.mpt_softc*, i8*) #1

declare dso_local i32 @le32toh(i32) #1

declare dso_local i32 @mpt_issue_cfg_req(%struct.mpt_softc*, %struct.TYPE_12__*, %struct.TYPE_13__*, i32, i32, i32, i32) #1

declare dso_local i32 @htole16(i32) #1

declare dso_local i32 @mpt_free_request(%struct.mpt_softc*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
