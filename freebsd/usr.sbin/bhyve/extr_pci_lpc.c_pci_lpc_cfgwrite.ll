; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_lpc.c_pci_lpc_cfgwrite.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_lpc.c_pci_lpc_cfgwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }
%struct.pci_devinst = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmctx*, i32, %struct.pci_devinst*, i32, i32, i32)* @pci_lpc_cfgwrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_lpc_cfgwrite(%struct.vmctx* %0, i32 %1, %struct.pci_devinst* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.vmctx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pci_devinst*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.vmctx* %0, %struct.vmctx** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.pci_devinst* %2, %struct.pci_devinst** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load i32, i32* %12, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %51

17:                                               ; preds = %6
  store i32 0, i32* %14, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp sge i32 %18, 96
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = load i32, i32* %11, align 4
  %22 = icmp sle i32 %21, 99
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i32, i32* %11, align 4
  %25 = sub nsw i32 %24, 96
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %14, align 4
  br label %27

27:                                               ; preds = %23, %20, %17
  %28 = load i32, i32* %11, align 4
  %29 = icmp sge i32 %28, 104
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load i32, i32* %11, align 4
  %32 = icmp sle i32 %31, 107
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i32, i32* %11, align 4
  %35 = sub nsw i32 %34, 104
  %36 = add nsw i32 %35, 5
  store i32 %36, i32* %14, align 4
  br label %37

37:                                               ; preds = %33, %30, %27
  %38 = load i32, i32* %14, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %37
  %41 = load %struct.vmctx*, %struct.vmctx** %8, align 8
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* %13, align 4
  %44 = call i32 @pirq_write(%struct.vmctx* %41, i32 %42, i32 %43)
  %45 = load %struct.pci_devinst*, %struct.pci_devinst** %10, align 8
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %14, align 4
  %48 = call i32 @pirq_read(i32 %47)
  %49 = call i32 @pci_set_cfgdata8(%struct.pci_devinst* %45, i32 %46, i32 %48)
  store i32 0, i32* %7, align 4
  br label %52

50:                                               ; preds = %37
  br label %51

51:                                               ; preds = %50, %6
  store i32 -1, i32* %7, align 4
  br label %52

52:                                               ; preds = %51, %40
  %53 = load i32, i32* %7, align 4
  ret i32 %53
}

declare dso_local i32 @pirq_write(%struct.vmctx*, i32, i32) #1

declare dso_local i32 @pci_set_cfgdata8(%struct.pci_devinst*, i32, i32) #1

declare dso_local i32 @pirq_read(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
