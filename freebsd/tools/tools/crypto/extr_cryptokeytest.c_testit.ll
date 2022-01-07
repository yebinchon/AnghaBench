; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/crypto/extr_cryptokeytest.c_testit.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/crypto/extr_cryptokeytest.c_testit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @testit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @testit() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = call i32* (...) @BN_CTX_new()
  store i32* %8, i32** %6, align 8
  %9 = call i32* (...) @BN_new()
  store i32* %9, i32** %1, align 8
  %10 = call i32* (...) @BN_new()
  store i32* %10, i32** %2, align 8
  %11 = call i32* (...) @BN_new()
  store i32* %11, i32** %3, align 8
  %12 = call i32* (...) @BN_new()
  store i32* %12, i32** %4, align 8
  %13 = call i32* (...) @BN_new()
  store i32* %13, i32** %5, align 8
  %14 = load i32*, i32** %1, align 8
  %15 = call i32 @BN_pseudo_rand(i32* %14, i32 1023, i32 0, i32 0)
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @BN_pseudo_rand(i32* %16, i32 1023, i32 0, i32 0)
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @BN_pseudo_rand(i32* %18, i32 1024, i32 0, i32 0)
  %20 = load i32*, i32** %1, align 8
  %21 = load i32*, i32** %3, align 8
  %22 = call i64 @BN_cmp(i32* %20, i32* %21)
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %0
  %25 = call i32* (...) @BN_new()
  store i32* %25, i32** %7, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = load i32*, i32** %1, align 8
  %28 = load i32*, i32** %3, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @BN_mod(i32* %26, i32* %27, i32* %28, i32* %29)
  %31 = load i32*, i32** %5, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = load i32*, i32** %2, align 8
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @UB_mod_exp(i32* %31, i32* %32, i32* %33, i32* %34)
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @BN_free(i32* %36)
  br label %44

38:                                               ; preds = %0
  %39 = load i32*, i32** %5, align 8
  %40 = load i32*, i32** %1, align 8
  %41 = load i32*, i32** %2, align 8
  %42 = load i32*, i32** %3, align 8
  %43 = call i32 @UB_mod_exp(i32* %39, i32* %40, i32* %41, i32* %42)
  br label %44

44:                                               ; preds = %38, %24
  %45 = load i32*, i32** %4, align 8
  %46 = load i32*, i32** %1, align 8
  %47 = load i32*, i32** %2, align 8
  %48 = load i32*, i32** %3, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @BN_mod_exp(i32* %45, i32* %46, i32* %47, i32* %48, i32* %49)
  %51 = load i32*, i32** %4, align 8
  %52 = load i32*, i32** %5, align 8
  %53 = call i64 @BN_cmp(i32* %51, i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %44
  %56 = load i32*, i32** %1, align 8
  %57 = load i32*, i32** %2, align 8
  %58 = load i32*, i32** %3, align 8
  %59 = load i32*, i32** %4, align 8
  %60 = load i32*, i32** %5, align 8
  %61 = call i32 @show_result(i32* %56, i32* %57, i32* %58, i32* %59, i32* %60)
  br label %62

62:                                               ; preds = %55, %44
  %63 = load i32*, i32** %5, align 8
  %64 = call i32 @BN_free(i32* %63)
  %65 = load i32*, i32** %4, align 8
  %66 = call i32 @BN_free(i32* %65)
  %67 = load i32*, i32** %3, align 8
  %68 = call i32 @BN_free(i32* %67)
  %69 = load i32*, i32** %2, align 8
  %70 = call i32 @BN_free(i32* %69)
  %71 = load i32*, i32** %1, align 8
  %72 = call i32 @BN_free(i32* %71)
  %73 = load i32*, i32** %6, align 8
  %74 = call i32 @BN_CTX_free(i32* %73)
  ret void
}

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32 @BN_pseudo_rand(i32*, i32, i32, i32) #1

declare dso_local i64 @BN_cmp(i32*, i32*) #1

declare dso_local i32 @BN_mod(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @UB_mod_exp(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_free(i32*) #1

declare dso_local i32 @BN_mod_exp(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @show_result(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
