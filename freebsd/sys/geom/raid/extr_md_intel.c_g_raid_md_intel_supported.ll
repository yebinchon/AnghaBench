; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_intel.c_g_raid_md_intel_supported.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_intel.c_g_raid_md_intel_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@G_RAID_VOLUME_RLQ_R5LA = common dso_local global i32 0, align 4
@G_RAID_VOLUME_RLQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @g_raid_md_intel_supported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_raid_md_intel_supported(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %67 [
    i32 131, label %11
    i32 130, label %26
    i32 129, label %38
    i32 128, label %50
  ]

11:                                               ; preds = %4
  %12 = load i32, i32* %8, align 4
  %13 = icmp slt i32 %12, 1
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 0, i32* %5, align 4
  br label %77

15:                                               ; preds = %11
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 2
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %8, align 4
  %23 = icmp sgt i32 %22, 6
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %18
  store i32 0, i32* %5, align 4
  br label %77

25:                                               ; preds = %21, %15
  br label %68

26:                                               ; preds = %4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 1
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %77

30:                                               ; preds = %26
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 2
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %77

37:                                               ; preds = %33, %30
  br label %68

38:                                               ; preds = %4
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %39, 2
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 0, i32* %5, align 4
  br label %77

42:                                               ; preds = %38
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 4
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 0, i32* %5, align 4
  br label %77

49:                                               ; preds = %45, %42
  br label %68

50:                                               ; preds = %4
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %51, 3
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 0, i32* %5, align 4
  br label %77

54:                                               ; preds = %50
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %8, align 4
  %59 = icmp sgt i32 %58, 6
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store i32 0, i32* %5, align 4
  br label %77

61:                                               ; preds = %57, %54
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @G_RAID_VOLUME_RLQ_R5LA, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  store i32 0, i32* %5, align 4
  br label %77

66:                                               ; preds = %61
  br label %68

67:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %77

68:                                               ; preds = %66, %49, %37, %25
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 128
  br i1 %70, label %71, label %76

71:                                               ; preds = %68
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @G_RAID_VOLUME_RLQ_NONE, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  store i32 0, i32* %5, align 4
  br label %77

76:                                               ; preds = %71, %68
  store i32 1, i32* %5, align 4
  br label %77

77:                                               ; preds = %76, %75, %67, %65, %60, %53, %48, %41, %36, %29, %24, %14
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
