; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cx/extr_csigma.c_cx_probe_chained_board.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cx/extr_csigma.c_cx_probe_chained_board.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BSR_VAR_MASK = common dso_local global i32 0, align 4
@BSR_OSC_MASK = common dso_local global i32 0, align 4
@BSR_REV_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*)* @cx_probe_chained_board to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx_probe_chained_board(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i64 @BSR(i32 %10)
  %12 = call i32 @inb(i64 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32*, i32** %7, align 8
  store i32 0, i32* %13, align 4
  %14 = load i32*, i32** %6, align 8
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @BSR_VAR_MASK, align 4
  %17 = and i32 %15, %16
  switch i32 %17, label %55 [
    i32 142, label %18
    i32 141, label %20
    i32 134, label %22
    i32 137, label %25
    i32 130, label %27
    i32 136, label %30
    i32 129, label %32
    i32 135, label %35
    i32 128, label %37
    i32 140, label %40
    i32 132, label %42
    i32 139, label %45
    i32 131, label %47
    i32 138, label %50
    i32 133, label %52
  ]

18:                                               ; preds = %3
  %19 = load i32*, i32** %6, align 8
  store i32 1, i32* %19, align 4
  br label %56

20:                                               ; preds = %3
  %21 = load i32*, i32** %7, align 8
  store i32 1, i32* %21, align 4
  br label %56

22:                                               ; preds = %3
  %23 = load i32*, i32** %7, align 8
  store i32 1, i32* %23, align 4
  %24 = load i32*, i32** %6, align 8
  store i32 1, i32* %24, align 4
  br label %56

25:                                               ; preds = %3
  %26 = load i32*, i32** %6, align 8
  store i32 1, i32* %26, align 4
  br label %56

27:                                               ; preds = %3
  %28 = load i32*, i32** %7, align 8
  store i32 1, i32* %28, align 4
  %29 = load i32*, i32** %6, align 8
  store i32 1, i32* %29, align 4
  br label %56

30:                                               ; preds = %3
  %31 = load i32*, i32** %6, align 8
  store i32 1, i32* %31, align 4
  br label %56

32:                                               ; preds = %3
  %33 = load i32*, i32** %7, align 8
  store i32 1, i32* %33, align 4
  %34 = load i32*, i32** %6, align 8
  store i32 1, i32* %34, align 4
  br label %56

35:                                               ; preds = %3
  %36 = load i32*, i32** %6, align 8
  store i32 1, i32* %36, align 4
  br label %56

37:                                               ; preds = %3
  %38 = load i32*, i32** %7, align 8
  store i32 1, i32* %38, align 4
  %39 = load i32*, i32** %6, align 8
  store i32 1, i32* %39, align 4
  br label %56

40:                                               ; preds = %3
  %41 = load i32*, i32** %6, align 8
  store i32 1, i32* %41, align 4
  br label %56

42:                                               ; preds = %3
  %43 = load i32*, i32** %7, align 8
  store i32 1, i32* %43, align 4
  %44 = load i32*, i32** %6, align 8
  store i32 1, i32* %44, align 4
  br label %56

45:                                               ; preds = %3
  %46 = load i32*, i32** %6, align 8
  store i32 1, i32* %46, align 4
  br label %56

47:                                               ; preds = %3
  %48 = load i32*, i32** %7, align 8
  store i32 1, i32* %48, align 4
  %49 = load i32*, i32** %6, align 8
  store i32 1, i32* %49, align 4
  br label %56

50:                                               ; preds = %3
  %51 = load i32*, i32** %6, align 8
  store i32 1, i32* %51, align 4
  br label %56

52:                                               ; preds = %3
  %53 = load i32*, i32** %7, align 8
  store i32 1, i32* %53, align 4
  %54 = load i32*, i32** %6, align 8
  store i32 1, i32* %54, align 4
  br label %56

55:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %85

56:                                               ; preds = %52, %50, %47, %45, %42, %40, %37, %35, %32, %30, %27, %25, %22, %20, %18
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @BSR_OSC_MASK, align 4
  %59 = and i32 %57, %58
  switch i32 %59, label %61 [
    i32 143, label %60
    i32 144, label %60
  ]

60:                                               ; preds = %56, %56
  br label %62

61:                                               ; preds = %56
  store i32 0, i32* %4, align 4
  br label %85

62:                                               ; preds = %60
  store i32 2, i32* %9, align 4
  br label %63

63:                                               ; preds = %81, %62
  %64 = load i32, i32* %9, align 4
  %65 = icmp slt i32 %64, 16
  br i1 %65, label %66, label %84

66:                                               ; preds = %63
  %67 = load i32, i32* %5, align 4
  %68 = call i64 @BSR(i32 %67)
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %68, %70
  %72 = call i32 @inb(i64 %71)
  %73 = load i32, i32* @BSR_REV_MASK, align 4
  %74 = and i32 %72, %73
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @BSR_REV_MASK, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %74, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %66
  store i32 0, i32* %4, align 4
  br label %85

80:                                               ; preds = %66
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %82, 2
  store i32 %83, i32* %9, align 4
  br label %63

84:                                               ; preds = %63
  store i32 1, i32* %4, align 4
  br label %85

85:                                               ; preds = %84, %79, %61, %55
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @inb(i64) #1

declare dso_local i64 @BSR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
