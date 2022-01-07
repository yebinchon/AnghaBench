; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_drv.c_dmar_alloc_irq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_drv.c_dmar_alloc_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_unit = type { %struct.dmar_msi_data* }
%struct.dmar_msi_data = type { i32, i32, i32*, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"cannot allocate %s interrupt, %d\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"cannot set %s interrupt resource, %d\0A\00", align 1
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"cannot allocate resource for %s interrupt\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"cannot setup %s interrupt, %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"cannot map %s interrupt, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.dmar_unit*, i32)* @dmar_alloc_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmar_alloc_irq(i32 %0, %struct.dmar_unit* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.dmar_unit*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dmar_msi_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.dmar_unit* %1, %struct.dmar_unit** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.dmar_unit*, %struct.dmar_unit** %6, align 8
  %14 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %13, i32 0, i32 0
  %15 = load %struct.dmar_msi_data*, %struct.dmar_msi_data** %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.dmar_msi_data, %struct.dmar_msi_data* %15, i64 %17
  store %struct.dmar_msi_data* %18, %struct.dmar_msi_data** %9, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @device_get_parent(i32 %19)
  %21 = call i32 @device_get_parent(i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.dmar_msi_data*, %struct.dmar_msi_data** %9, align 8
  %25 = getelementptr inbounds %struct.dmar_msi_data, %struct.dmar_msi_data* %24, i32 0, i32 0
  %26 = call i32 @PCIB_ALLOC_MSIX(i32 %22, i32 %23, i32* %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %3
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.dmar_msi_data*, %struct.dmar_msi_data** %9, align 8
  %32 = getelementptr inbounds %struct.dmar_msi_data, %struct.dmar_msi_data* %31, i32 0, i32 7
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %12, align 4
  %35 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %30, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34)
  br label %179

36:                                               ; preds = %3
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @SYS_RES_IRQ, align 4
  %39 = load %struct.dmar_msi_data*, %struct.dmar_msi_data** %9, align 8
  %40 = getelementptr inbounds %struct.dmar_msi_data, %struct.dmar_msi_data* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.dmar_msi_data*, %struct.dmar_msi_data** %9, align 8
  %43 = getelementptr inbounds %struct.dmar_msi_data, %struct.dmar_msi_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @bus_set_resource(i32 %37, i32 %38, i32 %41, i32 %44, i32 1)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %36
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.dmar_msi_data*, %struct.dmar_msi_data** %9, align 8
  %51 = getelementptr inbounds %struct.dmar_msi_data, %struct.dmar_msi_data* %50, i32 0, i32 7
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %12, align 4
  %54 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %49, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %53)
  br label %170

55:                                               ; preds = %36
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @SYS_RES_IRQ, align 4
  %58 = load %struct.dmar_msi_data*, %struct.dmar_msi_data** %9, align 8
  %59 = getelementptr inbounds %struct.dmar_msi_data, %struct.dmar_msi_data* %58, i32 0, i32 1
  %60 = load i32, i32* @RF_ACTIVE, align 4
  %61 = call i32* @bus_alloc_resource_any(i32 %56, i32 %57, i32* %59, i32 %60)
  %62 = load %struct.dmar_msi_data*, %struct.dmar_msi_data** %9, align 8
  %63 = getelementptr inbounds %struct.dmar_msi_data, %struct.dmar_msi_data* %62, i32 0, i32 2
  store i32* %61, i32** %63, align 8
  %64 = load %struct.dmar_msi_data*, %struct.dmar_msi_data** %9, align 8
  %65 = getelementptr inbounds %struct.dmar_msi_data, %struct.dmar_msi_data* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %75

68:                                               ; preds = %55
  %69 = load i32, i32* %5, align 4
  %70 = load %struct.dmar_msi_data*, %struct.dmar_msi_data** %9, align 8
  %71 = getelementptr inbounds %struct.dmar_msi_data, %struct.dmar_msi_data* %70, i32 0, i32 7
  %72 = load i32, i32* %71, align 8
  %73 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %69, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* @ENXIO, align 4
  store i32 %74, i32* %12, align 4
  br label %163

75:                                               ; preds = %55
  %76 = load i32, i32* %5, align 4
  %77 = load %struct.dmar_msi_data*, %struct.dmar_msi_data** %9, align 8
  %78 = getelementptr inbounds %struct.dmar_msi_data, %struct.dmar_msi_data* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* @INTR_TYPE_MISC, align 4
  %81 = load %struct.dmar_msi_data*, %struct.dmar_msi_data** %9, align 8
  %82 = getelementptr inbounds %struct.dmar_msi_data, %struct.dmar_msi_data* %81, i32 0, i32 8
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.dmar_unit*, %struct.dmar_unit** %6, align 8
  %85 = load %struct.dmar_msi_data*, %struct.dmar_msi_data** %9, align 8
  %86 = getelementptr inbounds %struct.dmar_msi_data, %struct.dmar_msi_data* %85, i32 0, i32 3
  %87 = call i32 @bus_setup_intr(i32 %76, i32* %79, i32 %80, i32 %83, i32* null, %struct.dmar_unit* %84, i32* %86)
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %12, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %75
  %91 = load i32, i32* %5, align 4
  %92 = load %struct.dmar_msi_data*, %struct.dmar_msi_data** %9, align 8
  %93 = getelementptr inbounds %struct.dmar_msi_data, %struct.dmar_msi_data* %92, i32 0, i32 7
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %12, align 4
  %96 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %91, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %94, i32 %95)
  br label %153

