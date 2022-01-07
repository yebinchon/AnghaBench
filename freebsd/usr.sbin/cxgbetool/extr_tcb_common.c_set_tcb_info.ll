; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/cxgbetool/extr_tcb_common.c_set_tcb_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/cxgbetool/extr_tcb_common.c_set_tcb_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_tN = common dso_local global i32 0, align 4
@g_tcb_info4 = common dso_local global i32 0, align 4
@g_tcb_info = common dso_local global i32 0, align 4
@g_scb_info4 = common dso_local global i32 0, align 4
@g_scb_info = common dso_local global i32 0, align 4
@g_fcb_info4 = common dso_local global i32 0, align 4
@g_fcb_info = common dso_local global i32 0, align 4
@g_tcb_info5 = common dso_local global i32 0, align 4
@g_scb_info5 = common dso_local global i32 0, align 4
@g_fcb_info5 = common dso_local global i32 0, align 4
@g_tcb_info6 = common dso_local global i32 0, align 4
@g_scb_info6 = common dso_local global i32 0, align 4
@g_fcb_info6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_tcb_info(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @set_tidtype(i32 %5)
  %7 = load i32, i32* %4, align 4
  store i32 %7, i32* @g_tN, align 4
  %8 = load i32, i32* @g_tN, align 4
  %9 = icmp eq i32 4, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i32, i32* @g_tcb_info4, align 4
  store i32 %11, i32* @g_tcb_info, align 4
  %12 = load i32, i32* @g_scb_info4, align 4
  store i32 %12, i32* @g_scb_info, align 4
  %13 = load i32, i32* @g_fcb_info4, align 4
  store i32 %13, i32* @g_fcb_info, align 4
  br label %30

14:                                               ; preds = %2
  %15 = load i32, i32* @g_tN, align 4
  %16 = icmp eq i32 5, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load i32, i32* @g_tcb_info5, align 4
  store i32 %18, i32* @g_tcb_info, align 4
  %19 = load i32, i32* @g_scb_info5, align 4
  store i32 %19, i32* @g_scb_info, align 4
  %20 = load i32, i32* @g_fcb_info5, align 4
  store i32 %20, i32* @g_fcb_info, align 4
  br label %29

21:                                               ; preds = %14
  %22 = load i32, i32* @g_tN, align 4
  %23 = icmp eq i32 6, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i32, i32* @g_tcb_info6, align 4
  store i32 %25, i32* @g_tcb_info, align 4
  %26 = load i32, i32* @g_scb_info6, align 4
  store i32 %26, i32* @g_scb_info, align 4
  %27 = load i32, i32* @g_fcb_info6, align 4
  store i32 %27, i32* @g_fcb_info, align 4
  br label %28

28:                                               ; preds = %24, %21
  br label %29

29:                                               ; preds = %28, %17
  br label %30

30:                                               ; preds = %29, %10
  ret void
}

declare dso_local i32 @set_tidtype(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
