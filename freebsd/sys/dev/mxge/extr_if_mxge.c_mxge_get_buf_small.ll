; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mxge/extr_if_mxge.c_mxge_get_buf_small.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mxge/extr_if_mxge.c_mxge_get_buf_small.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxge_slice_state = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_9__*, i32*, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_9__ = type { i8*, i8* }
%struct.TYPE_6__ = type { %struct.mbuf* }
%struct.mbuf = type { i32 }
%struct.TYPE_8__ = type { i32 }

@M_NOWAIT = common dso_local global i32 0, align 4
@MT_DATA = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@MHLEN = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxge_slice_state*, i32, i32)* @mxge_get_buf_small to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxge_get_buf_small(%struct.mxge_slice_state* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mxge_slice_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__, align 4
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mxge_slice_state* %0, %struct.mxge_slice_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %4, align 8
  %13 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %12, i32 0, i32 0
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %9, align 8
  %14 = load i32, i32* @M_NOWAIT, align 4
  %15 = load i32, i32* @MT_DATA, align 4
  %16 = call %struct.mbuf* @m_gethdr(i32 %14, i32 %15)
  store %struct.mbuf* %16, %struct.mbuf** %8, align 8
  %17 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %18 = icmp eq %struct.mbuf* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  %24 = load i32, i32* @ENOBUFS, align 4
  store i32 %24, i32* %11, align 4
  br label %72

25:                                               ; preds = %3
  %26 = load i32, i32* @MHLEN, align 4
  %27 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %28 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %34 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %35 = call i32 @bus_dmamap_load_mbuf_sg(i32 %31, i32 %32, %struct.mbuf* %33, %struct.TYPE_8__* %7, i32* %10, i32 %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %25
  %39 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %40 = call i32 @m_free(%struct.mbuf* %39)
  br label %72

41:                                               ; preds = %25
  %42 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  store %struct.mbuf* %42, %struct.mbuf** %49, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @MXGE_LOWPART_TO_U32(i32 %51)
  %53 = call i8* @htobe32(i32 %52)
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  store i8* %53, i8** %60, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @MXGE_HIGHPART_TO_U32(i32 %62)
  %64 = call i8* @htobe32(i32 %63)
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  store i8* %64, i8** %71, align 8
  br label %72

72:                                               ; preds = %41, %38, %19
  %73 = load i32, i32* %6, align 4
  %74 = and i32 %73, 7
  %75 = icmp eq i32 %74, 7
  br i1 %75, label %76, label %92

76:                                               ; preds = %72
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sub nsw i32 %80, 7
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %79, i64 %82
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %85, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sub nsw i32 %87, 7
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i64 %89
  %91 = call i32 @mxge_submit_8rx(i32* %83, %struct.TYPE_9__* %90)
  br label %92

92:                                               ; preds = %76, %72
  %93 = load i32, i32* %11, align 4
  ret i32 %93
}

declare dso_local %struct.mbuf* @m_gethdr(i32, i32) #1

declare dso_local i32 @bus_dmamap_load_mbuf_sg(i32, i32, %struct.mbuf*, %struct.TYPE_8__*, i32*, i32) #1

declare dso_local i32 @m_free(%struct.mbuf*) #1

declare dso_local i8* @htobe32(i32) #1

declare dso_local i32 @MXGE_LOWPART_TO_U32(i32) #1

declare dso_local i32 @MXGE_HIGHPART_TO_U32(i32) #1

declare dso_local i32 @mxge_submit_8rx(i32*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
