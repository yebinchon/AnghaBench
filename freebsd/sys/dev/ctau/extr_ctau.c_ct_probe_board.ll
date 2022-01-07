; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ctau/extr_ctau.c_ct_probe_board.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ctau/extr_ctau.c_ct_probe_board.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@porttab = common dso_local global i32 0, align 4
@irqtab = common dso_local global i32 0, align 4
@dmatab = common dso_local global i32 0, align 4
@BSR3_IB = common dso_local global i8 0, align 1
@BSR3_IB_NEG = common dso_local global i8 0, align 1
@BSR3_ZERO = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ct_probe_board(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @porttab, align 4
  %13 = call i32 @valid(i32 %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %102

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @irqtab, align 4
  %22 = call i32 @valid(i32 %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %102

25:                                               ; preds = %19, %16
  %26 = load i32, i32* %7, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @dmatab, align 4
  %31 = call i32 @valid(i32 %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %102

34:                                               ; preds = %28, %25
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @BSR3(i32 %35)
  %37 = call zeroext i8 @inb(i32 %36)
  store i8 %37, i8* %9, align 1
  %38 = load i8, i8* %9, align 1
  %39 = zext i8 %38 to i32
  %40 = load i8, i8* @BSR3_IB, align 1
  %41 = zext i8 %40 to i32
  %42 = load i8, i8* @BSR3_IB_NEG, align 1
  %43 = zext i8 %42 to i32
  %44 = or i32 %41, %43
  %45 = and i32 %39, %44
  %46 = load i8, i8* @BSR3_IB, align 1
  %47 = zext i8 %46 to i32
  %48 = icmp ne i32 %45, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %34
  %50 = load i8, i8* %9, align 1
  %51 = zext i8 %50 to i32
  %52 = load i8, i8* @BSR3_IB, align 1
  %53 = zext i8 %52 to i32
  %54 = load i8, i8* @BSR3_IB_NEG, align 1
  %55 = zext i8 %54 to i32
  %56 = or i32 %53, %55
  %57 = and i32 %51, %56
  %58 = load i8, i8* @BSR3_IB_NEG, align 1
  %59 = zext i8 %58 to i32
  %60 = icmp ne i32 %57, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %102

62:                                               ; preds = %49, %34
  store i32 0, i32* %10, align 4
  br label %63

63:                                               ; preds = %95, %62
  %64 = load i32, i32* %10, align 4
  %65 = icmp slt i32 %64, 100
  br i1 %65, label %66, label %98

66:                                               ; preds = %63
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @BSR3(i32 %67)
  %69 = call zeroext i8 @inb(i32 %68)
  store i8 %69, i8* %8, align 1
  %70 = load i8, i8* %8, align 1
  %71 = zext i8 %70 to i32
  %72 = load i8, i8* %9, align 1
  %73 = zext i8 %72 to i32
  %74 = xor i32 %71, %73
  %75 = load i8, i8* @BSR3_IB, align 1
  %76 = zext i8 %75 to i32
  %77 = load i8, i8* @BSR3_IB_NEG, align 1
  %78 = zext i8 %77 to i32
  %79 = or i32 %76, %78
  %80 = load i8, i8* @BSR3_ZERO, align 1
  %81 = zext i8 %80 to i32
  %82 = or i32 %79, %81
  %83 = and i32 %74, %82
  %84 = load i8, i8* @BSR3_IB, align 1
  %85 = zext i8 %84 to i32
  %86 = load i8, i8* @BSR3_IB_NEG, align 1
  %87 = zext i8 %86 to i32
  %88 = or i32 %85, %87
  %89 = icmp ne i32 %83, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %66
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @ct_probe2_board(i32 %91)
  store i32 %92, i32* %4, align 4
  br label %102

93:                                               ; preds = %66
  %94 = load i8, i8* %8, align 1
  store i8 %94, i8* %9, align 1
  br label %95

95:                                               ; preds = %93
  %96 = load i32, i32* %10, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %10, align 4
  br label %63

98:                                               ; preds = %63
  %99 = load i32, i32* %5, align 4
  %100 = call i32 @BCR0(i32 %99)
  %101 = call i32 @outb(i32 %100, i32 0)
  store i32 1, i32* %4, align 4
  br label %102

102:                                              ; preds = %98, %90, %61, %33, %24, %15
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i32 @valid(i32, i32) #1

declare dso_local zeroext i8 @inb(i32) #1

declare dso_local i32 @BSR3(i32) #1

declare dso_local i32 @ct_probe2_board(i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @BCR0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
