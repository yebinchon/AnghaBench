; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_ppb_1284.c_ppb_peripheral_terminate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_ppb_1284.c_ppb_peripheral_terminate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PPB_PERIPHERAL_TERMINATION = common dso_local global i32 0, align 4
@SELECT = common dso_local global i32 0, align 4
@nBUSY = common dso_local global i32 0, align 4
@PPB_TIMEOUT = common dso_local global i32 0, align 4
@nINIT = common dso_local global i32 0, align 4
@STROBE = common dso_local global i32 0, align 4
@AUTOFEED = common dso_local global i32 0, align 4
@SELECTIN = common dso_local global i32 0, align 4
@PPB_COMPATIBLE = common dso_local global i32 0, align 4
@PPB_FORWARD_IDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ppb_peripheral_terminate(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @PPB_PERIPHERAL_TERMINATION, align 4
  %8 = call i32 @ppb_1284_set_state(i32 %6, i32 %7)
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @SELECT, align 4
  %11 = load i32, i32* @nBUSY, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @do_peripheral_wait(i32 %9, i32 %12, i32 0)
  store i32 %13, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @PPB_TIMEOUT, align 4
  %18 = call i32 @ppb_1284_set_error(i32 %16, i32 %17, i32 22)
  br label %70

19:                                               ; preds = %2
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @nINIT, align 4
  %22 = load i32, i32* @STROBE, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @AUTOFEED, align 4
  %25 = load i32, i32* @SELECTIN, align 4
  %26 = or i32 %24, %25
  %27 = xor i32 %26, -1
  %28 = and i32 %23, %27
  %29 = call i32 @ppb_wctr(i32 %20, i32 %28)
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @nBUSY, align 4
  %32 = load i32, i32* @nBUSY, align 4
  %33 = call i32 @do_peripheral_wait(i32 %30, i32 %31, i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %19
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @PPB_TIMEOUT, align 4
  %38 = call i32 @ppb_1284_set_error(i32 %36, i32 %37, i32 25)
  br label %70

39:                                               ; preds = %19
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @SELECTIN, align 4
  %42 = load i32, i32* @nINIT, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @STROBE, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @AUTOFEED, align 4
  %47 = xor i32 %46, -1
  %48 = and i32 %45, %47
  %49 = call i32 @ppb_wctr(i32 %40, i32 %48)
  %50 = call i32 @DELAY(i32 1)
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @SELECTIN, align 4
  %53 = load i32, i32* @nINIT, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @STROBE, align 4
  %56 = load i32, i32* @AUTOFEED, align 4
  %57 = or i32 %55, %56
  %58 = xor i32 %57, -1
  %59 = and i32 %54, %58
  %60 = call i32 @ppb_wctr(i32 %51, i32 %59)
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* @nBUSY, align 4
  %63 = call i32 @do_peripheral_wait(i32 %61, i32 %62, i32 0)
  store i32 %63, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %39
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* @PPB_TIMEOUT, align 4
  %68 = call i32 @ppb_1284_set_error(i32 %66, i32 %67, i32 28)
  br label %70

69:                                               ; preds = %39
  br label %70

70:                                               ; preds = %69, %65, %35, %15
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* @PPB_COMPATIBLE, align 4
  %73 = call i32 @ppb_set_mode(i32 %71, i32 %72)
  %74 = load i32, i32* %3, align 4
  %75 = load i32, i32* @PPB_FORWARD_IDLE, align 4
  %76 = call i32 @ppb_1284_set_state(i32 %74, i32 %75)
  ret i32 0
}

declare dso_local i32 @ppb_1284_set_state(i32, i32) #1

declare dso_local i32 @do_peripheral_wait(i32, i32, i32) #1

declare dso_local i32 @ppb_1284_set_error(i32, i32, i32) #1

declare dso_local i32 @ppb_wctr(i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @ppb_set_mode(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
