; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_emul.c_pci_emul_cfgaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_emul.c_pci_emul_cfgaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }

@cfgbus = common dso_local global i32 0, align 4
@cfgslot = common dso_local global i32 0, align 4
@cfgfunc = common dso_local global i32 0, align 4
@cfgoff = common dso_local global i32 0, align 4
@cfgenable = common dso_local global i32 0, align 4
@CONF1_ENABLE = common dso_local global i32 0, align 4
@PCI_REGMAX = common dso_local global i32 0, align 4
@PCI_FUNCMAX = common dso_local global i32 0, align 4
@PCI_SLOTMAX = common dso_local global i32 0, align 4
@PCI_BUSMAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmctx*, i32, i32, i32, i32, i32*, i8*)* @pci_emul_cfgaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_emul_cfgaddr(%struct.vmctx* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.vmctx*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.vmctx* %0, %struct.vmctx** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i8* %6, i8** %15, align 8
  %17 = load i32, i32* %13, align 4
  %18 = icmp ne i32 %17, 4
  br i1 %18, label %19, label %29

19:                                               ; preds = %7
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load i32, i32* %13, align 4
  %24 = icmp eq i32 %23, 2
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 65535, i32 255
  %27 = load i32*, i32** %14, align 8
  store i32 %26, i32* %27, align 4
  br label %28

28:                                               ; preds = %22, %19
  store i32 0, i32* %8, align 4
  br label %77

29:                                               ; preds = %7
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %52

32:                                               ; preds = %29
  %33 = load i32, i32* @cfgbus, align 4
  %34 = shl i32 %33, 16
  %35 = load i32, i32* @cfgslot, align 4
  %36 = shl i32 %35, 11
  %37 = or i32 %34, %36
  %38 = load i32, i32* @cfgfunc, align 4
  %39 = shl i32 %38, 8
  %40 = or i32 %37, %39
  %41 = load i32, i32* @cfgoff, align 4
  %42 = or i32 %40, %41
  store i32 %42, i32* %16, align 4
  %43 = load i32, i32* @cfgenable, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %32
  %46 = load i32, i32* @CONF1_ENABLE, align 4
  %47 = load i32, i32* %16, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %16, align 4
  br label %49

49:                                               ; preds = %45, %32
  %50 = load i32, i32* %16, align 4
  %51 = load i32*, i32** %14, align 8
  store i32 %50, i32* %51, align 4
  br label %76

52:                                               ; preds = %29
  %53 = load i32*, i32** %14, align 8
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %16, align 4
  %55 = load i32, i32* %16, align 4
  %56 = load i32, i32* @CONF1_ENABLE, align 4
  %57 = and i32 %55, %56
  %58 = load i32, i32* @CONF1_ENABLE, align 4
  %59 = icmp eq i32 %57, %58
  %60 = zext i1 %59 to i32
  store i32 %60, i32* @cfgenable, align 4
  %61 = load i32, i32* %16, align 4
  %62 = load i32, i32* @PCI_REGMAX, align 4
  %63 = and i32 %61, %62
  store i32 %63, i32* @cfgoff, align 4
  %64 = load i32, i32* %16, align 4
  %65 = ashr i32 %64, 8
  %66 = load i32, i32* @PCI_FUNCMAX, align 4
  %67 = and i32 %65, %66
  store i32 %67, i32* @cfgfunc, align 4
  %68 = load i32, i32* %16, align 4
  %69 = ashr i32 %68, 11
  %70 = load i32, i32* @PCI_SLOTMAX, align 4
  %71 = and i32 %69, %70
  store i32 %71, i32* @cfgslot, align 4
  %72 = load i32, i32* %16, align 4
  %73 = ashr i32 %72, 16
  %74 = load i32, i32* @PCI_BUSMAX, align 4
  %75 = and i32 %73, %74
  store i32 %75, i32* @cfgbus, align 4
  br label %76

76:                                               ; preds = %52, %49
  store i32 0, i32* %8, align 4
  br label %77

77:                                               ; preds = %76, %28
  %78 = load i32, i32* %8, align 4
  ret i32 %78
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
