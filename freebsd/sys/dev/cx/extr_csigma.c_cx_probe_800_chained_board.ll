; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cx/extr_csigma.c_cx_probe_800_chained_board.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cx/extr_csigma.c_cx_probe_800_chained_board.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BDET_IB = common dso_local global i8 0, align 1
@BDET_IB_NEG = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cx_probe_800_chained_board to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx_probe_800_chained_board(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @BDET(i32 %7)
  %9 = call zeroext i8 @inb(i32 %8)
  store i8 %9, i8* %5, align 1
  %10 = load i8, i8* %5, align 1
  %11 = zext i8 %10 to i32
  %12 = load i8, i8* @BDET_IB, align 1
  %13 = zext i8 %12 to i32
  %14 = load i8, i8* @BDET_IB_NEG, align 1
  %15 = zext i8 %14 to i32
  %16 = or i32 %13, %15
  %17 = and i32 %11, %16
  %18 = load i8, i8* @BDET_IB, align 1
  %19 = zext i8 %18 to i32
  %20 = icmp ne i32 %17, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %1
  %22 = load i8, i8* %5, align 1
  %23 = zext i8 %22 to i32
  %24 = load i8, i8* @BDET_IB, align 1
  %25 = zext i8 %24 to i32
  %26 = load i8, i8* @BDET_IB_NEG, align 1
  %27 = zext i8 %26 to i32
  %28 = or i32 %25, %27
  %29 = and i32 %23, %28
  %30 = load i8, i8* @BDET_IB_NEG, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp ne i32 %29, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %75

34:                                               ; preds = %21, %1
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %62, %34
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 100
  br i1 %37, label %38, label %65

38:                                               ; preds = %35
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @BDET(i32 %39)
  %41 = call zeroext i8 @inb(i32 %40)
  store i8 %41, i8* %4, align 1
  %42 = load i8, i8* %4, align 1
  %43 = zext i8 %42 to i32
  %44 = load i8, i8* %5, align 1
  %45 = zext i8 %44 to i32
  %46 = xor i32 %43, %45
  %47 = load i8, i8* @BDET_IB, align 1
  %48 = zext i8 %47 to i32
  %49 = load i8, i8* @BDET_IB_NEG, align 1
  %50 = zext i8 %49 to i32
  %51 = or i32 %48, %50
  %52 = and i32 %46, %51
  %53 = load i8, i8* @BDET_IB, align 1
  %54 = zext i8 %53 to i32
  %55 = load i8, i8* @BDET_IB_NEG, align 1
  %56 = zext i8 %55 to i32
  %57 = or i32 %54, %56
  %58 = icmp ne i32 %52, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %75

60:                                               ; preds = %38
  %61 = load i8, i8* %4, align 1
  store i8 %61, i8* %5, align 1
  br label %62

62:                                               ; preds = %60
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %35

65:                                               ; preds = %35
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @BCR0(i32 %66)
  %68 = call i32 @outb(i32 %67, i32 0)
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @BCR1(i32 %69)
  %71 = call i32 @outb(i32 %70, i32 0)
  %72 = load i32, i32* %3, align 4
  %73 = call i32 @BCR2(i32 %72)
  %74 = call i32 @outb(i32 %73, i32 0)
  store i32 1, i32* %2, align 4
  br label %75

75:                                               ; preds = %65, %59, %33
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local zeroext i8 @inb(i32) #1

declare dso_local i32 @BDET(i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @BCR0(i32) #1

declare dso_local i32 @BCR1(i32) #1

declare dso_local i32 @BCR2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
