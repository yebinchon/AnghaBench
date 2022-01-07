; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_l2tp.c_ng_l2tp_rcvdata_ctrl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_l2tp.c_ng_l2tp_rcvdata_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.l2tp_seq, %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.l2tp_seq = type { i32, i32, i32, i32, %struct.mbuf** }
%struct.mbuf = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4
@L2TP_MAX_XWIN = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@ng_l2tp_seq_rack_timeout = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @ng_l2tp_rcvdata_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_l2tp_rcvdata_ctrl(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.l2tp_seq*, align 8
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @NG_HOOK_NODE(i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.TYPE_10__* @NG_NODE_PRIVATE(i32 %14)
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %6, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  store %struct.l2tp_seq* %17, %struct.l2tp_seq** %7, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = call i32 @L2TP_SEQ_CHECK(%struct.l2tp_seq* %19)
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @NG_FREE_ITEM(i32 %27)
  %29 = load i32, i32* @ENXIO, align 4
  %30 = call i32 @ERROUT(i32 %29)
  br label %31

31:                                               ; preds = %26, %2
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %34 = call i32 @NGI_GET_M(i32 %32, %struct.mbuf* %33)
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @NG_FREE_ITEM(i32 %35)
  %37 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %38 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %40, 2
  br i1 %41, label %42, label %52

42:                                               ; preds = %31
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  %48 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %49 = call i32 @m_freem(%struct.mbuf* %48)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = call i32 @ERROUT(i32 %50)
  br label %52

52:                                               ; preds = %42, %31
  %53 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %54 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp sge i32 %56, 65522
  br i1 %57, label %58, label %68

58:                                               ; preds = %52
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 8
  %64 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %65 = call i32 @m_freem(%struct.mbuf* %64)
  %66 = load i32, i32* @EOVERFLOW, align 4
  %67 = call i32 @ERROUT(i32 %66)
  br label %68

68:                                               ; preds = %58, %52
  %69 = load %struct.l2tp_seq*, %struct.l2tp_seq** %7, align 8
  %70 = getelementptr inbounds %struct.l2tp_seq, %struct.l2tp_seq* %69, i32 0, i32 1
  %71 = call i32 @mtx_lock(i32* %70)
  store i32 0, i32* %10, align 4
  br label %72

72:                                               ; preds = %88, %68
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @L2TP_MAX_XWIN, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %85

76:                                               ; preds = %72
  %77 = load %struct.l2tp_seq*, %struct.l2tp_seq** %7, align 8
  %78 = getelementptr inbounds %struct.l2tp_seq, %struct.l2tp_seq* %77, i32 0, i32 4
  %79 = load %struct.mbuf**, %struct.mbuf*** %78, align 8
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.mbuf*, %struct.mbuf** %79, i64 %81
  %83 = load %struct.mbuf*, %struct.mbuf** %82, align 8
  %84 = icmp ne %struct.mbuf* %83, null
  br label %85

85:                                               ; preds = %76, %72
  %86 = phi i1 [ false, %72 ], [ %84, %76 ]
  br i1 %86, label %87, label %91

87:                                               ; preds = %85
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %10, align 4
  br label %72

91:                                               ; preds = %85
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* @L2TP_MAX_XWIN, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %108

95:                                               ; preds = %91
  %96 = load %struct.l2tp_seq*, %struct.l2tp_seq** %7, align 8
  %97 = getelementptr inbounds %struct.l2tp_seq, %struct.l2tp_seq* %96, i32 0, i32 1
  %98 = call i32 @mtx_unlock(i32* %97)
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 4
  %104 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %105 = call i32 @m_freem(%struct.mbuf* %104)
  %106 = load i32, i32* @ENOBUFS, align 4
  %107 = call i32 @ERROUT(i32 %106)
  br label %108

108:                                              ; preds = %95, %91
  %109 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %110 = load %struct.l2tp_seq*, %struct.l2tp_seq** %7, align 8
  %111 = getelementptr inbounds %struct.l2tp_seq, %struct.l2tp_seq* %110, i32 0, i32 4
  %112 = load %struct.mbuf**, %struct.mbuf*** %111, align 8
  %113 = load i32, i32* %10, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.mbuf*, %struct.mbuf** %112, i64 %114
  store %struct.mbuf* %109, %struct.mbuf** %115, align 8
  %116 = load i32, i32* %10, align 4
  %117 = load %struct.l2tp_seq*, %struct.l2tp_seq** %7, align 8
  %118 = getelementptr inbounds %struct.l2tp_seq, %struct.l2tp_seq* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp sge i32 %116, %119
  br i1 %120, label %121, label %126

121:                                              ; preds = %108
  %122 = load %struct.l2tp_seq*, %struct.l2tp_seq** %7, align 8
  %123 = getelementptr inbounds %struct.l2tp_seq, %struct.l2tp_seq* %122, i32 0, i32 1
  %124 = call i32 @mtx_unlock(i32* %123)
  %125 = call i32 @ERROUT(i32 0)
  br label %126

126:                                              ; preds = %121, %108
  %127 = load %struct.l2tp_seq*, %struct.l2tp_seq** %7, align 8
  %128 = getelementptr inbounds %struct.l2tp_seq, %struct.l2tp_seq* %127, i32 0, i32 3
  %129 = call i32 @callout_active(i32* %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %138, label %131

131:                                              ; preds = %126
  %132 = load %struct.l2tp_seq*, %struct.l2tp_seq** %7, align 8
  %133 = getelementptr inbounds %struct.l2tp_seq, %struct.l2tp_seq* %132, i32 0, i32 3
  %134 = load i32, i32* %5, align 4
  %135 = load i32, i32* @hz, align 4
  %136 = load i32, i32* @ng_l2tp_seq_rack_timeout, align 4
  %137 = call i32 @ng_callout(i32* %133, i32 %134, i32* null, i32 %135, i32 %136, i32* null, i32 0)
  br label %138

138:                                              ; preds = %131, %126
  %139 = load %struct.l2tp_seq*, %struct.l2tp_seq** %7, align 8
  %140 = getelementptr inbounds %struct.l2tp_seq, %struct.l2tp_seq* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %140, align 8
  %143 = sext i32 %141 to i64
  store i64 %143, i64* %11, align 8
  %144 = load %struct.l2tp_seq*, %struct.l2tp_seq** %7, align 8
  %145 = getelementptr inbounds %struct.l2tp_seq, %struct.l2tp_seq* %144, i32 0, i32 1
  %146 = call i32 @mtx_unlock(i32* %145)
  %147 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %148 = load i32, i32* @M_NOWAIT, align 4
  %149 = call %struct.mbuf* @L2TP_COPY_MBUF(%struct.mbuf* %147, i32 %148)
  store %struct.mbuf* %149, %struct.mbuf** %8, align 8
  %150 = icmp eq %struct.mbuf* %149, null
  br i1 %150, label %151, label %159

151:                                              ; preds = %138
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %154, align 8
  %157 = load i32, i32* @ENOBUFS, align 4
  %158 = call i32 @ERROUT(i32 %157)
  br label %159

159:                                              ; preds = %151, %138
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %161 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %162 = load i64, i64* %11, align 8
  %163 = call i32 @ng_l2tp_xmit_ctrl(%struct.TYPE_10__* %160, %struct.mbuf* %161, i64 %162)
  store i32 %163, i32* %9, align 4
  br label %164

164:                                              ; preds = %159
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 0
  %167 = call i32 @L2TP_SEQ_CHECK(%struct.l2tp_seq* %166)
  %168 = load i32, i32* %9, align 4
  ret i32 %168
}

declare dso_local i32 @NG_HOOK_NODE(i32) #1

declare dso_local %struct.TYPE_10__* @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @L2TP_SEQ_CHECK(%struct.l2tp_seq*) #1

declare dso_local i32 @NG_FREE_ITEM(i32) #1

declare dso_local i32 @ERROUT(i32) #1

declare dso_local i32 @NGI_GET_M(i32, %struct.mbuf*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @callout_active(i32*) #1

declare dso_local i32 @ng_callout(i32*, i32, i32*, i32, i32, i32*, i32) #1

declare dso_local %struct.mbuf* @L2TP_COPY_MBUF(%struct.mbuf*, i32) #1

declare dso_local i32 @ng_l2tp_xmit_ctrl(%struct.TYPE_10__*, %struct.mbuf*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
