; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_mpc85xx.c_mpc85xx_enable_l3_cache.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_mpc85xx.c_mpc85xx_enable_l3_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPR_SVR = common dso_local global i32 0, align 4
@SVR_P2041 = common dso_local global i64 0, align 8
@SVR_P2041E = common dso_local global i64 0, align 8
@SVR_P3041 = common dso_local global i64 0, align 8
@SVR_P3041E = common dso_local global i64 0, align 8
@SVR_P5020 = common dso_local global i64 0, align 8
@SVR_P5020E = common dso_local global i64 0, align 8
@OCP85XX_CPC_CSR0 = common dso_local global i32 0, align 4
@OCP85XX_CPC_CSR0_CE = common dso_local global i64 0, align 8
@boothowto = common dso_local global i32 0, align 4
@RB_VERBOSE = common dso_local global i32 0, align 4
@OCP85XX_CPC_CFG0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"L3 Corenet Platform Cache: %d KB %sabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"dis\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"en\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mpc85xx_enable_l3_cache() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = load i32, i32* @SPR_SVR, align 4
  %5 = call i32 @mfspr(i32 %4)
  %6 = call i64 @SVR_VER(i32 %5)
  store i64 %6, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @SVR_P2041, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %30, label %10

10:                                               ; preds = %0
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* @SVR_P2041E, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %30, label %14

14:                                               ; preds = %10
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @SVR_P3041, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %30, label %18

18:                                               ; preds = %14
  %19 = load i64, i64* %3, align 8
  %20 = load i64, i64* @SVR_P3041E, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %30, label %22

22:                                               ; preds = %18
  %23 = load i64, i64* %3, align 8
  %24 = load i64, i64* @SVR_P5020, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i64, i64* %3, align 8
  %28 = load i64, i64* @SVR_P5020E, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %65

30:                                               ; preds = %26, %22, %18, %14, %10, %0
  %31 = load i32, i32* @OCP85XX_CPC_CSR0, align 4
  %32 = call i64 @ccsr_read4(i32 %31)
  store i64 %32, i64* %1, align 8
  %33 = load i64, i64* %1, align 8
  %34 = load i64, i64* @OCP85XX_CPC_CSR0_CE, align 8
  %35 = and i64 %33, %34
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = call i32 (...) @l3cache_inval()
  %39 = call i32 (...) @l3cache_enable()
  br label %40

40:                                               ; preds = %37, %30
  %41 = load i32, i32* @OCP85XX_CPC_CSR0, align 4
  %42 = call i64 @ccsr_read4(i32 %41)
  store i64 %42, i64* %1, align 8
  %43 = load i32, i32* @boothowto, align 4
  %44 = load i32, i32* @RB_VERBOSE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %40
  %48 = load i64, i64* %1, align 8
  %49 = load i64, i64* @OCP85XX_CPC_CSR0_CE, align 8
  %50 = and i64 %48, %49
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %47, %40
  %53 = load i32, i32* @OCP85XX_CPC_CFG0, align 4
  %54 = call i64 @ccsr_read4(i32 %53)
  %55 = call i64 @OCP85XX_CPC_CFG0_SZ_K(i64 %54)
  store i64 %55, i64* %2, align 8
  %56 = load i64, i64* %2, align 8
  %57 = load i64, i64* %1, align 8
  %58 = load i64, i64* @OCP85XX_CPC_CSR0_CE, align 8
  %59 = and i64 %57, %58
  %60 = icmp eq i64 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %63 = call i32 @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %56, i8* %62)
  br label %64

64:                                               ; preds = %52, %47
  br label %65

65:                                               ; preds = %64, %26
  ret void
}

declare dso_local i64 @SVR_VER(i32) #1

declare dso_local i32 @mfspr(i32) #1

declare dso_local i64 @ccsr_read4(i32) #1

declare dso_local i32 @l3cache_inval(...) #1

declare dso_local i32 @l3cache_enable(...) #1

declare dso_local i64 @OCP85XX_CPC_CFG0_SZ_K(i64) #1

declare dso_local i32 @printf(i8*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
