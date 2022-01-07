; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder.c_snd_fmtbest.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder.c_snd_fmtbest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @snd_fmtbest(i64 %0, i64* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64* %1, i64** %5, align 8
  %11 = load i64, i64* %4, align 8
  %12 = load i64*, i64** %5, align 8
  %13 = call i64 @snd_fmtvalid(i64 %11, i64* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i64, i64* %4, align 8
  store i64 %16, i64* %3, align 8
  br label %81

17:                                               ; preds = %2
  %18 = load i64, i64* %4, align 8
  %19 = load i64*, i64** %5, align 8
  %20 = call i64 @snd_fmtbestchannel(i64 %18, i64* %19)
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* %4, align 8
  %22 = load i64*, i64** %5, align 8
  %23 = call i64 @snd_fmtbestbit(i64 %21, i64* %22)
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %6, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %74

26:                                               ; preds = %17
  %27 = load i64, i64* %7, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %74

29:                                               ; preds = %26
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* %7, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %74

33:                                               ; preds = %29
  %34 = load i64, i64* %4, align 8
  %35 = call i32 @AFMT_CHANNEL(i64 %34)
  %36 = icmp sgt i32 %35, 1
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i64, i64* %6, align 8
  store i64 %38, i64* %3, align 8
  br label %81

39:                                               ; preds = %33
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @snd_fmtscore(i64 %40)
  %42 = call i64 @score_val(i32 %41)
  store i64 %42, i64* %8, align 8
  %43 = load i64, i64* %6, align 8
  %44 = call i32 @snd_fmtscore(i64 %43)
  %45 = call i64 @score_val(i32 %44)
  store i64 %45, i64* %9, align 8
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @snd_fmtscore(i64 %46)
  %48 = call i64 @score_val(i32 %47)
  store i64 %48, i64* %10, align 8
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* %10, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %56, label %52

52:                                               ; preds = %39
  %53 = load i64, i64* %9, align 8
  %54 = load i64, i64* %8, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52, %39
  %57 = load i64, i64* %6, align 8
  store i64 %57, i64* %3, align 8
  br label %81

58:                                               ; preds = %52
  %59 = load i64, i64* %10, align 8
  %60 = load i64, i64* %8, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load i64, i64* %7, align 8
  store i64 %63, i64* %3, align 8
  br label %81

64:                                               ; preds = %58
  %65 = load i64, i64* %9, align 8
  %66 = load i64, i64* %10, align 8
  %67 = icmp sgt i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i64, i64* %6, align 8
  store i64 %69, i64* %3, align 8
  br label %81

70:                                               ; preds = %64
  br label %71

71:                                               ; preds = %70
  br label %72

72:                                               ; preds = %71
  %73 = load i64, i64* %7, align 8
  store i64 %73, i64* %3, align 8
  br label %81

74:                                               ; preds = %29, %26, %17
  %75 = load i64, i64* %7, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = load i64, i64* %6, align 8
  store i64 %78, i64* %3, align 8
  br label %81

79:                                               ; preds = %74
  %80 = load i64, i64* %7, align 8
  store i64 %80, i64* %3, align 8
  br label %81

81:                                               ; preds = %79, %77, %72, %68, %62, %56, %37, %15
  %82 = load i64, i64* %3, align 8
  ret i64 %82
}

declare dso_local i64 @snd_fmtvalid(i64, i64*) #1

declare dso_local i64 @snd_fmtbestchannel(i64, i64*) #1

declare dso_local i64 @snd_fmtbestbit(i64, i64*) #1

declare dso_local i32 @AFMT_CHANNEL(i64) #1

declare dso_local i64 @score_val(i32) #1

declare dso_local i32 @snd_fmtscore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
