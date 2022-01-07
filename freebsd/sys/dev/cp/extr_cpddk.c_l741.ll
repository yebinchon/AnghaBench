; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cp/extr_cpddk.c_l741.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cp/extr_cpddk.c_l741.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @l741 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l741(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call i32 @i(i32* %4, i32 172, i32 1)
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %11, %1
  %7 = load i32, i32* %3, align 4
  %8 = icmp sle i32 %7, 255
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  br label %22

10:                                               ; preds = %6
  br label %14

11:                                               ; preds = %21
  %12 = load i32, i32* %3, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %3, align 4
  br label %6

14:                                               ; preds = %10
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %15, 172
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  br label %21

18:                                               ; preds = %14
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @i(i32* %19, i32 192, i32 0)
  br label %21

21:                                               ; preds = %18, %17
  br label %11

22:                                               ; preds = %9
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @i(i32* %23, i32 172, i32 0)
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %30, %22
  %26 = load i32, i32* %3, align 4
  %27 = icmp sle i32 %26, 255
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  br label %41

29:                                               ; preds = %25
  br label %33

30:                                               ; preds = %40
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %25

33:                                               ; preds = %29
  %34 = load i32, i32* %3, align 4
  %35 = icmp ne i32 %34, 172
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  br label %40

37:                                               ; preds = %33
  %38 = load i32*, i32** %2, align 8
  %39 = call i32 @i(i32* %38, i32 192, i32 0)
  br label %40

40:                                               ; preds = %37, %36
  br label %30

41:                                               ; preds = %28
  ret void
}

declare dso_local i32 @i(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
