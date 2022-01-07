; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/extr_board.c_nlm_get_poe_distvec.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/extr_board.c_nlm_get_poe_distvec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@xlp_msg_thread_mask = common dso_local global i32 0, align 4
@XLPGE_RX_VC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nlm_get_poe_distvec(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %15

9:                                                ; preds = %2
  %10 = load i32, i32* @xlp_msg_thread_mask, align 4
  %11 = load i32, i32* @XLPGE_RX_VC, align 4
  %12 = shl i32 1, %11
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @nlm_calc_poe_distvec(i32 %10, i32 0, i32 0, i32 0, i32 %12, i32* %13)
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %9, %8
  %16 = load i32, i32* %3, align 4
  ret i32 %16
}

declare dso_local i32 @nlm_calc_poe_distvec(i32, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
