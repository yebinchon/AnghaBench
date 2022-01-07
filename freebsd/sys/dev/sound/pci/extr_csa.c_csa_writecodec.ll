; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_csa.c_csa_writecodec.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_csa.c_csa_writecodec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BA0_ACCAD = common dso_local global i32 0, align 4
@BA0_AC97_RESET = common dso_local global i32 0, align 4
@BA0_ACCDA = common dso_local global i32 0, align 4
@BA0_ACCTL = common dso_local global i32 0, align 4
@ACCTL_DCV = common dso_local global i32 0, align 4
@ACCTL_VFRM = common dso_local global i32 0, align 4
@ACCTL_ESYN = common dso_local global i32 0, align 4
@ACCTL_RSTN = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @csa_writecodec(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = load i32, i32* @BA0_ACCAD, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @BA0_AC97_RESET, align 4
  %14 = sub nsw i32 %12, %13
  %15 = call i32 @csa_writeio(i32* %10, i32 %11, i32 %14)
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* @BA0_ACCDA, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @csa_writeio(i32* %16, i32 %17, i32 %18)
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* @BA0_ACCTL, align 4
  %22 = load i32, i32* @ACCTL_DCV, align 4
  %23 = load i32, i32* @ACCTL_VFRM, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @ACCTL_ESYN, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @ACCTL_RSTN, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @csa_writeio(i32* %20, i32 %21, i32 %28)
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %44, %3
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 10
  br i1 %32, label %33, label %47

33:                                               ; preds = %30
  %34 = call i32 @DELAY(i32 25)
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* @BA0_ACCTL, align 4
  %37 = call i32 @csa_readio(i32* %35, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @ACCTL_DCV, align 4
  %40 = and i32 %38, %39
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %47

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %8, align 4
  br label %30

47:                                               ; preds = %42, %30
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @ACCTL_DCV, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* @EAGAIN, align 4
  store i32 %53, i32* %4, align 4
  br label %55

54:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %52
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @csa_writeio(i32*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @csa_readio(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
