; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/midi/extr_sequencer.c_seq_delunit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/midi/extr_sequencer.c_seq_delunit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_softc = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, %struct.seq_softc*, %struct.seq_softc*, i32*, i32*, i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_4__ = type { %struct.seq_softc* }
%struct.TYPE_3__ = type { %struct.seq_softc* }

@seqs = common dso_local global %struct.seq_softc** null, align 8
@.str = private unnamed_addr constant [17 x i8] c"seq_delunit: 1 \0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"seq_delunit: 2 \0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"seq_delunit: 3.0 \0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"seq_delunit: 3.1 \0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"seq_delunit: 4 \0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"seq_delunit: 5 \0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"seq_delunit: 6 \0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"seq_delunit: 7 \0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"seq_delunit: 8 \0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"seq_delunit: 10 \0A\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"seq_delunit: 11 \0A\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"seq_delunit: 12 \0A\00", align 1
@M_TEMP = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [18 x i8] c"seq_delunit: 13 \0A\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"seq_delunit: 14 \0A\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"seq_delunit: 15 \0A\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"seq_delunit: 16 \0A\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"seq_delunit: 17 \0A\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@seqinfo_mtx = common dso_local global i32 0, align 4
@nseq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @seq_delunit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seq_delunit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.seq_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load %struct.seq_softc**, %struct.seq_softc*** @seqs, align 8
  %6 = load i32, i32* %2, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.seq_softc*, %struct.seq_softc** %5, i64 %7
  %9 = load %struct.seq_softc*, %struct.seq_softc** %8, align 8
  store %struct.seq_softc* %9, %struct.seq_softc** %3, align 8
  %10 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 @SEQ_DEBUG(i32 1, i32 %10)
  %12 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %13 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %12, i32 0, i32 1
  %14 = call i32 @mtx_lock(i32* %13)
  %15 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %16 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %15, i32 0, i32 14
  store i64 0, i64* %16, align 8
  %17 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %18 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %20 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %19, i32 0, i32 10
  %21 = call i32 @cv_broadcast(i32* %20)
  %22 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %23 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %22, i32 0, i32 13
  %24 = call i32 @cv_broadcast(i32* %23)
  %25 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %26 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %25, i32 0, i32 11
  %27 = call i32 @cv_broadcast(i32* %26)
  %28 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %29 = call i32 @SEQ_DEBUG(i32 1, i32 %28)
  %30 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %31 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %30, i32 0, i32 8
  %32 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %33 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %32, i32 0, i32 1
  %34 = call i32 @cv_wait(i32* %31, i32* %33)
  %35 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %36 = call i32 @SEQ_DEBUG(i32 1, i32 %35)
  %37 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %38 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %37, i32 0, i32 1
  %39 = call i32 @mtx_unlock(i32* %38)
  %40 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %41 = call i32 @SEQ_DEBUG(i32 1, i32 %40)
  %42 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %43 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %42, i32 0, i32 13
  %44 = call i32 @cv_destroy(i32* %43)
  %45 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %46 = call i32 @SEQ_DEBUG(i32 1, i32 %45)
  %47 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %48 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %47, i32 0, i32 12
  %49 = call i32 @cv_destroy(i32* %48)
  %50 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %51 = call i32 @SEQ_DEBUG(i32 1, i32 %50)
  %52 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %53 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %52, i32 0, i32 11
  %54 = call i32 @cv_destroy(i32* %53)
  %55 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %56 = call i32 @SEQ_DEBUG(i32 1, i32 %55)
  %57 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %58 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %57, i32 0, i32 10
  %59 = call i32 @cv_destroy(i32* %58)
  %60 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %61 = call i32 @SEQ_DEBUG(i32 1, i32 %60)
  %62 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %63 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %62, i32 0, i32 9
  %64 = call i32 @cv_destroy(i32* %63)
  %65 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  %66 = call i32 @SEQ_DEBUG(i32 1, i32 %65)
  %67 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %68 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %67, i32 0, i32 8
  %69 = call i32 @cv_destroy(i32* %68)
  %70 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  %71 = call i32 @SEQ_DEBUG(i32 1, i32 %70)
  %72 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %73 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %72, i32 0, i32 7
  %74 = load i32*, i32** %73, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %81

76:                                               ; preds = %1
  %77 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %78 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %77, i32 0, i32 7
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @destroy_dev(i32* %79)
  br label %81

81:                                               ; preds = %76, %1
  %82 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0))
  %83 = call i32 @SEQ_DEBUG(i32 1, i32 %82)
  %84 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %85 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %84, i32 0, i32 6
  %86 = load i32*, i32** %85, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %93

88:                                               ; preds = %81
  %89 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %90 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %89, i32 0, i32 6
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @destroy_dev(i32* %91)
  br label %93

