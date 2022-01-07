; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_queues.c_nicvf_init_snd_queue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_queues.c_nicvf_init_snd_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicvf = type { i32 }
%struct.snd_queue = type { i32, i32, i32, %struct.TYPE_4__*, i32, %struct.nicvf*, i32, i32, i64, i64, %struct.TYPE_3__, i32, i32*, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"%s: SQ(%d) lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@MIN_SQ_DESC_PER_PKT_XMIT = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"ERROR: Could not set up buf ring for SQ(%d)\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SND_QUEUE_DESC_SIZE = common dso_local global i32 0, align 4
@NICVF_SQ_BASE_ALIGN_BYTES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Could not allocate DMA memory for SQ\0A\00", align 1
@SND_QUEUE_THRESH = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@NICVF_TSO_MAXSIZE = common dso_local global i32 0, align 4
@NICVF_TSO_NSEGS = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"Failed to create busdma tag for Tx buffers\0A\00", align 1
@M_NICVF = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [48 x i8] c"Could not allocate memory for Tx buffers array\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"Failed to create DMA maps for Tx buffers\0A\00", align 1
@nicvf_snd_task = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"nicvf_snd_taskq\00", align 1
@M_WAITOK = common dso_local global i32 0, align 4
@taskqueue_thread_enqueue = common dso_local global i32 0, align 4
@PI_NET = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [18 x i8] c"%s: snd_taskq(%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nicvf*, %struct.snd_queue*, i32, i32)* @nicvf_init_snd_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nicvf_init_snd_queue(%struct.nicvf* %0, %struct.snd_queue* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nicvf*, align 8
  %7 = alloca %struct.snd_queue*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.nicvf* %0, %struct.nicvf** %6, align 8
  store %struct.snd_queue* %1, %struct.snd_queue** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.snd_queue*, %struct.snd_queue** %7, align 8
  %13 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %12, i32 0, i32 14
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.nicvf*, %struct.nicvf** %6, align 8
  %16 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @device_get_nameunit(i32 %17)
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @snprintf(i32 %14, i32 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %18, i32 %19)
  %21 = load %struct.snd_queue*, %struct.snd_queue** %7, align 8
  %22 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %21, i32 0, i32 13
  %23 = load %struct.snd_queue*, %struct.snd_queue** %7, align 8
  %24 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %23, i32 0, i32 14
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @MTX_DEF, align 4
  %27 = call i32 @mtx_init(i32* %22, i32 %25, i32* null, i32 %26)
  %28 = load %struct.snd_queue*, %struct.snd_queue** %7, align 8
  %29 = call i32 @NICVF_TX_LOCK(%struct.snd_queue* %28)
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @MIN_SQ_DESC_PER_PKT_XMIT, align 4
  %32 = sdiv i32 %30, %31
  %33 = load i32, i32* @M_DEVBUF, align 4
  %34 = load i32, i32* @M_NOWAIT, align 4
  %35 = load %struct.snd_queue*, %struct.snd_queue** %7, align 8
  %36 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %35, i32 0, i32 13
  %37 = call i32* @buf_ring_alloc(i32 %32, i32 %33, i32 %34, i32* %36)
  %38 = load %struct.snd_queue*, %struct.snd_queue** %7, align 8
  %39 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %38, i32 0, i32 12
  store i32* %37, i32** %39, align 8
  %40 = load %struct.snd_queue*, %struct.snd_queue** %7, align 8
  %41 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %40, i32 0, i32 12
  %42 = load i32*, i32** %41, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %51

44:                                               ; preds = %4
  %45 = load %struct.nicvf*, %struct.nicvf** %6, align 8
  %46 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 (i32, i8*, ...) @device_printf(i32 %47, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @ENOMEM, align 4
  store i32 %50, i32* %11, align 4
  br label %184

51:                                               ; preds = %4
  %52 = load %struct.nicvf*, %struct.nicvf** %6, align 8
  %53 = load %struct.snd_queue*, %struct.snd_queue** %7, align 8
  %54 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %53, i32 0, i32 10
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @SND_QUEUE_DESC_SIZE, align 4
  %57 = load i32, i32* @NICVF_SQ_BASE_ALIGN_BYTES, align 4
  %58 = call i32 @nicvf_alloc_q_desc_mem(%struct.nicvf* %52, %struct.TYPE_3__* %54, i32 %55, i32 %56, i32 %57)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %51
  %62 = load %struct.nicvf*, %struct.nicvf** %6, align 8
  %63 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i32, i8*, ...) @device_printf(i32 %64, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %184

66:                                               ; preds = %51
  %67 = load %struct.snd_queue*, %struct.snd_queue** %7, align 8
  %68 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %67, i32 0, i32 10
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.snd_queue*, %struct.snd_queue** %7, align 8
  %72 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %71, i32 0, i32 11
  store i32 %70, i32* %72, align 4
  %73 = load %struct.snd_queue*, %struct.snd_queue** %7, align 8
  %74 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %73, i32 0, i32 8
  store i64 0, i64* %74, align 8
  %75 = load %struct.snd_queue*, %struct.snd_queue** %7, align 8
  %76 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %75, i32 0, i32 9
  store i64 0, i64* %76, align 8
  %77 = load %struct.snd_queue*, %struct.snd_queue** %7, align 8
  %78 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %77, i32 0, i32 7
  %79 = load i32, i32* %8, align 4
  %80 = sub nsw i32 %79, 1
  %81 = call i32 @atomic_store_rel_int(i32* %78, i32 %80)
  %82 = load i32, i32* @SND_QUEUE_THRESH, align 4
  %83 = load %struct.snd_queue*, %struct.snd_queue** %7, align 8
  %84 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %83, i32 0, i32 6
  store i32 %82, i32* %84, align 8
  %85 = load i32, i32* %9, align 4
  %86 = load %struct.snd_queue*, %struct.snd_queue** %7, align 8
  %87 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load %struct.nicvf*, %struct.nicvf** %6, align 8
  %89 = load %struct.snd_queue*, %struct.snd_queue** %7, align 8
  %90 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %89, i32 0, i32 5
  store %struct.nicvf* %88, %struct.nicvf** %90, align 8
  %91 = load %struct.nicvf*, %struct.nicvf** %6, align 8
  %92 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @bus_get_dma_tag(i32 %93)
  %95 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %96 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %97 = load i32, i32* @NICVF_TSO_MAXSIZE, align 4
  %98 = load i32, i32* @NICVF_TSO_NSEGS, align 4
  %99 = load i32, i32* @MCLBYTES, align 4
  %100 = load %struct.snd_queue*, %struct.snd_queue** %7, align 8
  %101 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %100, i32 0, i32 4
  %102 = call i32 @bus_dma_tag_create(i32 %94, i32 1, i32 0, i32 %95, i32 %96, i32* null, i32* null, i32 %97, i32 %98, i32 %99, i32 0, i32* null, i32* null, i32* %101)
  store i32 %102, i32* %11, align 4
  %103 = load i32, i32* %11, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %66
  %106 = load %struct.nicvf*, %struct.nicvf** %6, align 8
  %107 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 (i32, i8*, ...) @device_printf(i32 %108, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  br label %184

110:                                              ; preds = %66
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = mul i64 4, %112
  %114 = trunc i64 %113 to i32
  %115 = load i32, i32* @M_NICVF, align 4
  %116 = load i32, i32* @M_NOWAIT, align 4
  %117 = load i32, i32* @M_ZERO, align 4
  %118 = or i32 %116, %117
  %119 = call %struct.TYPE_4__* @malloc(i32 %114, i32 %115, i32 %118)
  %120 = load %struct.snd_queue*, %struct.snd_queue** %7, align 8
  %121 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %120, i32 0, i32 3
  store %struct.TYPE_4__* %119, %struct.TYPE_4__** %121, align 8
  %122 = load %struct.snd_queue*, %struct.snd_queue** %7, align 8
  %123 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %122, i32 0, i32 3
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = icmp eq %struct.TYPE_4__* %124, null
  br i1 %125, label %126, label %132

126:                                              ; preds = %110
  %127 = load %struct.nicvf*, %struct.nicvf** %6, align 8
  %128 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 (i32, i8*, ...) @device_printf(i32 %129, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  %131 = load i32, i32* @ENOMEM, align 4
  store i32 %131, i32* %11, align 4
  br label %184

132:                                              ; preds = %110
  store i64 0, i64* %10, align 8
  br label %133

133:                                              ; preds = %157, %132
  %134 = load i64, i64* %10, align 8
  %135 = load i32, i32* %8, align 4
  %136 = sext i32 %135 to i64
  %137 = icmp ult i64 %134, %136
  br i1 %137, label %138, label %160

138:                                              ; preds = %133
  %139 = load %struct.snd_queue*, %struct.snd_queue** %7, align 8
  %140 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.snd_queue*, %struct.snd_queue** %7, align 8
  %143 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %142, i32 0, i32 3
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %143, align 8
  %145 = load i64, i64* %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = call i32 @bus_dmamap_create(i32 %141, i32 0, i32* %147)
  store i32 %148, i32* %11, align 4
  %149 = load i32, i32* %11, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %138
  %152 = load %struct.nicvf*, %struct.nicvf** %6, align 8
  %153 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 (i32, i8*, ...) @device_printf(i32 %154, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  br label %184

156:                                              ; preds = %138
  br label %157

157:                                              ; preds = %156
  %158 = load i64, i64* %10, align 8
  %159 = add i64 %158, 1
  store i64 %159, i64* %10, align 8
  br label %133

160:                                              ; preds = %133
  %161 = load %struct.snd_queue*, %struct.snd_queue** %7, align 8
  %162 = call i32 @NICVF_TX_UNLOCK(%struct.snd_queue* %161)
  %163 = load %struct.snd_queue*, %struct.snd_queue** %7, align 8
  %164 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %163, i32 0, i32 2
  %165 = load i32, i32* @nicvf_snd_task, align 4
  %166 = load %struct.snd_queue*, %struct.snd_queue** %7, align 8
  %167 = call i32 @TASK_INIT(i32* %164, i32 0, i32 %165, %struct.snd_queue* %166)
  %168 = load i32, i32* @M_WAITOK, align 4
  %169 = load i32, i32* @taskqueue_thread_enqueue, align 4
  %170 = load %struct.snd_queue*, %struct.snd_queue** %7, align 8
  %171 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %170, i32 0, i32 1
  %172 = call i32 @taskqueue_create_fast(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %168, i32 %169, i32* %171)
  %173 = load %struct.snd_queue*, %struct.snd_queue** %7, align 8
  %174 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %173, i32 0, i32 1
  store i32 %172, i32* %174, align 4
  %175 = load %struct.snd_queue*, %struct.snd_queue** %7, align 8
  %176 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %175, i32 0, i32 1
  %177 = load i32, i32* @PI_NET, align 4
  %178 = load %struct.nicvf*, %struct.nicvf** %6, align 8
  %179 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = call i8* @device_get_nameunit(i32 %180)
  %182 = load i32, i32* %9, align 4
  %183 = call i32 @taskqueue_start_threads(i32* %176, i32 1, i32 %177, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i8* %181, i32 %182)
  store i32 0, i32* %5, align 4
  br label %188

184:                                              ; preds = %151, %126, %105, %61, %44
  %185 = load %struct.snd_queue*, %struct.snd_queue** %7, align 8
  %186 = call i32 @NICVF_TX_UNLOCK(%struct.snd_queue* %185)
  %187 = load i32, i32* %11, align 4
  store i32 %187, i32* %5, align 4
  br label %188

188:                                              ; preds = %184, %160
  %189 = load i32, i32* %5, align 4
  ret i32 %189
}

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i8* @device_get_nameunit(i32) #1

declare dso_local i32 @mtx_init(i32*, i32, i32*, i32) #1

declare dso_local i32 @NICVF_TX_LOCK(%struct.snd_queue*) #1

declare dso_local i32* @buf_ring_alloc(i32, i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @nicvf_alloc_q_desc_mem(%struct.nicvf*, %struct.TYPE_3__*, i32, i32, i32) #1

declare dso_local i32 @atomic_store_rel_int(i32*, i32) #1

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local %struct.TYPE_4__* @malloc(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32*) #1

declare dso_local i32 @NICVF_TX_UNLOCK(%struct.snd_queue*) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.snd_queue*) #1

declare dso_local i32 @taskqueue_create_fast(i8*, i32, i32, i32*) #1

declare dso_local i32 @taskqueue_start_threads(i32*, i32, i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
