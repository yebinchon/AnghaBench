; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_ess.c_essmix_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_ess.c_essmix_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mixer = type { i32 }
%struct.ess_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_mixer*, i32, i32, i32)* @essmix_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @essmix_set(%struct.snd_mixer* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_mixer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ess_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snd_mixer* %0, %struct.snd_mixer** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.snd_mixer*, %struct.snd_mixer** %6, align 8
  %16 = call %struct.ess_info* @mix_getdevinfo(%struct.snd_mixer* %15)
  store %struct.ess_info* %16, %struct.ess_info** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %17 = load i32, i32* %8, align 4
  %18 = mul i32 %17, 15
  %19 = udiv i32 %18, 100
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %9, align 4
  %21 = mul i32 %20, 15
  %22 = udiv i32 %21, 100
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %7, align 4
  switch i32 %23, label %78 [
    i32 129, label %24
    i32 131, label %25
    i32 134, label %26
    i32 132, label %27
    i32 133, label %28
    i32 135, label %29
    i32 130, label %30
    i32 128, label %31
  ]

24:                                               ; preds = %4
  store i32 54, i32* %11, align 4
  store i32 107, i32* %12, align 4
  br label %78

25:                                               ; preds = %4
  store i32 20, i32* %11, align 4
  store i32 124, i32* %12, align 4
  br label %78

26:                                               ; preds = %4
  store i32 62, i32* %11, align 4
  store i32 110, i32* %12, align 4
  br label %78

27:                                               ; preds = %4
  store i32 26, i32* %11, align 4
  store i32 104, i32* %12, align 4
  br label %78

28:                                               ; preds = %4
  store i32 58, i32* %11, align 4
  store i32 108, i32* %12, align 4
  br label %78

29:                                               ; preds = %4
  store i32 56, i32* %11, align 4
  store i32 106, i32* %12, align 4
  br label %78

30:                                               ; preds = %4
  store i32 60, i32* %11, align 4
  br label %78

31:                                               ; preds = %4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i32, i32* %8, align 4
  %36 = mul i32 %35, 63
  %37 = udiv i32 %36, 100
  br label %39

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %38, %34
  %40 = phi i32 [ %37, %34 ], [ 64, %38 ]
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i32, i32* %9, align 4
  %45 = mul i32 %44, 63
  %46 = udiv i32 %45, 100
  br label %48

47:                                               ; preds = %39
  br label %48

48:                                               ; preds = %47, %43
  %49 = phi i32 [ %46, %43 ], [ 64, %47 ]
  store i32 %49, i32* %14, align 4
  %50 = load %struct.ess_info*, %struct.ess_info** %10, align 8
  %51 = load i32, i32* %13, align 4
  %52 = call i32 @ess_setmixer(%struct.ess_info* %50, i32 96, i32 %51)
  %53 = load %struct.ess_info*, %struct.ess_info** %10, align 8
  %54 = load i32, i32* %14, align 4
  %55 = call i32 @ess_setmixer(%struct.ess_info* %53, i32 98, i32 %54)
  %56 = load i32, i32* %13, align 4
  %57 = icmp eq i32 %56, 64
  br i1 %57, label %58, label %59

58:                                               ; preds = %48
  br label %63

59:                                               ; preds = %48
  %60 = load i32, i32* %13, align 4
  %61 = mul nsw i32 %60, 100
  %62 = sdiv i32 %61, 63
  br label %63

63:                                               ; preds = %59, %58
  %64 = phi i32 [ 0, %58 ], [ %62, %59 ]
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %14, align 4
  %66 = icmp eq i32 %65, 64
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  br label %72

68:                                               ; preds = %63
  %69 = load i32, i32* %14, align 4
  %70 = mul nsw i32 %69, 100
  %71 = sdiv i32 %70, 63
  br label %72

72:                                               ; preds = %68, %67
  %73 = phi i32 [ 0, %67 ], [ %71, %68 ]
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %9, align 4
  %76 = shl i32 %75, 8
  %77 = or i32 %74, %76
  store i32 %77, i32* %5, align 4
  br label %111

78:                                               ; preds = %4, %30, %29, %28, %27, %26, %25, %24
  %79 = load i32, i32* %11, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %78
  %82 = load %struct.ess_info*, %struct.ess_info** %10, align 8
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %13, align 4
  %85 = shl i32 %84, 4
  %86 = load i32, i32* %14, align 4
  %87 = or i32 %85, %86
  %88 = call i32 @ess_setmixer(%struct.ess_info* %82, i32 %83, i32 %87)
  br label %89

89:                                               ; preds = %81, %78
  %90 = load i32, i32* %12, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %89
  %93 = load %struct.ess_info*, %struct.ess_info** %10, align 8
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* %13, align 4
  %96 = shl i32 %95, 4
  %97 = load i32, i32* %14, align 4
  %98 = or i32 %96, %97
  %99 = call i32 @ess_setmixer(%struct.ess_info* %93, i32 %94, i32 %98)
  br label %100

100:                                              ; preds = %92, %89
  %101 = load i32, i32* %13, align 4
  %102 = mul nsw i32 %101, 100
  %103 = sdiv i32 %102, 15
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* %14, align 4
  %105 = mul nsw i32 %104, 100
  %106 = sdiv i32 %105, 15
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* %9, align 4
  %109 = shl i32 %108, 8
  %110 = or i32 %107, %109
  store i32 %110, i32* %5, align 4
  br label %111

111:                                              ; preds = %100, %72
  %112 = load i32, i32* %5, align 4
  ret i32 %112
}

declare dso_local %struct.ess_info* @mix_getdevinfo(%struct.snd_mixer*) #1

declare dso_local i32 @ess_setmixer(%struct.ess_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
