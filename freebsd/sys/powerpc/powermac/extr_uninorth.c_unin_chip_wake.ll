; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_uninorth.c_unin_chip_wake.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_uninorth.c_unin_chip_wake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@unin_chip = common dso_local global i32* null, align 8
@UNIN_PWR_MGMT = common dso_local global i32 0, align 4
@UNIN_PWR_NORMAL = common dso_local global i32 0, align 4
@UNIN_PWR_MASK = common dso_local global i32 0, align 4
@UNIN_HWINIT_STATE = common dso_local global i32 0, align 4
@UNIN_RUNNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unin_chip_wake(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = icmp eq i32* %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = load i32*, i32** @unin_chip, align 8
  store i32* %6, i32** %2, align 8
  br label %7

7:                                                ; preds = %5, %1
  %8 = load i32*, i32** %2, align 8
  %9 = load i32, i32* @UNIN_PWR_MGMT, align 4
  %10 = load i32, i32* @UNIN_PWR_NORMAL, align 4
  %11 = load i32, i32* @UNIN_PWR_MASK, align 4
  %12 = call i32 @unin_update_reg(i32* %8, i32 %9, i32 %10, i32 %11)
  %13 = call i32 @DELAY(i32 10)
  %14 = load i32*, i32** %2, align 8
  %15 = load i32, i32* @UNIN_HWINIT_STATE, align 4
  %16 = load i32, i32* @UNIN_RUNNING, align 4
  %17 = call i32 @unin_update_reg(i32* %14, i32 %15, i32 %16, i32 0)
  %18 = call i32 @DELAY(i32 100)
  ret i32 0
}

declare dso_local i32 @unin_update_reg(i32*, i32, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
