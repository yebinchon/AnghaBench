; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_mad.c_ib_send_mad.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_mad.c_ib_send_mad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad_send_wr_private = type { i8*, i8*, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.ib_sge*, %struct.TYPE_8__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_9__, %struct.TYPE_13__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_13__ = type { i64, i64, i32, %struct.list_head }
%struct.list_head = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32, %struct.ib_mad_agent* }
%struct.ib_mad_agent = type { i32, i32 }
%struct.ib_sge = type { i32, i8* }
%struct.TYPE_8__ = type { %struct.ib_mad_qp_info* }
%struct.ib_mad_qp_info = type { %struct.TYPE_13__, %struct.list_head }
%struct.ib_send_wr = type { i32 }

@ib_mad_send_done = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_send_mad(%struct.ib_mad_send_wr_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ib_mad_send_wr_private*, align 8
  %4 = alloca %struct.ib_mad_qp_info*, align 8
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca %struct.ib_send_wr*, align 8
  %7 = alloca %struct.ib_mad_agent*, align 8
  %8 = alloca %struct.ib_sge*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.ib_mad_send_wr_private* %0, %struct.ib_mad_send_wr_private** %3, align 8
  %11 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %12 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %11, i32 0, i32 6
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %14, align 8
  store %struct.ib_mad_qp_info* %15, %struct.ib_mad_qp_info** %4, align 8
  %16 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %4, align 8
  %17 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %16, i32 0, i32 0
  %18 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %19 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 2
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %20, align 8
  %21 = load i32, i32* @ib_mad_send_done, align 4
  %22 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %23 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  store i32 %21, i32* %25, align 4
  %26 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %27 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 1
  %29 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %30 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  store %struct.TYPE_9__* %28, %struct.TYPE_9__** %32, align 8
  %33 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %34 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  %36 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %35, align 8
  store %struct.ib_mad_agent* %36, %struct.ib_mad_agent** %7, align 8
  %37 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %38 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %37, i32 0, i32 5
  %39 = load %struct.ib_sge*, %struct.ib_sge** %38, align 8
  store %struct.ib_sge* %39, %struct.ib_sge** %8, align 8
  %40 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %7, align 8
  %41 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %44 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.ib_sge*, %struct.ib_sge** %8, align 8
  %48 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %47, i64 0
  %49 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @DMA_TO_DEVICE, align 4
  %52 = call i8* @ib_dma_map_single(i32 %42, i32 %46, i32 %50, i32 %51)
  %53 = load %struct.ib_sge*, %struct.ib_sge** %8, align 8
  %54 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %53, i64 0
  %55 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %54, i32 0, i32 1
  store i8* %52, i8** %55, align 8
  %56 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %7, align 8
  %57 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ib_sge*, %struct.ib_sge** %8, align 8
  %60 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %59, i64 0
  %61 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @ib_dma_mapping_error(i32 %58, i8* %62)
  %64 = call i64 @unlikely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %1
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %199

69:                                               ; preds = %1
  %70 = load %struct.ib_sge*, %struct.ib_sge** %8, align 8
  %71 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %70, i64 0
  %72 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %75 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %74, i32 0, i32 1
  store i8* %73, i8** %75, align 8
  %76 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %7, align 8
  %77 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %80 = call i32 @ib_get_payload(%struct.ib_mad_send_wr_private* %79)
  %81 = load %struct.ib_sge*, %struct.ib_sge** %8, align 8
  %82 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %81, i64 1
  %83 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @DMA_TO_DEVICE, align 4
  %86 = call i8* @ib_dma_map_single(i32 %78, i32 %80, i32 %84, i32 %85)
  %87 = load %struct.ib_sge*, %struct.ib_sge** %8, align 8
  %88 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %87, i64 1
  %89 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %88, i32 0, i32 1
  store i8* %86, i8** %89, align 8
  %90 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %7, align 8
  %91 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.ib_sge*, %struct.ib_sge** %8, align 8
  %94 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %93, i64 1
  %95 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %94, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @ib_dma_mapping_error(i32 %92, i8* %96)
  %98 = call i64 @unlikely(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %115

100:                                              ; preds = %69
  %101 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %7, align 8
  %102 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %105 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %104, i32 0, i32 1
  %106 = load i8*, i8** %105, align 8
  %107 = load %struct.ib_sge*, %struct.ib_sge** %8, align 8
  %108 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %107, i64 0
  %109 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @DMA_TO_DEVICE, align 4
  %112 = call i32 @ib_dma_unmap_single(i32 %103, i8* %106, i32 %110, i32 %111)
  %113 = load i32, i32* @ENOMEM, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %2, align 4
  br label %199

115:                                              ; preds = %69
  %116 = load %struct.ib_sge*, %struct.ib_sge** %8, align 8
  %117 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %116, i64 1
  %118 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %117, i32 0, i32 1
  %119 = load i8*, i8** %118, align 8
  %120 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %121 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %120, i32 0, i32 0
  store i8* %119, i8** %121, align 8
  %122 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %4, align 8
  %123 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 2
  %125 = load i64, i64* %9, align 8
  %126 = call i32 @spin_lock_irqsave(i32* %124, i64 %125)
  %127 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %4, align 8
  %128 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %4, align 8
  %132 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = icmp slt i64 %130, %134
  br i1 %135, label %136, label %147

136:                                              ; preds = %115
  %137 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %7, align 8
  %138 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %141 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %140, i32 0, i32 3
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 0
  %143 = call i32 @ib_post_send(i32 %139, %struct.TYPE_14__* %142, %struct.ib_send_wr** %6)
  store i32 %143, i32* %10, align 4
  %144 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %4, align 8
  %145 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 3
  store %struct.list_head* %146, %struct.list_head** %5, align 8
  br label %150

147:                                              ; preds = %115
  store i32 0, i32* %10, align 4
  %148 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %4, align 8
  %149 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %148, i32 0, i32 1
  store %struct.list_head* %149, %struct.list_head** %5, align 8
  br label %150

150:                                              ; preds = %147, %136
  %151 = load i32, i32* %10, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %164, label %153

153:                                              ; preds = %150
  %154 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %4, align 8
  %155 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = add nsw i64 %157, 1
  store i64 %158, i64* %156, align 8
  %159 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %160 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 0
  %162 = load %struct.list_head*, %struct.list_head** %5, align 8
  %163 = call i32 @list_add_tail(i32* %161, %struct.list_head* %162)
  br label %164

164:                                              ; preds = %153, %150
  %165 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %4, align 8
  %166 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 2
  %168 = load i64, i64* %9, align 8
  %169 = call i32 @spin_unlock_irqrestore(i32* %167, i64 %168)
  %170 = load i32, i32* %10, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %197

172:                                              ; preds = %164
  %173 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %7, align 8
  %174 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %177 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %176, i32 0, i32 1
  %178 = load i8*, i8** %177, align 8
  %179 = load %struct.ib_sge*, %struct.ib_sge** %8, align 8
  %180 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %179, i64 0
  %181 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @DMA_TO_DEVICE, align 4
  %184 = call i32 @ib_dma_unmap_single(i32 %175, i8* %178, i32 %182, i32 %183)
  %185 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %7, align 8
  %186 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %189 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %188, i32 0, i32 0
  %190 = load i8*, i8** %189, align 8
  %191 = load %struct.ib_sge*, %struct.ib_sge** %8, align 8
  %192 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %191, i64 1
  %193 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @DMA_TO_DEVICE, align 4
  %196 = call i32 @ib_dma_unmap_single(i32 %187, i8* %190, i32 %194, i32 %195)
  br label %197

197:                                              ; preds = %172, %164
  %198 = load i32, i32* %10, align 4
  store i32 %198, i32* %2, align 4
  br label %199

199:                                              ; preds = %197, %100, %66
  %200 = load i32, i32* %2, align 4
  ret i32 %200
}

declare dso_local i8* @ib_dma_map_single(i32, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ib_dma_mapping_error(i32, i8*) #1

declare dso_local i32 @ib_get_payload(%struct.ib_mad_send_wr_private*) #1

declare dso_local i32 @ib_dma_unmap_single(i32, i8*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ib_post_send(i32, %struct.TYPE_14__*, %struct.ib_send_wr**) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
