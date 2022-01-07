; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/midi/extr_sequencer.c_seq_convertold.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/midi/extr_sequencer.c_seq_convertold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MIDI_NOTEOFF = common dso_local global i32 0, align 4
@MIDI_NOTEON = common dso_local global i32 0, align 4
@MIDI_PGM_CHANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"seq_playevent: put data 0x%02x, unit %d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"seq_convertold: SEQ_EXTENDED type %dnot handled\0A\00", align 1
@TMR_WAIT_REL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"SEQ_WAIT %d\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"seq_convertold: event type %d not handled %d %d %d\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@MORE = common dso_local global i32 0, align 4
@QUEUEFULL = common dso_local global i32 0, align 4
@ret = common dso_local global i32 0, align 4
@scp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @seq_convertold to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seq_convertold(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 7
  store i32 0, i32* %11, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 6
  store i32 0, i32* %13, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 5
  store i32 0, i32* %15, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 4
  store i32 0, i32* %17, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 3
  store i32 0, i32* %19, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 2
  store i32 0, i32* %21, align 4
  %22 = load i32*, i32** %4, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  store i32 0, i32* %23, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  store i32 0, i32* %25, align 4
  store i32 0, i32* %6, align 4
  %26 = load i32*, i32** %3, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %7, align 4
  %29 = load i32*, i32** %3, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 2
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %8, align 4
  %32 = load i32*, i32** %3, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 3
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %9, align 4
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %164, %2
  %36 = load i32*, i32** %3, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %214 [
    i32 141, label %39
    i32 144, label %39
    i32 145, label %39
    i32 142, label %39
    i32 143, label %39
    i32 134, label %82
    i32 133, label %101
    i32 132, label %121
    i32 135, label %141
    i32 136, label %160
    i32 128, label %175
    i32 137, label %213
    i32 130, label %213
    i32 131, label %213
  ]

39:                                               ; preds = %35, %35, %35, %35, %35
  %40 = load i32*, i32** %3, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %4, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  store i32 %42, i32* %44, align 4
  %45 = load i32*, i32** %3, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %4, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  store i32 %47, i32* %49, align 4
  %50 = load i32*, i32** %3, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 2
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %4, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 2
  store i32 %52, i32* %54, align 4
  %55 = load i32*, i32** %3, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 3
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %4, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 3
  store i32 %57, i32* %59, align 4
  %60 = load i32*, i32** %3, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 4
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %4, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 4
  store i32 %62, i32* %64, align 4
  %65 = load i32*, i32** %3, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 5
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %4, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 5
  store i32 %67, i32* %69, align 4
  %70 = load i32*, i32** %3, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 6
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %4, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 6
  store i32 %72, i32* %74, align 4
  %75 = load i32*, i32** %3, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 7
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %4, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 7
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* %5, align 4
  %81 = add nsw i32 %80, 8
  store i32 %81, i32* %5, align 4
  br label %229

82:                                               ; preds = %35
  %83 = load i32*, i32** %4, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  store i32 144, i32* %84, align 4
  %85 = load i32, i32* %6, align 4
  %86 = load i32*, i32** %4, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* @MIDI_NOTEOFF, align 4
  %89 = load i32*, i32** %4, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 2
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* %7, align 4
  %92 = load i32*, i32** %4, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 3
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* %8, align 4
  %95 = load i32*, i32** %4, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 4
  store i32 %94, i32* %96, align 4
  %97 = load i32*, i32** %4, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 5
  store i32 255, i32* %98, align 4
  %99 = load i32, i32* %5, align 4
  %100 = add nsw i32 %99, 4
  store i32 %100, i32* %5, align 4
  br label %229

101:                                              ; preds = %35
  %102 = load i32*, i32** %4, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  store i32 144, i32* %103, align 4
  %104 = load i32, i32* %6, align 4
  %105 = load i32*, i32** %4, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 1
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* @MIDI_NOTEON, align 4
  %108 = load i32*, i32** %4, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 2
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* %7, align 4
  %111 = load i32*, i32** %4, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 3
  store i32 %110, i32* %112, align 4
  %113 = load i32, i32* %8, align 4
  %114 = load i32*, i32** %4, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 4
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* %9, align 4
  %117 = load i32*, i32** %4, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 5
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* %5, align 4
  %120 = add nsw i32 %119, 4
  store i32 %120, i32* %5, align 4
  br label %229

121:                                              ; preds = %35
  %122 = load i32*, i32** %4, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 0
  store i32 145, i32* %123, align 4
  %124 = load i32, i32* %6, align 4
  %125 = load i32*, i32** %4, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 1
  store i32 %124, i32* %126, align 4
  %127 = load i32, i32* @MIDI_PGM_CHANGE, align 4
  %128 = load i32*, i32** %4, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 2
  store i32 %127, i32* %129, align 4
  %130 = load i32, i32* %7, align 4
  %131 = load i32*, i32** %4, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 3
  store i32 %130, i32* %132, align 4
  %133 = load i32, i32* %8, align 4
  %134 = load i32*, i32** %4, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 4
  store i32 %133, i32* %135, align 4
  %136 = load i32, i32* %9, align 4
  %137 = load i32*, i32** %4, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 5
  store i32 %136, i32* %138, align 4
  %139 = load i32, i32* %5, align 4
  %140 = add nsw i32 %139, 4
  store i32 %140, i32* %5, align 4
  br label %229

141:                                              ; preds = %35
  %142 = load i32*, i32** %3, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 1
  %144 = load i32, i32* %143, align 4
  %145 = load i32*, i32** %3, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 2
  %147 = load i32, i32* %146, align 4
  %148 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %144, i32 %147)
  %149 = call i32 @SEQ_DEBUG(i32 4, i32 %148)
  %150 = load i32*, i32** %4, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 0
  store i32 135, i32* %151, align 4
  %152 = load i32, i32* %6, align 4
  %153 = load i32*, i32** %4, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 1
  store i32 %152, i32* %154, align 4
  %155 = load i32, i32* %7, align 4
  %156 = load i32*, i32** %4, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 2
  store i32 %155, i32* %157, align 4
  %158 = load i32, i32* %5, align 4
  %159 = add nsw i32 %158, 4
  store i32 %159, i32* %5, align 4
  br label %229

