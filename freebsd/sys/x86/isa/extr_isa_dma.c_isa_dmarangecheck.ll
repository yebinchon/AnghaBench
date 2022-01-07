; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/isa/extr_isa_dma.c_isa_dmarangecheck.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/isa/extr_isa_dma.c_isa_dmarangecheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kernel_pmap = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"isa_dmacheck: no physical page present\00", align 1
@ISARAM_END = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i32)* @isa_dmarangecheck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isa_dmarangecheck(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %9, align 8
  %12 = load i32, i32* %7, align 4
  %13 = and i32 %12, 4
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 -131072, i32 -65536
  store i32 %16, i32* %11, align 4
  %17 = load i64, i64* %5, align 8
  %18 = trunc i64 %17 to i32
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %18, %19
  %21 = call i64 @round_page(i32 %20)
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %10, align 4
  br label %23

23:                                               ; preds = %66, %3
  %24 = load i64, i64* %5, align 8
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp slt i64 %24, %26
  br i1 %27, label %28, label %70

28:                                               ; preds = %23
  %29 = load i32, i32* @kernel_pmap, align 4
  %30 = load i64, i64* %5, align 8
  %31 = trunc i64 %30 to i32
  %32 = call i32 @pmap_extract(i32 %29, i32 %31)
  %33 = call i64 @trunc_page(i32 %32)
  store i64 %33, i64* %8, align 8
  %34 = load i64, i64* %8, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = call i32 @panic(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %28
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* @ISARAM_END, align 8
  %41 = icmp sge i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 1, i32* %4, align 4
  br label %71

43:                                               ; preds = %38
  %44 = load i64, i64* %9, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %64

46:                                               ; preds = %43
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* @PAGE_SIZE, align 8
  %49 = add nsw i64 %47, %48
  %50 = load i64, i64* %8, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  store i32 1, i32* %4, align 4
  br label %71

53:                                               ; preds = %46
  %54 = load i64, i64* %9, align 8
  %55 = trunc i64 %54 to i32
  %56 = load i64, i64* %8, align 8
  %57 = trunc i64 %56 to i32
  %58 = xor i32 %55, %57
  %59 = load i32, i32* %11, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  store i32 1, i32* %4, align 4
  br label %71

63:                                               ; preds = %53
  br label %64

64:                                               ; preds = %63, %43
  %65 = load i64, i64* %8, align 8
  store i64 %65, i64* %9, align 8
  br label %66

66:                                               ; preds = %64
  %67 = load i64, i64* @PAGE_SIZE, align 8
  %68 = load i64, i64* %5, align 8
  %69 = add nsw i64 %68, %67
  store i64 %69, i64* %5, align 8
  br label %23

70:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %70, %62, %52, %42
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i64 @round_page(i32) #1

declare dso_local i64 @trunc_page(i32) #1

declare dso_local i32 @pmap_extract(i32, i32) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
