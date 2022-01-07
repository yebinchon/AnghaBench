; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_promise.c_g_raid_md_promise_supported.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_promise.c_g_raid_md_promise_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PROMISE_MAX_DISKS = common dso_local global i32 0, align 4
@G_RAID_VOLUME_RLQ_R5LA = common dso_local global i32 0, align 4
@G_RAID_VOLUME_RLQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @g_raid_md_promise_supported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_raid_md_promise_supported(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %11 = load i32, i32* @PROMISE_MAX_DISKS, align 4
  %12 = icmp sgt i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %87

14:                                               ; preds = %4
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %77 [
    i32 132, label %16
    i32 131, label %28
    i32 130, label %40
    i32 128, label %57
    i32 133, label %62
    i32 129, label %67
  ]

16:                                               ; preds = %14
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 1
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %87

20:                                               ; preds = %16
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 2
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %87

27:                                               ; preds = %23, %20
  br label %78

28:                                               ; preds = %14
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %29, 1
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %87

32:                                               ; preds = %28
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 2
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %87

39:                                               ; preds = %35, %32
  br label %78

40:                                               ; preds = %14
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %41, 2
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 0, i32* %5, align 4
  br label %87

44:                                               ; preds = %40
  %45 = load i32, i32* %8, align 4
  %46 = srem i32 %45, 2
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i32 0, i32* %5, align 4
  br label %87

49:                                               ; preds = %44
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 4
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i32 0, i32* %5, align 4
  br label %87

56:                                               ; preds = %52, %49
  br label %78

57:                                               ; preds = %14
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 1
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store i32 0, i32* %5, align 4
  br label %87

61:                                               ; preds = %57
  br label %78

62:                                               ; preds = %14
  %63 = load i32, i32* %8, align 4
  %64 = icmp slt i32 %63, 2
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i32 0, i32* %5, align 4
  br label %87

66:                                               ; preds = %62
  br label %78

67:                                               ; preds = %14
  %68 = load i32, i32* %8, align 4
  %69 = icmp slt i32 %68, 3
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  store i32 0, i32* %5, align 4
  br label %87

71:                                               ; preds = %67
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @G_RAID_VOLUME_RLQ_R5LA, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  store i32 0, i32* %5, align 4
  br label %87

76:                                               ; preds = %71
  br label %78

77:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %87

78:                                               ; preds = %76, %66, %61, %56, %39, %27
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 129
  br i1 %80, label %81, label %86

81:                                               ; preds = %78
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @G_RAID_VOLUME_RLQ_NONE, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  store i32 0, i32* %5, align 4
  br label %87

86:                                               ; preds = %81, %78
  store i32 1, i32* %5, align 4
  br label %87

87:                                               ; preds = %86, %85, %77, %75, %70, %65, %60, %55, %48, %43, %38, %31, %26, %19, %13
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
