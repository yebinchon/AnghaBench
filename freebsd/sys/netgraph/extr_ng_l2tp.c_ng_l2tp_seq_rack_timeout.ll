; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_l2tp.c_ng_l2tp_seq_rack_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_l2tp.c_ng_l2tp_seq_rack_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.l2tp_seq }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i64, i32 }
%struct.l2tp_seq = type { i32, i32, i32, i32, i32, i32*, i64, i32, i32 }
%struct.mbuf = type { i32 }

@hz = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*, i32)* @ng_l2tp_seq_rack_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ng_l2tp_seq_rack_timeout(i32 %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.l2tp_seq*, align 8
  %11 = alloca %struct.mbuf*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.TYPE_9__* @NG_NODE_PRIVATE(i32 %13)
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %9, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 2
  store %struct.l2tp_seq* %16, %struct.l2tp_seq** %10, align 8
  %17 = load %struct.l2tp_seq*, %struct.l2tp_seq** %10, align 8
  %18 = getelementptr inbounds %struct.l2tp_seq, %struct.l2tp_seq* %17, i32 0, i32 8
  %19 = call i64 @callout_pending(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %4
  %22 = load %struct.l2tp_seq*, %struct.l2tp_seq** %10, align 8
  %23 = getelementptr inbounds %struct.l2tp_seq, %struct.l2tp_seq* %22, i32 0, i32 8
  %24 = call i32 @callout_active(i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21, %4
  br label %128

27:                                               ; preds = %21
  %28 = load %struct.l2tp_seq*, %struct.l2tp_seq** %10, align 8
  %29 = call i32 @L2TP_SEQ_CHECK(%struct.l2tp_seq* %28)
  %30 = load %struct.l2tp_seq*, %struct.l2tp_seq** %10, align 8
  %31 = getelementptr inbounds %struct.l2tp_seq, %struct.l2tp_seq* %30, i32 0, i32 4
  %32 = call i32 @mtx_lock(i32* %31)
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = load %struct.l2tp_seq*, %struct.l2tp_seq** %10, align 8
  %39 = getelementptr inbounds %struct.l2tp_seq, %struct.l2tp_seq* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 8
  %42 = sext i32 %40 to i64
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp sge i64 %42, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %27
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %50 = call i32 @ng_l2tp_seq_failure(%struct.TYPE_9__* %49)
  br label %51

51:                                               ; preds = %48, %27
  %52 = load %struct.l2tp_seq*, %struct.l2tp_seq** %10, align 8
  %53 = getelementptr inbounds %struct.l2tp_seq, %struct.l2tp_seq* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp sgt i32 %54, 12
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %62

57:                                               ; preds = %51
  %58 = load %struct.l2tp_seq*, %struct.l2tp_seq** %10, align 8
  %59 = getelementptr inbounds %struct.l2tp_seq, %struct.l2tp_seq* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = shl i32 1, %60
  br label %62

62:                                               ; preds = %57, %56
  %63 = phi i32 [ 4096, %56 ], [ %61, %57 ]
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = icmp sgt i32 %64, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %62
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  store i32 %74, i32* %12, align 4
  br label %75

75:                                               ; preds = %70, %62
  %76 = load %struct.l2tp_seq*, %struct.l2tp_seq** %10, align 8
  %77 = getelementptr inbounds %struct.l2tp_seq, %struct.l2tp_seq* %76, i32 0, i32 8
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* @hz, align 4
  %80 = load i32, i32* %12, align 4
  %81 = mul nsw i32 %79, %80
  %82 = call i32 @ng_callout(i32* %77, i32 %78, i32* null, i32 %81, void (i32, i32, i8*, i32)* @ng_l2tp_seq_rack_timeout, i32* null, i32 0)
  %83 = load %struct.l2tp_seq*, %struct.l2tp_seq** %10, align 8
  %84 = getelementptr inbounds %struct.l2tp_seq, %struct.l2tp_seq* %83, i32 0, i32 7
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.l2tp_seq*, %struct.l2tp_seq** %10, align 8
  %87 = getelementptr inbounds %struct.l2tp_seq, %struct.l2tp_seq* %86, i32 0, i32 3
  store i32 %85, i32* %87, align 4
  %88 = load %struct.l2tp_seq*, %struct.l2tp_seq** %10, align 8
  %89 = getelementptr inbounds %struct.l2tp_seq, %struct.l2tp_seq* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %90, 1
  %92 = sdiv i32 %91, 2
  %93 = load %struct.l2tp_seq*, %struct.l2tp_seq** %10, align 8
  %94 = getelementptr inbounds %struct.l2tp_seq, %struct.l2tp_seq* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load %struct.l2tp_seq*, %struct.l2tp_seq** %10, align 8
  %96 = getelementptr inbounds %struct.l2tp_seq, %struct.l2tp_seq* %95, i32 0, i32 2
  store i32 1, i32* %96, align 8
  %97 = load %struct.l2tp_seq*, %struct.l2tp_seq** %10, align 8
  %98 = getelementptr inbounds %struct.l2tp_seq, %struct.l2tp_seq* %97, i32 0, i32 6
  store i64 0, i64* %98, align 8
  %99 = load %struct.l2tp_seq*, %struct.l2tp_seq** %10, align 8
  %100 = getelementptr inbounds %struct.l2tp_seq, %struct.l2tp_seq* %99, i32 0, i32 5
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @M_NOWAIT, align 4
  %105 = call %struct.mbuf* @L2TP_COPY_MBUF(i32 %103, i32 %104)
  store %struct.mbuf* %105, %struct.mbuf** %11, align 8
  %106 = load %struct.l2tp_seq*, %struct.l2tp_seq** %10, align 8
  %107 = getelementptr inbounds %struct.l2tp_seq, %struct.l2tp_seq* %106, i32 0, i32 4
  %108 = call i32 @mtx_unlock(i32* %107)
  %109 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %110 = icmp eq %struct.mbuf* %109, null
  br i1 %110, label %111, label %117

111:                                              ; preds = %75
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %114, align 8
  br label %125

117:                                              ; preds = %75
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %119 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %120 = load %struct.l2tp_seq*, %struct.l2tp_seq** %10, align 8
  %121 = getelementptr inbounds %struct.l2tp_seq, %struct.l2tp_seq* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %121, align 4
  %124 = call i32 @ng_l2tp_xmit_ctrl(%struct.TYPE_9__* %118, %struct.mbuf* %119, i32 %122)
  br label %125

125:                                              ; preds = %117, %111
  %126 = load %struct.l2tp_seq*, %struct.l2tp_seq** %10, align 8
  %127 = call i32 @L2TP_SEQ_CHECK(%struct.l2tp_seq* %126)
  br label %128

128:                                              ; preds = %125, %26
  ret void
}

declare dso_local %struct.TYPE_9__* @NG_NODE_PRIVATE(i32) #1

declare dso_local i64 @callout_pending(i32*) #1

declare dso_local i32 @callout_active(i32*) #1

declare dso_local i32 @L2TP_SEQ_CHECK(%struct.l2tp_seq*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @ng_l2tp_seq_failure(%struct.TYPE_9__*) #1

declare dso_local i32 @ng_callout(i32*, i32, i32*, i32, void (i32, i32, i8*, i32)*, i32*, i32) #1

declare dso_local %struct.mbuf* @L2TP_COPY_MBUF(i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @ng_l2tp_xmit_ctrl(%struct.TYPE_9__*, %struct.mbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
