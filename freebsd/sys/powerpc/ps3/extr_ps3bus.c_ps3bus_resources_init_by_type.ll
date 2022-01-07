; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/ps3/extr_ps3bus.c_ps3bus_resources_init_by_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/ps3/extr_ps3bus.c_ps3bus_resources_init_by_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rman = type { i32 }
%struct.ps3bus_devinfo = type { i32, i32, i32, i32, i32 }

@PS3_LPAR_ID_PME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"bus\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"intr\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.6 = private unnamed_addr constant [57 x i8] c"Mapping registers failed for device %d.%d (%ld.%ld): %d\0A\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rman*, i32, i32, i64, i64, %struct.ps3bus_devinfo*)* @ps3bus_resources_init_by_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ps3bus_resources_init_by_type(%struct.rman* %0, i32 %1, i32 %2, i64 %3, i64 %4, %struct.ps3bus_devinfo* %5) #0 {
  %7 = alloca %struct.rman*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ps3bus_devinfo*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.rman* %0, %struct.rman** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store %struct.ps3bus_devinfo* %5, %struct.ps3bus_devinfo** %12, align 8
  %24 = load %struct.ps3bus_devinfo*, %struct.ps3bus_devinfo** %12, align 8
  %25 = getelementptr inbounds %struct.ps3bus_devinfo, %struct.ps3bus_devinfo* %24, i32 0, i32 2
  %26 = call i32 @resource_list_init(i32* %25)
  %27 = call i32 @lv1_get_logical_ppe_id(i64* %19)
  %28 = call i32 (...) @mfctrl()
  %29 = call i32 @fls(i32 %28)
  %30 = sub nsw i32 32, %29
  store i32 %30, i32* %23, align 4
  store i32 0, i32* %21, align 4
  br label %31

31:                                               ; preds = %70, %6
  %32 = load i32, i32* %21, align 4
  %33 = icmp slt i32 %32, 10
  br i1 %33, label %34, label %73

34:                                               ; preds = %31
  %35 = load i32, i32* @PS3_LPAR_ID_PME, align 4
  %36 = call i32 @lv1_repository_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %37 = ashr i32 %36, 32
  %38 = load i32, i32* %8, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @lv1_repository_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* %9, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @lv1_repository_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i32, i32* %21, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @lv1_get_repository_node_value(i32 %35, i32 %39, i32 %42, i32 %45, i32 0, i64* %13, i64* %14)
  store i32 %46, i32* %22, align 4
  %47 = load i32, i32* %22, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %34
  br label %73

50:                                               ; preds = %34
  %51 = load i64, i64* %13, align 8
  %52 = load i64, i64* %10, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %70

55:                                               ; preds = %50
  %56 = load i64, i64* %14, align 8
  %57 = call i32 @lv1_construct_io_irq_outlet(i64 %56, i64* %15)
  %58 = load i64, i64* %19, align 8
  %59 = load i32, i32* %23, align 4
  %60 = load i64, i64* %15, align 8
  %61 = load i64, i64* %15, align 8
  %62 = call i32 @lv1_connect_irq_plug_ext(i64 %58, i32 %59, i64 %60, i64 %61, i32 0)
  %63 = load %struct.ps3bus_devinfo*, %struct.ps3bus_devinfo** %12, align 8
  %64 = getelementptr inbounds %struct.ps3bus_devinfo, %struct.ps3bus_devinfo* %63, i32 0, i32 2
  %65 = load i32, i32* @SYS_RES_IRQ, align 4
  %66 = load i32, i32* %21, align 4
  %67 = load i64, i64* %15, align 8
  %68 = load i64, i64* %15, align 8
  %69 = call i32 @resource_list_add(i32* %64, i32 %65, i32 %66, i64 %67, i64 %68, i64 1)
  br label %70

70:                                               ; preds = %55, %54
  %71 = load i32, i32* %21, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %21, align 4
  br label %31

73:                                               ; preds = %49, %31
  store i32 0, i32* %21, align 4
  br label %74

74:                                               ; preds = %157, %73
  %75 = load i32, i32* %21, align 4
  %76 = icmp slt i32 %75, 10
  br i1 %76, label %77, label %160

77:                                               ; preds = %74
  %78 = load i32, i32* @PS3_LPAR_ID_PME, align 4
  %79 = call i32 @lv1_repository_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %80 = ashr i32 %79, 32
  %81 = load i32, i32* %8, align 4
  %82 = or i32 %80, %81
  %83 = call i32 @lv1_repository_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %84 = load i32, i32* %9, align 4
  %85 = or i32 %83, %84
  %86 = call i32 @lv1_repository_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %87 = load i32, i32* %21, align 4
  %88 = or i32 %86, %87
  %89 = call i32 @lv1_repository_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %90 = call i32 @lv1_get_repository_node_value(i32 %78, i32 %82, i32 %85, i32 %88, i32 %89, i64* %16, i64* %20)
  store i32 %90, i32* %22, align 4
  %91 = load i32, i32* %22, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %77
  br label %160

