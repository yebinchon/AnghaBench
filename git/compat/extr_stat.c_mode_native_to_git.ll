; ModuleID = '/home/carl/AnghaBench/git/compat/extr_stat.c_mode_native_to_git.c'
source_filename = "/home/carl/AnghaBench/git/compat/extr_stat.c_mode_native_to_git.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mode_native_to_git to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mode_native_to_git(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = and i32 %5, 4095
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i64 @S_ISREG(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  %12 = or i32 32768, %11
  store i32 %12, i32* %2, align 4
  br label %57

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = call i64 @S_ISDIR(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i32, i32* %4, align 4
  %19 = or i32 16384, %18
  store i32 %19, i32* %2, align 4
  br label %57

20:                                               ; preds = %13
  %21 = load i32, i32* %3, align 4
  %22 = call i64 @S_ISLNK(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* %4, align 4
  %26 = or i32 40960, %25
  store i32 %26, i32* %2, align 4
  br label %57

27:                                               ; preds = %20
  %28 = load i32, i32* %3, align 4
  %29 = call i64 @S_ISBLK(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* %4, align 4
  %33 = or i32 24576, %32
  store i32 %33, i32* %2, align 4
  br label %57

34:                                               ; preds = %27
  %35 = load i32, i32* %3, align 4
  %36 = call i64 @S_ISCHR(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* %4, align 4
  %40 = or i32 8192, %39
  store i32 %40, i32* %2, align 4
  br label %57

41:                                               ; preds = %34
  %42 = load i32, i32* %3, align 4
  %43 = call i64 @S_ISFIFO(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32, i32* %4, align 4
  %47 = or i32 4096, %46
  store i32 %47, i32* %2, align 4
  br label %57

48:                                               ; preds = %41
  %49 = load i32, i32* %3, align 4
  %50 = call i64 @S_ISSOCK(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i32, i32* %4, align 4
  %54 = or i32 49152, %53
  store i32 %54, i32* %2, align 4
  br label %57

55:                                               ; preds = %48
  %56 = load i32, i32* %4, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %55, %52, %45, %38, %31, %24, %17, %10
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i64 @S_ISFIFO(i32) #1

declare dso_local i64 @S_ISSOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
