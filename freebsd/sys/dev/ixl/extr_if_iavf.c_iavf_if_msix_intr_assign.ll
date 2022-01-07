; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_iavf.c_iavf_if_msix_intr_assign.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_iavf.c_iavf_if_msix_intr_assign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_sc = type { i32, i32, %struct.TYPE_4__, %struct.ixl_vsi }
%struct.TYPE_4__ = type { i32 }
%struct.ixl_vsi = type { i32, %struct.ixl_rx_queue*, i32, %struct.TYPE_6__*, %struct.ixl_tx_queue* }
%struct.ixl_rx_queue = type { i32, i32, %struct.TYPE_4__, %struct.ixl_vsi }
%struct.TYPE_6__ = type { i32, i32 }
%struct.ixl_tx_queue = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@IFLIB_INTR_ADMIN = common dso_local global i32 0, align 4
@iavf_msix_adminq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"aq\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to register Admin Que handler\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"rxq%d\00", align 1
@IFLIB_INTR_RX = common dso_local global i32 0, align 4
@iavf_msix_que = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"Failed to allocate queue RX int vector %d, err: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"txq%d\00", align 1
@IFLIB_INTR_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @iavf_if_msix_intr_assign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iavf_if_msix_intr_assign(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.iavf_sc*, align 8
  %7 = alloca %struct.ixl_vsi*, align 8
  %8 = alloca %struct.ixl_rx_queue*, align 8
  %9 = alloca %struct.ixl_tx_queue*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [16 x i8], align 16
  %15 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call %struct.ixl_rx_queue* @iflib_get_softc(i32 %16)
  %18 = bitcast %struct.ixl_rx_queue* %17 to %struct.iavf_sc*
  store %struct.iavf_sc* %18, %struct.iavf_sc** %6, align 8
  %19 = load %struct.iavf_sc*, %struct.iavf_sc** %6, align 8
  %20 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %19, i32 0, i32 3
  store %struct.ixl_vsi* %20, %struct.ixl_vsi** %7, align 8
  %21 = load %struct.ixl_vsi*, %struct.ixl_vsi** %7, align 8
  %22 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %21, i32 0, i32 1
  %23 = load %struct.ixl_rx_queue*, %struct.ixl_rx_queue** %22, align 8
  store %struct.ixl_rx_queue* %23, %struct.ixl_rx_queue** %8, align 8
  %24 = load %struct.ixl_vsi*, %struct.ixl_vsi** %7, align 8
  %25 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %24, i32 0, i32 4
  %26 = load %struct.ixl_tx_queue*, %struct.ixl_tx_queue** %25, align 8
  store %struct.ixl_tx_queue* %26, %struct.ixl_tx_queue** %9, align 8
  store i32 0, i32* %13, align 4
  %27 = load %struct.ixl_vsi*, %struct.ixl_vsi** %7, align 8
  %28 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %27, i32 0, i32 3
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp sgt i32 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @MPASS(i32 %33)
  %35 = load %struct.ixl_vsi*, %struct.ixl_vsi** %7, align 8
  %36 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %35, i32 0, i32 3
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp sgt i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @MPASS(i32 %41)
  %43 = load i32, i32* %13, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load %struct.ixl_vsi*, %struct.ixl_vsi** %7, align 8
  %47 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %46, i32 0, i32 2
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* @IFLIB_INTR_ADMIN, align 4
  %50 = load i32, i32* @iavf_msix_adminq, align 4
  %51 = load %struct.iavf_sc*, %struct.iavf_sc** %6, align 8
  %52 = bitcast %struct.iavf_sc* %51 to %struct.ixl_rx_queue*
  %53 = call i32 @iflib_irq_alloc_generic(i32 %45, i32* %47, i32 %48, i32 %49, i32 %50, %struct.ixl_rx_queue* %52, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %2
  %57 = load i32, i32* %4, align 4
  %58 = load %struct.ixl_vsi*, %struct.ixl_vsi** %7, align 8
  %59 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %58, i32 0, i32 2
  %60 = call i32 @iflib_irq_free(i32 %57, i32* %59)
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @iflib_get_dev(i32 %61)
  %63 = call i32 (i32, i8*, ...) @device_printf(i32 %62, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i32, i32* %10, align 4
  store i32 %64, i32* %3, align 4
  br label %195

65:                                               ; preds = %2
  store i32 0, i32* %11, align 4
  store i32 1, i32* %13, align 4
  br label %66

66:                                               ; preds = %109, %65
  %67 = load i32, i32* %11, align 4
  %68 = load %struct.ixl_vsi*, %struct.ixl_vsi** %7, align 8
  %69 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %68, i32 0, i32 3
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp slt i32 %67, %72
  br i1 %73, label %74, label %116

74:                                               ; preds = %66
  %75 = load i32, i32* %13, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %12, align 4
  %77 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @snprintf(i8* %77, i32 16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* %4, align 4
  %81 = load %struct.ixl_rx_queue*, %struct.ixl_rx_queue** %8, align 8
  %82 = getelementptr inbounds %struct.ixl_rx_queue, %struct.ixl_rx_queue* %81, i32 0, i32 1
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* @IFLIB_INTR_RX, align 4
  %85 = load i32, i32* @iavf_msix_que, align 4
  %86 = load %struct.ixl_rx_queue*, %struct.ixl_rx_queue** %8, align 8
  %87 = load %struct.ixl_rx_queue*, %struct.ixl_rx_queue** %8, align 8
  %88 = getelementptr inbounds %struct.ixl_rx_queue, %struct.ixl_rx_queue* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %92 = call i32 @iflib_irq_alloc_generic(i32 %80, i32* %82, i32 %83, i32 %84, i32 %85, %struct.ixl_rx_queue* %86, i32 %90, i8* %91)
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %74
  %96 = load i32, i32* %4, align 4
  %97 = call i32 @iflib_get_dev(i32 %96)
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %10, align 4
  %100 = call i32 (i32, i8*, ...) @device_printf(i32 %97, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %98, i32 %99)
  %101 = load i32, i32* %11, align 4
  %102 = add nsw i32 %101, 1
  %103 = load %struct.ixl_vsi*, %struct.ixl_vsi** %7, align 8
  %104 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  br label %169

105:                                              ; preds = %74
  %106 = load i32, i32* %13, align 4
  %107 = load %struct.ixl_rx_queue*, %struct.ixl_rx_queue** %8, align 8
  %108 = getelementptr inbounds %struct.ixl_rx_queue, %struct.ixl_rx_queue* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  br label %109

109:                                              ; preds = %105
  %110 = load i32, i32* %11, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %11, align 4
  %112 = load i32, i32* %13, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %13, align 4
  %114 = load %struct.ixl_rx_queue*, %struct.ixl_rx_queue** %8, align 8
  %115 = getelementptr inbounds %struct.ixl_rx_queue, %struct.ixl_rx_queue* %114, i32 1
  store %struct.ixl_rx_queue* %115, %struct.ixl_rx_queue** %8, align 8
  br label %66

116:                                              ; preds = %66
  %117 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %118 = call i32 @bzero(i8* %117, i32 16)
  store i32 0, i32* %11, align 4
  br label %119

119:                                              ; preds = %163, %116
  %120 = load i32, i32* %11, align 4
  %121 = load %struct.ixl_vsi*, %struct.ixl_vsi** %7, align 8
  %122 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %121, i32 0, i32 3
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = icmp slt i32 %120, %125
  br i1 %126, label %127, label %168

127:                                              ; preds = %119
  %128 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %129 = load i32, i32* %11, align 4
  %130 = call i32 @snprintf(i8* %128, i32 16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %129)
  %131 = load i32, i32* %4, align 4
  %132 = load %struct.ixl_vsi*, %struct.ixl_vsi** %7, align 8
  %133 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %132, i32 0, i32 1
  %134 = load %struct.ixl_rx_queue*, %struct.ixl_rx_queue** %133, align 8
  %135 = load i32, i32* %11, align 4
  %136 = load %struct.ixl_vsi*, %struct.ixl_vsi** %7, align 8
  %137 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %136, i32 0, i32 3
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = srem i32 %135, %140
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.ixl_rx_queue, %struct.ixl_rx_queue* %134, i64 %142
  %144 = getelementptr inbounds %struct.ixl_rx_queue, %struct.ixl_rx_queue* %143, i32 0, i32 1
  %145 = load i32, i32* @IFLIB_INTR_TX, align 4
  %146 = load %struct.ixl_tx_queue*, %struct.ixl_tx_queue** %9, align 8
  %147 = load %struct.ixl_tx_queue*, %struct.ixl_tx_queue** %9, align 8
  %148 = getelementptr inbounds %struct.ixl_tx_queue, %struct.ixl_tx_queue* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %152 = call i32 @iflib_softirq_alloc_generic(i32 %131, i32* %144, i32 %145, %struct.ixl_tx_queue* %146, i32 %150, i8* %151)
  %153 = load i32, i32* %11, align 4
  %154 = load %struct.ixl_vsi*, %struct.ixl_vsi** %7, align 8
  %155 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %154, i32 0, i32 3
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = srem i32 %153, %158
  %160 = add nsw i32 %159, 1
  %161 = load %struct.ixl_tx_queue*, %struct.ixl_tx_queue** %9, align 8
  %162 = getelementptr inbounds %struct.ixl_tx_queue, %struct.ixl_tx_queue* %161, i32 0, i32 0
  store i32 %160, i32* %162, align 4
  br label %163

163:                                              ; preds = %127
  %164 = load i32, i32* %11, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %11, align 4
  %166 = load %struct.ixl_tx_queue*, %struct.ixl_tx_queue** %9, align 8
  %167 = getelementptr inbounds %struct.ixl_tx_queue, %struct.ixl_tx_queue* %166, i32 1
  store %struct.ixl_tx_queue* %167, %struct.ixl_tx_queue** %9, align 8
  br label %119

168:                                              ; preds = %119
  store i32 0, i32* %3, align 4
  br label %195

169:                                              ; preds = %95
  %170 = load i32, i32* %4, align 4
  %171 = load %struct.ixl_vsi*, %struct.ixl_vsi** %7, align 8
  %172 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %171, i32 0, i32 2
  %173 = call i32 @iflib_irq_free(i32 %170, i32* %172)
  %174 = load %struct.ixl_vsi*, %struct.ixl_vsi** %7, align 8
  %175 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %174, i32 0, i32 1
  %176 = load %struct.ixl_rx_queue*, %struct.ixl_rx_queue** %175, align 8
  store %struct.ixl_rx_queue* %176, %struct.ixl_rx_queue** %8, align 8
  store i32 0, i32* %15, align 4
  br label %177

177:                                              ; preds = %188, %169
  %178 = load i32, i32* %15, align 4
  %179 = load %struct.ixl_vsi*, %struct.ixl_vsi** %7, align 8
  %180 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = icmp slt i32 %178, %181
  br i1 %182, label %183, label %193

183:                                              ; preds = %177
  %184 = load i32, i32* %4, align 4
  %185 = load %struct.ixl_rx_queue*, %struct.ixl_rx_queue** %8, align 8
  %186 = getelementptr inbounds %struct.ixl_rx_queue, %struct.ixl_rx_queue* %185, i32 0, i32 1
  %187 = call i32 @iflib_irq_free(i32 %184, i32* %186)
  br label %188

188:                                              ; preds = %183
  %189 = load i32, i32* %15, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %15, align 4
  %191 = load %struct.ixl_rx_queue*, %struct.ixl_rx_queue** %8, align 8
  %192 = getelementptr inbounds %struct.ixl_rx_queue, %struct.ixl_rx_queue* %191, i32 1
  store %struct.ixl_rx_queue* %192, %struct.ixl_rx_queue** %8, align 8
  br label %177

193:                                              ; preds = %177
  %194 = load i32, i32* %10, align 4
  store i32 %194, i32* %3, align 4
  br label %195

195:                                              ; preds = %193, %168, %56
  %196 = load i32, i32* %3, align 4
  ret i32 %196
}

declare dso_local %struct.ixl_rx_queue* @iflib_get_softc(i32) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @iflib_irq_alloc_generic(i32, i32*, i32, i32, i32, %struct.ixl_rx_queue*, i32, i8*) #1

declare dso_local i32 @iflib_irq_free(i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @iflib_get_dev(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @iflib_softirq_alloc_generic(i32, i32*, i32, %struct.ixl_tx_queue*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
