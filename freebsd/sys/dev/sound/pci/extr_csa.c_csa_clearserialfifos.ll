; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_csa.c_csa_clearserialfifos.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_csa.c_csa_clearserialfifos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BA0_CLKCR1 = common dso_local global i32 0, align 4
@CLKCR1_SWCE = common dso_local global i32 0, align 4
@BA0_SERBWP = common dso_local global i32 0, align 4
@BA0_SERBST = common dso_local global i32 0, align 4
@SERBST_WBSY = common dso_local global i32 0, align 4
@BA0_SERBAD = common dso_local global i32 0, align 4
@BA0_SERBCM = common dso_local global i32 0, align 4
@SERBCM_WRC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @csa_clearserialfifos(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 1, i32* %5, align 4
  %8 = load i32*, i32** %2, align 8
  %9 = load i32, i32* @BA0_CLKCR1, align 4
  %10 = call i32 @csa_readio(i32* %8, i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @CLKCR1_SWCE, align 4
  %13 = and i32 %11, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load i32*, i32** %2, align 8
  %17 = load i32, i32* @BA0_CLKCR1, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @CLKCR1_SWCE, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @csa_writeio(i32* %16, i32 %17, i32 %20)
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %15, %1
  %23 = load i32*, i32** %2, align 8
  %24 = load i32, i32* @BA0_SERBWP, align 4
  %25 = call i32 @csa_writeio(i32* %23, i32 %24, i32 0)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %70, %22
  %27 = load i32, i32* %3, align 4
  %28 = icmp slt i32 %27, 256
  br i1 %28, label %29, label %73

29:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %44, %29
  %31 = load i32, i32* %4, align 4
  %32 = icmp slt i32 %31, 5
  br i1 %32, label %33, label %47

33:                                               ; preds = %30
  %34 = call i32 @DELAY(i32 100)
  %35 = load i32*, i32** %2, align 8
  %36 = load i32, i32* @BA0_SERBST, align 4
  %37 = call i32 @csa_readio(i32* %35, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @SERBST_WBSY, align 4
  %40 = and i32 %38, %39
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %47

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %4, align 4
  br label %30

47:                                               ; preds = %42, %30
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @SERBST_WBSY, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %47
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %52
  %56 = load i32*, i32** %2, align 8
  %57 = load i32, i32* @BA0_CLKCR1, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @csa_writeio(i32* %56, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %55, %52
  br label %61

61:                                               ; preds = %60, %47
  %62 = load i32*, i32** %2, align 8
  %63 = load i32, i32* @BA0_SERBAD, align 4
  %64 = load i32, i32* %3, align 4
  %65 = call i32 @csa_writeio(i32* %62, i32 %63, i32 %64)
  %66 = load i32*, i32** %2, align 8
  %67 = load i32, i32* @BA0_SERBCM, align 4
  %68 = load i32, i32* @SERBCM_WRC, align 4
  %69 = call i32 @csa_writeio(i32* %66, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %61
  %71 = load i32, i32* %3, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %3, align 4
  br label %26

73:                                               ; preds = %26
  %74 = load i32, i32* %5, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %73
  %77 = load i32*, i32** %2, align 8
  %78 = load i32, i32* @BA0_CLKCR1, align 4
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @csa_writeio(i32* %77, i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %76, %73
  ret void
}

declare dso_local i32 @csa_readio(i32*, i32) #1

declare dso_local i32 @csa_writeio(i32*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
