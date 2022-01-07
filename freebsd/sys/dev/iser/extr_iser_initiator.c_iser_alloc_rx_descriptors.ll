; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_iser_initiator.c_iser_alloc_rx_descriptors.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_iser_initiator.c_iser_alloc_rx_descriptors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iser_conn = type { i32, i32, i32, %struct.iser_rx_desc*, i64, %struct.ib_conn }
%struct.iser_rx_desc = type { i32, %struct.ib_sge }
%struct.ib_sge = type { i32, i32, i32 }
%struct.ib_conn = type { %struct.iser_device* }
%struct.iser_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@M_ISER_INITIATOR = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ISER_RX_PAYLOAD_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"failed allocating rx descriptors / data buffers\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iser_alloc_rx_descriptors(%struct.iser_conn* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iser_conn*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.iser_rx_desc*, align 8
  %10 = alloca %struct.ib_sge*, align 8
  %11 = alloca %struct.ib_conn*, align 8
  %12 = alloca %struct.iser_device*, align 8
  store %struct.iser_conn* %0, %struct.iser_conn** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.iser_conn*, %struct.iser_conn** %4, align 8
  %14 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %13, i32 0, i32 5
  store %struct.ib_conn* %14, %struct.ib_conn** %11, align 8
  %15 = load %struct.ib_conn*, %struct.ib_conn** %11, align 8
  %16 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %15, i32 0, i32 0
  %17 = load %struct.iser_device*, %struct.iser_device** %16, align 8
  store %struct.iser_device* %17, %struct.iser_device** %12, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.iser_conn*, %struct.iser_conn** %4, align 8
  %20 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.iser_conn*, %struct.iser_conn** %4, align 8
  %22 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = ashr i32 %23, 2
  %25 = load %struct.iser_conn*, %struct.iser_conn** %4, align 8
  %26 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.ib_conn*, %struct.ib_conn** %11, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i64 @iser_create_fastreg_pool(%struct.ib_conn* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  br label %143

32:                                               ; preds = %2
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.iser_conn*, %struct.iser_conn** %4, align 8
  %35 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.iser_conn*, %struct.iser_conn** %4, align 8
  %37 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 16
  %41 = trunc i64 %40 to i32
  %42 = load i32, i32* @M_ISER_INITIATOR, align 4
  %43 = load i32, i32* @M_WAITOK, align 4
  %44 = load i32, i32* @M_ZERO, align 4
  %45 = or i32 %43, %44
  %46 = call %struct.iser_rx_desc* @malloc(i32 %41, i32 %42, i32 %45)
  %47 = load %struct.iser_conn*, %struct.iser_conn** %4, align 8
  %48 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %47, i32 0, i32 3
  store %struct.iser_rx_desc* %46, %struct.iser_rx_desc** %48, align 8
  %49 = load %struct.iser_conn*, %struct.iser_conn** %4, align 8
  %50 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %49, i32 0, i32 3
  %51 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %50, align 8
  %52 = icmp ne %struct.iser_rx_desc* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %32
  br label %140

54:                                               ; preds = %32
  %55 = load %struct.iser_conn*, %struct.iser_conn** %4, align 8
  %56 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %55, i32 0, i32 3
  %57 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %56, align 8
  store %struct.iser_rx_desc* %57, %struct.iser_rx_desc** %9, align 8
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %101, %54
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.iser_conn*, %struct.iser_conn** %4, align 8
  %61 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %106

64:                                               ; preds = %58
  %65 = load %struct.iser_device*, %struct.iser_device** %12, align 8
  %66 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %9, align 8
  %69 = bitcast %struct.iser_rx_desc* %68 to i8*
  %70 = load i32, i32* @ISER_RX_PAYLOAD_SIZE, align 4
  %71 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %72 = call i32 @ib_dma_map_single(i32 %67, i8* %69, i32 %70, i32 %71)
  store i32 %72, i32* %8, align 4
  %73 = load %struct.iser_device*, %struct.iser_device** %12, align 8
  %74 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = call i64 @ib_dma_mapping_error(i32 %75, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %64
  br label %109

80:                                               ; preds = %64
  %81 = load i32, i32* %8, align 4
  %82 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %9, align 8
  %83 = getelementptr inbounds %struct.iser_rx_desc, %struct.iser_rx_desc* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 4
  %84 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %9, align 8
  %85 = getelementptr inbounds %struct.iser_rx_desc, %struct.iser_rx_desc* %84, i32 0, i32 1
  store %struct.ib_sge* %85, %struct.ib_sge** %10, align 8
  %86 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %9, align 8
  %87 = getelementptr inbounds %struct.iser_rx_desc, %struct.iser_rx_desc* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.ib_sge*, %struct.ib_sge** %10, align 8
  %90 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* @ISER_RX_PAYLOAD_SIZE, align 4
  %92 = load %struct.ib_sge*, %struct.ib_sge** %10, align 8
  %93 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load %struct.iser_device*, %struct.iser_device** %12, align 8
  %95 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %94, i32 0, i32 1
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.ib_sge*, %struct.ib_sge** %10, align 8
  %100 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 4
  br label %101

101:                                              ; preds = %80
  %102 = load i32, i32* %6, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %6, align 4
  %104 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %9, align 8
  %105 = getelementptr inbounds %struct.iser_rx_desc, %struct.iser_rx_desc* %104, i32 1
  store %struct.iser_rx_desc* %105, %struct.iser_rx_desc** %9, align 8
  br label %58

106:                                              ; preds = %58
  %107 = load %struct.iser_conn*, %struct.iser_conn** %4, align 8
  %108 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %107, i32 0, i32 4
  store i64 0, i64* %108, align 8
  store i32 0, i32* %3, align 4
  br label %146

109:                                              ; preds = %79
  %110 = load %struct.iser_conn*, %struct.iser_conn** %4, align 8
  %111 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %110, i32 0, i32 3
  %112 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %111, align 8
  store %struct.iser_rx_desc* %112, %struct.iser_rx_desc** %9, align 8
  store i32 0, i32* %7, align 4
  br label %113

113:                                              ; preds = %127, %109
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* %6, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %132

117:                                              ; preds = %113
  %118 = load %struct.iser_device*, %struct.iser_device** %12, align 8
  %119 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %9, align 8
  %122 = getelementptr inbounds %struct.iser_rx_desc, %struct.iser_rx_desc* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @ISER_RX_PAYLOAD_SIZE, align 4
  %125 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %126 = call i32 @ib_dma_unmap_single(i32 %120, i32 %123, i32 %124, i32 %125)
  br label %127

127:                                              ; preds = %117
  %128 = load i32, i32* %7, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %7, align 4
  %130 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %9, align 8
  %131 = getelementptr inbounds %struct.iser_rx_desc, %struct.iser_rx_desc* %130, i32 1
  store %struct.iser_rx_desc* %131, %struct.iser_rx_desc** %9, align 8
  br label %113

132:                                              ; preds = %113
  %133 = load %struct.iser_conn*, %struct.iser_conn** %4, align 8
  %134 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %133, i32 0, i32 3
  %135 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %134, align 8
  %136 = load i32, i32* @M_ISER_INITIATOR, align 4
  %137 = call i32 @free(%struct.iser_rx_desc* %135, i32 %136)
  %138 = load %struct.iser_conn*, %struct.iser_conn** %4, align 8
  %139 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %138, i32 0, i32 3
  store %struct.iser_rx_desc* null, %struct.iser_rx_desc** %139, align 8
  br label %140

140:                                              ; preds = %132, %53
  %141 = load %struct.ib_conn*, %struct.ib_conn** %11, align 8
  %142 = call i32 @iser_free_fastreg_pool(%struct.ib_conn* %141)
  br label %143

143:                                              ; preds = %140, %31
  %144 = call i32 @ISER_ERR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %145 = load i32, i32* @ENOMEM, align 4
  store i32 %145, i32* %3, align 4
  br label %146

146:                                              ; preds = %143, %106
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local i64 @iser_create_fastreg_pool(%struct.ib_conn*, i32) #1

declare dso_local %struct.iser_rx_desc* @malloc(i32, i32, i32) #1

declare dso_local i32 @ib_dma_map_single(i32, i8*, i32, i32) #1

declare dso_local i64 @ib_dma_mapping_error(i32, i32) #1

declare dso_local i32 @ib_dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @free(%struct.iser_rx_desc*, i32) #1

declare dso_local i32 @iser_free_fastreg_pool(%struct.ib_conn*) #1

declare dso_local i32 @ISER_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
