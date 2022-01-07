; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cy/extr_cy.c_cy_units.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cy/extr_cy.c_cy_units.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CY_MAX_CD1400s = common dso_local global i32 0, align 4
@cy_chip_offset = common dso_local global i32* null, align 8
@CD1400_CCR = common dso_local global i32 0, align 4
@CD1400_GFRCR = common dso_local global i32 0, align 4
@CD1400_CCR_CMDRESET = common dso_local global i32 0, align 4
@CD1400_CCR_FULLRESET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cy_units(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %74, %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @CY_MAX_CD1400s, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %77

13:                                               ; preds = %9
  %14 = load i64, i64* %3, align 8
  %15 = load i32*, i32** @cy_chip_offset, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %4, align 4
  %21 = shl i32 %19, %20
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %14, %22
  store i64 %23, i64* %8, align 8
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %36, %13
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 10
  br i1 %26, label %27, label %39

27:                                               ; preds = %24
  %28 = call i32 @DELAY(i32 50)
  %29 = load i64, i64* %8, align 8
  %30 = load i32, i32* @CD1400_CCR, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @cd_inb(i64 %29, i32 %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  br label %39

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  br label %24

39:                                               ; preds = %34, %24
  %40 = load i64, i64* %8, align 8
  %41 = load i32, i32* @CD1400_GFRCR, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @cd_outb(i64 %40, i32 %41, i32 %42, i32 0)
  %44 = load i64, i64* %8, align 8
  %45 = load i32, i32* @CD1400_CCR, align 4
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @CD1400_CCR_CMDRESET, align 4
  %48 = load i32, i32* @CD1400_CCR_FULLRESET, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @cd_outb(i64 %44, i32 %45, i32 %46, i32 %49)
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %51

51:                                               ; preds = %65, %39
  %52 = load i32, i32* %7, align 4
  %53 = icmp slt i32 %52, 200
  br i1 %53, label %54, label %68

54:                                               ; preds = %51
  %55 = call i32 @DELAY(i32 50)
  %56 = load i64, i64* %8, align 8
  %57 = load i32, i32* @CD1400_GFRCR, align 4
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @cd_inb(i64 %56, i32 %57, i32 %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = and i32 %60, 240
  %62 = icmp eq i32 %61, 64
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  br label %68

64:                                               ; preds = %54
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %51

68:                                               ; preds = %63, %51
  %69 = load i32, i32* %6, align 4
  %70 = and i32 %69, 240
  %71 = icmp ne i32 %70, 64
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  br label %77

73:                                               ; preds = %68
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %5, align 4
  br label %9

77:                                               ; preds = %72, %9
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @cd_inb(i64, i32, i32) #1

declare dso_local i32 @cd_outb(i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
