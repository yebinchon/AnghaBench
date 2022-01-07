; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/extr_board.c_nlm_board_get_phyaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/extr_board.c_nlm_board_get_phyaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32*)* @nlm_board_get_phyaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nlm_board_get_phyaddr(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %59 [
    i32 0, label %8
    i32 1, label %19
    i32 2, label %30
    i32 3, label %41
    i32 4, label %52
  ]

8:                                                ; preds = %3
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %18 [
    i32 0, label %10
    i32 1, label %12
    i32 2, label %14
    i32 3, label %16
  ]

10:                                               ; preds = %8
  %11 = load i32*, i32** %6, align 8
  store i32 4, i32* %11, align 4
  br label %18

12:                                               ; preds = %8
  %13 = load i32*, i32** %6, align 8
  store i32 7, i32* %13, align 4
  br label %18

14:                                               ; preds = %8
  %15 = load i32*, i32** %6, align 8
  store i32 6, i32* %15, align 4
  br label %18

16:                                               ; preds = %8
  %17 = load i32*, i32** %6, align 8
  store i32 5, i32* %17, align 4
  br label %18

18:                                               ; preds = %8, %16, %14, %12, %10
  br label %59

19:                                               ; preds = %3
  %20 = load i32, i32* %5, align 4
  switch i32 %20, label %29 [
    i32 0, label %21
    i32 1, label %23
    i32 2, label %25
    i32 3, label %27
  ]

21:                                               ; preds = %19
  %22 = load i32*, i32** %6, align 8
  store i32 8, i32* %22, align 4
  br label %29

23:                                               ; preds = %19
  %24 = load i32*, i32** %6, align 8
  store i32 11, i32* %24, align 4
  br label %29

25:                                               ; preds = %19
  %26 = load i32*, i32** %6, align 8
  store i32 10, i32* %26, align 4
  br label %29

27:                                               ; preds = %19
  %28 = load i32*, i32** %6, align 8
  store i32 9, i32* %28, align 4
  br label %29

29:                                               ; preds = %19, %27, %25, %23, %21
  br label %59

30:                                               ; preds = %3
  %31 = load i32, i32* %5, align 4
  switch i32 %31, label %40 [
    i32 0, label %32
    i32 1, label %34
    i32 2, label %36
    i32 3, label %38
  ]

32:                                               ; preds = %30
  %33 = load i32*, i32** %6, align 8
  store i32 0, i32* %33, align 4
  br label %40

34:                                               ; preds = %30
  %35 = load i32*, i32** %6, align 8
  store i32 3, i32* %35, align 4
  br label %40

36:                                               ; preds = %30
  %37 = load i32*, i32** %6, align 8
  store i32 2, i32* %37, align 4
  br label %40

38:                                               ; preds = %30
  %39 = load i32*, i32** %6, align 8
  store i32 1, i32* %39, align 4
  br label %40

40:                                               ; preds = %30, %38, %36, %34, %32
  br label %59

41:                                               ; preds = %3
  %42 = load i32, i32* %5, align 4
  switch i32 %42, label %51 [
    i32 0, label %43
    i32 1, label %45
    i32 2, label %47
    i32 3, label %49
  ]

43:                                               ; preds = %41
  %44 = load i32*, i32** %6, align 8
  store i32 12, i32* %44, align 4
  br label %51

45:                                               ; preds = %41
  %46 = load i32*, i32** %6, align 8
  store i32 15, i32* %46, align 4
  br label %51

47:                                               ; preds = %41
  %48 = load i32*, i32** %6, align 8
  store i32 14, i32* %48, align 4
  br label %51

49:                                               ; preds = %41
  %50 = load i32*, i32** %6, align 8
  store i32 13, i32* %50, align 4
  br label %51

51:                                               ; preds = %41, %49, %47, %45, %43
  br label %59

52:                                               ; preds = %3
  %53 = load i32, i32* %5, align 4
  switch i32 %53, label %58 [
    i32 0, label %54
    i32 1, label %56
  ]

54:                                               ; preds = %52
  %55 = load i32*, i32** %6, align 8
  store i32 16, i32* %55, align 4
  br label %58

56:                                               ; preds = %52
  %57 = load i32*, i32** %6, align 8
  store i32 17, i32* %57, align 4
  br label %58

58:                                               ; preds = %52, %56, %54
  br label %59

59:                                               ; preds = %3, %58, %51, %40, %29, %18
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
