; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder.c_snd_fmtscore.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder.c_snd_fmtscore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AFMT_SIGNED = common dso_local global i32 0, align 4
@AFMT_BIGENDIAN = common dso_local global i32 0, align 4
@AFMT_A_LAW = common dso_local global i32 0, align 4
@AFMT_MU_LAW = common dso_local global i32 0, align 4
@AFMT_8BIT = common dso_local global i32 0, align 4
@AFMT_16BIT = common dso_local global i32 0, align 4
@AFMT_24BIT = common dso_local global i32 0, align 4
@AFMT_32BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_fmtscore(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @AFMT_SIGNED, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = or i32 %9, 1
  store i32 %10, i32* %3, align 4
  br label %11

11:                                               ; preds = %8, %1
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @AFMT_BIGENDIAN, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load i32, i32* %3, align 4
  %18 = or i32 %17, 2
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %16, %11
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @AFMT_CHANNEL(i32 %20)
  %22 = and i32 %21, 63
  %23 = shl i32 %22, 2
  %24 = load i32, i32* %3, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* @AFMT_A_LAW, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %19
  %31 = load i32, i32* %3, align 4
  %32 = or i32 %31, 256
  store i32 %32, i32* %3, align 4
  br label %78

33:                                               ; preds = %19
  %34 = load i32, i32* %2, align 4
  %35 = load i32, i32* @AFMT_MU_LAW, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* %3, align 4
  %40 = or i32 %39, 512
  store i32 %40, i32* %3, align 4
  br label %77

41:                                               ; preds = %33
  %42 = load i32, i32* %2, align 4
  %43 = load i32, i32* @AFMT_8BIT, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* %3, align 4
  %48 = or i32 %47, 1024
  store i32 %48, i32* %3, align 4
  br label %76

49:                                               ; preds = %41
  %50 = load i32, i32* %2, align 4
  %51 = load i32, i32* @AFMT_16BIT, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32, i32* %3, align 4
  %56 = or i32 %55, 2048
  store i32 %56, i32* %3, align 4
  br label %75

57:                                               ; preds = %49
  %58 = load i32, i32* %2, align 4
  %59 = load i32, i32* @AFMT_24BIT, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load i32, i32* %3, align 4
  %64 = or i32 %63, 4096
  store i32 %64, i32* %3, align 4
  br label %74

65:                                               ; preds = %57
  %66 = load i32, i32* %2, align 4
  %67 = load i32, i32* @AFMT_32BIT, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load i32, i32* %3, align 4
  %72 = or i32 %71, 8192
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %70, %65
  br label %74

74:                                               ; preds = %73, %62
  br label %75

75:                                               ; preds = %74, %54
  br label %76

76:                                               ; preds = %75, %46
  br label %77

77:                                               ; preds = %76, %38
  br label %78

78:                                               ; preds = %77, %30
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @AFMT_CHANNEL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
