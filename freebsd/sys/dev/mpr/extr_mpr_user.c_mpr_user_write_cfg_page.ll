; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr_user.c_mpr_user_write_cfg_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr_user.c_mpr_user_write_cfg_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpr_softc = type { i32 }
%struct.mpr_cfg_page_req = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.mpr_config_params = type { i32, i32*, i8*, i8*, i8*, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }

@MPI2_CONFIG_PAGEATTR_MASK = common dso_local global i32 0, align 4
@MPI2_CONFIG_PAGEATTR_CHANGEABLE = common dso_local global i32 0, align 4
@MPI2_CONFIG_PAGEATTR_PERSISTENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"page type 0x%x not changeable\0A\00", align 1
@MPI2_CONFIG_PAGETYPE_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MPI2_CONFIG_ACTION_PAGE_WRITE_CURRENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"mpr_write_cfg_page timed out\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpr_softc*, %struct.mpr_cfg_page_req*, i8*)* @mpr_user_write_cfg_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpr_user_write_cfg_page(%struct.mpr_softc* %0, %struct.mpr_cfg_page_req* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mpr_softc*, align 8
  %6 = alloca %struct.mpr_cfg_page_req*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca %struct.mpr_config_params, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mpr_softc* %0, %struct.mpr_softc** %5, align 8
  store %struct.mpr_cfg_page_req* %1, %struct.mpr_cfg_page_req** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %8, align 8
  %15 = getelementptr inbounds %struct.mpr_config_params, %struct.mpr_config_params* %10, i32 0, i32 6
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %9, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @MPI2_CONFIG_PAGEATTR_MASK, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* @MPI2_CONFIG_PAGEATTR_CHANGEABLE, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %3
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @MPI2_CONFIG_PAGEATTR_PERSISTENT, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %25
  %30 = load %struct.mpr_softc*, %struct.mpr_softc** %5, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @MPI2_CONFIG_PAGETYPE_MASK, align 4
  %35 = and i32 %33, %34
  %36 = call i32 (%struct.mpr_softc*, i8*, ...) @mpr_printf(%struct.mpr_softc* %30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @EINVAL, align 4
  store i32 %37, i32* %4, align 4
  br label %87

38:                                               ; preds = %25, %3
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @MPI2_CONFIG_ACTION_PAGE_WRITE_CURRENT, align 4
  %60 = getelementptr inbounds %struct.mpr_config_params, %struct.mpr_config_params* %10, i32 0, i32 5
  store i32 %59, i32* %60, align 8
  %61 = load %struct.mpr_cfg_page_req*, %struct.mpr_cfg_page_req** %6, align 8
  %62 = getelementptr inbounds %struct.mpr_cfg_page_req, %struct.mpr_cfg_page_req* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @le32toh(i32 %63)
  %65 = getelementptr inbounds %struct.mpr_config_params, %struct.mpr_config_params* %10, i32 0, i32 4
  store i8* %64, i8** %65, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = getelementptr inbounds %struct.mpr_config_params, %struct.mpr_config_params* %10, i32 0, i32 3
  store i8* %66, i8** %67, align 8
  %68 = load %struct.mpr_cfg_page_req*, %struct.mpr_cfg_page_req** %6, align 8
  %69 = getelementptr inbounds %struct.mpr_cfg_page_req, %struct.mpr_cfg_page_req* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i8* @le32toh(i32 %70)
  %72 = getelementptr inbounds %struct.mpr_config_params, %struct.mpr_config_params* %10, i32 0, i32 2
  store i8* %71, i8** %72, align 8
  %73 = getelementptr inbounds %struct.mpr_config_params, %struct.mpr_config_params* %10, i32 0, i32 1
  store i32* null, i32** %73, align 8
  %74 = load %struct.mpr_softc*, %struct.mpr_softc** %5, align 8
  %75 = call i32 @mpr_write_config_page(%struct.mpr_softc* %74, %struct.mpr_config_params* %10)
  store i32 %75, i32* %12, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %38
  %78 = load %struct.mpr_softc*, %struct.mpr_softc** %5, align 8
  %79 = call i32 (%struct.mpr_softc*, i8*, ...) @mpr_printf(%struct.mpr_softc* %78, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %80 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %80, i32* %4, align 4
  br label %87

81:                                               ; preds = %38
  %82 = getelementptr inbounds %struct.mpr_config_params, %struct.mpr_config_params* %10, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @htole16(i32 %83)
  %85 = load %struct.mpr_cfg_page_req*, %struct.mpr_cfg_page_req** %6, align 8
  %86 = getelementptr inbounds %struct.mpr_cfg_page_req, %struct.mpr_cfg_page_req* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 4
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %81, %77, %29
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i32 @mpr_printf(%struct.mpr_softc*, i8*, ...) #1

declare dso_local i8* @le32toh(i32) #1

declare dso_local i32 @mpr_write_config_page(%struct.mpr_softc*, %struct.mpr_config_params*) #1

declare dso_local i32 @htole16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
