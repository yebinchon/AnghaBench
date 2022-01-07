; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder.c_snd_fmtbestfunc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder.c_snd_fmtbestfunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64*, i32)* @snd_fmtbestfunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @snd_fmtbestfunc(i64 %0, i64* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i64, i64* %5, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %3
  %16 = load i64*, i64** %6, align 8
  %17 = icmp eq i64* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %15
  %19 = load i64*, i64** %6, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18, %15, %3
  store i64 0, i64* %4, align 8
  br label %172

24:                                               ; preds = %18
  %25 = load i64, i64* %5, align 8
  %26 = load i64*, i64** %6, align 8
  %27 = call i64 @snd_fmtvalid(i64 %25, i64* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i64, i64* %5, align 8
  store i64 %30, i64* %4, align 8
  br label %172

31:                                               ; preds = %24
  store i64 0, i64* %8, align 8
  %32 = load i64, i64* %5, align 8
  %33 = call i64 @snd_fmtscore(i64 %32)
  store i64 %33, i64* %9, align 8
  store i64 0, i64* %11, align 8
  store i32 0, i32* %12, align 4
  br label %34

34:                                               ; preds = %167, %31
  %35 = load i64*, i64** %6, align 8
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %170

41:                                               ; preds = %34
  %42 = load i64*, i64** %6, align 8
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = call i64 @snd_fmtscore(i64 %46)
  store i64 %47, i64* %10, align 8
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %69

50:                                               ; preds = %41
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* %10, align 8
  %53 = call i32 @score_cheq(i64 %51, i64 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %69, label %55

55:                                               ; preds = %50
  %56 = load i64, i64* %10, align 8
  %57 = load i64, i64* %9, align 8
  %58 = call i64 @score_chlt(i64 %56, i64 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %68, label %60

60:                                               ; preds = %55
  %61 = load i64, i64* %11, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load i64, i64* %10, align 8
  %65 = load i64, i64* %11, align 8
  %66 = call i64 @score_chgt(i64 %64, i64 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63, %55
  br label %167

69:                                               ; preds = %63, %60, %50, %41
  %70 = load i64, i64* %11, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %120, label %72

72:                                               ; preds = %69
  %73 = load i64, i64* %10, align 8
  %74 = call i64 @score_val(i64 %73)
  %75 = load i64, i64* %9, align 8
  %76 = call i64 @score_val(i64 %75)
  %77 = icmp eq i64 %74, %76
  br i1 %77, label %120, label %78

78:                                               ; preds = %72
  %79 = load i64, i64* %10, align 8
  %80 = call i64 @score_val(i64 %79)
  %81 = load i64, i64* %11, align 8
  %82 = call i64 @score_val(i64 %81)
  %83 = icmp eq i64 %80, %82
  br i1 %83, label %120, label %84

84:                                               ; preds = %78
  %85 = load i64, i64* %10, align 8
  %86 = call i64 @score_val(i64 %85)
  %87 = load i64, i64* %11, align 8
  %88 = call i64 @score_val(i64 %87)
  %89 = icmp sgt i64 %86, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %84
  %91 = load i64, i64* %10, align 8
  %92 = call i64 @score_val(i64 %91)
  %93 = load i64, i64* %9, align 8
  %94 = call i64 @score_val(i64 %93)
  %95 = icmp slt i64 %92, %94
  br i1 %95, label %120, label %96

96:                                               ; preds = %90, %84
  %97 = load i64, i64* %10, align 8
  %98 = call i64 @score_val(i64 %97)
  %99 = load i64, i64* %11, align 8
  %100 = call i64 @score_val(i64 %99)
  %101 = icmp slt i64 %98, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %96
  %103 = load i64, i64* %10, align 8
  %104 = call i64 @score_val(i64 %103)
  %105 = load i64, i64* %9, align 8
  %106 = call i64 @score_val(i64 %105)
  %107 = icmp sgt i64 %104, %106
  br i1 %107, label %120, label %108

108:                                              ; preds = %102, %96
  %109 = load i64, i64* %11, align 8
  %110 = call i64 @score_val(i64 %109)
  %111 = load i64, i64* %9, align 8
  %112 = call i64 @score_val(i64 %111)
  %113 = icmp slt i64 %110, %112
  br i1 %113, label %114, label %166

114:                                              ; preds = %108
  %115 = load i64, i64* %10, align 8
  %116 = call i64 @score_val(i64 %115)
  %117 = load i64, i64* %11, align 8
  %118 = call i64 @score_val(i64 %117)
  %119 = icmp sgt i64 %116, %118
  br i1 %119, label %120, label %166

120:                                              ; preds = %114, %102, %90, %78, %72, %69
  %121 = load i64, i64* %11, align 8
  %122 = call i64 @score_val(i64 %121)
  %123 = load i64, i64* %10, align 8
  %124 = call i64 @score_val(i64 %123)
  %125 = icmp ne i64 %122, %124
  br i1 %125, label %158, label %126

126:                                              ; preds = %120
  %127 = load i64, i64* %9, align 8
  %128 = call i64 @score_cse(i64 %127)
  %129 = load i64, i64* %10, align 8
  %130 = call i64 @score_cse(i64 %129)
  %131 = icmp eq i64 %128, %130
  br i1 %131, label %158, label %132

132:                                              ; preds = %126
  %133 = load i64, i64* %11, align 8
  %134 = call i64 @score_cse(i64 %133)
  %135 = load i64, i64* %9, align 8
  %136 = call i64 @score_cse(i64 %135)
  %137 = icmp ne i64 %134, %136
  br i1 %137, label %138, label %165

138:                                              ; preds = %132
  %139 = load i64, i64* %9, align 8
  %140 = load i64, i64* %11, align 8
  %141 = call i64 @score_endianeq(i64 %139, i64 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %165, label %143

143:                                              ; preds = %138
  %144 = load i64, i64* %9, align 8
  %145 = load i64, i64* %10, align 8
  %146 = call i64 @score_endianeq(i64 %144, i64 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %158, label %148

148:                                              ; preds = %143
  %149 = load i64, i64* %9, align 8
  %150 = load i64, i64* %11, align 8
  %151 = call i64 @score_signeq(i64 %149, i64 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %165, label %153

153:                                              ; preds = %148
  %154 = load i64, i64* %9, align 8
  %155 = load i64, i64* %10, align 8
  %156 = call i64 @score_signeq(i64 %154, i64 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %165

158:                                              ; preds = %153, %143, %126, %120
  %159 = load i64*, i64** %6, align 8
  %160 = load i32, i32* %12, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i64, i64* %159, i64 %161
  %163 = load i64, i64* %162, align 8
  store i64 %163, i64* %8, align 8
  %164 = load i64, i64* %10, align 8
  store i64 %164, i64* %11, align 8
  br label %165

165:                                              ; preds = %158, %153, %148, %138, %132
  br label %166

166:                                              ; preds = %165, %114, %108
  br label %167

167:                                              ; preds = %166, %68
  %168 = load i32, i32* %12, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %12, align 4
  br label %34

170:                                              ; preds = %34
  %171 = load i64, i64* %8, align 8
  store i64 %171, i64* %4, align 8
  br label %172

172:                                              ; preds = %170, %29, %23
  %173 = load i64, i64* %4, align 8
  ret i64 %173
}

declare dso_local i64 @snd_fmtvalid(i64, i64*) #1

declare dso_local i64 @snd_fmtscore(i64) #1

declare dso_local i32 @score_cheq(i64, i64) #1

declare dso_local i64 @score_chlt(i64, i64) #1

declare dso_local i64 @score_chgt(i64, i64) #1

declare dso_local i64 @score_val(i64) #1

declare dso_local i64 @score_cse(i64) #1

declare dso_local i64 @score_endianeq(i64, i64) #1

declare dso_local i64 @score_signeq(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
