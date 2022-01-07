; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_sii.c_g_raid_md_sii_supported.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_sii.c_g_raid_md_sii_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@G_RAID_VOLUME_RLQ_R5LS = common dso_local global i32 0, align 4
@G_RAID_VOLUME_RLQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @g_raid_md_sii_supported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_raid_md_sii_supported(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  br label %89

13:                                               ; preds = %4
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %79 [
    i32 132, label %15
    i32 131, label %30
    i32 130, label %42
    i32 128, label %59
    i32 133, label %64
    i32 129, label %69
  ]

15:                                               ; preds = %13
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  br label %89

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
  br label %89

29:                                               ; preds = %25, %19
  br label %80

30:                                               ; preds = %13
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 1
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %89

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
  br label %89

41:                                               ; preds = %37, %34
  br label %80

42:                                               ; preds = %13
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %43, 2
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 0, i32* %5, align 4
  br label %89

46:                                               ; preds = %42
  %47 = load i32, i32* %8, align 4
  %48 = srem i32 %47, 2
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 0, i32* %5, align 4
  br label %89

51:                                               ; preds = %46
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %8, align 4
  %56 = icmp slt i32 %55, 4
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store i32 0, i32* %5, align 4
  br label %89

58:                                               ; preds = %54, %51
  br label %80

59:                                               ; preds = %13
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 1
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i32 0, i32* %5, align 4
  br label %89

63:                                               ; preds = %59
  br label %80

64:                                               ; preds = %13
  %65 = load i32, i32* %8, align 4
  %66 = icmp slt i32 %65, 2
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  store i32 0, i32* %5, align 4
  br label %89

68:                                               ; preds = %64
  br label %80

69:                                               ; preds = %13
  %70 = load i32, i32* %8, align 4
  %71 = icmp slt i32 %70, 3
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  store i32 0, i32* %5, align 4
  br label %89

73:                                               ; preds = %69
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @G_RAID_VOLUME_RLQ_R5LS, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  store i32 0, i32* %5, align 4
  br label %89

78:                                               ; preds = %73
  br label %80

79:                                               ; preds = %13
  store i32 0, i32* %5, align 4
  br label %89

80:                                               ; preds = %78, %68, %63, %58, %41, %29
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

89:                                               ; preds = %88, %87, %79, %77, %72, %67, %62, %57, %50, %45, %40, %33, %28, %18, %12
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
