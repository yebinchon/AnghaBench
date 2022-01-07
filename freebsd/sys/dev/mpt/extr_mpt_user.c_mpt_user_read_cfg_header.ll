; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_user.c_mpt_user_read_cfg_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_user.c_mpt_user_read_cfg_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i32 }
%struct.mpt_cfg_page_req = type { %struct.TYPE_12__, i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i64, i64, i32 }

@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"mpt_user_read_cfg_header: Get request failed!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@MPI_CONFIG_ACTION_PAGE_HEADER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"read_cfg_header timed out\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@MPI_IOCSTATUS_MASK = common dso_local global i32 0, align 4
@MPI_IOCSTATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpt_softc*, %struct.mpt_cfg_page_req*)* @mpt_user_read_cfg_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpt_user_read_cfg_header(%struct.mpt_softc* %0, %struct.mpt_cfg_page_req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mpt_softc*, align 8
  %5 = alloca %struct.mpt_cfg_page_req*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_10__, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  store %struct.mpt_softc* %0, %struct.mpt_softc** %4, align 8
  store %struct.mpt_cfg_page_req* %1, %struct.mpt_cfg_page_req** %5, align 8
  %10 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %11 = load i32, i32* @TRUE, align 4
  %12 = call %struct.TYPE_9__* @mpt_get_request(%struct.mpt_softc* %10, i32 %11)
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %6, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %14 = icmp eq %struct.TYPE_9__* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %17 = call i32 @mpt_prt(%struct.mpt_softc* %16, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENOMEM, align 4
  store i32 %18, i32* %3, align 4
  br label %76

19:                                               ; preds = %2
  %20 = load i32, i32* @MPI_CONFIG_ACTION_PAGE_HEADER, align 4
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 5
  store i32 %20, i32* %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 4
  store i64 0, i64* %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 3
  store i64 0, i64* %23, align 8
  %24 = load %struct.mpt_cfg_page_req*, %struct.mpt_cfg_page_req** %5, align 8
  %25 = getelementptr inbounds %struct.mpt_cfg_page_req, %struct.mpt_cfg_page_req* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 2
  store i32 %27, i32* %28, align 8
  %29 = load %struct.mpt_cfg_page_req*, %struct.mpt_cfg_page_req** %5, align 8
  %30 = getelementptr inbounds %struct.mpt_cfg_page_req, %struct.mpt_cfg_page_req* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  %34 = load %struct.mpt_cfg_page_req*, %struct.mpt_cfg_page_req** %5, align 8
  %35 = getelementptr inbounds %struct.mpt_cfg_page_req, %struct.mpt_cfg_page_req* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @le32toh(i32 %36)
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  store i32 %37, i32* %38, align 8
  %39 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %41 = load i32, i32* @TRUE, align 4
  %42 = call i32 @mpt_issue_cfg_req(%struct.mpt_softc* %39, %struct.TYPE_9__* %40, %struct.TYPE_10__* %7, i32 0, i32 0, i32 %41, i32 5000)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %19
  %46 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %47 = call i32 @mpt_prt(%struct.mpt_softc* %46, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %48, i32* %3, align 4
  br label %76

49:                                               ; preds = %19
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @htole16(i32 %52)
  %54 = load %struct.mpt_cfg_page_req*, %struct.mpt_cfg_page_req** %5, align 8
  %55 = getelementptr inbounds %struct.mpt_cfg_page_req, %struct.mpt_cfg_page_req* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @MPI_IOCSTATUS_MASK, align 4
  %60 = and i32 %58, %59
  %61 = load i32, i32* @MPI_IOCSTATUS_SUCCESS, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %49
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %65, align 8
  store %struct.TYPE_11__* %66, %struct.TYPE_11__** %8, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load %struct.mpt_cfg_page_req*, %struct.mpt_cfg_page_req** %5, align 8
  %70 = getelementptr inbounds %struct.mpt_cfg_page_req, %struct.mpt_cfg_page_req* %69, i32 0, i32 0
  %71 = call i32 @bcopy(i32* %68, %struct.TYPE_12__* %70, i32 8)
  br label %72

72:                                               ; preds = %63, %49
  %73 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %75 = call i32 @mpt_free_request(%struct.mpt_softc* %73, %struct.TYPE_9__* %74)
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %72, %45, %15
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local %struct.TYPE_9__* @mpt_get_request(%struct.mpt_softc*, i32) #1

declare dso_local i32 @mpt_prt(%struct.mpt_softc*, i8*) #1

declare dso_local i32 @le32toh(i32) #1

declare dso_local i32 @mpt_issue_cfg_req(%struct.mpt_softc*, %struct.TYPE_9__*, %struct.TYPE_10__*, i32, i32, i32, i32) #1

declare dso_local i32 @htole16(i32) #1

declare dso_local i32 @bcopy(i32*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @mpt_free_request(%struct.mpt_softc*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
