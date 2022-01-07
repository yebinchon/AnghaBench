; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_ppb_1284.c_ppb_1284_terminate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_ppb_1284.c_ppb_1284_terminate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PPB_TERMINATION = common dso_local global i32 0, align 4
@nINIT = common dso_local global i32 0, align 4
@SELECTIN = common dso_local global i32 0, align 4
@STROBE = common dso_local global i32 0, align 4
@AUTOFEED = common dso_local global i32 0, align 4
@nACK = common dso_local global i32 0, align 4
@nBUSY = common dso_local global i32 0, align 4
@nFAULT = common dso_local global i32 0, align 4
@PPB_TIMEOUT = common dso_local global i32 0, align 4
@PPB_COMPATIBLE = common dso_local global i32 0, align 4
@PPB_FORWARD_IDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ppb_1284_terminate(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @PPB_TERMINATION, align 4
  %5 = call i32 @ppb_1284_set_state(i32 %3, i32 %4)
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @nINIT, align 4
  %8 = load i32, i32* @SELECTIN, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @STROBE, align 4
  %11 = load i32, i32* @AUTOFEED, align 4
  %12 = or i32 %10, %11
  %13 = xor i32 %12, -1
  %14 = and i32 %9, %13
  %15 = call i32 @ppb_wctr(i32 %6, i32 %14)
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @nACK, align 4
  %18 = load i32, i32* @nBUSY, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @nFAULT, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @nFAULT, align 4
  %23 = call i64 @do_1284_wait(i32 %16, i32 %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* @PPB_TIMEOUT, align 4
  %28 = call i32 @ppb_1284_set_error(i32 %26, i32 %27, i32 24)
  br label %60

29:                                               ; preds = %1
  %30 = load i32, i32* %2, align 4
  %31 = load i32, i32* @nINIT, align 4
  %32 = load i32, i32* @SELECTIN, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @AUTOFEED, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @STROBE, align 4
  %37 = xor i32 %36, -1
  %38 = and i32 %35, %37
  %39 = call i32 @ppb_wctr(i32 %30, i32 %38)
  %40 = load i32, i32* %2, align 4
  %41 = load i32, i32* @nACK, align 4
  %42 = load i32, i32* @nACK, align 4
  %43 = call i64 @do_1284_wait(i32 %40, i32 %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %29
  %46 = load i32, i32* %2, align 4
  %47 = load i32, i32* @PPB_TIMEOUT, align 4
  %48 = call i32 @ppb_1284_set_error(i32 %46, i32 %47, i32 27)
  br label %49

49:                                               ; preds = %45, %29
  %50 = load i32, i32* %2, align 4
  %51 = load i32, i32* @nINIT, align 4
  %52 = load i32, i32* @SELECTIN, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @STROBE, align 4
  %55 = load i32, i32* @AUTOFEED, align 4
  %56 = or i32 %54, %55
  %57 = xor i32 %56, -1
  %58 = and i32 %53, %57
  %59 = call i32 @ppb_wctr(i32 %50, i32 %58)
  br label %60

60:                                               ; preds = %49, %25
  %61 = load i32, i32* %2, align 4
  %62 = load i32, i32* @PPB_COMPATIBLE, align 4
  %63 = call i32 @ppb_set_mode(i32 %61, i32 %62)
  %64 = load i32, i32* %2, align 4
  %65 = load i32, i32* @PPB_FORWARD_IDLE, align 4
  %66 = call i32 @ppb_1284_set_state(i32 %64, i32 %65)
  ret i32 0
}

declare dso_local i32 @ppb_1284_set_state(i32, i32) #1

declare dso_local i32 @ppb_wctr(i32, i32) #1

declare dso_local i64 @do_1284_wait(i32, i32, i32) #1

declare dso_local i32 @ppb_1284_set_error(i32, i32, i32) #1

declare dso_local i32 @ppb_set_mode(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
