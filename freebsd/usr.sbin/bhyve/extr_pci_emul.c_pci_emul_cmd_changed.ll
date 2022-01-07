; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_emul.c_pci_emul_cmd_changed.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_emul.c_pci_emul_cmd_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_devinst = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PCIR_COMMAND = common dso_local global i32 0, align 4
@PCI_BARMAX = common dso_local global i32 0, align 4
@PCIM_CMD_PORTEN = common dso_local global i32 0, align 4
@PCIM_CMD_MEMEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pci_emul_cmd_changed(%struct.pci_devinst* %0, i32 %1) #0 {
  %3 = alloca %struct.pci_devinst*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pci_devinst* %0, %struct.pci_devinst** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.pci_devinst*, %struct.pci_devinst** %3, align 8
  %9 = load i32, i32* @PCIR_COMMAND, align 4
  %10 = call i32 @pci_get_cfgdata16(%struct.pci_devinst* %8, i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %7, align 4
  %13 = xor i32 %11, %12
  store i32 %13, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %71, %2
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @PCI_BARMAX, align 4
  %17 = icmp sle i32 %15, %16
  br i1 %17, label %18, label %74

18:                                               ; preds = %14
  %19 = load %struct.pci_devinst*, %struct.pci_devinst** %3, align 8
  %20 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %68 [
    i32 128, label %27
    i32 129, label %27
    i32 132, label %28
    i32 131, label %48
    i32 130, label %48
  ]

27:                                               ; preds = %18, %18
  br label %70

28:                                               ; preds = %18
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @PCIM_CMD_PORTEN, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %28
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @PCIM_CMD_PORTEN, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load %struct.pci_devinst*, %struct.pci_devinst** %3, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @register_bar(%struct.pci_devinst* %39, i32 %40)
  br label %46

42:                                               ; preds = %33
  %43 = load %struct.pci_devinst*, %struct.pci_devinst** %3, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @unregister_bar(%struct.pci_devinst* %43, i32 %44)
  br label %46

46:                                               ; preds = %42, %38
  br label %47

47:                                               ; preds = %46, %28
  br label %70

48:                                               ; preds = %18, %18
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @PCIM_CMD_MEMEN, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %48
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @PCIM_CMD_MEMEN, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load %struct.pci_devinst*, %struct.pci_devinst** %3, align 8
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @register_bar(%struct.pci_devinst* %59, i32 %60)
  br label %66

62:                                               ; preds = %53
  %63 = load %struct.pci_devinst*, %struct.pci_devinst** %3, align 8
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @unregister_bar(%struct.pci_devinst* %63, i32 %64)
  br label %66

66:                                               ; preds = %62, %58
  br label %67

67:                                               ; preds = %66, %48
  br label %70

68:                                               ; preds = %18
  %69 = call i32 @assert(i32 0)
  br label %70

70:                                               ; preds = %68, %67, %47, %27
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %5, align 4
  br label %14

74:                                               ; preds = %14
  %75 = load %struct.pci_devinst*, %struct.pci_devinst** %3, align 8
  %76 = call i32 @pci_lintr_update(%struct.pci_devinst* %75)
  ret void
}

declare dso_local i32 @pci_get_cfgdata16(%struct.pci_devinst*, i32) #1

declare dso_local i32 @register_bar(%struct.pci_devinst*, i32) #1

declare dso_local i32 @unregister_bar(%struct.pci_devinst*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pci_lintr_update(%struct.pci_devinst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