97:                                               ; preds = %75
  %98 = load i32, i32* %5, align 4
  %99 = load %struct.dmar_msi_data*, %struct.dmar_msi_data** %9, align 8
  %100 = getelementptr inbounds %struct.dmar_msi_data, %struct.dmar_msi_data* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  %102 = load %struct.dmar_msi_data*, %struct.dmar_msi_data** %9, align 8
  %103 = getelementptr inbounds %struct.dmar_msi_data, %struct.dmar_msi_data* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.dmar_msi_data*, %struct.dmar_msi_data** %9, align 8
  %106 = getelementptr inbounds %struct.dmar_msi_data, %struct.dmar_msi_data* %105, i32 0, i32 7
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @bus_describe_intr(i32 %98, i32* %101, i32 %104, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %107)
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* %5, align 4
  %111 = load %struct.dmar_msi_data*, %struct.dmar_msi_data** %9, align 8
  %112 = getelementptr inbounds %struct.dmar_msi_data, %struct.dmar_msi_data* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @PCIB_MAP_MSI(i32 %109, i32 %110, i32 %113, i32* %10, i32* %11)
  store i32 %114, i32* %12, align 4
  %115 = load i32, i32* %12, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %97
  %118 = load i32, i32* %5, align 4
  %119 = load %struct.dmar_msi_data*, %struct.dmar_msi_data** %9, align 8
  %120 = getelementptr inbounds %struct.dmar_msi_data, %struct.dmar_msi_data* %119, i32 0, i32 7
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* %12, align 4
  %123 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %118, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %121, i32 %122)
  br label %144

124:                                              ; preds = %97
  %125 = load %struct.dmar_unit*, %struct.dmar_unit** %6, align 8
  %126 = load %struct.dmar_msi_data*, %struct.dmar_msi_data** %9, align 8
  %127 = getelementptr inbounds %struct.dmar_msi_data, %struct.dmar_msi_data* %126, i32 0, i32 6
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %11, align 4
  %130 = call i32 @dmar_write4(%struct.dmar_unit* %125, i32 %128, i32 %129)
  %131 = load %struct.dmar_unit*, %struct.dmar_unit** %6, align 8
  %132 = load %struct.dmar_msi_data*, %struct.dmar_msi_data** %9, align 8
  %133 = getelementptr inbounds %struct.dmar_msi_data, %struct.dmar_msi_data* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* %10, align 4
  %136 = call i32 @dmar_write4(%struct.dmar_unit* %131, i32 %134, i32 %135)
  %137 = load %struct.dmar_unit*, %struct.dmar_unit** %6, align 8
  %138 = load %struct.dmar_msi_data*, %struct.dmar_msi_data** %9, align 8
  %139 = getelementptr inbounds %struct.dmar_msi_data, %struct.dmar_msi_data* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %10, align 4
  %142 = ashr i32 %141, 32
  %143 = call i32 @dmar_write4(%struct.dmar_unit* %137, i32 %140, i32 %142)
  store i32 0, i32* %4, align 4
  br label %181

