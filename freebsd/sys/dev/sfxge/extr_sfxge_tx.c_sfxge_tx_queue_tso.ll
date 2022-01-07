; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_tx.c_sfxge_tx_queue_tso.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_tx.c_sfxge_tx_queue_tso.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_txq = type { i32, i32, i64, i64, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.mbuf = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.sfxge_tso_state = type { i32, i32, i32, i64, i64, i32 }

@.str = private unnamed_addr constant [31 x i8] c"no payload found in TSO packet\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"stmp flags are not 0\00", align 1
@SFXGE_FATSOV2 = common dso_local global i32 0, align 4
@EFX_TX_FATSOV2_OPT_NDESCS = common dso_local global i32 0, align 4
@SFXGE_FATSOV1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sfxge_txq*, %struct.mbuf*, %struct.TYPE_6__*, i32, i32)* @sfxge_tx_queue_tso to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfxge_tx_queue_tso(%struct.sfxge_txq* %0, %struct.mbuf* %1, %struct.TYPE_6__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sfxge_txq*, align 8
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sfxge_tso_state, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.sfxge_txq* %0, %struct.sfxge_txq** %7, align 8
  store %struct.mbuf* %1, %struct.mbuf** %8, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %14, align 4
  %16 = load %struct.sfxge_txq*, %struct.sfxge_txq** %7, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %18 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %19 = call i32 @tso_start(%struct.sfxge_txq* %16, %struct.sfxge_tso_state* %12, %struct.TYPE_6__* %17, %struct.mbuf* %18)
  br label %20

20:                                               ; preds = %29, %5
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %14, align 4
  %25 = add i32 %23, %24
  %26 = getelementptr inbounds %struct.sfxge_tso_state, %struct.sfxge_tso_state* %12, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ule i32 %25, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %20
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %14, align 4
  %34 = add i32 %33, %32
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %10, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @KASSERT(i32 %37, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 1
  store %struct.TYPE_6__* %40, %struct.TYPE_6__** %9, align 8
  br label %20

41:                                               ; preds = %20
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.sfxge_tso_state, %struct.sfxge_tso_state* %12, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %14, align 4
  %48 = sub i32 %46, %47
  %49 = sub i32 %44, %48
  %50 = getelementptr inbounds %struct.sfxge_tso_state, %struct.sfxge_tso_state* %12, i32 0, i32 1
  store i32 %49, i32* %50, align 4
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.sfxge_tso_state, %struct.sfxge_tso_state* %12, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %14, align 4
  %57 = sub i32 %55, %56
  %58 = add i32 %53, %57
  %59 = getelementptr inbounds %struct.sfxge_tso_state, %struct.sfxge_tso_state* %12, i32 0, i32 2
  store i32 %58, i32* %59, align 8
  %60 = load %struct.sfxge_txq*, %struct.sfxge_txq** %7, align 8
  %61 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %11, align 4
  %64 = add nsw i32 %62, %63
  %65 = load %struct.sfxge_txq*, %struct.sfxge_txq** %7, align 8
  %66 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %64, %67
  store i32 %68, i32* %13, align 4
  %69 = load %struct.sfxge_txq*, %struct.sfxge_txq** %7, align 8
  %70 = call i32 @tso_start_new_packet(%struct.sfxge_txq* %69, %struct.sfxge_tso_state* %12, i32* %13)
  %71 = call i64 @__predict_false(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %41
  store i32 -1, i32* %6, align 4
  br label %181

74:                                               ; preds = %41
  br label %75

75:                                               ; preds = %74, %174
  %76 = load %struct.sfxge_txq*, %struct.sfxge_txq** %7, align 8
  %77 = call i32 @tso_fill_packet_with_fragment(%struct.sfxge_txq* %76, %struct.sfxge_tso_state* %12)
  %78 = load %struct.sfxge_txq*, %struct.sfxge_txq** %7, align 8
  %79 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %78, i32 0, i32 7
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = load i32, i32* %13, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %85, 0
  %87 = zext i1 %86 to i32
  %88 = call i32 @KASSERT(i32 %87, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %89 = load i32, i32* %13, align 4
  %90 = add i32 %89, 1
  %91 = load %struct.sfxge_txq*, %struct.sfxge_txq** %7, align 8
  %92 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %90, %93
  store i32 %94, i32* %13, align 4
  %95 = getelementptr inbounds %struct.sfxge_tso_state, %struct.sfxge_tso_state* %12, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %115

98:                                               ; preds = %75
  %99 = load i32, i32* %10, align 4
  %100 = add nsw i32 %99, -1
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %10, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  br label %175

104:                                              ; preds = %98
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 1
  store %struct.TYPE_6__* %106, %struct.TYPE_6__** %9, align 8
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = getelementptr inbounds %struct.sfxge_tso_state, %struct.sfxge_tso_state* %12, i32 0, i32 1
  store i32 %109, i32* %110, align 4
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = getelementptr inbounds %struct.sfxge_tso_state, %struct.sfxge_tso_state* %12, i32 0, i32 2
  store i32 %113, i32* %114, align 8
  br label %115

115:                                              ; preds = %104, %75
  %116 = getelementptr inbounds %struct.sfxge_tso_state, %struct.sfxge_tso_state* %12, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = icmp eq i64 %117, 0
  %119 = zext i1 %118 to i32
  %120 = getelementptr inbounds %struct.sfxge_tso_state, %struct.sfxge_tso_state* %12, i32 0, i32 4
  %121 = load i64, i64* %120, align 8
  %122 = icmp eq i64 %121, 0
  %123 = zext i1 %122 to i32
  %124 = or i32 %119, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %174

126:                                              ; preds = %115
  %127 = getelementptr inbounds %struct.sfxge_tso_state, %struct.sfxge_tso_state* %12, i32 0, i32 5
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @SFXGE_FATSOV2, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %126
  %133 = load i32, i32* @EFX_TX_FATSOV2_OPT_NDESCS, align 4
  br label %142

134:                                              ; preds = %126
  %135 = getelementptr inbounds %struct.sfxge_tso_state, %struct.sfxge_tso_state* %12, i32 0, i32 5
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @SFXGE_FATSOV1, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  %140 = zext i1 %139 to i64
  %141 = select i1 %139, i32 1, i32 0
  br label %142

142:                                              ; preds = %134, %132
  %143 = phi i32 [ %133, %132 ], [ %141, %134 ]
  store i32 %143, i32* %15, align 4
  %144 = load %struct.sfxge_txq*, %struct.sfxge_txq** %7, align 8
  %145 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = load i32, i32* %15, align 4
  %148 = zext i32 %147 to i64
  %149 = add nsw i64 %146, %148
  %150 = add nsw i64 %149, 1
  %151 = load i32, i32* %10, align 4
  %152 = sext i32 %151 to i64
  %153 = add nsw i64 %150, %152
  %154 = load %struct.sfxge_txq*, %struct.sfxge_txq** %7, align 8
  %155 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %154, i32 0, i32 3
  %156 = load i64, i64* %155, align 8
  %157 = icmp sgt i64 %153, %156
  br i1 %157, label %158, label %163

158:                                              ; preds = %142
  %159 = load %struct.sfxge_txq*, %struct.sfxge_txq** %7, align 8
  %160 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %159, i32 0, i32 6
  %161 = load i32, i32* %160, align 8
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %160, align 8
  br label %175

163:                                              ; preds = %142
  %164 = load %struct.sfxge_txq*, %struct.sfxge_txq** %7, align 8
  %165 = call i32 @tso_start_new_packet(%struct.sfxge_txq* %164, %struct.sfxge_tso_state* %12, i32* %13)
  %166 = call i64 @__predict_false(i32 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %163
  %169 = load %struct.sfxge_txq*, %struct.sfxge_txq** %7, align 8
  %170 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %169, i32 0, i32 5
  %171 = load i32, i32* %170, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %170, align 4
  br label %175

173:                                              ; preds = %163
  br label %174

174:                                              ; preds = %173, %115
  br label %75

175:                                              ; preds = %168, %158, %103
  %176 = load %struct.sfxge_txq*, %struct.sfxge_txq** %7, align 8
  %177 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 8
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %177, align 8
  %180 = load i32, i32* %13, align 4
  store i32 %180, i32* %6, align 4
  br label %181

181:                                              ; preds = %175, %73
  %182 = load i32, i32* %6, align 4
  ret i32 %182
}

declare dso_local i32 @tso_start(%struct.sfxge_txq*, %struct.sfxge_tso_state*, %struct.TYPE_6__*, %struct.mbuf*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @tso_start_new_packet(%struct.sfxge_txq*, %struct.sfxge_tso_state*, i32*) #1

declare dso_local i32 @tso_fill_packet_with_fragment(%struct.sfxge_txq*, %struct.sfxge_tso_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
