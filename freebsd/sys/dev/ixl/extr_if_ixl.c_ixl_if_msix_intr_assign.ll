; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_ixl.c_ixl_if_msix_intr_assign.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_ixl.c_ixl_if_msix_intr_assign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { i32, i32, %struct.TYPE_5__, %struct.TYPE_4__, %struct.ixl_vsi }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ixl_vsi = type { i32, %struct.ixl_tx_queue*, i32, %struct.TYPE_6__*, %struct.ixl_tx_queue* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.ixl_tx_queue = type { i32, i32, %struct.TYPE_5__, %struct.TYPE_4__, %struct.ixl_vsi }
%struct.ixl_rx_queue = type { i32, i32, %struct.TYPE_5__, %struct.TYPE_4__, %struct.ixl_vsi }

@IFLIB_INTR_ADMIN = common dso_local global i32 0, align 4
@ixl_msix_adminq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"aq\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to register Admin Que handler\00", align 1
@IFLIB_INTR_IOV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"iov\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"rxq%d\00", align 1
@IFLIB_INTR_RX = common dso_local global i32 0, align 4
@ixl_msix_que = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [52 x i8] c"Failed to allocate queue RX int vector %d, err: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"txq%d\00", align 1
@IFLIB_INTR_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @ixl_if_msix_intr_assign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixl_if_msix_intr_assign(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ixl_pf*, align 8
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
  %17 = call %struct.ixl_tx_queue* @iflib_get_softc(i32 %16)
  %18 = bitcast %struct.ixl_tx_queue* %17 to %struct.ixl_pf*
  store %struct.ixl_pf* %18, %struct.ixl_pf** %6, align 8
  %19 = load %struct.ixl_pf*, %struct.ixl_pf** %6, align 8
  %20 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %19, i32 0, i32 4
  store %struct.ixl_vsi* %20, %struct.ixl_vsi** %7, align 8
  %21 = load %struct.ixl_vsi*, %struct.ixl_vsi** %7, align 8
  %22 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %21, i32 0, i32 1
  %23 = load %struct.ixl_tx_queue*, %struct.ixl_tx_queue** %22, align 8
  %24 = bitcast %struct.ixl_tx_queue* %23 to %struct.ixl_rx_queue*
  store %struct.ixl_rx_queue* %24, %struct.ixl_rx_queue** %8, align 8
  %25 = load %struct.ixl_vsi*, %struct.ixl_vsi** %7, align 8
  %26 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %25, i32 0, i32 4
  %27 = load %struct.ixl_tx_queue*, %struct.ixl_tx_queue** %26, align 8
  store %struct.ixl_tx_queue* %27, %struct.ixl_tx_queue** %9, align 8
  store i32 0, i32* %13, align 4
  %28 = load %struct.ixl_vsi*, %struct.ixl_vsi** %7, align 8
  %29 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %28, i32 0, i32 3
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp sgt i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @MPASS(i32 %34)
  %36 = load %struct.ixl_vsi*, %struct.ixl_vsi** %7, align 8
  %37 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %36, i32 0, i32 3
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp sgt i32 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i32 @MPASS(i32 %42)
  %44 = load i32, i32* %13, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.ixl_vsi*, %struct.ixl_vsi** %7, align 8
  %48 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %47, i32 0, i32 2
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* @IFLIB_INTR_ADMIN, align 4
  %51 = load i32, i32* @ixl_msix_adminq, align 4
  %52 = load %struct.ixl_pf*, %struct.ixl_pf** %6, align 8
  %53 = bitcast %struct.ixl_pf* %52 to %struct.ixl_tx_queue*
  %54 = call i32 @iflib_irq_alloc_generic(i32 %46, i32* %48, i32 %49, i32 %50, i32 %51, %struct.ixl_tx_queue* %53, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %2
  %58 = load i32, i32* %4, align 4
  %59 = load %struct.ixl_vsi*, %struct.ixl_vsi** %7, align 8
  %60 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %59, i32 0, i32 2
  %61 = call i32 @iflib_irq_free(i32 %58, i32* %60)
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @iflib_get_dev(i32 %62)
  %64 = call i32 (i32, i8*, ...) @device_printf(i32 %63, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %3, align 4
  br label %203

66:                                               ; preds = %2
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @IFLIB_INTR_IOV, align 4
  %69 = load %struct.ixl_pf*, %struct.ixl_pf** %6, align 8
  %70 = bitcast %struct.ixl_pf* %69 to %struct.ixl_tx_queue*
  %71 = call i32 @iflib_softirq_alloc_generic(i32 %67, i32* null, i32 %68, %struct.ixl_tx_queue* %70, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  store i32 1, i32* %13, align 4
  br label %72

72:                                               ; preds = %116, %66
  %73 = load i32, i32* %11, align 4
  %74 = load %struct.ixl_vsi*, %struct.ixl_vsi** %7, align 8
  %75 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %74, i32 0, i32 3
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp slt i32 %73, %78
  br i1 %79, label %80, label %123

80:                                               ; preds = %72
  %81 = load i32, i32* %13, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %12, align 4
  %83 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @snprintf(i8* %83, i32 16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* %4, align 4
  %87 = load %struct.ixl_rx_queue*, %struct.ixl_rx_queue** %8, align 8
  %88 = getelementptr inbounds %struct.ixl_rx_queue, %struct.ixl_rx_queue* %87, i32 0, i32 1
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* @IFLIB_INTR_RX, align 4
  %91 = load i32, i32* @ixl_msix_que, align 4
  %92 = load %struct.ixl_rx_queue*, %struct.ixl_rx_queue** %8, align 8
  %93 = bitcast %struct.ixl_rx_queue* %92 to %struct.ixl_tx_queue*
  %94 = load %struct.ixl_rx_queue*, %struct.ixl_rx_queue** %8, align 8
  %95 = getelementptr inbounds %struct.ixl_rx_queue, %struct.ixl_rx_queue* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %99 = call i32 @iflib_irq_alloc_generic(i32 %86, i32* %88, i32 %89, i32 %90, i32 %91, %struct.ixl_tx_queue* %93, i32 %97, i8* %98)
  store i32 %99, i32* %10, align 4
  %100 = load i32, i32* %10, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %80
  %103 = load i32, i32* %4, align 4
  %104 = call i32 @iflib_get_dev(i32 %103)
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* %10, align 4
  %107 = call i32 (i32, i8*, ...) @device_printf(i32 %104, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i32 %105, i32 %106)
  %108 = load i32, i32* %11, align 4
  %109 = add nsw i32 %108, 1
  %110 = load %struct.ixl_vsi*, %struct.ixl_vsi** %7, align 8
  %111 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 8
  br label %176

112:                                              ; preds = %80
  %113 = load i32, i32* %13, align 4
  %114 = load %struct.ixl_rx_queue*, %struct.ixl_rx_queue** %8, align 8
  %115 = getelementptr inbounds %struct.ixl_rx_queue, %struct.ixl_rx_queue* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  br label %116

116:                                              ; preds = %112
  %117 = load i32, i32* %11, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %11, align 4
  %119 = load i32, i32* %13, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %13, align 4
  %121 = load %struct.ixl_rx_queue*, %struct.ixl_rx_queue** %8, align 8
  %122 = getelementptr inbounds %struct.ixl_rx_queue, %struct.ixl_rx_queue* %121, i32 1
  store %struct.ixl_rx_queue* %122, %struct.ixl_rx_queue** %8, align 8
  br label %72

123:                                              ; preds = %72
  %124 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %125 = call i32 @bzero(i8* %124, i32 16)
  store i32 0, i32* %11, align 4
  br label %126

126:                                              ; preds = %170, %123
  %127 = load i32, i32* %11, align 4
  %128 = load %struct.ixl_vsi*, %struct.ixl_vsi** %7, align 8
  %129 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %128, i32 0, i32 3
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = icmp slt i32 %127, %132
  br i1 %133, label %134, label %175

134:                                              ; preds = %126
  %135 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %136 = load i32, i32* %11, align 4
  %137 = call i32 @snprintf(i8* %135, i32 16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %136)
  %138 = load i32, i32* %4, align 4
  %139 = load %struct.ixl_vsi*, %struct.ixl_vsi** %7, align 8
  %140 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %139, i32 0, i32 1
  %141 = load %struct.ixl_tx_queue*, %struct.ixl_tx_queue** %140, align 8
  %142 = load i32, i32* %11, align 4
  %143 = load %struct.ixl_vsi*, %struct.ixl_vsi** %7, align 8
  %144 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %143, i32 0, i32 3
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = srem i32 %142, %147
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.ixl_tx_queue, %struct.ixl_tx_queue* %141, i64 %149
  %151 = getelementptr inbounds %struct.ixl_tx_queue, %struct.ixl_tx_queue* %150, i32 0, i32 1
  %152 = load i32, i32* @IFLIB_INTR_TX, align 4
  %153 = load %struct.ixl_tx_queue*, %struct.ixl_tx_queue** %9, align 8
  %154 = load %struct.ixl_tx_queue*, %struct.ixl_tx_queue** %9, align 8
  %155 = getelementptr inbounds %struct.ixl_tx_queue, %struct.ixl_tx_queue* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %159 = call i32 @iflib_softirq_alloc_generic(i32 %138, i32* %151, i32 %152, %struct.ixl_tx_queue* %153, i32 %157, i8* %158)
  %160 = load i32, i32* %11, align 4
  %161 = load %struct.ixl_vsi*, %struct.ixl_vsi** %7, align 8
  %162 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %161, i32 0, i32 3
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = srem i32 %160, %165
  %167 = add nsw i32 %166, 1
  %168 = load %struct.ixl_tx_queue*, %struct.ixl_tx_queue** %9, align 8
  %169 = getelementptr inbounds %struct.ixl_tx_queue, %struct.ixl_tx_queue* %168, i32 0, i32 0
  store i32 %167, i32* %169, align 8
  br label %170

170:                                              ; preds = %134
  %171 = load i32, i32* %11, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %11, align 4
  %173 = load %struct.ixl_tx_queue*, %struct.ixl_tx_queue** %9, align 8
  %174 = getelementptr inbounds %struct.ixl_tx_queue, %struct.ixl_tx_queue* %173, i32 1
  store %struct.ixl_tx_queue* %174, %struct.ixl_tx_queue** %9, align 8
  br label %126

175:                                              ; preds = %126
  store i32 0, i32* %3, align 4
  br label %203

176:                                              ; preds = %102
  %177 = load i32, i32* %4, align 4
  %178 = load %struct.ixl_vsi*, %struct.ixl_vsi** %7, align 8
  %179 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %178, i32 0, i32 2
  %180 = call i32 @iflib_irq_free(i32 %177, i32* %179)
  %181 = load %struct.ixl_vsi*, %struct.ixl_vsi** %7, align 8
  %182 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %181, i32 0, i32 1
  %183 = load %struct.ixl_tx_queue*, %struct.ixl_tx_queue** %182, align 8
  %184 = bitcast %struct.ixl_tx_queue* %183 to %struct.ixl_rx_queue*
  store %struct.ixl_rx_queue* %184, %struct.ixl_rx_queue** %8, align 8
  store i32 0, i32* %15, align 4
  br label %185

185:                                              ; preds = %196, %176
  %186 = load i32, i32* %15, align 4
  %187 = load %struct.ixl_vsi*, %struct.ixl_vsi** %7, align 8
  %188 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = icmp slt i32 %186, %189
  br i1 %190, label %191, label %201

191:                                              ; preds = %185
  %192 = load i32, i32* %4, align 4
  %193 = load %struct.ixl_rx_queue*, %struct.ixl_rx_queue** %8, align 8
  %194 = getelementptr inbounds %struct.ixl_rx_queue, %struct.ixl_rx_queue* %193, i32 0, i32 1
  %195 = call i32 @iflib_irq_free(i32 %192, i32* %194)
  br label %196

196:                                              ; preds = %191
  %197 = load i32, i32* %15, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %15, align 4
  %199 = load %struct.ixl_rx_queue*, %struct.ixl_rx_queue** %8, align 8
  %200 = getelementptr inbounds %struct.ixl_rx_queue, %struct.ixl_rx_queue* %199, i32 1
  store %struct.ixl_rx_queue* %200, %struct.ixl_rx_queue** %8, align 8
  br label %185

201:                                              ; preds = %185
  %202 = load i32, i32* %10, align 4
  store i32 %202, i32* %3, align 4
  br label %203

203:                                              ; preds = %201, %175, %57
  %204 = load i32, i32* %3, align 4
  ret i32 %204
}

declare dso_local %struct.ixl_tx_queue* @iflib_get_softc(i32) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @iflib_irq_alloc_generic(i32, i32*, i32, i32, i32, %struct.ixl_tx_queue*, i32, i8*) #1

declare dso_local i32 @iflib_irq_free(i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @iflib_get_dev(i32) #1

declare dso_local i32 @iflib_softirq_alloc_generic(i32, i32*, i32, %struct.ixl_tx_queue*, i32, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @bzero(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
