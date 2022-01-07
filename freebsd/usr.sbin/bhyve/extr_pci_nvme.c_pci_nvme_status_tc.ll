; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_nvme.c_pci_nvme_status_tc.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_nvme.c_pci_nvme_status_tc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NVME_STATUS_MASK = common dso_local global i32 0, align 4
@NVME_STATUS_SCT_MASK = common dso_local global i32 0, align 4
@NVME_STATUS_SCT_SHIFT = common dso_local global i32 0, align 4
@NVME_STATUS_SC_MASK = common dso_local global i32 0, align 4
@NVME_STATUS_SC_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32)* @pci_nvme_status_tc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_nvme_status_tc(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @NVME_STATUS_MASK, align 4
  %8 = xor i32 %7, -1
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, %8
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @NVME_STATUS_SCT_MASK, align 4
  %14 = and i32 %12, %13
  %15 = load i32, i32* @NVME_STATUS_SCT_SHIFT, align 4
  %16 = shl i32 %14, %15
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @NVME_STATUS_SC_MASK, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* @NVME_STATUS_SC_SHIFT, align 4
  %21 = shl i32 %19, %20
  %22 = or i32 %16, %21
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %22
  store i32 %25, i32* %23, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
