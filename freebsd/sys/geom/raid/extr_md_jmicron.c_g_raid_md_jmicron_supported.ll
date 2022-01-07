; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_jmicron.c_g_raid_md_jmicron_supported.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_jmicron.c_g_raid_md_jmicron_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@G_RAID_VOLUME_RLQ_R5LA = common dso_local global i32 0, align 4
@G_RAID_VOLUME_RLQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @g_raid_md_jmicron_supported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_raid_md_jmicron_supported(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %8, align 4
  %11 = icmp sgt i32 %10, 8
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %92

13:                                               ; preds = %4
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %82 [
    i32 132, label %15
    i32 131, label %30
    i32 130, label %42
    i32 128, label %54
    i32 133, label %63
    i32 129, label %68
  ]

15:                                               ; preds = %13
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  br label %92

19:                                               ; preds = %15
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 2
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %8, align 4
  %27 = icmp sgt i32 %26, 6
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %22
  store i32 0, i32* %5, align 4
  br label %92

29:                                               ; preds = %25, %19
  br label %83

30:                                               ; preds = %13
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 1
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %92

34:                                               ; preds = %30
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 2
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 0, i32* %5, align 4
  br label %92

41:                                               ; preds = %37, %34
  br label %83

42:                                               ; preds = %13
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %43, 2
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 0, i32* %5, align 4
  br label %92

46:                                               ; preds = %42
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 4
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 0, i32* %5, align 4
  br label %92

53:                                               ; preds = %49, %46
  br label %83

54:                                               ; preds = %13
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 1
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store i32 0, i32* %5, align 4
  br label %92

58:                                               ; preds = %54
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %58
  store i32 0, i32* %5, align 4
  br label %92

62:                                               ; preds = %58
  br label %83

63:                                               ; preds = %13
  %64 = load i32, i32* %8, align 4
  %65 = icmp slt i32 %64, 2
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i32 0, i32* %5, align 4
  br label %92

67:                                               ; preds = %63
  br label %83

68:                                               ; preds = %13
  %69 = load i32, i32* %8, align 4
  %70 = icmp slt i32 %69, 3
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  store i32 0, i32* %5, align 4
  br label %92

72:                                               ; preds = %68
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @G_RAID_VOLUME_RLQ_R5LA, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  store i32 0, i32* %5, align 4
  br label %92

77:                                               ; preds = %72
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %77
  store i32 0, i32* %5, align 4
  br label %92

81:                                               ; preds = %77
  br label %83

82:                                               ; preds = %13
  store i32 0, i32* %5, align 4
  br label %92

83:                                               ; preds = %81, %67, %62, %53, %41, %29
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %84, 129
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @G_RAID_VOLUME_RLQ_NONE, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  store i32 0, i32* %5, align 4
  br label %92

91:                                               ; preds = %86, %83
  store i32 1, i32* %5, align 4
  br label %92

92:                                               ; preds = %91, %90, %82, %80, %76, %71, %66, %61, %57, %52, %45, %40, %33, %28, %18, %12
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