93:                                               ; preds = %88, %81
  %94 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0))
  %95 = call i32 @SEQ_DEBUG(i32 1, i32 %94)
  %96 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %97 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %96, i32 0, i32 6
  store i32* null, i32** %97, align 8
  %98 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %99 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %98, i32 0, i32 7
  store i32* null, i32** %99, align 8
  %100 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %101 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %100, i32 0, i32 5
  %102 = load %struct.seq_softc*, %struct.seq_softc** %101, align 8
  %103 = icmp ne %struct.seq_softc* %102, null
  br i1 %103, label %104, label %110

104:                                              ; preds = %93
  %105 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %106 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %105, i32 0, i32 5
  %107 = load %struct.seq_softc*, %struct.seq_softc** %106, align 8
  %108 = load i32, i32* @M_TEMP, align 4
  %109 = call i32 @free(%struct.seq_softc* %107, i32 %108)
  br label %110

110:                                              ; preds = %104, %93
  %111 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0))
  %112 = call i32 @SEQ_DEBUG(i32 1, i32 %111)
  %113 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %114 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %113, i32 0, i32 4
  %115 = load %struct.seq_softc*, %struct.seq_softc** %114, align 8
  %116 = icmp ne %struct.seq_softc* %115, null
  br i1 %116, label %117, label %123

117:                                              ; preds = %110
  %118 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %119 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %118, i32 0, i32 4
  %120 = load %struct.seq_softc*, %struct.seq_softc** %119, align 8
  %121 = load i32, i32* @M_TEMP, align 4
  %122 = call i32 @free(%struct.seq_softc* %120, i32 %121)
  br label %123

123:                                              ; preds = %117, %110
  %124 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0))
  %125 = call i32 @SEQ_DEBUG(i32 1, i32 %124)
  %126 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %127 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %126, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  %129 = load %struct.seq_softc*, %struct.seq_softc** %128, align 8
  %130 = load i32, i32* @M_TEMP, align 4
  %131 = call i32 @free(%struct.seq_softc* %129, i32 %130)
  %132 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0))
  %133 = call i32 @SEQ_DEBUG(i32 1, i32 %132)
  %134 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %135 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = load %struct.seq_softc*, %struct.seq_softc** %136, align 8
  %138 = load i32, i32* @M_TEMP, align 4
  %139 = call i32 @free(%struct.seq_softc* %137, i32 %138)
  %140 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0))
  %141 = call i32 @SEQ_DEBUG(i32 1, i32 %140)
  %142 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %143 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %142, i32 0, i32 1
  %144 = call i32 @mtx_destroy(i32* %143)
  %145 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0))
  %146 = call i32 @SEQ_DEBUG(i32 1, i32 %145)
  %147 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %148 = load i32, i32* @M_DEVBUF, align 4
  %149 = call i32 @free(%struct.seq_softc* %147, i32 %148)
  %150 = call i32 @mtx_lock(i32* @seqinfo_mtx)
  %151 = load i32, i32* %2, align 4
  store i32 %151, i32* %4, align 4
  br label %152

152:                                              ; preds = %168, %123
  %153 = load i32, i32* %4, align 4
  %154 = load i32, i32* @nseq, align 4
  %155 = sub nsw i32 %154, 1
  %156 = icmp slt i32 %153, %155
  br i1 %156, label %157, label %171

157:                                              ; preds = %152
  %158 = load %struct.seq_softc**, %struct.seq_softc*** @seqs, align 8
  %159 = load i32, i32* %4, align 4
  %160 = add nsw i32 %159, 1
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.seq_softc*, %struct.seq_softc** %158, i64 %161
  %163 = load %struct.seq_softc*, %struct.seq_softc** %162, align 8
  %164 = load %struct.seq_softc**, %struct.seq_softc*** @seqs, align 8
  %165 = load i32, i32* %4, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.seq_softc*, %struct.seq_softc** %164, i64 %166
  store %struct.seq_softc* %163, %struct.seq_softc** %167, align 8
  br label %168

168:                                              ; preds = %157
  %169 = load i32, i32* %4, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %4, align 4
  br label %152

171:                                              ; preds = %152
  %172 = load i32, i32* @nseq, align 4
  %173 = add nsw i32 %172, -1
  store i32 %173, i32* @nseq, align 4
  %174 = call i32 @mtx_unlock(i32* @seqinfo_mtx)
  ret i32 0
}

declare dso_local i32 @SEQ_DEBUG(i32, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @cv_broadcast(i32*) #1

declare dso_local i32 @cv_wait(i32*, i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @cv_destroy(i32*) #1

declare dso_local i32 @destroy_dev(i32*) #1

declare dso_local i32 @free(%struct.seq_softc*, i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
