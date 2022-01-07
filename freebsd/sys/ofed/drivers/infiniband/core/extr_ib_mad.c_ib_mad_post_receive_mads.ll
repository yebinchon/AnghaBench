; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_mad.c_ib_mad_post_receive_mads.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_mad.c_ib_mad_post_receive_mads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad_qp_info = type { %struct.TYPE_13__*, i32, %struct.ib_mad_queue }
%struct.TYPE_13__ = type { %struct.TYPE_14__*, %struct.TYPE_9__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.ib_mad_queue = type { i64, i64, i32, i32 }
%struct.ib_mad_private = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__, %struct.ib_mad_queue* }
%struct.TYPE_10__ = type { i32 }
%struct.ib_sge = type { i32, i32, i32 }
%struct.ib_recv_wr = type { i32, %struct.TYPE_10__*, %struct.ib_sge*, i32* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"No memory for receive buffer\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@ib_mad_recv_done = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"ib_post_recv failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_mad_qp_info*, %struct.ib_mad_private*)* @ib_mad_post_receive_mads to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ib_mad_post_receive_mads(%struct.ib_mad_qp_info* %0, %struct.ib_mad_private* %1) #0 {
  %3 = alloca %struct.ib_mad_qp_info*, align 8
  %4 = alloca %struct.ib_mad_private*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_mad_private*, align 8
  %9 = alloca %struct.ib_sge, align 4
  %10 = alloca %struct.ib_recv_wr, align 8
  %11 = alloca %struct.ib_recv_wr*, align 8
  %12 = alloca %struct.ib_mad_queue*, align 8
  store %struct.ib_mad_qp_info* %0, %struct.ib_mad_qp_info** %3, align 8
  store %struct.ib_mad_private* %1, %struct.ib_mad_private** %4, align 8
  %13 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %3, align 8
  %14 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %13, i32 0, i32 2
  store %struct.ib_mad_queue* %14, %struct.ib_mad_queue** %12, align 8
  %15 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %3, align 8
  %16 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %15, i32 0, i32 0
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %9, i32 0, i32 2
  store i32 %21, i32* %22, align 4
  %23 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %10, i32 0, i32 3
  store i32* null, i32** %23, align 8
  %24 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %10, i32 0, i32 2
  store %struct.ib_sge* %9, %struct.ib_sge** %24, align 8
  %25 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %10, i32 0, i32 0
  store i32 1, i32* %25, align 8
  br label %26

26:                                               ; preds = %174, %2
  %27 = load %struct.ib_mad_private*, %struct.ib_mad_private** %4, align 8
  %28 = icmp ne %struct.ib_mad_private* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load %struct.ib_mad_private*, %struct.ib_mad_private** %4, align 8
  store %struct.ib_mad_private* %30, %struct.ib_mad_private** %8, align 8
  store %struct.ib_mad_private* null, %struct.ib_mad_private** %4, align 8
  br label %51

31:                                               ; preds = %26
  %32 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %3, align 8
  %33 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %32, i32 0, i32 0
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  %35 = call i32 @port_mad_size(%struct.TYPE_13__* %34)
  %36 = load i32, i32* @GFP_ATOMIC, align 4
  %37 = call %struct.ib_mad_private* @alloc_mad_private(i32 %35, i32 %36)
  store %struct.ib_mad_private* %37, %struct.ib_mad_private** %8, align 8
  %38 = load %struct.ib_mad_private*, %struct.ib_mad_private** %8, align 8
  %39 = icmp ne %struct.ib_mad_private* %38, null
  br i1 %39, label %50, label %40

