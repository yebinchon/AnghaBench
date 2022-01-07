; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cx/extr_csigma.c_cx_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cx/extr_csigma.c_cx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BSR_NOCHAIN = common dso_local global i32 0, align 4
@BSR2X_VAR_MASK = common dso_local global i32 0, align 4
@CRONYX_22 = common dso_local global i32 0, align 4
@CRONYX_24 = common dso_local global i32 0, align 4
@BSR2X_OSC_33 = common dso_local global i32 0, align 4
@BCR0_NORESET = common dso_local global i32 0, align 4
@REVCL31_MIN = common dso_local global i32 0, align 4
@REVCL31_MAX = common dso_local global i32 0, align 4
@BSR_VAR_MASK = common dso_local global i32 0, align 4
@BSR_OSC_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx_init(i32* %0, i32 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %17 = load i64, i64* %8, align 8
  %18 = call i32 @BSR(i64 %17)
  %19 = call i32 @inb(i32 %18)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* @BSR_NOCHAIN, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %13, align 4
  %26 = load i64, i64* %8, align 8
  %27 = call i64 @cx_probe_800_chained_board(i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %5
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i64, i64* %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %13, align 4
  %36 = call i32 @cx_init_800(i32* %30, i32 %31, i64 %32, i32 %33, i32 %34, i32 %35)
  br label %137

37:                                               ; preds = %5
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* @BSR2X_VAR_MASK, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* @CRONYX_22, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* @BSR2X_VAR_MASK, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* @CRONYX_24, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %43, %37
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load i64, i64* %8, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* @BSR2X_VAR_MASK, align 4
  %57 = and i32 %55, %56
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* @BSR2X_OSC_33, align 4
  %60 = and i32 %58, %59
  %61 = call i32 @cx_init_2x(i32* %50, i32 %51, i64 %52, i32 %53, i32 %54, i32 %57, i32 %60)
  br label %137

62:                                               ; preds = %43
  %63 = load i64, i64* %8, align 8
  %64 = call i32 @BCR0(i64 %63)
  %65 = load i32, i32* @BCR0_NORESET, align 4
  %66 = call i32 @outb(i32 %64, i32 %65)
  %67 = load i32, i32* %13, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %62
  %70 = load i64, i64* %8, align 8
  %71 = add nsw i64 %70, 16
  %72 = call i32 @BCR0(i64 %71)
  %73 = load i32, i32* @BCR0_NORESET, align 4
  %74 = call i32 @outb(i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %69, %62
  %76 = load i64, i64* %8, align 8
  %77 = load i32, i32* %12, align 4
  %78 = call i32 @cx_chip_revision(i64 %76, i32 %77)
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* @REVCL31_MIN, align 4
  %81 = icmp sge i32 %79, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %75
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* @REVCL31_MAX, align 4
  %85 = icmp sle i32 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  store i32 1, i32* %14, align 4
  br label %87

87:                                               ; preds = %86, %82, %75
  %88 = load i32, i32* %13, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %112

90:                                               ; preds = %87
  %91 = load i64, i64* %8, align 8
  %92 = add nsw i64 %91, 16
  %93 = call i32 @BSR(i64 %92)
  %94 = call i32 @inb(i32 %93)
  store i32 %94, i32* %15, align 4
  %95 = load i64, i64* %8, align 8
  %96 = add nsw i64 %95, 16
  %97 = load i32, i32* %15, align 4
  %98 = call i32 @cx_chip_revision(i64 %96, i32 %97)
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* @REVCL31_MIN, align 4
  %101 = icmp sge i32 %99, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %90
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* @REVCL31_MAX, align 4
  %105 = icmp sle i32 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  store i32 1, i32* %16, align 4
  br label %107

107:                                              ; preds = %106, %102, %90
  %108 = load i64, i64* %8, align 8
  %109 = add nsw i64 %108, 16
  %110 = call i32 @BCR0(i64 %109)
  %111 = call i32 @outb(i32 %110, i32 0)
  br label %112

112:                                              ; preds = %107, %87
  %113 = load i64, i64* %8, align 8
  %114 = call i32 @BCR0(i64 %113)
  %115 = call i32 @outb(i32 %114, i32 0)
  %116 = load i32*, i32** %6, align 8
  %117 = load i32, i32* %7, align 4
  %118 = load i64, i64* %8, align 8
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* %10, align 4
  %121 = load i32, i32* %13, align 4
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* @BSR_VAR_MASK, align 4
  %124 = and i32 %122, %123
  %125 = load i32, i32* %12, align 4
  %126 = load i32, i32* @BSR_OSC_MASK, align 4
  %127 = and i32 %125, %126
  %128 = load i32, i32* %14, align 4
  %129 = load i32, i32* %15, align 4
  %130 = load i32, i32* @BSR_VAR_MASK, align 4
  %131 = and i32 %129, %130
  %132 = load i32, i32* %15, align 4
  %133 = load i32, i32* @BSR_OSC_MASK, align 4
  %134 = and i32 %132, %133
  %135 = load i32, i32* %16, align 4
  %136 = call i32 @cx_init_board(i32* %116, i32 %117, i64 %118, i32 %119, i32 %120, i32 %121, i32 %124, i32 %127, i32 %128, i32 %131, i32 %134, i32 %135)
  br label %137

137:                                              ; preds = %112, %49, %29
  ret void
}

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @BSR(i64) #1

declare dso_local i64 @cx_probe_800_chained_board(i64) #1

declare dso_local i32 @cx_init_800(i32*, i32, i64, i32, i32, i32) #1

declare dso_local i32 @cx_init_2x(i32*, i32, i64, i32, i32, i32, i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @BCR0(i64) #1

declare dso_local i32 @cx_chip_revision(i64, i32) #1

declare dso_local i32 @cx_init_board(i32*, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
