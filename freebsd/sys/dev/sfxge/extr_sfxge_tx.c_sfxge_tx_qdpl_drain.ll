; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_tx.c_sfxge_tx_qdpl_drain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_tx.c_sfxge_tx_qdpl_drain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_txq = type { i32, i64, i64, %struct.mbuf*, %struct.sfxge_tx_dpl, %struct.sfxge_softc* }
%struct.mbuf = type { %struct.mbuf* }
%struct.sfxge_tx_dpl = type { i32, i32, i32, %struct.mbuf*, %struct.mbuf** }
%struct.sfxge_softc = type { i32, %struct.mbuf* }

@SFXGE_TXQ_STARTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"mbuf == NULL\00", align 1
@SFXGE_TX_BATCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"mbuf != NULL\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"inconsistent TCP/non-TCP detection\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"queue unblocked but count is non-zero\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sfxge_txq*)* @sfxge_tx_qdpl_drain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sfxge_tx_qdpl_drain(%struct.sfxge_txq* %0) #0 {
  %2 = alloca %struct.sfxge_txq*, align 8
  %3 = alloca %struct.sfxge_softc*, align 8
  %4 = alloca %struct.sfxge_tx_dpl*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sfxge_txq* %0, %struct.sfxge_txq** %2, align 8
  %11 = load %struct.sfxge_txq*, %struct.sfxge_txq** %2, align 8
  %12 = call i32 @SFXGE_TXQ_LOCK_ASSERT_OWNED(%struct.sfxge_txq* %11)
  %13 = load %struct.sfxge_txq*, %struct.sfxge_txq** %2, align 8
  %14 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %13, i32 0, i32 5
  %15 = load %struct.sfxge_softc*, %struct.sfxge_softc** %14, align 8
  store %struct.sfxge_softc* %15, %struct.sfxge_softc** %3, align 8
  %16 = load %struct.sfxge_txq*, %struct.sfxge_txq** %2, align 8
  %17 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %16, i32 0, i32 4
  store %struct.sfxge_tx_dpl* %17, %struct.sfxge_tx_dpl** %4, align 8
  %18 = load %struct.sfxge_txq*, %struct.sfxge_txq** %2, align 8
  %19 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %9, align 4
  %21 = load %struct.sfxge_txq*, %struct.sfxge_txq** %2, align 8
  %22 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SFXGE_TXQ_STARTED, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i64 @__predict_true(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %1
  %30 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %31 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %30, i32 0, i32 1
  %32 = load %struct.mbuf*, %struct.mbuf** %31, align 8
  %33 = call i32 @prefetch_read_many(%struct.mbuf* %32)
  %34 = load %struct.sfxge_txq*, %struct.sfxge_txq** %2, align 8
  %35 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %34, i32 0, i32 3
  %36 = load %struct.mbuf*, %struct.mbuf** %35, align 8
  %37 = call i32 @prefetch_read_many(%struct.mbuf* %36)
  br label %38

38:                                               ; preds = %29, %1
  %39 = load %struct.sfxge_tx_dpl*, %struct.sfxge_tx_dpl** %4, align 8
  %40 = getelementptr inbounds %struct.sfxge_tx_dpl, %struct.sfxge_tx_dpl* %39, i32 0, i32 3
  %41 = load %struct.mbuf*, %struct.mbuf** %40, align 8
  store %struct.mbuf* %41, %struct.mbuf** %5, align 8
  %42 = load %struct.sfxge_tx_dpl*, %struct.sfxge_tx_dpl** %4, align 8
  %43 = getelementptr inbounds %struct.sfxge_tx_dpl, %struct.sfxge_tx_dpl* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %7, align 4
  %45 = load %struct.sfxge_tx_dpl*, %struct.sfxge_tx_dpl** %4, align 8
  %46 = getelementptr inbounds %struct.sfxge_tx_dpl, %struct.sfxge_tx_dpl* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.sfxge_tx_dpl*, %struct.sfxge_tx_dpl** %4, align 8
  %50 = getelementptr inbounds %struct.sfxge_tx_dpl, %struct.sfxge_tx_dpl* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = icmp ugt i32 %48, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %38
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.sfxge_tx_dpl*, %struct.sfxge_tx_dpl** %4, align 8
  %56 = getelementptr inbounds %struct.sfxge_tx_dpl, %struct.sfxge_tx_dpl* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  br label %57

57:                                               ; preds = %53, %38
  br label %58

58:                                               ; preds = %123, %96, %57
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %124

61:                                               ; preds = %58
  %62 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %63 = icmp ne %struct.mbuf* %62, null
  %64 = zext i1 %63 to i32
  %65 = call i32 @KASSERT(i32 %64, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %66 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %67 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %66, i32 0, i32 0
  %68 = load %struct.mbuf*, %struct.mbuf** %67, align 8
  store %struct.mbuf* %68, %struct.mbuf** %6, align 8
  %69 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %70 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %69, i32 0, i32 0
  store %struct.mbuf* null, %struct.mbuf** %70, align 8
  %71 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %72 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %75 = call i32 @ETHER_BPF_MTAP(i32 %73, %struct.mbuf* %74)
  %76 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %77 = icmp ne %struct.mbuf* %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %61
  %79 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %80 = call i32 @prefetch_read_many(%struct.mbuf* %79)
  br label %81

81:                                               ; preds = %78, %61
  %82 = load %struct.sfxge_txq*, %struct.sfxge_txq** %2, align 8
  %83 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %84 = call i32 @sfxge_tx_queue_mbuf(%struct.sfxge_txq* %82, %struct.mbuf* %83)
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %7, align 4
  %86 = add i32 %85, -1
  store i32 %86, i32* %7, align 4
  %87 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %88 = call i64 @sfxge_is_mbuf_non_tcp(%struct.mbuf* %87)
  %89 = load i32, i32* %8, align 4
  %90 = zext i32 %89 to i64
  %91 = sub nsw i64 %90, %88
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %8, align 4
  %93 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  store %struct.mbuf* %93, %struct.mbuf** %5, align 8
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %81
  br label %58

97:                                               ; preds = %81
  %98 = load %struct.sfxge_txq*, %struct.sfxge_txq** %2, align 8
  %99 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  br label %124

103:                                              ; preds = %97
  %104 = load %struct.sfxge_txq*, %struct.sfxge_txq** %2, align 8
  %105 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %9, align 4
  %108 = sub i32 %106, %107
  %109 = load i32, i32* @SFXGE_TX_BATCH, align 4
  %110 = icmp uge i32 %108, %109
  br i1 %110, label %111, label %123

111:                                              ; preds = %103
  %112 = load %struct.sfxge_txq*, %struct.sfxge_txq** %2, align 8
  %113 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %112, i32 0, i32 3
  %114 = load %struct.mbuf*, %struct.mbuf** %113, align 8
  %115 = load %struct.sfxge_txq*, %struct.sfxge_txq** %2, align 8
  %116 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* %9, align 4
  %119 = call i32 @efx_tx_qpush(%struct.mbuf* %114, i32 %117, i32 %118)
  %120 = load %struct.sfxge_txq*, %struct.sfxge_txq** %2, align 8
  %121 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  store i32 %122, i32* %9, align 4
  br label %123

123:                                              ; preds = %111, %103
  br label %58

124:                                              ; preds = %102, %58
  %125 = load i32, i32* %7, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %146

127:                                              ; preds = %124
  %128 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %129 = icmp eq %struct.mbuf* %128, null
  %130 = zext i1 %129 to i32
  %131 = call i32 @KASSERT(i32 %130, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %132 = load i32, i32* %8, align 4
  %133 = icmp eq i32 %132, 0
  %134 = zext i1 %133 to i32
  %135 = call i32 @KASSERT(i32 %134, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %136 = load %struct.sfxge_tx_dpl*, %struct.sfxge_tx_dpl** %4, align 8
  %137 = getelementptr inbounds %struct.sfxge_tx_dpl, %struct.sfxge_tx_dpl* %136, i32 0, i32 3
  store %struct.mbuf* null, %struct.mbuf** %137, align 8
  %138 = load %struct.sfxge_tx_dpl*, %struct.sfxge_tx_dpl** %4, align 8
  %139 = getelementptr inbounds %struct.sfxge_tx_dpl, %struct.sfxge_tx_dpl* %138, i32 0, i32 0
  store i32 0, i32* %139, align 8
  %140 = load %struct.sfxge_tx_dpl*, %struct.sfxge_tx_dpl** %4, align 8
  %141 = getelementptr inbounds %struct.sfxge_tx_dpl, %struct.sfxge_tx_dpl* %140, i32 0, i32 1
  store i32 0, i32* %141, align 4
  %142 = load %struct.sfxge_tx_dpl*, %struct.sfxge_tx_dpl** %4, align 8
  %143 = getelementptr inbounds %struct.sfxge_tx_dpl, %struct.sfxge_tx_dpl* %142, i32 0, i32 3
  %144 = load %struct.sfxge_tx_dpl*, %struct.sfxge_tx_dpl** %4, align 8
  %145 = getelementptr inbounds %struct.sfxge_tx_dpl, %struct.sfxge_tx_dpl* %144, i32 0, i32 4
  store %struct.mbuf** %143, %struct.mbuf*** %145, align 8
  br label %156

146:                                              ; preds = %124
  %147 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %148 = load %struct.sfxge_tx_dpl*, %struct.sfxge_tx_dpl** %4, align 8
  %149 = getelementptr inbounds %struct.sfxge_tx_dpl, %struct.sfxge_tx_dpl* %148, i32 0, i32 3
  store %struct.mbuf* %147, %struct.mbuf** %149, align 8
  %150 = load i32, i32* %7, align 4
  %151 = load %struct.sfxge_tx_dpl*, %struct.sfxge_tx_dpl** %4, align 8
  %152 = getelementptr inbounds %struct.sfxge_tx_dpl, %struct.sfxge_tx_dpl* %151, i32 0, i32 0
  store i32 %150, i32* %152, align 8
  %153 = load i32, i32* %8, align 4
  %154 = load %struct.sfxge_tx_dpl*, %struct.sfxge_tx_dpl** %4, align 8
  %155 = getelementptr inbounds %struct.sfxge_tx_dpl, %struct.sfxge_tx_dpl* %154, i32 0, i32 1
  store i32 %153, i32* %155, align 4
  br label %156

156:                                              ; preds = %146, %127
  %157 = load %struct.sfxge_txq*, %struct.sfxge_txq** %2, align 8
  %158 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* %9, align 4
  %161 = icmp ne i32 %159, %160
  br i1 %161, label %162, label %171

162:                                              ; preds = %156
  %163 = load %struct.sfxge_txq*, %struct.sfxge_txq** %2, align 8
  %164 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %163, i32 0, i32 3
  %165 = load %struct.mbuf*, %struct.mbuf** %164, align 8
  %166 = load %struct.sfxge_txq*, %struct.sfxge_txq** %2, align 8
  %167 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* %9, align 4
  %170 = call i32 @efx_tx_qpush(%struct.mbuf* %165, i32 %168, i32 %169)
  br label %171

171:                                              ; preds = %162, %156
  %172 = load %struct.sfxge_txq*, %struct.sfxge_txq** %2, align 8
  %173 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %172, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %181, label %176

176:                                              ; preds = %171
  %177 = load %struct.sfxge_tx_dpl*, %struct.sfxge_tx_dpl** %4, align 8
  %178 = getelementptr inbounds %struct.sfxge_tx_dpl, %struct.sfxge_tx_dpl* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = icmp eq i32 %179, 0
  br label %181

181:                                              ; preds = %176, %171
  %182 = phi i1 [ true, %171 ], [ %180, %176 ]
  %183 = zext i1 %182 to i32
  %184 = call i32 @KASSERT(i32 %183, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @SFXGE_TXQ_LOCK_ASSERT_OWNED(%struct.sfxge_txq*) #1

declare dso_local i64 @__predict_true(i32) #1

declare dso_local i32 @prefetch_read_many(%struct.mbuf*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @ETHER_BPF_MTAP(i32, %struct.mbuf*) #1

declare dso_local i32 @sfxge_tx_queue_mbuf(%struct.sfxge_txq*, %struct.mbuf*) #1

declare dso_local i64 @sfxge_is_mbuf_non_tcp(%struct.mbuf*) #1

declare dso_local i32 @efx_tx_qpush(%struct.mbuf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
