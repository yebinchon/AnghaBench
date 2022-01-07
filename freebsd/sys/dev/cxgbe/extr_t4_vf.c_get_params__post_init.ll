; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_vf.c_get_params__post_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_vf.c_get_params__post_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"unable to retrieve adapter SGE parameters: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"unable to retrieve adapter RSS parameters: %d\0A\00", align 1
@FW_RSS_GLB_CONFIG_CMD_MODE_BASICVIRTUAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"unable to operate with global RSS mode %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"unable to get virtual interface resources: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"no port access configured/usable!\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"no virtual interfaces configured/usable!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*)* @get_params__post_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_params__post_init(%struct.adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  %5 = load %struct.adapter*, %struct.adapter** %3, align 8
  %6 = call i32 @t4vf_get_sge_params(%struct.adapter* %5)
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.adapter*, %struct.adapter** %3, align 8
  %12 = getelementptr inbounds %struct.adapter, %struct.adapter* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 (i32, i8*, ...) @device_printf(i32 %13, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %104

17:                                               ; preds = %1
  %18 = load %struct.adapter*, %struct.adapter** %3, align 8
  %19 = call i32 @t4vf_get_rss_glb_config(%struct.adapter* %18)
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %17
  %24 = load %struct.adapter*, %struct.adapter** %3, align 8
  %25 = getelementptr inbounds %struct.adapter, %struct.adapter* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 (i32, i8*, ...) @device_printf(i32 %26, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %104

30:                                               ; preds = %17
  %31 = load %struct.adapter*, %struct.adapter** %3, align 8
  %32 = getelementptr inbounds %struct.adapter, %struct.adapter* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @FW_RSS_GLB_CONFIG_CMD_MODE_BASICVIRTUAL, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %30
  %39 = load %struct.adapter*, %struct.adapter** %3, align 8
  %40 = getelementptr inbounds %struct.adapter, %struct.adapter* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.adapter*, %struct.adapter** %3, align 8
  %43 = getelementptr inbounds %struct.adapter, %struct.adapter* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 (i32, i8*, ...) @device_printf(i32 %41, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @EINVAL, align 4
  store i32 %48, i32* %2, align 4
  br label %104

49:                                               ; preds = %30
  %50 = load %struct.adapter*, %struct.adapter** %3, align 8
  %51 = call i32 @t4_read_chip_settings(%struct.adapter* %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* %4, align 4
  store i32 %55, i32* %2, align 4
  br label %104

56:                                               ; preds = %49
  %57 = load %struct.adapter*, %struct.adapter** %3, align 8
  %58 = call i32 @t4vf_get_vfres(%struct.adapter* %57)
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %56
  %63 = load %struct.adapter*, %struct.adapter** %3, align 8
  %64 = getelementptr inbounds %struct.adapter, %struct.adapter* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = call i32 (i32, i8*, ...) @device_printf(i32 %65, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* %4, align 4
  store i32 %68, i32* %2, align 4
  br label %104

69:                                               ; preds = %56
  %70 = load %struct.adapter*, %struct.adapter** %3, align 8
  %71 = getelementptr inbounds %struct.adapter, %struct.adapter* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %69
  %77 = load %struct.adapter*, %struct.adapter** %3, align 8
  %78 = getelementptr inbounds %struct.adapter, %struct.adapter* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 (i32, i8*, ...) @device_printf(i32 %79, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %81 = load i32, i32* @EINVAL, align 4
  store i32 %81, i32* %2, align 4
  br label %104

82:                                               ; preds = %69
  %83 = load %struct.adapter*, %struct.adapter** %3, align 8
  %84 = getelementptr inbounds %struct.adapter, %struct.adapter* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %82
  %90 = load %struct.adapter*, %struct.adapter** %3, align 8
  %91 = getelementptr inbounds %struct.adapter, %struct.adapter* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call i32 (i32, i8*, ...) @device_printf(i32 %92, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  %94 = load i32, i32* @EINVAL, align 4
  store i32 %94, i32* %2, align 4
  br label %104

95:                                               ; preds = %82
  %96 = load %struct.adapter*, %struct.adapter** %3, align 8
  %97 = getelementptr inbounds %struct.adapter, %struct.adapter* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.adapter*, %struct.adapter** %3, align 8
  %102 = getelementptr inbounds %struct.adapter, %struct.adapter* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  store i64 %100, i64* %103, align 8
  store i32 0, i32* %2, align 4
  br label %104

104:                                              ; preds = %95, %89, %76, %62, %54, %38, %23, %10
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i32 @t4vf_get_sge_params(%struct.adapter*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @t4vf_get_rss_glb_config(%struct.adapter*) #1

declare dso_local i32 @t4_read_chip_settings(%struct.adapter*) #1

declare dso_local i32 @t4vf_get_vfres(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
