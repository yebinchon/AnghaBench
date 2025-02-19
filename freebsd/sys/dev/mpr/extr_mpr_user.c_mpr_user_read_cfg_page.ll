; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr_user.c_mpr_user_read_cfg_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr_user.c_mpr_user_read_cfg_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpr_softc = type { i32 }
%struct.mpr_cfg_page_req = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.mpr_config_params = type { i32, i32*, i8*, i8*, i8*, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }

@MPI2_CONFIG_PAGETYPE_MASK = common dso_local global i32 0, align 4
@MPI2_CONFIG_ACTION_PAGE_READ_CURRENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"mpr_user_read_cfg_page timed out\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpr_softc*, %struct.mpr_cfg_page_req*, i8*)* @mpr_user_read_cfg_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpr_user_read_cfg_page(%struct.mpr_softc* %0, %struct.mpr_cfg_page_req* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mpr_softc*, align 8
  %6 = alloca %struct.mpr_cfg_page_req*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca %struct.mpr_config_params, align 8
  %11 = alloca i32, align 4
  store %struct.mpr_softc* %0, %struct.mpr_softc** %5, align 8
  store %struct.mpr_cfg_page_req* %1, %struct.mpr_cfg_page_req** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %8, align 8
  %14 = getelementptr inbounds %struct.mpr_config_params, %struct.mpr_config_params* %10, i32 0, i32 6
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %9, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @MPI2_CONFIG_PAGETYPE_MASK, align 4
  %35 = and i32 %33, %34
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @MPI2_CONFIG_ACTION_PAGE_READ_CURRENT, align 4
  %39 = getelementptr inbounds %struct.mpr_config_params, %struct.mpr_config_params* %10, i32 0, i32 5
  store i32 %38, i32* %39, align 8
  %40 = load %struct.mpr_cfg_page_req*, %struct.mpr_cfg_page_req** %6, align 8
  %41 = getelementptr inbounds %struct.mpr_cfg_page_req, %struct.mpr_cfg_page_req* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @le32toh(i32 %42)
  %44 = getelementptr inbounds %struct.mpr_config_params, %struct.mpr_config_params* %10, i32 0, i32 4
  store i8* %43, i8** %44, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = getelementptr inbounds %struct.mpr_config_params, %struct.mpr_config_params* %10, i32 0, i32 3
  store i8* %45, i8** %46, align 8
  %47 = load %struct.mpr_cfg_page_req*, %struct.mpr_cfg_page_req** %6, align 8
  %48 = getelementptr inbounds %struct.mpr_cfg_page_req, %struct.mpr_cfg_page_req* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @le32toh(i32 %49)
  %51 = getelementptr inbounds %struct.mpr_config_params, %struct.mpr_config_params* %10, i32 0, i32 2
  store i8* %50, i8** %51, align 8
  %52 = getelementptr inbounds %struct.mpr_config_params, %struct.mpr_config_params* %10, i32 0, i32 1
  store i32* null, i32** %52, align 8
  %53 = load %struct.mpr_softc*, %struct.mpr_softc** %5, align 8
  %54 = call i32 @mpr_read_config_page(%struct.mpr_softc* %53, %struct.mpr_config_params* %10)
  store i32 %54, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %3
  %57 = load %struct.mpr_softc*, %struct.mpr_softc** %5, align 8
  %58 = call i32 @mpr_printf(%struct.mpr_softc* %57, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %59 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %59, i32* %4, align 4
  br label %66

60:                                               ; preds = %3
  %61 = getelementptr inbounds %struct.mpr_config_params, %struct.mpr_config_params* %10, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @htole16(i32 %62)
  %64 = load %struct.mpr_cfg_page_req*, %struct.mpr_cfg_page_req** %6, align 8
  %65 = getelementptr inbounds %struct.mpr_cfg_page_req, %struct.mpr_cfg_page_req* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %60, %56
  %67 = load i32, i32* %4, align 4
  ret i32 %67
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
