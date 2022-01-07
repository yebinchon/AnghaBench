; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/midi/extr_sequencer.c_seq_sync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/midi/extr_sequencer.c_seq_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_softc = type { i32, i32, i64, i32, i32, i32*, i32, i32, i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"seq_sync: unit %d.\0A\00", align 1
@SEQ_SYNC_TIMEOUT = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"seq_sync queue stuck, aborting\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_softc*)* @seq_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seq_sync(%struct.seq_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.seq_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [16 x i32], align 16
  %7 = alloca i32, align 4
  store %struct.seq_softc* %0, %struct.seq_softc** %3, align 8
  %8 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %9 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %8, i32 0, i32 4
  %10 = load i32, i32* @MA_OWNED, align 4
  %11 = call i32 @mtx_assert(i32* %9, i32 %10)
  %12 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %13 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = call i32 @SEQ_DEBUG(i32 4, i32 %15)
  br label %17

17:                                               ; preds = %105, %1
  %18 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %19 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %18, i32 0, i32 9
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @MIDIQ_EMPTY(i32 %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  br i1 %23, label %24, label %106

24:                                               ; preds = %17
  %25 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %26 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %24
  %30 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %31 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %30, i32 0, i32 1
  store i32 1, i32* %31, align 4
  %32 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %33 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %32, i32 0, i32 8
  %34 = call i32 @cv_broadcast(i32* %33)
  %35 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %36 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %35, i32 0, i32 7
  %37 = call i32 @cv_broadcast(i32* %36)
  br label %38

38:                                               ; preds = %29, %24
  %39 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %40 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %39, i32 0, i32 9
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @MIDIQ_LEN(i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %44 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %43, i32 0, i32 7
  %45 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %46 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %45, i32 0, i32 4
  %47 = load i32, i32* @SEQ_SYNC_TIMEOUT, align 4
  %48 = load i32, i32* @hz, align 4
  %49 = mul nsw i32 %47, %48
  %50 = call i32 @cv_timedwait_sig(i32* %44, i32* %46, i32 %49)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @EINTR, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %58, label %54

54:                                               ; preds = %38
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @ERESTART, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %70

58:                                               ; preds = %54, %38
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @EINTR, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %58
  %63 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %64 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %63, i32 0, i32 1
  store i32 0, i32* %64, align 4
  %65 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %66 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %65, i32 0, i32 7
  %67 = call i32 @cv_broadcast(i32* %66)
  br label %68

68:                                               ; preds = %62, %58
  %69 = load i32, i32* %4, align 4
  store i32 %69, i32* %2, align 4
  br label %173

70:                                               ; preds = %54
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @EWOULDBLOCK, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %105

74:                                               ; preds = %70
  %75 = load i32, i32* %5, align 4
  %76 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %77 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %76, i32 0, i32 9
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @MIDIQ_LEN(i32 %78)
  %80 = icmp eq i32 %75, %79
  br i1 %80, label %81, label %105

81:                                               ; preds = %74
  %82 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %83 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %105

86:                                               ; preds = %81
  %87 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %88 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %87, i32 0, i32 9
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @MIDIQ_CLEAR(i32 %89)
  %91 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %92 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %91, i32 0, i32 1
  store i32 0, i32* %92, align 4
  %93 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %94 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %93, i32 0, i32 8
  %95 = call i32 @cv_broadcast(i32* %94)
  %96 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %97 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %96, i32 0, i32 7
  %98 = call i32 @cv_broadcast(i32* %97)
  %99 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %100 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %99, i32 0, i32 6
  %101 = call i32 @cv_broadcast(i32* %100)
  %102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %103 = call i32 @SEQ_DEBUG(i32 1, i32 %102)
  %104 = load i32, i32* %4, align 4
  store i32 %104, i32* %2, align 4
  br label %173

105:                                              ; preds = %81, %74, %70
  br label %17

106:                                              ; preds = %17
  %107 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %108 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %107, i32 0, i32 1
  store i32 0, i32* %108, align 4
  %109 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %110 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %109, i32 0, i32 4
  %111 = call i32 @mtx_unlock(i32* %110)
  store i32 0, i32* %4, align 4
  br label %112

112:                                              ; preds = %122, %106
  %113 = load i32, i32* %4, align 4
  %114 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %115 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = icmp slt i32 %113, %116
  br i1 %117, label %118, label %125

118:                                              ; preds = %112
  %119 = load i32, i32* %4, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %120
  store i32 1, i32* %121, align 4
  br label %122

122:                                              ; preds = %118
  %123 = load i32, i32* %4, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %4, align 4
  br label %112

125:                                              ; preds = %112
  br label %126

126:                                              ; preds = %165, %125
  store i32 1, i32* %7, align 4
  store i32 0, i32* %4, align 4
  br label %127

127:                                              ; preds = %156, %126
  %128 = load i32, i32* %4, align 4
  %129 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %130 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 8
  %132 = icmp slt i32 %128, %131
  br i1 %132, label %133, label %159

133:                                              ; preds = %127
  %134 = load i32, i32* %4, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %155

139:                                              ; preds = %133
  %140 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %141 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %140, i32 0, i32 5
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %4, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = call i64 @SYNTH_INSYNC(i32 %146)
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %139
  %150 = load i32, i32* %4, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %151
  store i32 0, i32* %152, align 4
  br label %154

153:                                              ; preds = %139
  store i32 0, i32* %7, align 4
  br label %154

154:                                              ; preds = %153, %149
  br label %155

155:                                              ; preds = %154, %133
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %4, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %4, align 4
  br label %127

159:                                              ; preds = %127
  %160 = load i32, i32* %7, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %164, label %162

162:                                              ; preds = %159
  %163 = call i32 @DELAY(i32 5000)
  br label %164

164:                                              ; preds = %162, %159
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %7, align 4
  %167 = icmp ne i32 %166, 0
  %168 = xor i1 %167, true
  br i1 %168, label %126, label %169

169:                                              ; preds = %165
  %170 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %171 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %170, i32 0, i32 4
  %172 = call i32 @mtx_lock(i32* %171)
  store i32 0, i32* %2, align 4
  br label %173

173:                                              ; preds = %169, %86, %68
  %174 = load i32, i32* %2, align 4
  ret i32 %174
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @SEQ_DEBUG(i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @MIDIQ_EMPTY(i32) #1

declare dso_local i32 @cv_broadcast(i32*) #1

declare dso_local i32 @MIDIQ_LEN(i32) #1

declare dso_local i32 @cv_timedwait_sig(i32*, i32*, i32) #1

declare dso_local i32 @MIDIQ_CLEAR(i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i64 @SYNTH_INSYNC(i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