40:                                               ; preds = %31
  %41 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %3, align 8
  %42 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %41, i32 0, i32 0
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = call i32 (i32*, i8*, ...) @dev_err(i32* %46, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %7, align 4
  br label %177

50:                                               ; preds = %31
  br label %51

51:                                               ; preds = %50, %29
  %52 = load %struct.ib_mad_private*, %struct.ib_mad_private** %8, align 8
  %53 = call i32 @mad_priv_dma_size(%struct.ib_mad_private* %52)
  %54 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %9, i32 0, i32 1
  store i32 %53, i32* %54, align 4
  %55 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %3, align 8
  %56 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %55, i32 0, i32 0
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %58, align 8
  %60 = load %struct.ib_mad_private*, %struct.ib_mad_private** %8, align 8
  %61 = getelementptr inbounds %struct.ib_mad_private, %struct.ib_mad_private* %60, i32 0, i32 1
  %62 = load %struct.ib_mad_private*, %struct.ib_mad_private** %8, align 8
  %63 = call i32 @mad_priv_dma_size(%struct.ib_mad_private* %62)
  %64 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %65 = call i32 @ib_dma_map_single(%struct.TYPE_14__* %59, i32* %61, i32 %63, i32 %64)
  %66 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %9, i32 0, i32 0
  store i32 %65, i32* %66, align 4
  %67 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %3, align 8
  %68 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %67, i32 0, i32 0
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %70, align 8
  %72 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %9, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @ib_dma_mapping_error(%struct.TYPE_14__* %71, i32 %73)
  %75 = call i64 @unlikely(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %51
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %7, align 4
  br label %177

80:                                               ; preds = %51
  %81 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %9, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.ib_mad_private*, %struct.ib_mad_private** %8, align 8
  %84 = getelementptr inbounds %struct.ib_mad_private, %struct.ib_mad_private* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  store i32 %82, i32* %85, align 8
  %86 = load %struct.ib_mad_queue*, %struct.ib_mad_queue** %12, align 8
  %87 = load %struct.ib_mad_private*, %struct.ib_mad_private** %8, align 8
  %88 = getelementptr inbounds %struct.ib_mad_private, %struct.ib_mad_private* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 2
  store %struct.ib_mad_queue* %86, %struct.ib_mad_queue** %90, align 8
  %91 = load i32, i32* @ib_mad_recv_done, align 4
  %92 = load %struct.ib_mad_private*, %struct.ib_mad_private** %8, align 8
  %93 = getelementptr inbounds %struct.ib_mad_private, %struct.ib_mad_private* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  store i32 %91, i32* %96, align 4
  %97 = load %struct.ib_mad_private*, %struct.ib_mad_private** %8, align 8
  %98 = getelementptr inbounds %struct.ib_mad_private, %struct.ib_mad_private* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %10, i32 0, i32 1
  store %struct.TYPE_10__* %100, %struct.TYPE_10__** %101, align 8
  %102 = load %struct.ib_mad_queue*, %struct.ib_mad_queue** %12, align 8
  %103 = getelementptr inbounds %struct.ib_mad_queue, %struct.ib_mad_queue* %102, i32 0, i32 2
  %104 = load i64, i64* %5, align 8
  %105 = call i32 @spin_lock_irqsave(i32* %103, i64 %104)
  %106 = load %struct.ib_mad_queue*, %struct.ib_mad_queue** %12, align 8
  %107 = getelementptr inbounds %struct.ib_mad_queue, %struct.ib_mad_queue* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %108, 1
  store i64 %109, i64* %107, align 8
  %110 = load %struct.ib_mad_queue*, %struct.ib_mad_queue** %12, align 8
  %111 = getelementptr inbounds %struct.ib_mad_queue, %struct.ib_mad_queue* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp slt i64 %109, %112
  %114 = zext i1 %113 to i32
  store i32 %114, i32* %6, align 4
  %115 = load %struct.ib_mad_private*, %struct.ib_mad_private** %8, align 8
  %116 = getelementptr inbounds %struct.ib_mad_private, %struct.ib_mad_private* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  %119 = load %struct.ib_mad_queue*, %struct.ib_mad_queue** %12, align 8
  %120 = getelementptr inbounds %struct.ib_mad_queue, %struct.ib_mad_queue* %119, i32 0, i32 3
  %121 = call i32 @list_add_tail(i32* %118, i32* %120)
  %122 = load %struct.ib_mad_queue*, %struct.ib_mad_queue** %12, align 8
  %123 = getelementptr inbounds %struct.ib_mad_queue, %struct.ib_mad_queue* %122, i32 0, i32 2
  %124 = load i64, i64* %5, align 8
  %125 = call i32 @spin_unlock_irqrestore(i32* %123, i64 %124)
  %126 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %3, align 8
  %127 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @ib_post_recv(i32 %128, %struct.ib_recv_wr* %10, %struct.ib_recv_wr** %11)
  store i32 %129, i32* %7, align 4
  %130 = load i32, i32* %7, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %173

132:                                              ; preds = %80
  %133 = load %struct.ib_mad_queue*, %struct.ib_mad_queue** %12, align 8
  %134 = getelementptr inbounds %struct.ib_mad_queue, %struct.ib_mad_queue* %133, i32 0, i32 2
  %135 = load i64, i64* %5, align 8
  %136 = call i32 @spin_lock_irqsave(i32* %134, i64 %135)
  %137 = load %struct.ib_mad_private*, %struct.ib_mad_private** %8, align 8
  %138 = getelementptr inbounds %struct.ib_mad_private, %struct.ib_mad_private* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 0
  %141 = call i32 @list_del(i32* %140)
  %142 = load %struct.ib_mad_queue*, %struct.ib_mad_queue** %12, align 8
  %143 = getelementptr inbounds %struct.ib_mad_queue, %struct.ib_mad_queue* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = add nsw i64 %144, -1
  store i64 %145, i64* %143, align 8
  %146 = load %struct.ib_mad_queue*, %struct.ib_mad_queue** %12, align 8
  %147 = getelementptr inbounds %struct.ib_mad_queue, %struct.ib_mad_queue* %146, i32 0, i32 2
  %148 = load i64, i64* %5, align 8
  %149 = call i32 @spin_unlock_irqrestore(i32* %147, i64 %148)
  %150 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %3, align 8
  %151 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %150, i32 0, i32 0
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %153, align 8
  %155 = load %struct.ib_mad_private*, %struct.ib_mad_private** %8, align 8
  %156 = getelementptr inbounds %struct.ib_mad_private, %struct.ib_mad_private* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.ib_mad_private*, %struct.ib_mad_private** %8, align 8
  %160 = call i32 @mad_priv_dma_size(%struct.ib_mad_private* %159)
  %161 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %162 = call i32 @ib_dma_unmap_single(%struct.TYPE_14__* %154, i32 %158, i32 %160, i32 %161)
  %163 = load %struct.ib_mad_private*, %struct.ib_mad_private** %8, align 8
  %164 = call i32 @kfree(%struct.ib_mad_private* %163)
  %165 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %3, align 8
  %166 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %165, i32 0, i32 0
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 0
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 0
  %171 = load i32, i32* %7, align 4
  %172 = call i32 (i32*, i8*, ...) @dev_err(i32* %170, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %171)
  br label %177

173:                                              ; preds = %80
  br label %174

174:                                              ; preds = %173
  %175 = load i32, i32* %6, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %26, label %177

177:                                              ; preds = %174, %132, %77, %40
  %178 = load i32, i32* %7, align 4
  ret i32 %178
}

declare dso_local %struct.ib_mad_private* @alloc_mad_private(i32, i32) #1

declare dso_local i32 @port_mad_size(%struct.TYPE_13__*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @mad_priv_dma_size(%struct.ib_mad_private*) #1

declare dso_local i32 @ib_dma_map_single(%struct.TYPE_14__*, i32*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ib_dma_mapping_error(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ib_post_recv(i32, %struct.ib_recv_wr*, %struct.ib_recv_wr**) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @ib_dma_unmap_single(%struct.TYPE_14__*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.ib_mad_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
