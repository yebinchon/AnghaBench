; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr_user.c_mpr_user_read_cfg_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr_user.c_mpr_user_read_cfg_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpr_softc = type { i32 }
%struct.mpr_cfg_page_req = type { i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i64, i64 }
%struct.mpr_config_params = type { i32, i32*, i64, i32*, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }

@MPI2_CONFIG_ACTION_PAGE_HEADER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"read_cfg_header timed out\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@MPI2_IOCSTATUS_MASK = common dso_local global i32 0, align 4
@MPI2_IOCSTATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpr_softc*, %struct.mpr_cfg_page_req*)* @mpr_user_read_cfg_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpr_user_read_cfg_header(%struct.mpr_softc* %0, %struct.mpr_cfg_page_req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mpr_softc*, align 8
  %5 = alloca %struct.mpr_cfg_page_req*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.mpr_config_params, align 8
  %8 = alloca i32, align 4
  store %struct.mpr_softc* %0, %struct.mpr_softc** %4, align 8
  store %struct.mpr_cfg_page_req* %1, %struct.mpr_cfg_page_req** %5, align 8
  %9 = getelementptr inbounds %struct.mpr_config_params, %struct.mpr_config_params* %7, i32 0, i32 6
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %6, align 8
  %11 = load i32, i32* @MPI2_CONFIG_ACTION_PAGE_HEADER, align 4
  %12 = getelementptr inbounds %struct.mpr_config_params, %struct.mpr_config_params* %7, i32 0, i32 5
  store i32 %11, i32* %12, align 4
  %13 = load %struct.mpr_cfg_page_req*, %struct.mpr_cfg_page_req** %5, align 8
  %14 = getelementptr inbounds %struct.mpr_cfg_page_req, %struct.mpr_cfg_page_req* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @le32toh(i32 %15)
  %17 = getelementptr inbounds %struct.mpr_config_params, %struct.mpr_config_params* %7, i32 0, i32 4
  store i32 %16, i32* %17, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 3
  store i64 0, i64* %19, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  store i64 0, i64* %21, align 8
  %22 = load %struct.mpr_cfg_page_req*, %struct.mpr_cfg_page_req** %5, align 8
  %23 = getelementptr inbounds %struct.mpr_cfg_page_req, %struct.mpr_cfg_page_req* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.mpr_cfg_page_req*, %struct.mpr_cfg_page_req** %5, align 8
  %29 = getelementptr inbounds %struct.mpr_cfg_page_req, %struct.mpr_cfg_page_req* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = getelementptr inbounds %struct.mpr_config_params, %struct.mpr_config_params* %7, i32 0, i32 3
  store i32* null, i32** %34, align 8
  %35 = getelementptr inbounds %struct.mpr_config_params, %struct.mpr_config_params* %7, i32 0, i32 2
  store i64 0, i64* %35, align 8
  %36 = getelementptr inbounds %struct.mpr_config_params, %struct.mpr_config_params* %7, i32 0, i32 1
  store i32* null, i32** %36, align 8
  %37 = load %struct.mpr_softc*, %struct.mpr_softc** %4, align 8
  %38 = call i32 @mpr_read_config_page(%struct.mpr_softc* %37, %struct.mpr_config_params* %7)
  store i32 %38, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %2
  %41 = load %struct.mpr_softc*, %struct.mpr_softc** %4, align 8
  %42 = call i32 @mpr_printf(%struct.mpr_softc* %41, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %43, i32* %3, align 4
  br label %63

44:                                               ; preds = %2
  %45 = getelementptr inbounds %struct.mpr_config_params, %struct.mpr_config_params* %7, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @htole16(i32 %46)
  %48 = load %struct.mpr_cfg_page_req*, %struct.mpr_cfg_page_req** %5, align 8
  %49 = getelementptr inbounds %struct.mpr_cfg_page_req, %struct.mpr_cfg_page_req* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.mpr_cfg_page_req*, %struct.mpr_cfg_page_req** %5, align 8
  %51 = getelementptr inbounds %struct.mpr_cfg_page_req, %struct.mpr_cfg_page_req* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @MPI2_IOCSTATUS_MASK, align 4
  %54 = and i32 %52, %53
  %55 = load i32, i32* @MPI2_IOCSTATUS_SUCCESS, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %44
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %59 = load %struct.mpr_cfg_page_req*, %struct.mpr_cfg_page_req** %5, align 8
  %60 = getelementptr inbounds %struct.mpr_cfg_page_req, %struct.mpr_cfg_page_req* %59, i32 0, i32 1
  %61 = call i32 @bcopy(%struct.TYPE_6__* %58, %struct.TYPE_7__* %60, i32 8)
  br label %62

62:                                               ; preds = %57, %44
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %40
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @le32toh(i32) #1

declare dso_local i32 @mpr_read_config_page(%struct.mpr_softc*, %struct.mpr_config_params*) #1

declare dso_local i32 @mpr_printf(%struct.mpr_softc*, i8*) #1

declare dso_local i32 @htole16(i32) #1

declare dso_local i32 @bcopy(%struct.TYPE_6__*, %struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
