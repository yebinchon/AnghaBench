; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_csa.c_csa_readcodec.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_csa.c_csa_readcodec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BA0_ACSDA = common dso_local global i32 0, align 4
@BA0_ACCAD = common dso_local global i32 0, align 4
@BA0_AC97_RESET = common dso_local global i32 0, align 4
@BA0_ACCDA = common dso_local global i32 0, align 4
@BA0_ACCTL = common dso_local global i32 0, align 4
@ACCTL_DCV = common dso_local global i32 0, align 4
@ACCTL_CRW = common dso_local global i32 0, align 4
@ACCTL_VFRM = common dso_local global i32 0, align 4
@ACCTL_ESYN = common dso_local global i32 0, align 4
@ACCTL_RSTN = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@BA0_ACSTS = common dso_local global i32 0, align 4
@ACSTS_VSTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @csa_readcodec(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* @BA0_ACSDA, align 4
  %13 = call i32 @csa_readio(i32* %11, i32 %12)
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* @BA0_ACCAD, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @BA0_AC97_RESET, align 4
  %18 = sub nsw i32 %16, %17
  %19 = call i32 @csa_writeio(i32* %14, i32 %15, i32 %18)
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* @BA0_ACCDA, align 4
  %22 = call i32 @csa_writeio(i32* %20, i32 %21, i32 0)
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* @BA0_ACCTL, align 4
  %25 = load i32, i32* @ACCTL_DCV, align 4
  %26 = load i32, i32* @ACCTL_CRW, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @ACCTL_VFRM, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @ACCTL_ESYN, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @ACCTL_RSTN, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @csa_writeio(i32* %23, i32 %24, i32 %33)
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %49, %3
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %36, 10
  br i1 %37, label %38, label %52

38:                                               ; preds = %35
  %39 = call i32 @DELAY(i32 25)
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* @BA0_ACCTL, align 4
  %42 = call i32 @csa_readio(i32* %40, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @ACCTL_DCV, align 4
  %45 = and i32 %43, %44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  br label %52

48:                                               ; preds = %38
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  br label %35

52:                                               ; preds = %47, %35
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @ACCTL_DCV, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* @EAGAIN, align 4
  store i32 %58, i32* %4, align 4
  br label %89

59:                                               ; preds = %52
  store i32 0, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %60

60:                                               ; preds = %74, %59
  %61 = load i32, i32* %8, align 4
  %62 = icmp slt i32 %61, 10
  br i1 %62, label %63, label %77

63:                                               ; preds = %60
  %64 = load i32*, i32** %5, align 8
  %65 = load i32, i32* @BA0_ACSTS, align 4
  %66 = call i32 @csa_readio(i32* %64, i32 %65)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @ACSTS_VSTS, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  br label %77

72:                                               ; preds = %63
  %73 = call i32 @DELAY(i32 25)
  br label %74

74:                                               ; preds = %72
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %8, align 4
  br label %60

77:                                               ; preds = %71, %60
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @ACSTS_VSTS, align 4
  %80 = and i32 %78, %79
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = load i32, i32* @EAGAIN, align 4
  store i32 %83, i32* %4, align 4
  br label %89

84:                                               ; preds = %77
  %85 = load i32*, i32** %5, align 8
  %86 = load i32, i32* @BA0_ACSDA, align 4
  %87 = call i32 @csa_readio(i32* %85, i32 %86)
  %88 = load i32*, i32** %7, align 8
  store i32 %87, i32* %88, align 4
  store i32 0, i32* %4, align 4
  br label %89

89:                                               ; preds = %84, %82, %57
  %90 = load i32, i32* %4, align 4
  ret i32 %90
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
