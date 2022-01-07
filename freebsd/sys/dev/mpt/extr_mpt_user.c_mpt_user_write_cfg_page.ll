; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_user.c_mpt_user_write_cfg_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_user.c_mpt_user_write_cfg_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i32 }
%struct.mpt_cfg_page_req = type { i32, i32, i32 }
%struct.mpt_page_memory = type { i32, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32 }

@MPI_CONFIG_PAGEATTR_MASK = common dso_local global i32 0, align 4
@MPI_CONFIG_PAGEATTR_CHANGEABLE = common dso_local global i32 0, align 4
@MPI_CONFIG_PAGEATTR_PERSISTENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"page type 0x%x not changeable\0A\00", align 1
@MPI_CONFIG_PAGETYPE_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@MPI_CONFIG_ACTION_PAGE_WRITE_CURRENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"mpt_write_cfg_page timed out\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpt_softc*, %struct.mpt_cfg_page_req*, %struct.mpt_page_memory*)* @mpt_user_write_cfg_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpt_user_write_cfg_page(%struct.mpt_softc* %0, %struct.mpt_cfg_page_req* %1, %struct.mpt_page_memory* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mpt_softc*, align 8
  %6 = alloca %struct.mpt_cfg_page_req*, align 8
  %7 = alloca %struct.mpt_page_memory*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.TYPE_9__, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mpt_softc* %0, %struct.mpt_softc** %5, align 8
  store %struct.mpt_cfg_page_req* %1, %struct.mpt_cfg_page_req** %6, align 8
  store %struct.mpt_page_memory* %2, %struct.mpt_page_memory** %7, align 8
  %13 = load %struct.mpt_page_memory*, %struct.mpt_page_memory** %7, align 8
  %14 = getelementptr inbounds %struct.mpt_page_memory, %struct.mpt_page_memory* %13, i32 0, i32 3
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %8, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @MPI_CONFIG_PAGEATTR_MASK, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @MPI_CONFIG_PAGEATTR_CHANGEABLE, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %3
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* @MPI_CONFIG_PAGEATTR_PERSISTENT, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %24
  %29 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @MPI_CONFIG_PAGETYPE_MASK, align 4
  %34 = and i32 %32, %33
  %35 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %29, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @EINVAL, align 4
  store i32 %36, i32* %4, align 4
  br label %116

37:                                               ; preds = %24, %3
  %38 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %39 = load i32, i32* @TRUE, align 4
  %40 = call %struct.TYPE_8__* @mpt_get_request(%struct.mpt_softc* %38, i32 %39)
  store %struct.TYPE_8__* %40, %struct.TYPE_8__** %9, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %42 = icmp eq %struct.TYPE_8__* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* @ENOMEM, align 4
  store i32 %44, i32* %4, align 4
  br label %116

45:                                               ; preds = %37
  %46 = load %struct.mpt_page_memory*, %struct.mpt_page_memory** %7, align 8
  %47 = getelementptr inbounds %struct.mpt_page_memory, %struct.mpt_page_memory* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.mpt_page_memory*, %struct.mpt_page_memory** %7, align 8
  %50 = getelementptr inbounds %struct.mpt_page_memory, %struct.mpt_page_memory* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %53 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @bus_dmamap_sync(i32 %48, i32 %51, i32 %54)
  %56 = load i32, i32* @MPI_CONFIG_ACTION_PAGE_WRITE_CURRENT, align 4
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 5
  store i32 %56, i32* %57, align 4
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 4
  store i32 %60, i32* %61, align 4
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 3
  store i32 %64, i32* %65, align 4
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  store i32 %68, i32* %69, align 4
  %70 = load %struct.mpt_cfg_page_req*, %struct.mpt_cfg_page_req** %6, align 8
  %71 = getelementptr inbounds %struct.mpt_cfg_page_req, %struct.mpt_cfg_page_req* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @le32toh(i32 %72)
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  store i32 %73, i32* %74, align 4
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  store i32 %77, i32* %78, align 4
  %79 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %81 = load %struct.mpt_page_memory*, %struct.mpt_page_memory** %7, align 8
  %82 = getelementptr inbounds %struct.mpt_page_memory, %struct.mpt_page_memory* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.mpt_cfg_page_req*, %struct.mpt_cfg_page_req** %6, align 8
  %85 = getelementptr inbounds %struct.mpt_cfg_page_req, %struct.mpt_cfg_page_req* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @le32toh(i32 %86)
  %88 = load i32, i32* @TRUE, align 4
  %89 = call i32 @mpt_issue_cfg_req(%struct.mpt_softc* %79, %struct.TYPE_8__* %80, %struct.TYPE_9__* %10, i32 %83, i32 %87, i32 %88, i32 5000)
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* %12, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %45
  %93 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %94 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %93, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %95 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %95, i32* %4, align 4
  br label %116

96:                                               ; preds = %45
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @htole16(i32 %99)
  %101 = load %struct.mpt_cfg_page_req*, %struct.mpt_cfg_page_req** %6, align 8
  %102 = getelementptr inbounds %struct.mpt_cfg_page_req, %struct.mpt_cfg_page_req* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 4
  %103 = load %struct.mpt_page_memory*, %struct.mpt_page_memory** %7, align 8
  %104 = getelementptr inbounds %struct.mpt_page_memory, %struct.mpt_page_memory* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.mpt_page_memory*, %struct.mpt_page_memory** %7, align 8
  %107 = getelementptr inbounds %struct.mpt_page_memory, %struct.mpt_page_memory* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %110 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %111 = or i32 %109, %110
  %112 = call i32 @bus_dmamap_sync(i32 %105, i32 %108, i32 %111)
  %113 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %115 = call i32 @mpt_free_request(%struct.mpt_softc* %113, %struct.TYPE_8__* %114)
  store i32 0, i32* %4, align 4
  br label %116

116:                                              ; preds = %96, %92, %43, %28
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i32 @mpt_prt(%struct.mpt_softc*, i8*, ...) #1

declare dso_local %struct.TYPE_8__* @mpt_get_request(%struct.mpt_softc*, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @le32toh(i32) #1

declare dso_local i32 @mpt_issue_cfg_req(%struct.mpt_softc*, %struct.TYPE_8__*, %struct.TYPE_9__*, i32, i32, i32, i32) #1

declare dso_local i32 @htole16(i32) #1

declare dso_local i32 @mpt_free_request(%struct.mpt_softc*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
