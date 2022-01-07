; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr_user.c_mpr_user_read_extcfg_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr_user.c_mpr_user_read_extcfg_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpr_softc = type { i32 }
%struct.mpr_ext_cfg_page_req = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.mpr_config_params = type { i32, i32*, i8*, i8*, i8*, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }

@MPI2_CONFIG_ACTION_PAGE_READ_CURRENT = common dso_local global i32 0, align 4
@MPI2_CONFIG_PAGETYPE_EXTENDED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"mpr_user_read_extcfg_page timed out\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpr_softc*, %struct.mpr_ext_cfg_page_req*, i8*)* @mpr_user_read_extcfg_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpr_user_read_extcfg_page(%struct.mpr_softc* %0, %struct.mpr_ext_cfg_page_req* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mpr_softc*, align 8
  %6 = alloca %struct.mpr_ext_cfg_page_req*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca %struct.mpr_config_params, align 8
  %11 = alloca i32, align 4
  store %struct.mpr_softc* %0, %struct.mpr_softc** %5, align 8
  store %struct.mpr_ext_cfg_page_req* %1, %struct.mpr_ext_cfg_page_req** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %8, align 8
  %14 = getelementptr inbounds %struct.mpr_config_params, %struct.mpr_config_params* %10, i32 0, i32 6
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %9, align 8
  %16 = load i32, i32* @MPI2_CONFIG_ACTION_PAGE_READ_CURRENT, align 4
  %17 = getelementptr inbounds %struct.mpr_config_params, %struct.mpr_config_params* %10, i32 0, i32 5
  store i32 %16, i32* %17, align 8
  %18 = load %struct.mpr_ext_cfg_page_req*, %struct.mpr_ext_cfg_page_req** %6, align 8
  %19 = getelementptr inbounds %struct.mpr_ext_cfg_page_req, %struct.mpr_ext_cfg_page_req* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i8* @le32toh(i32 %20)
  %22 = getelementptr inbounds %struct.mpr_config_params, %struct.mpr_config_params* %10, i32 0, i32 4
  store i8* %21, i8** %22, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @MPI2_CONFIG_PAGETYPE_EXTENDED, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load i8*, i8** %7, align 8
  %47 = getelementptr inbounds %struct.mpr_config_params, %struct.mpr_config_params* %10, i32 0, i32 3
  store i8* %46, i8** %47, align 8
  %48 = load %struct.mpr_ext_cfg_page_req*, %struct.mpr_ext_cfg_page_req** %6, align 8
  %49 = getelementptr inbounds %struct.mpr_ext_cfg_page_req, %struct.mpr_ext_cfg_page_req* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @le32toh(i32 %50)
  %52 = getelementptr inbounds %struct.mpr_config_params, %struct.mpr_config_params* %10, i32 0, i32 2
  store i8* %51, i8** %52, align 8
  %53 = getelementptr inbounds %struct.mpr_config_params, %struct.mpr_config_params* %10, i32 0, i32 1
  store i32* null, i32** %53, align 8
  %54 = load %struct.mpr_softc*, %struct.mpr_softc** %5, align 8
  %55 = call i32 @mpr_read_config_page(%struct.mpr_softc* %54, %struct.mpr_config_params* %10)
  store i32 %55, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %3
  %58 = load %struct.mpr_softc*, %struct.mpr_softc** %5, align 8
  %59 = call i32 @mpr_printf(%struct.mpr_softc* %58, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %60 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %60, i32* %4, align 4
  br label %67

61:                                               ; preds = %3
  %62 = getelementptr inbounds %struct.mpr_config_params, %struct.mpr_config_params* %10, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @htole16(i32 %63)
  %65 = load %struct.mpr_ext_cfg_page_req*, %struct.mpr_ext_cfg_page_req** %6, align 8
  %66 = getelementptr inbounds %struct.mpr_ext_cfg_page_req, %struct.mpr_ext_cfg_page_req* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %61, %57
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i8* @le32toh(i32) #1

declare dso_local i32 @mpr_read_config_page(%struct.mpr_softc*, %struct.mpr_config_params*) #1

declare dso_local i32 @mpr_printf(%struct.mpr_softc*, i8*) #1

declare dso_local i32 @htole16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
