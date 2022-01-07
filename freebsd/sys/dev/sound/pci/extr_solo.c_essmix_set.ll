; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_solo.c_essmix_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_solo.c_essmix_set.c"
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
  switch i32 %23, label %77 [
    i32 129, label %24
    i32 130, label %25
    i32 133, label %26
    i32 131, label %27
    i32 132, label %28
    i32 134, label %29
    i32 128, label %30
  ]

24:                                               ; preds = %4
  store i32 54, i32* %11, align 4
  store i32 107, i32* %12, align 4
  br label %77

25:                                               ; preds = %4
  store i32 20, i32* %11, align 4
  store i32 124, i32* %12, align 4
  br label %77

26:                                               ; preds = %4
  store i32 62, i32* %11, align 4
  store i32 110, i32* %12, align 4
  br label %77

27:                                               ; preds = %4
  store i32 26, i32* %11, align 4
  store i32 104, i32* %12, align 4
  br label %77

28:                                               ; preds = %4
  store i32 58, i32* %11, align 4
  store i32 108, i32* %12, align 4
  br label %77

29:                                               ; preds = %4
  store i32 56, i32* %11, align 4
  store i32 106, i32* %12, align 4
  br label %77

30:                                               ; preds = %4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i32, i32* %8, align 4
  %35 = mul i32 %34, 63
  %36 = udiv i32 %35, 100
  br label %38

37:                                               ; preds = %30
  br label %38

38:                                               ; preds = %37, %33
  %39 = phi i32 [ %36, %33 ], [ 64, %37 ]
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i32, i32* %9, align 4
  %44 = mul i32 %43, 63
  %45 = udiv i32 %44, 100
  br label %47

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %46, %42
  %48 = phi i32 [ %45, %42 ], [ 64, %46 ]
  store i32 %48, i32* %14, align 4
  %49 = load %struct.ess_info*, %struct.ess_info** %10, align 8
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @ess_setmixer(%struct.ess_info* %49, i32 96, i32 %50)
  %52 = load %struct.ess_info*, %struct.ess_info** %10, align 8
  %53 = load i32, i32* %14, align 4
  %54 = call i32 @ess_setmixer(%struct.ess_info* %52, i32 98, i32 %53)
  %55 = load i32, i32* %13, align 4
  %56 = icmp eq i32 %55, 64
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  br label %62

58:                                               ; preds = %47
  %59 = load i32, i32* %13, align 4
  %60 = mul nsw i32 %59, 100
  %61 = sdiv i32 %60, 63
  br label %62

62:                                               ; preds = %58, %57
  %63 = phi i32 [ 0, %57 ], [ %61, %58 ]
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %14, align 4
  %65 = icmp eq i32 %64, 64
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  br label %71

67:                                               ; preds = %62
  %68 = load i32, i32* %14, align 4
  %69 = mul nsw i32 %68, 100
  %70 = sdiv i32 %69, 63
  br label %71

71:                                               ; preds = %67, %66
  %72 = phi i32 [ 0, %66 ], [ %70, %67 ]
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %9, align 4
  %75 = shl i32 %74, 8
  %76 = or i32 %73, %75
  store i32 %76, i32* %5, align 4
  br label %110

77:                                               ; preds = %4, %29, %28, %27, %26, %25, %24
  %78 = load i32, i32* %11, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %77
  %81 = load %struct.ess_info*, %struct.ess_info** %10, align 8
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %13, align 4
  %84 = shl i32 %83, 4
  %85 = load i32, i32* %14, align 4
  %86 = or i32 %84, %85
  %87 = call i32 @ess_setmixer(%struct.ess_info* %81, i32 %82, i32 %86)
  br label %88

88:                                               ; preds = %80, %77
  %89 = load i32, i32* %12, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %88
  %92 = load %struct.ess_info*, %struct.ess_info** %10, align 8
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* %13, align 4
  %95 = shl i32 %94, 4
  %96 = load i32, i32* %14, align 4
  %97 = or i32 %95, %96
  %98 = call i32 @ess_setmixer(%struct.ess_info* %92, i32 %93, i32 %97)
  br label %99

99:                                               ; preds = %91, %88
  %100 = load i32, i32* %13, align 4
  %101 = mul nsw i32 %100, 100
  %102 = sdiv i32 %101, 15
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* %14, align 4
  %104 = mul nsw i32 %103, 100
  %105 = sdiv i32 %104, 15
  store i32 %105, i32* %9, align 4
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* %9, align 4
  %108 = shl i32 %107, 8
  %109 = or i32 %106, %108
  store i32 %109, i32* %5, align 4
  br label %110

110:                                              ; preds = %99, %71
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

declare dso_local %struct.ess_info* @mix_getdevinfo(%struct.snd_mixer*) #1

declare dso_local i32 @ess_setmixer(%struct.ess_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
