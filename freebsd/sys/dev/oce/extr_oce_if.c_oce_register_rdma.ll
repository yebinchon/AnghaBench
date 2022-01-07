; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_if.c_oce_register_rdma.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_if.c_oce_register_rdma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i32 (%struct.oce_dev_info*)* }
%struct.oce_dev_info = type { i32, i64, i32, i32, i32, i32, %struct.TYPE_11__, i32, i32, i32, i32, %struct.TYPE_14__*, i32 }
%struct.TYPE_11__ = type { i32, i32, i32* }
%struct.TYPE_14__ = type { i32, i32, i32, i32, %struct.TYPE_14__*, i32, %struct.TYPE_13__, %struct.TYPE_12__*, i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_15__ = type { i64, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@OCE_RDMA_INFO_SIZE = common dso_local global i64 0, align 8
@OCE_RDMA_IF_SIZE = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@oce_rdma_close = common dso_local global i32 0, align 4
@oce_mbox_post = common dso_local global i32 0, align 4
@mbx_common_req_hdr_init = common dso_local global i32 0, align 4
@oce_get_mac_addr = common dso_local global i32 0, align 4
@oce_rdma_if = common dso_local global %struct.TYPE_16__* null, align 8
@softc_head = common dso_local global %struct.TYPE_14__* null, align 8
@OCE_FLAGS_USING_MSIX = common dso_local global i32 0, align 4
@OCE_INTERRUPT_MODE_MSIX = common dso_local global i64 0, align 8
@OCE_FLAGS_USING_MSI = common dso_local global i32 0, align 4
@OCE_INTERRUPT_MODE_MSI = common dso_local global i64 0, align 8
@OCE_INTERRUPT_MODE_INTX = common dso_local global i64 0, align 8
@OCE_GEN2_FAMILY = common dso_local global i32 0, align 4
@OCE_RDMA_FLAG_SUPPORTED = common dso_local global i32 0, align 4
@OCE_RDMA_INFO_RDMA_SUPPORTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @oce_register_rdma(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.oce_dev_info, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %10 = icmp eq %struct.TYPE_15__* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %13 = icmp eq %struct.TYPE_16__* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %11, %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %186

17:                                               ; preds = %11
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @OCE_RDMA_INFO_SIZE, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %17
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @OCE_RDMA_IF_SIZE, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23, %17
  %30 = load i32, i32* @ENXIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %186

32:                                               ; preds = %23
  %33 = load i32, i32* @oce_rdma_close, align 4
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @oce_mbox_post, align 4
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* @mbx_common_req_hdr_init, align 4
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @oce_get_mac_addr, align 4
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_16__* %45, %struct.TYPE_16__** @oce_rdma_if, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** @softc_head, align 8
  store %struct.TYPE_14__* %46, %struct.TYPE_14__** %6, align 8
  br label %47

47:                                               ; preds = %184, %32
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %49 = icmp ne %struct.TYPE_14__* %48, null
  br i1 %49, label %50, label %185

50:                                               ; preds = %47
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** @oce_rdma_if, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 1
  %53 = load i32 (%struct.oce_dev_info*)*, i32 (%struct.oce_dev_info*)** %52, align 8
  %54 = icmp ne i32 (%struct.oce_dev_info*)* %53, null
  br i1 %54, label %55, label %184

55:                                               ; preds = %50
  %56 = call i32 @memset(%struct.oce_dev_info* %7, i32 0, i32 80)
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 8
  %60 = getelementptr inbounds %struct.oce_dev_info, %struct.oce_dev_info* %7, i32 0, i32 12
  store i32 %59, i32* %60, align 8
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %62 = getelementptr inbounds %struct.oce_dev_info, %struct.oce_dev_info* %7, i32 0, i32 11
  store %struct.TYPE_14__* %61, %struct.TYPE_14__** %62, align 8
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 10
  %65 = load i32, i32* %64, align 8
  %66 = getelementptr inbounds %struct.oce_dev_info, %struct.oce_dev_info* %7, i32 0, i32 10
  store i32 %65, i32* %66, align 4
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 9
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.oce_dev_info, %struct.oce_dev_info* %7, i32 0, i32 9
  store i32 %69, i32* %70, align 8
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 8
  %73 = load i32, i32* %72, align 8
  %74 = getelementptr inbounds %struct.oce_dev_info, %struct.oce_dev_info* %7, i32 0, i32 8
  store i32 %73, i32* %74, align 4
  %75 = getelementptr inbounds %struct.oce_dev_info, %struct.oce_dev_info* %7, i32 0, i32 0
  store i32 4096, i32* %75, align 8
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @OCE_FLAGS_USING_MSIX, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %55
  %83 = load i64, i64* @OCE_INTERRUPT_MODE_MSIX, align 8
  %84 = getelementptr inbounds %struct.oce_dev_info, %struct.oce_dev_info* %7, i32 0, i32 1
  store i64 %83, i64* %84, align 8
  br label %99

85:                                               ; preds = %55
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @OCE_FLAGS_USING_MSI, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %85
  %93 = load i64, i64* @OCE_INTERRUPT_MODE_MSI, align 8
  %94 = getelementptr inbounds %struct.oce_dev_info, %struct.oce_dev_info* %7, i32 0, i32 1
  store i64 %93, i64* %94, align 8
  br label %98

95:                                               ; preds = %85
  %96 = load i64, i64* @OCE_INTERRUPT_MODE_INTX, align 8
  %97 = getelementptr inbounds %struct.oce_dev_info, %struct.oce_dev_info* %7, i32 0, i32 1
  store i64 %96, i64* %97, align 8
  br label %98

98:                                               ; preds = %95, %92
  br label %99

99:                                               ; preds = %98, %82
  %100 = load i32, i32* @OCE_GEN2_FAMILY, align 4
  %101 = getelementptr inbounds %struct.oce_dev_info, %struct.oce_dev_info* %7, i32 0, i32 7
  store i32 %100, i32* %101, align 8
  %102 = getelementptr inbounds %struct.oce_dev_info, %struct.oce_dev_info* %7, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @OCE_INTERRUPT_MODE_INTX, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %146

106:                                              ; preds = %99
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = add nsw i32 %109, %112
  %114 = getelementptr inbounds %struct.oce_dev_info, %struct.oce_dev_info* %7, i32 0, i32 6
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = getelementptr inbounds %struct.oce_dev_info, %struct.oce_dev_info* %7, i32 0, i32 6
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 4
  store i32 0, i32* %8, align 4
  br label %121

121:                                              ; preds = %142, %106
  %122 = load i32, i32* %8, align 4
  %123 = getelementptr inbounds %struct.oce_dev_info, %struct.oce_dev_info* %7, i32 0, i32 6
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp slt i32 %122, %125
  br i1 %126, label %127, label %145

127:                                              ; preds = %121
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 7
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %129, align 8
  %131 = load i32, i32* %8, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = getelementptr inbounds %struct.oce_dev_info, %struct.oce_dev_info* %7, i32 0, i32 6
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 2
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %8, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  store i32 %135, i32* %141, align 4
  br label %142

142:                                              ; preds = %127
  %143 = load i32, i32* %8, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %8, align 4
  br label %121

145:                                              ; preds = %121
  br label %147

146:                                              ; preds = %99
  br label %147

147:                                              ; preds = %146, %145
  %148 = getelementptr inbounds %struct.oce_dev_info, %struct.oce_dev_info* %7, i32 0, i32 5
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 6
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @memcpy(i32 %149, i32 %153, i32 6)
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @pci_get_vendor(i32 %157)
  %159 = getelementptr inbounds %struct.oce_dev_info, %struct.oce_dev_info* %7, i32 0, i32 4
  store i32 %158, i32* %159, align 8
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 5
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @pci_get_device(i32 %162)
  %164 = getelementptr inbounds %struct.oce_dev_info, %struct.oce_dev_info* %7, i32 0, i32 3
  store i32 %163, i32* %164, align 4
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @OCE_RDMA_FLAG_SUPPORTED, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %176

171:                                              ; preds = %147
  %172 = load i32, i32* @OCE_RDMA_INFO_RDMA_SUPPORTED, align 4
  %173 = getelementptr inbounds %struct.oce_dev_info, %struct.oce_dev_info* %7, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = or i32 %174, %172
  store i32 %175, i32* %173, align 8
  br label %176

176:                                              ; preds = %171, %147
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 1
  %179 = load i32 (%struct.oce_dev_info*)*, i32 (%struct.oce_dev_info*)** %178, align 8
  %180 = call i32 %179(%struct.oce_dev_info* %7)
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 4
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %182, align 8
  store %struct.TYPE_14__* %183, %struct.TYPE_14__** %6, align 8
  br label %184

184:                                              ; preds = %176, %50
  br label %47

185:                                              ; preds = %47
  store i32 0, i32* %3, align 4
  br label %186

186:                                              ; preds = %185, %29, %14
  %187 = load i32, i32* %3, align 4
  ret i32 %187
}

declare dso_local i32 @memset(%struct.oce_dev_info*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @pci_get_vendor(i32) #1

declare dso_local i32 @pci_get_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
