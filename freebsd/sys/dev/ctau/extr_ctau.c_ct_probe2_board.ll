; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ctau/extr_ctau.c_ct_probe2_board.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ctau/extr_ctau.c_ct_probe2_board.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@porttab = common dso_local global i32 0, align 4
@BSR3_IB = common dso_local global i8 0, align 1
@BSR3_IB_NEG = common dso_local global i8 0, align 1
@BSR3_ZERO = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ct_probe2_board to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ct_probe2_board(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @porttab, align 4
  %9 = call i32 @valid(i32 %7, i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %81

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @BSR3(i32 %13)
  %15 = call zeroext i8 @inb(i32 %14)
  store i8 %15, i8* %5, align 1
  %16 = load i8, i8* %5, align 1
  %17 = zext i8 %16 to i32
  %18 = load i8, i8* @BSR3_IB, align 1
  %19 = zext i8 %18 to i32
  %20 = load i8, i8* @BSR3_IB_NEG, align 1
  %21 = zext i8 %20 to i32
  %22 = or i32 %19, %21
  %23 = and i32 %17, %22
  %24 = load i8, i8* @BSR3_IB, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp ne i32 %23, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %12
  %28 = load i8, i8* %5, align 1
  %29 = zext i8 %28 to i32
  %30 = load i8, i8* @BSR3_IB, align 1
  %31 = zext i8 %30 to i32
  %32 = load i8, i8* @BSR3_IB_NEG, align 1
  %33 = zext i8 %32 to i32
  %34 = or i32 %31, %33
  %35 = and i32 %29, %34
  %36 = load i8, i8* @BSR3_IB_NEG, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp ne i32 %35, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %81

40:                                               ; preds = %27, %12
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %74, %40
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 100
  br i1 %43, label %44, label %77

44:                                               ; preds = %41
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @BSR3(i32 %45)
  %47 = call zeroext i8 @inb(i32 %46)
  store i8 %47, i8* %4, align 1
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @BSR3(i32 %48)
  %50 = call zeroext i8 @inb(i32 %49)
  store i8 %50, i8* %4, align 1
  %51 = load i8, i8* %4, align 1
  %52 = zext i8 %51 to i32
  %53 = load i8, i8* %5, align 1
  %54 = zext i8 %53 to i32
  %55 = xor i32 %52, %54
  %56 = load i8, i8* @BSR3_IB, align 1
  %57 = zext i8 %56 to i32
  %58 = load i8, i8* @BSR3_IB_NEG, align 1
  %59 = zext i8 %58 to i32
  %60 = or i32 %57, %59
  %61 = load i8, i8* @BSR3_ZERO, align 1
  %62 = zext i8 %61 to i32
  %63 = or i32 %60, %62
  %64 = and i32 %55, %63
  %65 = load i8, i8* @BSR3_IB, align 1
  %66 = zext i8 %65 to i32
  %67 = load i8, i8* @BSR3_IB_NEG, align 1
  %68 = zext i8 %67 to i32
  %69 = or i32 %66, %68
  %70 = icmp ne i32 %64, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %81

72:                                               ; preds = %44
  %73 = load i8, i8* %4, align 1
  store i8 %73, i8* %5, align 1
  br label %74

74:                                               ; preds = %72
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %6, align 4
  br label %41

77:                                               ; preds = %41
  %78 = load i32, i32* %3, align 4
  %79 = call i32 @BCR0(i32 %78)
  %80 = call i32 @outb(i32 %79, i32 0)
  store i32 1, i32* %2, align 4
  br label %81

81:                                               ; preds = %77, %71, %39, %11
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @valid(i32, i32) #1

declare dso_local zeroext i8 @inb(i32) #1

declare dso_local i32 @BSR3(i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @BCR0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
