; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_queues.c_nicvf_alloc_rcv_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_queues.c_nicvf_alloc_rcv_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicvf = type { i32 }
%struct.rbdr = type { i32 }
%struct.mbuf = type { i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.rbuf_info = type { %struct.mbuf*, i32, i32 }
%struct.TYPE_5__ = type { i64 }

@MT_DATA = common dso_local global i32 0, align 4
@M_PKTHDR = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Failed to map mbuf into DMA visible memory, err: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Unexpected number of DMA segments for RB: %d\00", align 1
@NICVF_RCV_BUF_ALIGN_BYTES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nicvf*, %struct.rbdr*, i32, i32, i32, i64*)* @nicvf_alloc_rcv_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nicvf_alloc_rcv_buffer(%struct.nicvf* %0, %struct.rbdr* %1, i32 %2, i32 %3, i32 %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nicvf*, align 8
  %9 = alloca %struct.rbdr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca %struct.mbuf*, align 8
  %15 = alloca %struct.rbuf_info*, align 8
  %16 = alloca [1 x %struct.TYPE_5__], align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.nicvf* %0, %struct.nicvf** %8, align 8
  store %struct.rbdr* %1, %struct.rbdr** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i64* %5, i64** %13, align 8
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* @MT_DATA, align 4
  %21 = load i32, i32* @M_PKTHDR, align 4
  %22 = load i32, i32* @MCLBYTES, align 4
  %23 = call %struct.mbuf* @m_getjcl(i32 %19, i32 %20, i32 %21, i32 %22)
  store %struct.mbuf* %23, %struct.mbuf** %14, align 8
  %24 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %25 = icmp eq %struct.mbuf* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %6
  %27 = load i32, i32* @ENOMEM, align 4
  store i32 %27, i32* %7, align 4
  br label %90

28:                                               ; preds = %6
  %29 = load i32, i32* %12, align 4
  %30 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %31 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 8
  %33 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %34 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %33, i32 0, i32 2
  store i32 %29, i32* %34, align 4
  %35 = load %struct.rbdr*, %struct.rbdr** %9, align 8
  %36 = getelementptr inbounds %struct.rbdr, %struct.rbdr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %40 = getelementptr inbounds [1 x %struct.TYPE_5__], [1 x %struct.TYPE_5__]* %16, i64 0, i64 0
  %41 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %42 = call i32 @bus_dmamap_load_mbuf_sg(i32 %37, i32 %38, %struct.mbuf* %39, %struct.TYPE_5__* %40, i32* %17, i32 %41)
  store i32 %42, i32* %18, align 4
  %43 = load i32, i32* %18, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %28
  %46 = load %struct.nicvf*, %struct.nicvf** %8, align 8
  %47 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %18, align 4
  %50 = call i32 @device_printf(i32 %48, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %52 = call i32 @m_freem(%struct.mbuf* %51)
  %53 = load %struct.rbdr*, %struct.rbdr** %9, align 8
  %54 = getelementptr inbounds %struct.rbdr, %struct.rbdr* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @bus_dmamap_destroy(i32 %55, i32 %56)
  %58 = load i32, i32* %18, align 4
  store i32 %58, i32* %7, align 4
  br label %90

59:                                               ; preds = %28
  %60 = load i32, i32* %17, align 4
  %61 = icmp ne i32 %60, 1
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i32, i32* %17, align 4
  %64 = call i32 @panic(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %62, %59
  %66 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %67 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = inttoptr i64 %68 to %struct.rbuf_info*
  store %struct.rbuf_info* %69, %struct.rbuf_info** %15, align 8
  %70 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %71 = load i64, i64* @NICVF_RCV_BUF_ALIGN_BYTES, align 8
  %72 = call i32 @m_adj(%struct.mbuf* %70, i64 %71)
  %73 = load %struct.rbdr*, %struct.rbdr** %9, align 8
  %74 = getelementptr inbounds %struct.rbdr, %struct.rbdr* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.rbuf_info*, %struct.rbuf_info** %15, align 8
  %77 = getelementptr inbounds %struct.rbuf_info, %struct.rbuf_info* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* %10, align 4
  %79 = load %struct.rbuf_info*, %struct.rbuf_info** %15, align 8
  %80 = getelementptr inbounds %struct.rbuf_info, %struct.rbuf_info* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 8
  %81 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %82 = load %struct.rbuf_info*, %struct.rbuf_info** %15, align 8
  %83 = getelementptr inbounds %struct.rbuf_info, %struct.rbuf_info* %82, i32 0, i32 0
  store %struct.mbuf* %81, %struct.mbuf** %83, align 8
  %84 = getelementptr inbounds [1 x %struct.TYPE_5__], [1 x %struct.TYPE_5__]* %16, i64 0, i64 0
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @NICVF_RCV_BUF_ALIGN_BYTES, align 8
  %88 = add nsw i64 %86, %87
  %89 = load i64*, i64** %13, align 8
  store i64 %88, i64* %89, align 8
  store i32 0, i32* %7, align 4
  br label %90

90:                                               ; preds = %65, %45, %26
  %91 = load i32, i32* %7, align 4
  ret i32 %91
}

declare dso_local %struct.mbuf* @m_getjcl(i32, i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_load_mbuf_sg(i32, i32, %struct.mbuf*, %struct.TYPE_5__*, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @bus_dmamap_destroy(i32, i32) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @m_adj(%struct.mbuf*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
