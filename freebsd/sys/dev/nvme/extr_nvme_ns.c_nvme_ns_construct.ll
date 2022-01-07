; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ns.c_nvme_ns_construct.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ns.c_nvme_ns_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_namespace = type { i32, i32, %struct.TYPE_7__*, i32, %struct.TYPE_5__, i32, %struct.nvme_controller* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i64, i32, i32, i32 }
%struct.nvme_controller = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32*, i32 }
%struct.make_dev_args = type { i32, i32, %struct.nvme_namespace*, i32* }
%struct.nvme_completion_poll_status = type { i32, i64 }

@.str = private unnamed_addr constant [13 x i8] c"nvme ns lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@nvme_completion_poll_cb = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"nvme_identify_namespace failed\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@NVME_NS_DATA_FLBAS_FORMAT_SHIFT = common dso_local global i32 0, align 4
@NVME_NS_DATA_FLBAS_FORMAT_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"lba format %d exceeds number supported (%d)\0A\00", align 1
@NVME_NS_DEALLOCATE_SUPPORTED = common dso_local global i32 0, align 4
@NVME_CTRLR_DATA_VWC_PRESENT_SHIFT = common dso_local global i32 0, align 4
@NVME_CTRLR_DATA_VWC_PRESENT_MASK = common dso_local global i32 0, align 4
@NVME_NS_FLUSH_SUPPORTED = common dso_local global i32 0, align 4
@NVME_MAX_NAMESPACES = common dso_local global i32 0, align 4
@nvme_ns_cdevsw = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"nvme%dns%d\00", align 1
@SI_UNMAPPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvme_ns_construct(%struct.nvme_namespace* %0, i32 %1, %struct.nvme_controller* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvme_namespace*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvme_controller*, align 8
  %8 = alloca %struct.make_dev_args, align 8
  %9 = alloca %struct.nvme_completion_poll_status, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nvme_namespace* %0, %struct.nvme_namespace** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nvme_controller* %2, %struct.nvme_controller** %7, align 8
  %14 = load %struct.nvme_controller*, %struct.nvme_controller** %7, align 8
  %15 = load %struct.nvme_namespace*, %struct.nvme_namespace** %5, align 8
  %16 = getelementptr inbounds %struct.nvme_namespace, %struct.nvme_namespace* %15, i32 0, i32 6
  store %struct.nvme_controller* %14, %struct.nvme_controller** %16, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.nvme_namespace*, %struct.nvme_namespace** %5, align 8
  %19 = getelementptr inbounds %struct.nvme_namespace, %struct.nvme_namespace* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.nvme_namespace*, %struct.nvme_namespace** %5, align 8
  %21 = getelementptr inbounds %struct.nvme_namespace, %struct.nvme_namespace* %20, i32 0, i32 5
  %22 = call i32 @mtx_initialized(i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %3
  %25 = load %struct.nvme_namespace*, %struct.nvme_namespace** %5, align 8
  %26 = getelementptr inbounds %struct.nvme_namespace, %struct.nvme_namespace* %25, i32 0, i32 5
  %27 = load i32, i32* @MTX_DEF, align 4
  %28 = call i32 @mtx_init(i32* %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* null, i32 %27)
  br label %29

29:                                               ; preds = %24, %3
  %30 = getelementptr inbounds %struct.nvme_completion_poll_status, %struct.nvme_completion_poll_status* %9, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = load %struct.nvme_controller*, %struct.nvme_controller** %7, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.nvme_namespace*, %struct.nvme_namespace** %5, align 8
  %34 = getelementptr inbounds %struct.nvme_namespace, %struct.nvme_namespace* %33, i32 0, i32 4
  %35 = load i32, i32* @nvme_completion_poll_cb, align 4
  %36 = call i32 @nvme_ctrlr_cmd_identify_namespace(%struct.nvme_controller* %31, i32 %32, %struct.TYPE_5__* %34, i32 %35, %struct.nvme_completion_poll_status* %9)
  %37 = call i32 @nvme_completion_poll(%struct.nvme_completion_poll_status* %9)
  %38 = getelementptr inbounds %struct.nvme_completion_poll_status, %struct.nvme_completion_poll_status* %9, i32 0, i32 0
  %39 = call i64 @nvme_completion_is_error(i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %29
  %42 = load %struct.nvme_controller*, %struct.nvme_controller** %7, align 8
  %43 = call i32 @nvme_printf(%struct.nvme_controller* %42, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @ENXIO, align 4
  store i32 %44, i32* %4, align 4
  br label %196

45:                                               ; preds = %29
  %46 = load %struct.nvme_namespace*, %struct.nvme_namespace** %5, align 8
  %47 = getelementptr inbounds %struct.nvme_namespace, %struct.nvme_namespace* %46, i32 0, i32 4
  %48 = call i32 @nvme_namespace_data_swapbytes(%struct.TYPE_5__* %47)
  %49 = load %struct.nvme_namespace*, %struct.nvme_namespace** %5, align 8
  %50 = getelementptr inbounds %struct.nvme_namespace, %struct.nvme_namespace* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %45
  %55 = load i32, i32* @ENXIO, align 4
  store i32 %55, i32* %4, align 4
  br label %196

56:                                               ; preds = %45
  %57 = load %struct.nvme_namespace*, %struct.nvme_namespace** %5, align 8
  %58 = getelementptr inbounds %struct.nvme_namespace, %struct.nvme_namespace* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @NVME_NS_DATA_FLBAS_FORMAT_SHIFT, align 4
  %62 = ashr i32 %60, %61
  %63 = load i32, i32* @NVME_NS_DATA_FLBAS_FORMAT_MASK, align 4
  %64 = and i32 %62, %63
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load %struct.nvme_namespace*, %struct.nvme_namespace** %5, align 8
  %67 = getelementptr inbounds %struct.nvme_namespace, %struct.nvme_namespace* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = icmp sgt i32 %65, %69
  br i1 %70, label %71, label %80

71:                                               ; preds = %56
  %72 = load i32, i32* %12, align 4
  %73 = load %struct.nvme_namespace*, %struct.nvme_namespace** %5, align 8
  %74 = getelementptr inbounds %struct.nvme_namespace, %struct.nvme_namespace* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  %78 = call i32 @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %72, i32 %77)
  %79 = load i32, i32* @ENXIO, align 4
  store i32 %79, i32* %4, align 4
  br label %196

80:                                               ; preds = %56
  %81 = load %struct.nvme_controller*, %struct.nvme_controller** %7, align 8
  %82 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @pci_get_devid(i32 %83)
  switch i32 %84, label %111 [
    i32 156467334, label %85
    i32 173244550, label %85
    i32 173310086, label %85
    i32 173375622, label %85
  ]

85:                                               ; preds = %80, %80, %80, %80
  %86 = load %struct.nvme_controller*, %struct.nvme_controller** %7, align 8
  %87 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 3
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %107

93:                                               ; preds = %85
  %94 = load %struct.nvme_controller*, %struct.nvme_controller** %7, align 8
  %95 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 3
  %99 = load i32, i32* %98, align 4
  %100 = shl i32 1, %99
  %101 = load %struct.nvme_controller*, %struct.nvme_controller** %7, align 8
  %102 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = mul nsw i32 %100, %103
  %105 = load %struct.nvme_namespace*, %struct.nvme_namespace** %5, align 8
  %106 = getelementptr inbounds %struct.nvme_namespace, %struct.nvme_namespace* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  br label %110

107:                                              ; preds = %85
  %108 = load %struct.nvme_namespace*, %struct.nvme_namespace** %5, align 8
  %109 = getelementptr inbounds %struct.nvme_namespace, %struct.nvme_namespace* %108, i32 0, i32 1
  store i32 0, i32* %109, align 4
  br label %110

110:                                              ; preds = %107, %93
  br label %121

111:                                              ; preds = %80
  %112 = load %struct.nvme_namespace*, %struct.nvme_namespace** %5, align 8
  %113 = getelementptr inbounds %struct.nvme_namespace, %struct.nvme_namespace* %112, i32 0, i32 4
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.nvme_namespace*, %struct.nvme_namespace** %5, align 8
  %117 = call i32 @nvme_ns_get_sector_size(%struct.nvme_namespace* %116)
  %118 = mul nsw i32 %115, %117
  %119 = load %struct.nvme_namespace*, %struct.nvme_namespace** %5, align 8
  %120 = getelementptr inbounds %struct.nvme_namespace, %struct.nvme_namespace* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 4
  br label %121

121:                                              ; preds = %111, %110
  %122 = load %struct.nvme_controller*, %struct.nvme_controller** %7, align 8
  %123 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %122, i32 0, i32 2
  %124 = call i64 @nvme_ctrlr_has_dataset_mgmt(%struct.TYPE_6__* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %121
  %127 = load i32, i32* @NVME_NS_DEALLOCATE_SUPPORTED, align 4
  %128 = load %struct.nvme_namespace*, %struct.nvme_namespace** %5, align 8
  %129 = getelementptr inbounds %struct.nvme_namespace, %struct.nvme_namespace* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = or i32 %130, %127
  store i32 %131, i32* %129, align 8
  br label %132

132:                                              ; preds = %126, %121
  %133 = load %struct.nvme_controller*, %struct.nvme_controller** %7, align 8
  %134 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @NVME_CTRLR_DATA_VWC_PRESENT_SHIFT, align 4
  %138 = ashr i32 %136, %137
  %139 = load i32, i32* @NVME_CTRLR_DATA_VWC_PRESENT_MASK, align 4
  %140 = and i32 %138, %139
  store i32 %140, i32* %13, align 4
  %141 = load i32, i32* %13, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %132
  %144 = load i32, i32* @NVME_NS_FLUSH_SUPPORTED, align 4
  %145 = load %struct.nvme_namespace*, %struct.nvme_namespace** %5, align 8
  %146 = getelementptr inbounds %struct.nvme_namespace, %struct.nvme_namespace* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = or i32 %147, %144
  store i32 %148, i32* %146, align 8
  br label %149

149:                                              ; preds = %143, %132
  %150 = load %struct.nvme_namespace*, %struct.nvme_namespace** %5, align 8
  %151 = getelementptr inbounds %struct.nvme_namespace, %struct.nvme_namespace* %150, i32 0, i32 2
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %151, align 8
  %153 = icmp ne %struct.TYPE_7__* %152, null
  br i1 %153, label %154, label %155

154:                                              ; preds = %149
  store i32 0, i32* %4, align 4
  br label %196

155:                                              ; preds = %149
  %156 = load %struct.nvme_controller*, %struct.nvme_controller** %7, align 8
  %157 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @device_get_unit(i32 %158)
  %160 = load i32, i32* @NVME_MAX_NAMESPACES, align 4
  %161 = mul nsw i32 %159, %160
  %162 = load %struct.nvme_namespace*, %struct.nvme_namespace** %5, align 8
  %163 = getelementptr inbounds %struct.nvme_namespace, %struct.nvme_namespace* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = add nsw i32 %161, %164
  %166 = sub nsw i32 %165, 1
  store i32 %166, i32* %11, align 4
  %167 = call i32 @make_dev_args_init(%struct.make_dev_args* %8)
  %168 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %8, i32 0, i32 3
  store i32* @nvme_ns_cdevsw, i32** %168, align 8
  %169 = load i32, i32* %11, align 4
  %170 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %8, i32 0, i32 0
  store i32 %169, i32* %170, align 8
  %171 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %8, i32 0, i32 1
  store i32 384, i32* %171, align 4
  %172 = load %struct.nvme_namespace*, %struct.nvme_namespace** %5, align 8
  %173 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %8, i32 0, i32 2
  store %struct.nvme_namespace* %172, %struct.nvme_namespace** %173, align 8
  %174 = load %struct.nvme_namespace*, %struct.nvme_namespace** %5, align 8
  %175 = getelementptr inbounds %struct.nvme_namespace, %struct.nvme_namespace* %174, i32 0, i32 2
  %176 = load %struct.nvme_controller*, %struct.nvme_controller** %7, align 8
  %177 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @device_get_unit(i32 %178)
  %180 = load %struct.nvme_namespace*, %struct.nvme_namespace** %5, align 8
  %181 = getelementptr inbounds %struct.nvme_namespace, %struct.nvme_namespace* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @make_dev_s(%struct.make_dev_args* %8, %struct.TYPE_7__** %175, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %179, i32 %182)
  store i32 %183, i32* %10, align 4
  %184 = load i32, i32* %10, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %155
  %187 = load i32, i32* @ENXIO, align 4
  store i32 %187, i32* %4, align 4
  br label %196

188:                                              ; preds = %155
  %189 = load i32, i32* @SI_UNMAPPED, align 4
  %190 = load %struct.nvme_namespace*, %struct.nvme_namespace** %5, align 8
  %191 = getelementptr inbounds %struct.nvme_namespace, %struct.nvme_namespace* %190, i32 0, i32 2
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = or i32 %194, %189
  store i32 %195, i32* %193, align 4
  store i32 0, i32* %4, align 4
  br label %196

196:                                              ; preds = %188, %186, %154, %71, %54, %41
  %197 = load i32, i32* %4, align 4
  ret i32 %197
}

declare dso_local i32 @mtx_initialized(i32*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @nvme_ctrlr_cmd_identify_namespace(%struct.nvme_controller*, i32, %struct.TYPE_5__*, i32, %struct.nvme_completion_poll_status*) #1

declare dso_local i32 @nvme_completion_poll(%struct.nvme_completion_poll_status*) #1

declare dso_local i64 @nvme_completion_is_error(i32*) #1

declare dso_local i32 @nvme_printf(%struct.nvme_controller*, i8*) #1

declare dso_local i32 @nvme_namespace_data_swapbytes(%struct.TYPE_5__*) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

declare dso_local i32 @pci_get_devid(i32) #1

declare dso_local i32 @nvme_ns_get_sector_size(%struct.nvme_namespace*) #1

declare dso_local i64 @nvme_ctrlr_has_dataset_mgmt(%struct.TYPE_6__*) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @make_dev_args_init(%struct.make_dev_args*) #1

declare dso_local i32 @make_dev_s(%struct.make_dev_args*, %struct.TYPE_7__**, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