160:                                              ; preds = %35
  %161 = load i32*, i32** %3, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 1
  %163 = load i32, i32* %162, align 4
  switch i32 %163, label %168 [
    i32 134, label %164
    i32 133, label %164
    i32 132, label %164
    i32 140, label %167
    i32 139, label %167
    i32 138, label %167
    i32 129, label %167
  ]

164:                                              ; preds = %160, %160, %160
  %165 = load i32*, i32** %3, align 8
  %166 = getelementptr inbounds i32, i32* %165, i32 1
  store i32* %166, i32** %3, align 8
  store i32 4, i32* %5, align 4
  br label %35

167:                                              ; preds = %160, %160, %160, %160
  br label %168

168:                                              ; preds = %160, %167
  %169 = load i32*, i32** %3, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 1
  %171 = load i32, i32* %170, align 4
  %172 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %171)
  %173 = call i32 @SEQ_DEBUG(i32 2, i32 %172)
  br label %174

174:                                              ; preds = %168
  br label %229

175:                                              ; preds = %35
  %176 = load i32*, i32** %4, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 0
  store i32 141, i32* %177, align 4
  %178 = load i32, i32* @TMR_WAIT_REL, align 4
  %179 = load i32*, i32** %4, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 1
  store i32 %178, i32* %180, align 4
  %181 = load i32*, i32** %3, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 2
  %183 = load i32, i32* %182, align 4
  %184 = load i32*, i32** %4, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 4
  store i32 %183, i32* %185, align 4
  %186 = load i32*, i32** %3, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 3
  %188 = load i32, i32* %187, align 4
  %189 = load i32*, i32** %4, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 5
  store i32 %188, i32* %190, align 4
  %191 = load i32*, i32** %3, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 4
  %193 = load i32, i32* %192, align 4
  %194 = load i32*, i32** %4, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 6
  store i32 %193, i32* %195, align 4
  %196 = load i32*, i32** %3, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 2
  %198 = load i32, i32* %197, align 4
  %199 = load i32*, i32** %3, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 3
  %201 = load i32, i32* %200, align 4
  %202 = shl i32 %201, 8
  %203 = add nsw i32 %198, %202
  %204 = load i32*, i32** %3, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 4
  %206 = load i32, i32* %205, align 4
  %207 = shl i32 %206, 24
  %208 = add nsw i32 %203, %207
  %209 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %208)
  %210 = call i32 @SEQ_DEBUG(i32 5, i32 %209)
  %211 = load i32, i32* %5, align 4
  %212 = add nsw i32 %211, 4
  store i32 %212, i32* %5, align 4
  br label %229

213:                                              ; preds = %35, %35, %35
  br label %214

214:                                              ; preds = %35, %213
  %215 = load i32*, i32** %3, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 0
  %217 = load i32, i32* %216, align 4
  %218 = load i32*, i32** %3, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 1
  %220 = load i32, i32* %219, align 4
  %221 = load i32*, i32** %3, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 2
  %223 = load i32, i32* %222, align 4
  %224 = load i32*, i32** %3, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 3
  %226 = load i32, i32* %225, align 4
  %227 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %217, i32 %220, i32 %223, i32 %226)
  %228 = call i32 @SEQ_DEBUG(i32 2, i32 %227)
  br label %229

229:                                              ; preds = %214, %175, %174, %141, %121, %101, %82, %39
  %230 = load i32, i32* %5, align 4
  ret i32 %230
}

declare dso_local i32 @SEQ_DEBUG(i32, i32) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
