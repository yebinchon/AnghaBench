; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps_user.c_mps_user_read_extcfg_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps_user.c_mps_user_read_extcfg_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mps_softc = type { i32 }
%struct.mps_ext_cfg_page_req = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i64, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i64, i32, i32, i32 }
%struct.mps_config_params = type { i32, i32*, i64, i32*, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_6__ }

@MPI2_CONFIG_ACTION_PAGE_HEADER = common dso_local global i32 0, align 4
@MPI2_CONFIG_PAGETYPE_EXTENDED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"mps_user_read_extcfg_header timed out\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@MPI2_IOCSTATUS_MASK = common dso_local global i32 0, align 4
@MPI2_IOCSTATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mps_softc*, %struct.mps_ext_cfg_page_req*)* @mps_user_read_extcfg_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mps_user_read_extcfg_header(%struct.mps_softc* %0, %struct.mps_ext_cfg_page_req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mps_softc*, align 8
  %5 = alloca %struct.mps_ext_cfg_page_req*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.mps_config_params, align 8
  %8 = alloca i32, align 4
  store %struct.mps_softc* %0, %struct.mps_softc** %4, align 8
  store %struct.mps_ext_cfg_page_req* %1, %struct.mps_ext_cfg_page_req** %5, align 8
  %9 = getelementptr inbounds %struct.mps_config_params, %struct.mps_config_params* %7, i32 0, i32 6
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %6, align 8
  %11 = load i32, i32* @MPI2_CONFIG_ACTION_PAGE_HEADER, align 4
  %12 = getelementptr inbounds %struct.mps_config_params, %struct.mps_config_params* %7, i32 0, i32 5
  store i32 %11, i32* %12, align 4
  %13 = load %struct.mps_ext_cfg_page_req*, %struct.mps_ext_cfg_page_req** %5, align 8
  %14 = getelementptr inbounds %struct.mps_ext_cfg_page_req, %struct.mps_ext_cfg_page_req* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 4
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* @MPI2_CONFIG_PAGETYPE_EXTENDED, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load %struct.mps_ext_cfg_page_req*, %struct.mps_ext_cfg_page_req** %5, align 8
  %25 = getelementptr inbounds %struct.mps_ext_cfg_page_req, %struct.mps_ext_cfg_page_req* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load %struct.mps_ext_cfg_page_req*, %struct.mps_ext_cfg_page_req** %5, align 8
  %31 = getelementptr inbounds %struct.mps_ext_cfg_page_req, %struct.mps_ext_cfg_page_req* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.mps_ext_cfg_page_req*, %struct.mps_ext_cfg_page_req** %5, align 8
  %37 = getelementptr inbounds %struct.mps_ext_cfg_page_req, %struct.mps_ext_cfg_page_req* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @le32toh(i32 %38)
  %40 = getelementptr inbounds %struct.mps_config_params, %struct.mps_config_params* %7, i32 0, i32 4
  store i32 %39, i32* %40, align 8
  %41 = getelementptr inbounds %struct.mps_config_params, %struct.mps_config_params* %7, i32 0, i32 3
  store i32* null, i32** %41, align 8
  %42 = getelementptr inbounds %struct.mps_config_params, %struct.mps_config_params* %7, i32 0, i32 2
  store i64 0, i64* %42, align 8
  %43 = getelementptr inbounds %struct.mps_config_params, %struct.mps_config_params* %7, i32 0, i32 1
  store i32* null, i32** %43, align 8
  %44 = load %struct.mps_softc*, %struct.mps_softc** %4, align 8
  %45 = call i32 @mps_read_config_page(%struct.mps_softc* %44, %struct.mps_config_params* %7)
  store i32 %45, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %2
  %48 = load %struct.mps_softc*, %struct.mps_softc** %4, align 8
  %49 = call i32 @mps_printf(%struct.mps_softc* %48, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %50, i32* %3, align 4
  br label %96

51:                                               ; preds = %2
  %52 = getelementptr inbounds %struct.mps_config_params, %struct.mps_config_params* %7, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @htole16(i32 %53)
  %55 = load %struct.mps_ext_cfg_page_req*, %struct.mps_ext_cfg_page_req** %5, align 8
  %56 = getelementptr inbounds %struct.mps_ext_cfg_page_req, %struct.mps_ext_cfg_page_req* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.mps_ext_cfg_page_req*, %struct.mps_ext_cfg_page_req** %5, align 8
  %58 = getelementptr inbounds %struct.mps_ext_cfg_page_req, %struct.mps_ext_cfg_page_req* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @MPI2_IOCSTATUS_MASK, align 4
  %61 = and i32 %59, %60
  %62 = load i32, i32* @MPI2_IOCSTATUS_SUCCESS, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %95

64:                                               ; preds = %51
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.mps_ext_cfg_page_req*, %struct.mps_ext_cfg_page_req** %5, align 8
  %69 = getelementptr inbounds %struct.mps_ext_cfg_page_req, %struct.mps_ext_cfg_page_req* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 4
  store i32 %67, i32* %70, align 8
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.mps_ext_cfg_page_req*, %struct.mps_ext_cfg_page_req** %5, align 8
  %75 = getelementptr inbounds %struct.mps_ext_cfg_page_req, %struct.mps_ext_cfg_page_req* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 3
  store i32 %73, i32* %76, align 4
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.mps_ext_cfg_page_req*, %struct.mps_ext_cfg_page_req** %5, align 8
  %81 = getelementptr inbounds %struct.mps_ext_cfg_page_req, %struct.mps_ext_cfg_page_req* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 2
  store i32 %79, i32* %82, align 8
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.mps_ext_cfg_page_req*, %struct.mps_ext_cfg_page_req** %5, align 8
  %87 = getelementptr inbounds %struct.mps_ext_cfg_page_req, %struct.mps_ext_cfg_page_req* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  store i64 %85, i64* %88, align 8
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.mps_ext_cfg_page_req*, %struct.mps_ext_cfg_page_req** %5, align 8
  %93 = getelementptr inbounds %struct.mps_ext_cfg_page_req, %struct.mps_ext_cfg_page_req* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  store i32 %91, i32* %94, align 8
  br label %95

95:                                               ; preds = %64, %51
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %95, %47
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @le32toh(i32) #1

declare dso_local i32 @mps_read_config_page(%struct.mps_softc*, %struct.mps_config_params*) #1

declare dso_local i32 @mps_printf(%struct.mps_softc*, i8*) #1

declare dso_local i32 @htole16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
