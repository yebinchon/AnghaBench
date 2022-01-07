; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_nvidia.c_g_raid_md_nvidia_supported.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_nvidia.c_g_raid_md_nvidia_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@G_RAID_VOLUME_RLQ_R5LA = common dso_local global i32 0, align 4
@G_RAID_VOLUME_RLQ_R5LS = common dso_local global i32 0, align 4
@G_RAID_VOLUME_RLQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @g_raid_md_nvidia_supported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_raid_md_nvidia_supported(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  switch i32 %10, label %79 [
    i32 132, label %11
    i32 131, label %26
    i32 130, label %38
    i32 128, label %55
    i32 133, label %60
    i32 129, label %65
  ]

11:                                               ; preds = %4
  %12 = load i32, i32* %8, align 4
  %13 = icmp slt i32 %12, 1
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 0, i32* %5, align 4
  br label %89

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
  br label %89

25:                                               ; preds = %21, %15
  br label %80

26:                                               ; preds = %4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 1
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %89

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
  br label %89

37:                                               ; preds = %33, %30
  br label %80

38:                                               ; preds = %4
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %39, 2
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 0, i32* %5, align 4
  br label %89

42:                                               ; preds = %38
  %43 = load i32, i32* %8, align 4
  %44 = srem i32 %43, 2
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i32 0, i32* %5, align 4
  br label %89

47:                                               ; preds = %42
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %51, 4
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 0, i32* %5, align 4
  br label %89

54:                                               ; preds = %50, %47
  br label %80

55:                                               ; preds = %4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 1
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i32 0, i32* %5, align 4
  br label %89

59:                                               ; preds = %55
  br label %80

60:                                               ; preds = %4
  %61 = load i32, i32* %8, align 4
  %62 = icmp slt i32 %61, 2
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  store i32 0, i32* %5, align 4
  br label %89

64:                                               ; preds = %60
  br label %80

65:                                               ; preds = %4
  %66 = load i32, i32* %8, align 4
  %67 = icmp slt i32 %66, 3
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store i32 0, i32* %5, align 4
  br label %89

69:                                               ; preds = %65
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @G_RAID_VOLUME_RLQ_R5LA, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %69
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @G_RAID_VOLUME_RLQ_R5LS, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  store i32 0, i32* %5, align 4
  br label %89

78:                                               ; preds = %73, %69
  br label %80

79:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %89

80:                                               ; preds = %78, %64, %59, %54, %37, %25
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 129
  br i1 %82, label %83, label %88

83:                                               ; preds = %80
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @G_RAID_VOLUME_RLQ_NONE, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  store i32 0, i32* %5, align 4
  br label %89

88:                                               ; preds = %83, %80
  store i32 1, i32* %5, align 4
  br label %89

89:                                               ; preds = %88, %87, %79, %77, %68, %63, %58, %53, %46, %41, %36, %29, %24, %14
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
