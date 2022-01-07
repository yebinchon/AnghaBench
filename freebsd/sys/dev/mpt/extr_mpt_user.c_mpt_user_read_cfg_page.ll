; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_user.c_mpt_user_read_cfg_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_user.c_mpt_user_read_cfg_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i32 }
%struct.mpt_cfg_page_req = type { i32, i32, i32 }
%struct.mpt_page_memory = type { i32, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"mpt_user_read_cfg_page: Get request failed!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@MPI_CONFIG_ACTION_PAGE_READ_CURRENT = common dso_local global i32 0, align 4
@MPI_CONFIG_PAGETYPE_MASK = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"mpt_user_read_cfg_page timed out\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@MPI_IOCSTATUS_MASK = common dso_local global i32 0, align 4
@MPI_IOCSTATUS_SUCCESS = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpt_softc*, %struct.mpt_cfg_page_req*, %struct.mpt_page_memory*)* @mpt_user_read_cfg_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpt_user_read_cfg_page(%struct.mpt_softc* %0, %struct.mpt_cfg_page_req* %1, %struct.mpt_page_memory* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mpt_softc*, align 8
  %6 = alloca %struct.mpt_cfg_page_req*, align 8
  %7 = alloca %struct.mpt_page_memory*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.TYPE_9__, align 4
  %11 = alloca i32, align 4
  store %struct.mpt_softc* %0, %struct.mpt_softc** %5, align 8
  store %struct.mpt_cfg_page_req* %1, %struct.mpt_cfg_page_req** %6, align 8
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
  %19 = call i32 @mpt_prt(%struct.mpt_softc* %18, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENOMEM, align 4
  store i32 %20, i32* %4, align 4
  br label %106

21:                                               ; preds = %3
  %22 = load %struct.mpt_page_memory*, %struct.mpt_page_memory** %7, align 8
  %23 = getelementptr inbounds %struct.mpt_page_memory, %struct.mpt_page_memory* %22, i32 0, i32 3
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  store %struct.TYPE_10__* %24, %struct.TYPE_10__** %8, align 8
  %25 = load i32, i32* @MPI_CONFIG_ACTION_PAGE_READ_CURRENT, align 4
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 5
  store i32 %25, i32* %26, align 4
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 4
  store i32 %29, i32* %30, align 4
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 3
  store i32 %33, i32* %34, align 4
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  store i32 %37, i32* %38, align 4
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @MPI_CONFIG_PAGETYPE_MASK, align 4
  %43 = and i32 %41, %42
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  store i32 %43, i32* %44, align 4
  %45 = load %struct.mpt_cfg_page_req*, %struct.mpt_cfg_page_req** %6, align 8
  %46 = getelementptr inbounds %struct.mpt_cfg_page_req, %struct.mpt_cfg_page_req* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @le32toh(i32 %47)
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  store i32 %48, i32* %49, align 4
  %50 = load %struct.mpt_page_memory*, %struct.mpt_page_memory** %7, align 8
  %51 = getelementptr inbounds %struct.mpt_page_memory, %struct.mpt_page_memory* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.mpt_page_memory*, %struct.mpt_page_memory** %7, align 8
  %54 = getelementptr inbounds %struct.mpt_page_memory, %struct.mpt_page_memory* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %57 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @bus_dmamap_sync(i32 %52, i32 %55, i32 %58)
  %60 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %62 = load %struct.mpt_page_memory*, %struct.mpt_page_memory** %7, align 8
  %63 = getelementptr inbounds %struct.mpt_page_memory, %struct.mpt_page_memory* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.mpt_cfg_page_req*, %struct.mpt_cfg_page_req** %6, align 8
  %66 = getelementptr inbounds %struct.mpt_cfg_page_req, %struct.mpt_cfg_page_req* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @le32toh(i32 %67)
  %69 = load i32, i32* @TRUE, align 4
  %70 = call i32 @mpt_issue_cfg_req(%struct.mpt_softc* %60, %struct.TYPE_8__* %61, %struct.TYPE_9__* %10, i32 %64, i32 %68, i32 %69, i32 5000)
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %21
  %74 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %75 = call i32 @mpt_prt(%struct.mpt_softc* %74, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %76 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %76, i32* %4, align 4
  br label %106

77:                                               ; preds = %21
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @htole16(i32 %80)
  %82 = load %struct.mpt_cfg_page_req*, %struct.mpt_cfg_page_req** %6, align 8
  %83 = getelementptr inbounds %struct.mpt_cfg_page_req, %struct.mpt_cfg_page_req* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 4
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @MPI_IOCSTATUS_MASK, align 4
  %88 = and i32 %86, %87
  %89 = load i32, i32* @MPI_IOCSTATUS_SUCCESS, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %102

91:                                               ; preds = %77
  %92 = load %struct.mpt_page_memory*, %struct.mpt_page_memory** %7, align 8
  %93 = getelementptr inbounds %struct.mpt_page_memory, %struct.mpt_page_memory* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.mpt_page_memory*, %struct.mpt_page_memory** %7, align 8
  %96 = getelementptr inbounds %struct.mpt_page_memory, %struct.mpt_page_memory* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %99 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %100 = or i32 %98, %99
  %101 = call i32 @bus_dmamap_sync(i32 %94, i32 %97, i32 %100)
  br label %102

102:                                              ; preds = %91, %77
  %103 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %105 = call i32 @mpt_free_request(%struct.mpt_softc* %103, %struct.TYPE_8__* %104)
  store i32 0, i32* %4, align 4
  br label %106

106:                                              ; preds = %102, %73, %17
  %107 = load i32, i32* %4, align 4
  ret i32 %107
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