94:                                               ; preds = %77
  %95 = load i64, i64* %16, align 8
  %96 = load i64, i64* %11, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  br label %157

99:                                               ; preds = %94
  %100 = load i32, i32* @PS3_LPAR_ID_PME, align 4
  %101 = call i32 @lv1_repository_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %102 = ashr i32 %101, 32
  %103 = load i32, i32* %8, align 4
  %104 = or i32 %102, %103
  %105 = call i32 @lv1_repository_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %106 = load i32, i32* %9, align 4
  %107 = or i32 %105, %106
  %108 = call i32 @lv1_repository_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %109 = load i32, i32* %21, align 4
  %110 = or i32 %108, %109
  %111 = call i32 @lv1_repository_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %112 = call i32 @lv1_get_repository_node_value(i32 %100, i32 %104, i32 %107, i32 %110, i32 %111, i64* %17, i64* %18)
  store i32 %112, i32* %22, align 4
  %113 = load %struct.ps3bus_devinfo*, %struct.ps3bus_devinfo** %12, align 8
  %114 = getelementptr inbounds %struct.ps3bus_devinfo, %struct.ps3bus_devinfo* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.ps3bus_devinfo*, %struct.ps3bus_devinfo** %12, align 8
  %117 = getelementptr inbounds %struct.ps3bus_devinfo, %struct.ps3bus_devinfo* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i64, i64* %17, align 8
  %120 = load i64, i64* %18, align 8
  %121 = call i32 @lv1_map_device_mmio_region(i32 %115, i32 %118, i64 %119, i64 %120, i32 12, i64* %17)
  store i32 %121, i32* %22, align 4
  %122 = load i32, i32* %22, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %139

124:                                              ; preds = %99
  %125 = load %struct.ps3bus_devinfo*, %struct.ps3bus_devinfo** %12, align 8
  %126 = getelementptr inbounds %struct.ps3bus_devinfo, %struct.ps3bus_devinfo* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.ps3bus_devinfo*, %struct.ps3bus_devinfo** %12, align 8
  %129 = getelementptr inbounds %struct.ps3bus_devinfo, %struct.ps3bus_devinfo* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.ps3bus_devinfo*, %struct.ps3bus_devinfo** %12, align 8
  %132 = getelementptr inbounds %struct.ps3bus_devinfo, %struct.ps3bus_devinfo* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.ps3bus_devinfo*, %struct.ps3bus_devinfo** %12, align 8
  %135 = getelementptr inbounds %struct.ps3bus_devinfo, %struct.ps3bus_devinfo* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %22, align 4
  %138 = call i32 @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.6, i64 0, i64 0), i32 %127, i32 %130, i32 %133, i32 %136, i32 %137)
  br label %160

139:                                              ; preds = %99
  %140 = load %struct.rman*, %struct.rman** %7, align 8
  %141 = load i64, i64* %17, align 8
  %142 = load i64, i64* %17, align 8
  %143 = load i64, i64* %18, align 8
  %144 = add nsw i64 %142, %143
  %145 = sub nsw i64 %144, 1
  %146 = call i32 @rman_manage_region(%struct.rman* %140, i64 %141, i64 %145)
  %147 = load %struct.ps3bus_devinfo*, %struct.ps3bus_devinfo** %12, align 8
  %148 = getelementptr inbounds %struct.ps3bus_devinfo, %struct.ps3bus_devinfo* %147, i32 0, i32 2
  %149 = load i32, i32* @SYS_RES_MEMORY, align 4
  %150 = load i32, i32* %21, align 4
  %151 = load i64, i64* %17, align 8
  %152 = load i64, i64* %17, align 8
  %153 = load i64, i64* %18, align 8
  %154 = add nsw i64 %152, %153
  %155 = load i64, i64* %18, align 8
  %156 = call i32 @resource_list_add(i32* %148, i32 %149, i32 %150, i64 %151, i64 %154, i64 %155)
  br label %157

157:                                              ; preds = %139, %98
  %158 = load i32, i32* %21, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %21, align 4
  br label %74

160:                                              ; preds = %124, %93, %74
  ret void
}

declare dso_local i32 @resource_list_init(i32*) #1

declare dso_local i32 @lv1_get_logical_ppe_id(i64*) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @mfctrl(...) #1

declare dso_local i32 @lv1_get_repository_node_value(i32, i32, i32, i32, i32, i64*, i64*) #1

declare dso_local i32 @lv1_repository_string(i8*) #1

declare dso_local i32 @lv1_construct_io_irq_outlet(i64, i64*) #1

declare dso_local i32 @lv1_connect_irq_plug_ext(i64, i32, i64, i64, i32) #1

declare dso_local i32 @resource_list_add(i32*, i32, i32, i64, i64, i64) #1

declare dso_local i32 @lv1_map_device_mmio_region(i32, i32, i64, i64, i32, i64*) #1

declare dso_local i32 @printf(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @rman_manage_region(%struct.rman*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