144:                                              ; preds = %117
  %145 = load i32, i32* %5, align 4
  %146 = load %struct.dmar_msi_data*, %struct.dmar_msi_data** %9, align 8
  %147 = getelementptr inbounds %struct.dmar_msi_data, %struct.dmar_msi_data* %146, i32 0, i32 2
  %148 = load i32*, i32** %147, align 8
  %149 = load %struct.dmar_msi_data*, %struct.dmar_msi_data** %9, align 8
  %150 = getelementptr inbounds %struct.dmar_msi_data, %struct.dmar_msi_data* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @bus_teardown_intr(i32 %145, i32* %148, i32 %151)
  br label %153

153:                                              ; preds = %144, %90
  %154 = load i32, i32* %5, align 4
  %155 = load i32, i32* @SYS_RES_IRQ, align 4
  %156 = load %struct.dmar_msi_data*, %struct.dmar_msi_data** %9, align 8
  %157 = getelementptr inbounds %struct.dmar_msi_data, %struct.dmar_msi_data* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.dmar_msi_data*, %struct.dmar_msi_data** %9, align 8
  %160 = getelementptr inbounds %struct.dmar_msi_data, %struct.dmar_msi_data* %159, i32 0, i32 2
  %161 = load i32*, i32** %160, align 8
  %162 = call i32 @bus_release_resource(i32 %154, i32 %155, i32 %158, i32* %161)
  br label %163

163:                                              ; preds = %153, %68
  %164 = load i32, i32* %5, align 4
  %165 = load i32, i32* @SYS_RES_IRQ, align 4
  %166 = load %struct.dmar_msi_data*, %struct.dmar_msi_data** %9, align 8
  %167 = getelementptr inbounds %struct.dmar_msi_data, %struct.dmar_msi_data* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @bus_delete_resource(i32 %164, i32 %165, i32 %168)
  br label %170

170:                                              ; preds = %163, %48
  %171 = load i32, i32* %8, align 4
  %172 = load i32, i32* %5, align 4
  %173 = load %struct.dmar_msi_data*, %struct.dmar_msi_data** %9, align 8
  %174 = getelementptr inbounds %struct.dmar_msi_data, %struct.dmar_msi_data* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @PCIB_RELEASE_MSIX(i32 %171, i32 %172, i32 %175)
  %177 = load %struct.dmar_msi_data*, %struct.dmar_msi_data** %9, align 8
  %178 = getelementptr inbounds %struct.dmar_msi_data, %struct.dmar_msi_data* %177, i32 0, i32 0
  store i32 -1, i32* %178, align 8
  br label %179

179:                                              ; preds = %170, %29
  %180 = load i32, i32* %12, align 4
  store i32 %180, i32* %4, align 4
  br label %181

181:                                              ; preds = %179, %124
  %182 = load i32, i32* %4, align 4
  ret i32 %182
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @PCIB_ALLOC_MSIX(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, i32, ...) #1

declare dso_local i32 @bus_set_resource(i32, i32, i32, i32, i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32, i32*, %struct.dmar_unit*, i32*) #1

declare dso_local i32 @bus_describe_intr(i32, i32*, i32, i8*, i32) #1

declare dso_local i32 @PCIB_MAP_MSI(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @dmar_write4(%struct.dmar_unit*, i32, i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @bus_delete_resource(i32, i32, i32) #1

declare dso_local i32 @PCIB_RELEASE_MSIX(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
