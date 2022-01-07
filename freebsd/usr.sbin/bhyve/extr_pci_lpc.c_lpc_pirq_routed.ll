; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_lpc.c_lpc_pirq_routed.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_lpc.c_lpc_pirq_routed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lpc_bridge = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpc_pirq_routed() #0 {
  %1 = alloca i32, align 4
  %2 = load i32*, i32** @lpc_bridge, align 8
  %3 = icmp eq i32* %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %35

5:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %17, %5
  %7 = load i32, i32* %1, align 4
  %8 = icmp slt i32 %7, 4
  br i1 %8, label %9, label %20

9:                                                ; preds = %6
  %10 = load i32*, i32** @lpc_bridge, align 8
  %11 = load i32, i32* %1, align 4
  %12 = add nsw i32 96, %11
  %13 = load i32, i32* %1, align 4
  %14 = add nsw i32 %13, 1
  %15 = call i32 @pirq_read(i32 %14)
  %16 = call i32 @pci_set_cfgdata8(i32* %10, i32 %12, i32 %15)
  br label %17

17:                                               ; preds = %9
  %18 = load i32, i32* %1, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %1, align 4
  br label %6

20:                                               ; preds = %6
  store i32 0, i32* %1, align 4
  br label %21

21:                                               ; preds = %32, %20
  %22 = load i32, i32* %1, align 4
  %23 = icmp slt i32 %22, 4
  br i1 %23, label %24, label %35

24:                                               ; preds = %21
  %25 = load i32*, i32** @lpc_bridge, align 8
  %26 = load i32, i32* %1, align 4
  %27 = add nsw i32 104, %26
  %28 = load i32, i32* %1, align 4
  %29 = add nsw i32 %28, 5
  %30 = call i32 @pirq_read(i32 %29)
  %31 = call i32 @pci_set_cfgdata8(i32* %25, i32 %27, i32 %30)
  br label %32

32:                                               ; preds = %24
  %33 = load i32, i32* %1, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %1, align 4
  br label %21

35:                                               ; preds = %4, %21
  ret void
}

declare dso_local i32 @pci_set_cfgdata8(i32*, i32, i32) #1

declare dso_local i32 @pirq_read(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
