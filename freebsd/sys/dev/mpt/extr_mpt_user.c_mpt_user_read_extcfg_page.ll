; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_user.c_mpt_user_read_extcfg_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_user.c_mpt_user_read_extcfg_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i32 }
%struct.mpt_ext_cfg_page_req = type { i32, i32, i32 }
%struct.mpt_page_memory = type { i32, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i64, i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"mpt_user_read_extcfg_page: Get request failed!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@MPI_CONFIG_ACTION_PAGE_READ_CURRENT = common dso_local global i32 0, align 4
@MPI_CONFIG_PAGETYPE_EXTENDED = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"mpt_user_read_extcfg_page timed out\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@MPI_IOCSTATUS_MASK = common dso_local global i32 0, align 4
@MPI_IOCSTATUS_SUCCESS = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpt_softc*, %struct.mpt_ext_cfg_page_req*, %struct.mpt_page_memory*)* @mpt_user_read_extcfg_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpt_user_read_extcfg_page(%struct.mpt_softc* %0, %struct.mpt_ext_cfg_page_req* %1, %struct.mpt_page_memory* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mpt_softc*, align 8
  %6 = alloca %struct.mpt_ext_cfg_page_req*, align 8
  %7 = alloca %struct.mpt_page_memory*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.TYPE_9__, align 8
  %11 = alloca i32, align 4
  store %struct.mpt_softc* %0, %struct.mpt_softc** %5, align 8
  store %struct.mpt_ext_cfg_page_req* %1, %struct.mpt_ext_cfg_page_req** %6, align 8
  store %struct.mpt_page_memory* %2, %struct.mpt_page_memory** %7, align 8
  %12 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %13 = load i32, i32* @TRUE, align 4
  %14 = call %struct.TYPE_8__* @mpt_get_request(%struct.mpt_softc* %12, i32 %13)
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %9, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %16 = icmp eq %struct.TYPE_8__* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %19 = call i32 @mpt_prt(%struct.mpt_softc* %18, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENOMEM, align 4
  store i32 %20, i32* %4, align 4
  br label %107

21:                                               ; preds = %3
  %22 = load %struct.mpt_page_memory*, %struct.mpt_page_memory** %7, align 8
  %23 = getelementptr inbounds %struct.mpt_page_memory, %struct.mpt_page_memory* %22, i32 0, i32 3
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  store %struct.TYPE_10__* %24, %struct.TYPE_10__** %8, align 8
  %25 = load i32, i32* @MPI_CONFIG_ACTION_PAGE_READ_CURRENT, align 4
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 7
  store i32 %25, i32* %26, align 4
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 6
  store i32 %29, i32* %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 5
  store i64 0, i64* %31, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 4
  store i32 %34, i32* %35, align 8
  %36 = load i32, i32* @MPI_CONFIG_PAGETYPE_EXTENDED, align 4
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 3
  store i32 %36, i32* %37, align 4
  %38 = load %struct.mpt_ext_cfg_page_req*, %struct.mpt_ext_cfg_page_req** %6, align 8
  %39 = getelementptr inbounds %struct.mpt_ext_cfg_page_req, %struct.mpt_ext_cfg_page_req* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @le32toh(i32 %40)
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  store i32 %41, i32* %42, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  store i32 %45, i32* %46, align 4
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  store i32 %49, i32* %50, align 8
  %51 = load %struct.mpt_page_memory*, %struct.mpt_page_memory** %7, align 8
  %52 = getelementptr inbounds %struct.mpt_page_memory, %struct.mpt_page_memory* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.mpt_page_memory*, %struct.mpt_page_memory** %7, align 8
  %55 = getelementptr inbounds %struct.mpt_page_memory, %struct.mpt_page_memory* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %58 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @bus_dmamap_sync(i32 %53, i32 %56, i32 %59)
  %61 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %63 = load %struct.mpt_page_memory*, %struct.mpt_page_memory** %7, align 8
  %64 = getelementptr inbounds %struct.mpt_page_memory, %struct.mpt_page_memory* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.mpt_ext_cfg_page_req*, %struct.mpt_ext_cfg_page_req** %6, align 8
  %67 = getelementptr inbounds %struct.mpt_ext_cfg_page_req, %struct.mpt_ext_cfg_page_req* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @le32toh(i32 %68)
  %70 = load i32, i32* @TRUE, align 4
  %71 = call i32 @mpt_issue_cfg_req(%struct.mpt_softc* %61, %struct.TYPE_8__* %62, %struct.TYPE_9__* %10, i32 %65, i32 %69, i32 %70, i32 5000)
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %21
  %75 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %76 = call i32 @mpt_prt(%struct.mpt_softc* %75, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %77 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %77, i32* %4, align 4
  br label %107

78:                                               ; preds = %21
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @htole16(i32 %81)
  %83 = load %struct.mpt_ext_cfg_page_req*, %struct.mpt_ext_cfg_page_req** %6, align 8
  %84 = getelementptr inbounds %struct.mpt_ext_cfg_page_req, %struct.mpt_ext_cfg_page_req* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @MPI_IOCSTATUS_MASK, align 4
  %89 = and i32 %87, %88
  %90 = load i32, i32* @MPI_IOCSTATUS_SUCCESS, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %103

92:                                               ; preds = %78
  %93 = load %struct.mpt_page_memory*, %struct.mpt_page_memory** %7, align 8
  %94 = getelementptr inbounds %struct.mpt_page_memory, %struct.mpt_page_memory* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.mpt_page_memory*, %struct.mpt_page_memory** %7, align 8
  %97 = getelementptr inbounds %struct.mpt_page_memory, %struct.mpt_page_memory* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %100 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %101 = or i32 %99, %100
  %102 = call i32 @bus_dmamap_sync(i32 %95, i32 %98, i32 %101)
  br label %103

103:                                              ; preds = %92, %78
  %104 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %106 = call i32 @mpt_free_request(%struct.mpt_softc* %104, %struct.TYPE_8__* %105)
  store i32 0, i32* %4, align 4
  br label %107

107:                                              ; preds = %103, %74, %17
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local %struct.TYPE_8__* @mpt_get_request(%struct.mpt_softc*, i32) #1

declare dso_local i32 @mpt_prt(%struct.mpt_softc*, i8*) #1

declare dso_local i32 @le32toh(i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @mpt_issue_cfg_req(%struct.mpt_softc*, %struct.TYPE_8__*, %struct.TYPE_9__*, i32, i32, i32, i32) #1

declare dso_local i32 @htole16(i32) #1

declare dso_local i32 @mpt_free_request(%struct.mpt_softc*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
