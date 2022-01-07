; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mxge/extr_if_mxge.c_mxge_get_buf_big.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mxge/extr_if_mxge.c_mxge_get_buf_big.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxge_slice_state = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_9__*, i32*, %struct.TYPE_6__*, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i8*, i8* }
%struct.TYPE_6__ = type { %struct.mbuf* }
%struct.mbuf = type { i32 }
%struct.TYPE_8__ = type { i32 }

@M_NOWAIT = common dso_local global i32 0, align 4
@MT_DATA = common dso_local global i32 0, align 4
@M_PKTHDR = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxge_slice_state*, i32, i32)* @mxge_get_buf_big to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxge_get_buf_big(%struct.mxge_slice_state* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mxge_slice_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [3 x %struct.TYPE_8__], align 4
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mxge_slice_state* %0, %struct.mxge_slice_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %4, align 8
  %14 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %13, i32 0, i32 0
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %9, align 8
  %15 = load i32, i32* @M_NOWAIT, align 4
  %16 = load i32, i32* @MT_DATA, align 4
  %17 = load i32, i32* @M_PKTHDR, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 7
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.mbuf* @m_getjcl(i32 %15, i32 %16, i32 %17, i32 %20)
  store %struct.mbuf* %21, %struct.mbuf** %8, align 8
  %22 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %23 = icmp eq %struct.mbuf* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %3
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 8
  %29 = load i32, i32* @ENOBUFS, align 4
  store i32 %29, i32* %11, align 4
  br label %82

30:                                               ; preds = %3
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %35 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %41 = getelementptr inbounds [3 x %struct.TYPE_8__], [3 x %struct.TYPE_8__]* %7, i64 0, i64 0
  %42 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %43 = call i32 @bus_dmamap_load_mbuf_sg(i32 %38, i32 %39, %struct.mbuf* %40, %struct.TYPE_8__* %41, i32* %10, i32 %42)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %30
  %47 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %48 = call i32 @m_free(%struct.mbuf* %47)
  br label %82

49:                                               ; preds = %30
  %50 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 3
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  store %struct.mbuf* %50, %struct.mbuf** %57, align 8
  %58 = getelementptr inbounds [3 x %struct.TYPE_8__], [3 x %struct.TYPE_8__]* %7, i64 0, i64 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @MXGE_LOWPART_TO_U32(i32 %60)
  %62 = call i8* @htobe32(i32 %61)
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  store i8* %62, i8** %69, align 8
  %70 = getelementptr inbounds [3 x %struct.TYPE_8__], [3 x %struct.TYPE_8__]* %7, i64 0, i64 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @MXGE_HIGHPART_TO_U32(i32 %72)
  %74 = call i8* @htobe32(i32 %73)
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  store i8* %74, i8** %81, align 8
  br label %82

82:                                               ; preds = %49, %46, %24
  store i32 0, i32* %12, align 4
  br label %83

83:                                               ; preds = %112, %82
  %84 = load i32, i32* %12, align 4
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp slt i32 %84, %87
  br i1 %88, label %89, label %115

89:                                               ; preds = %83
  %90 = load i32, i32* %6, align 4
  %91 = and i32 %90, 7
  %92 = icmp eq i32 %91, 7
  br i1 %92, label %93, label %109

93:                                               ; preds = %89
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %6, align 4
  %98 = sub nsw i32 %97, 7
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %96, i64 %99
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %102, align 8
  %104 = load i32, i32* %6, align 4
  %105 = sub nsw i32 %104, 7
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i64 %106
  %108 = call i32 @mxge_submit_8rx(i32* %100, %struct.TYPE_9__* %107)
  br label %109

109:                                              ; preds = %93, %89
  %110 = load i32, i32* %6, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %6, align 4
  br label %112

112:                                              ; preds = %109
  %113 = load i32, i32* %12, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %12, align 4
  br label %83

115:                                              ; preds = %83
  %116 = load i32, i32* %11, align 4
  ret i32 %116
}

declare dso_local %struct.mbuf* @m_getjcl(i32, i32, i32, i32) #1

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
