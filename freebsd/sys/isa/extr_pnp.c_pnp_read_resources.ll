; ModuleID = '/home/carl/AnghaBench/freebsd/sys/isa/extr_pnp.c_pnp_read_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/isa/extr_pnp.c_pnp_read_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PNP_TAG_END = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32*, i32*)* @pnp_read_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnp_read_resources(i32** %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32** %0, i32*** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load i32**, i32*** %4, align 8
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %7, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %17

17:                                               ; preds = %75, %3
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br i1 %20, label %21, label %76

21:                                               ; preds = %17
  %22 = call i32 @pnp_read_bytes(i32 1, i32** %7, i32* %8, i32* %9)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %77

26:                                               ; preds = %21
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = call i64 @PNP_RES_TYPE(i32 %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %26
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @PNP_SRES_LEN(i32 %37)
  %39 = call i32 @pnp_read_bytes(i32 %38, i32** %7, i32* %8, i32* %9)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %77

43:                                               ; preds = %36
  %44 = load i32, i32* %12, align 4
  %45 = call i64 @PNP_SRES_NUM(i32 %44)
  %46 = load i64, i64* @PNP_TAG_END, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 1, i32* %11, align 4
  br label %49

49:                                               ; preds = %48, %43
  br label %75

50:                                               ; preds = %26
  %51 = call i32 @pnp_read_bytes(i32 2, i32** %7, i32* %8, i32* %9)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %77

55:                                               ; preds = %50
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sub nsw i32 %57, 2
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %7, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = shl i32 %67, 8
  %69 = add nsw i32 %61, %68
  %70 = call i32 @pnp_read_bytes(i32 %69, i32** %7, i32* %8, i32* %9)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %55
  br label %77

74:                                               ; preds = %55
  br label %75

75:                                               ; preds = %74, %49
  br label %17

76:                                               ; preds = %17
  br label %77

77:                                               ; preds = %76, %73, %54, %42, %25
  %78 = load i32*, i32** %7, align 8
  %79 = load i32**, i32*** %4, align 8
  store i32* %78, i32** %79, align 8
  %80 = load i32, i32* %8, align 4
  %81 = load i32*, i32** %5, align 8
  store i32 %80, i32* %81, align 4
  %82 = load i32, i32* %9, align 4
  %83 = load i32*, i32** %6, align 8
  store i32 %82, i32* %83, align 4
  %84 = load i32, i32* %10, align 4
  ret i32 %84
}

declare dso_local i32 @pnp_read_bytes(i32, i32**, i32*, i32*) #1

declare dso_local i64 @PNP_RES_TYPE(i32) #1

declare dso_local i32 @PNP_SRES_LEN(i32) #1

declare dso_local i64 @PNP_SRES_NUM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
