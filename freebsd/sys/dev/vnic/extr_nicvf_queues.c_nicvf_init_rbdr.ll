; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_queues.c_nicvf_init_rbdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_queues.c_nicvf_init_rbdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicvf = type { i32 }
%struct.rbdr = type { i32, i32, i32, i32, i32*, i32, %struct.nicvf*, i32, i32, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.rbdr_entry_t = type { i32 }

@NICVF_RCV_BUF_ALIGN_BYTES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Failed to create RBDR descriptors ring\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@RBDR_THRESH = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Buffer size to large for mbuf cluster\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DMAP_MAX_PHYSADDR = common dso_local global i32 0, align 4
@DMAP_MIN_PHYSADDR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"Failed to create busdma tag for RBDR buffers\0A\00", align 1
@M_NICVF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Failed to create DMA map for RB\0A\00", align 1
@DMA_BUFFER_LEN = common dso_local global i32 0, align 4
@NICVF_RCV_BUF_ALIGN = common dso_local global i32 0, align 4
@nicvf_rbdr_task = common dso_local global i32 0, align 4
@nicvf_rbdr_task_nowait = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"nicvf_rbdr_taskq\00", align 1
@taskqueue_thread_enqueue = common dso_local global i32 0, align 4
@PI_NET = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"%s: rbdr_taskq\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nicvf*, %struct.rbdr*, i32, i32, i32)* @nicvf_init_rbdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nicvf_init_rbdr(%struct.nicvf* %0, %struct.rbdr* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nicvf*, align 8
  %8 = alloca %struct.rbdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.rbdr_entry_t*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.nicvf* %0, %struct.nicvf** %7, align 8
  store %struct.rbdr* %1, %struct.rbdr** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %18 = load %struct.rbdr*, %struct.rbdr** %8, align 8
  %19 = getelementptr inbounds %struct.rbdr, %struct.rbdr* %18, i32 0, i32 10
  %20 = load i32, i32* %9, align 4
  %21 = load i64, i64* @NICVF_RCV_BUF_ALIGN_BYTES, align 8
  %22 = call i32 @nicvf_alloc_q_desc_mem(%struct.nicvf* %17, %struct.TYPE_2__* %19, i32 %20, i32 4, i64 %21)
  store i32 %22, i32* %16, align 4
  %23 = load i32, i32* %16, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %5
  %26 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %27 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @device_printf(i32 %28, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* %16, align 4
  store i32 %30, i32* %6, align 4
  br label %175

31:                                               ; preds = %5
  %32 = load %struct.rbdr*, %struct.rbdr** %8, align 8
  %33 = getelementptr inbounds %struct.rbdr, %struct.rbdr* %32, i32 0, i32 10
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.rbdr*, %struct.rbdr** %8, align 8
  %37 = getelementptr inbounds %struct.rbdr, %struct.rbdr* %36, i32 0, i32 11
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = load i64, i64* @NICVF_RCV_BUF_ALIGN_BYTES, align 8
  %41 = sub nsw i64 %39, %40
  %42 = load %struct.rbdr*, %struct.rbdr** %8, align 8
  %43 = getelementptr inbounds %struct.rbdr, %struct.rbdr* %42, i32 0, i32 9
  store i64 %41, i64* %43, align 8
  %44 = load i32, i32* @TRUE, align 4
  %45 = load %struct.rbdr*, %struct.rbdr** %8, align 8
  %46 = getelementptr inbounds %struct.rbdr, %struct.rbdr* %45, i32 0, i32 8
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @RBDR_THRESH, align 4
  %48 = load %struct.rbdr*, %struct.rbdr** %8, align 8
  %49 = getelementptr inbounds %struct.rbdr, %struct.rbdr* %48, i32 0, i32 7
  store i32 %47, i32* %49, align 8
  %50 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %51 = load %struct.rbdr*, %struct.rbdr** %8, align 8
  %52 = getelementptr inbounds %struct.rbdr, %struct.rbdr* %51, i32 0, i32 6
  store %struct.nicvf* %50, %struct.nicvf** %52, align 8
  %53 = load i32, i32* %11, align 4
  %54 = load %struct.rbdr*, %struct.rbdr** %8, align 8
  %55 = getelementptr inbounds %struct.rbdr, %struct.rbdr* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @MCLBYTES, align 4
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %31
  %60 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %61 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @device_printf(i32 %62, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i32, i32* @EINVAL, align 4
  store i32 %64, i32* %6, align 4
  br label %175

65:                                               ; preds = %31
  %66 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %67 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @bus_get_dma_tag(i32 %68)
  %70 = load i64, i64* @NICVF_RCV_BUF_ALIGN_BYTES, align 8
  %71 = load i32, i32* @DMAP_MAX_PHYSADDR, align 4
  %72 = load i32, i32* @DMAP_MIN_PHYSADDR, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @MCLBYTES, align 4
  %75 = call i32 @roundup2(i32 %73, i32 %74)
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* @MCLBYTES, align 4
  %78 = call i32 @roundup2(i32 %76, i32 %77)
  %79 = load %struct.rbdr*, %struct.rbdr** %8, align 8
  %80 = getelementptr inbounds %struct.rbdr, %struct.rbdr* %79, i32 0, i32 5
  %81 = call i32 @bus_dma_tag_create(i32 %69, i64 %70, i32 0, i32 %71, i32 %72, i32* null, i32* null, i32 %75, i32 1, i32 %78, i32 0, i32* null, i32* null, i32* %80)
  store i32 %81, i32* %16, align 4
  %82 = load i32, i32* %16, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %65
  %85 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %86 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @device_printf(i32 %87, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %89 = load i32, i32* %16, align 4
  store i32 %89, i32* %6, align 4
  br label %175

90:                                               ; preds = %65
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = mul i64 4, %92
  %94 = trunc i64 %93 to i32
  %95 = load i32, i32* @M_NICVF, align 4
  %96 = load i32, i32* @M_WAITOK, align 4
  %97 = load i32, i32* @M_ZERO, align 4
  %98 = or i32 %96, %97
  %99 = call i32* @malloc(i32 %94, i32 %95, i32 %98)
  %100 = load %struct.rbdr*, %struct.rbdr** %8, align 8
  %101 = getelementptr inbounds %struct.rbdr, %struct.rbdr* %100, i32 0, i32 4
  store i32* %99, i32** %101, align 8
  store i32 0, i32* %15, align 4
  br label %102

102:                                              ; preds = %146, %90
  %103 = load i32, i32* %15, align 4
  %104 = load i32, i32* %9, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %149

106:                                              ; preds = %102
  %107 = load %struct.rbdr*, %struct.rbdr** %8, align 8
  %108 = getelementptr inbounds %struct.rbdr, %struct.rbdr* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @bus_dmamap_create(i32 %109, i32 0, i32* %12)
  store i32 %110, i32* %16, align 4
  %111 = load i32, i32* %16, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %106
  %114 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %115 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @device_printf(i32 %116, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %118 = load i32, i32* %16, align 4
  store i32 %118, i32* %6, align 4
  br label %175

119:                                              ; preds = %106
  %120 = load i32, i32* %12, align 4
  %121 = load %struct.rbdr*, %struct.rbdr** %8, align 8
  %122 = getelementptr inbounds %struct.rbdr, %struct.rbdr* %121, i32 0, i32 4
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %15, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  store i32 %120, i32* %126, align 4
  %127 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %128 = load %struct.rbdr*, %struct.rbdr** %8, align 8
  %129 = load i32, i32* %12, align 4
  %130 = load i32, i32* @M_WAITOK, align 4
  %131 = load i32, i32* @DMA_BUFFER_LEN, align 4
  %132 = call i32 @nicvf_alloc_rcv_buffer(%struct.nicvf* %127, %struct.rbdr* %128, i32 %129, i32 %130, i32 %131, i32* %13)
  store i32 %132, i32* %16, align 4
  %133 = load i32, i32* %16, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %119
  %136 = load i32, i32* %16, align 4
  store i32 %136, i32* %6, align 4
  br label %175

137:                                              ; preds = %119
  %138 = load %struct.rbdr*, %struct.rbdr** %8, align 8
  %139 = load i32, i32* %15, align 4
  %140 = call %struct.rbdr_entry_t* @GET_RBDR_DESC(%struct.rbdr* %138, i32 %139)
  store %struct.rbdr_entry_t* %140, %struct.rbdr_entry_t** %14, align 8
  %141 = load i32, i32* %13, align 4
  %142 = load i32, i32* @NICVF_RCV_BUF_ALIGN, align 4
  %143 = ashr i32 %141, %142
  %144 = load %struct.rbdr_entry_t*, %struct.rbdr_entry_t** %14, align 8
  %145 = getelementptr inbounds %struct.rbdr_entry_t, %struct.rbdr_entry_t* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 4
  br label %146

146:                                              ; preds = %137
  %147 = load i32, i32* %15, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %15, align 4
  br label %102

149:                                              ; preds = %102
  %150 = load %struct.rbdr*, %struct.rbdr** %8, align 8
  %151 = getelementptr inbounds %struct.rbdr, %struct.rbdr* %150, i32 0, i32 3
  %152 = load i32, i32* @nicvf_rbdr_task, align 4
  %153 = load %struct.rbdr*, %struct.rbdr** %8, align 8
  %154 = call i32 @TASK_INIT(i32* %151, i32 0, i32 %152, %struct.rbdr* %153)
  %155 = load %struct.rbdr*, %struct.rbdr** %8, align 8
  %156 = getelementptr inbounds %struct.rbdr, %struct.rbdr* %155, i32 0, i32 2
  %157 = load i32, i32* @nicvf_rbdr_task_nowait, align 4
  %158 = load %struct.rbdr*, %struct.rbdr** %8, align 8
  %159 = call i32 @TASK_INIT(i32* %156, i32 0, i32 %157, %struct.rbdr* %158)
  %160 = load i32, i32* @M_WAITOK, align 4
  %161 = load i32, i32* @taskqueue_thread_enqueue, align 4
  %162 = load %struct.rbdr*, %struct.rbdr** %8, align 8
  %163 = getelementptr inbounds %struct.rbdr, %struct.rbdr* %162, i32 0, i32 1
  %164 = call i32 @taskqueue_create_fast(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %160, i32 %161, i32* %163)
  %165 = load %struct.rbdr*, %struct.rbdr** %8, align 8
  %166 = getelementptr inbounds %struct.rbdr, %struct.rbdr* %165, i32 0, i32 1
  store i32 %164, i32* %166, align 4
  %167 = load %struct.rbdr*, %struct.rbdr** %8, align 8
  %168 = getelementptr inbounds %struct.rbdr, %struct.rbdr* %167, i32 0, i32 1
  %169 = load i32, i32* @PI_NET, align 4
  %170 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %171 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @device_get_nameunit(i32 %172)
  %174 = call i32 @taskqueue_start_threads(i32* %168, i32 1, i32 %169, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %173)
  store i32 0, i32* %6, align 4
  br label %175

175:                                              ; preds = %149, %135, %113, %84, %59, %25
  %176 = load i32, i32* %6, align 4
  ret i32 %176
}

declare dso_local i32 @nicvf_alloc_q_desc_mem(%struct.nicvf*, %struct.TYPE_2__*, i32, i32, i64) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bus_dma_tag_create(i32, i64, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @roundup2(i32, i32) #1

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32*) #1

declare dso_local i32 @nicvf_alloc_rcv_buffer(%struct.nicvf*, %struct.rbdr*, i32, i32, i32, i32*) #1

declare dso_local %struct.rbdr_entry_t* @GET_RBDR_DESC(%struct.rbdr*, i32) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.rbdr*) #1

declare dso_local i32 @taskqueue_create_fast(i8*, i32, i32, i32*) #1

declare dso_local i32 @taskqueue_start_threads(i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
