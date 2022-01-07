; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_emul.c_msicap_cfgwrite.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_emul.c_msicap_cfgwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_devinst = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@PCIM_MSICTRL_MME_MASK = common dso_local global i32 0, align 4
@PCIM_MSICTRL_MSI_ENABLE = common dso_local global i32 0, align 4
@PCIM_MSICTRL_64BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @msicap_cfgwrite(%struct.pci_devinst* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.pci_devinst*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.pci_devinst* %0, %struct.pci_devinst** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %7, align 4
  %18 = sub nsw i32 %16, %17
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %20, label %98

20:                                               ; preds = %5
  %21 = load i32, i32* %9, align 4
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %23, label %98

23:                                               ; preds = %20
  %24 = load i32, i32* @PCIM_MSICTRL_MME_MASK, align 4
  %25 = load i32, i32* @PCIM_MSICTRL_MSI_ENABLE, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %12, align 4
  %27 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @pci_get_cfgdata16(%struct.pci_devinst* %27, i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %12, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %11, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %12, align 4
  %36 = and i32 %34, %35
  %37 = load i32, i32* %11, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  store i32 %39, i32* %10, align 4
  %40 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 4
  %43 = call i32 @pci_get_cfgdata32(%struct.pci_devinst* %40, i32 %42)
  store i32 %43, i32* %15, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @PCIM_MSICTRL_64BIT, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %23
  %49 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 12
  %52 = call i32 @pci_get_cfgdata16(%struct.pci_devinst* %49, i32 %51)
  store i32 %52, i32* %13, align 4
  br label %58

53:                                               ; preds = %23
  %54 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 8
  %57 = call i32 @pci_get_cfgdata16(%struct.pci_devinst* %54, i32 %56)
  store i32 %57, i32* %13, align 4
  br label %58

58:                                               ; preds = %53, %48
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @PCIM_MSICTRL_MME_MASK, align 4
  %61 = and i32 %59, %60
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @PCIM_MSICTRL_MSI_ENABLE, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 1, i32 0
  %68 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %69 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 4
  %71 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %72 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %91

76:                                               ; preds = %58
  %77 = load i32, i32* %15, align 4
  %78 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %79 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  store i32 %77, i32* %80, align 4
  %81 = load i32, i32* %13, align 4
  %82 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %83 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 2
  store i32 %81, i32* %84, align 4
  %85 = load i32, i32* %14, align 4
  %86 = ashr i32 %85, 4
  %87 = shl i32 1, %86
  %88 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %89 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 3
  store i32 %87, i32* %90, align 4
  br label %95

91:                                               ; preds = %58
  %92 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %93 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 3
  store i32 0, i32* %94, align 4
  br label %95

95:                                               ; preds = %91, %76
  %96 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %97 = call i32 @pci_lintr_update(%struct.pci_devinst* %96)
  br label %98

98:                                               ; preds = %95, %20, %5
  %99 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @CFGWRITE(%struct.pci_devinst* %99, i32 %100, i32 %101, i32 %102)
  ret void
}

declare dso_local i32 @pci_get_cfgdata16(%struct.pci_devinst*, i32) #1

declare dso_local i32 @pci_get_cfgdata32(%struct.pci_devinst*, i32) #1

declare dso_local i32 @pci_lintr_update(%struct.pci_devinst*) #1

declare dso_local i32 @CFGWRITE(%struct.pci_devinst*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
