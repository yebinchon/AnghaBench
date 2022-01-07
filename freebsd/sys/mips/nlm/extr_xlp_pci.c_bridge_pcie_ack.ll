; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/extr_xlp_pci.c_bridge_pcie_ack.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/extr_xlp_pci.c_bridge_pcie_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PCIE_MSI_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @bridge_pcie_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bridge_pcie_ack(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = call i32 (...) @nlm_nodeid()
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @PCIE_MSI_STATUS, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %3, align 4
  switch i32 %10, label %27 [
    i32 131, label %11
    i32 130, label %15
    i32 129, label %19
    i32 128, label %23
  ]

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @XLP_IO_PCIE0_OFFSET(i32 %12)
  %14 = call i32 @nlm_pcicfg_base(i32 %13)
  store i32 %14, i32* %7, align 4
  br label %28

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @XLP_IO_PCIE1_OFFSET(i32 %16)
  %18 = call i32 @nlm_pcicfg_base(i32 %17)
  store i32 %18, i32* %7, align 4
  br label %28

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @XLP_IO_PCIE2_OFFSET(i32 %20)
  %22 = call i32 @nlm_pcicfg_base(i32 %21)
  store i32 %22, i32* %7, align 4
  br label %28

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @XLP_IO_PCIE3_OFFSET(i32 %24)
  %26 = call i32 @nlm_pcicfg_base(i32 %25)
  store i32 %26, i32* %7, align 4
  br label %28

27:                                               ; preds = %2
  br label %32

28:                                               ; preds = %23, %19, %15, %11
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @nlm_write_pci_reg(i32 %29, i32 %30, i32 -1)
  br label %32

32:                                               ; preds = %28, %27
  ret void
}

declare dso_local i32 @nlm_nodeid(...) #1

declare dso_local i32 @nlm_pcicfg_base(i32) #1

declare dso_local i32 @XLP_IO_PCIE0_OFFSET(i32) #1

declare dso_local i32 @XLP_IO_PCIE1_OFFSET(i32) #1

declare dso_local i32 @XLP_IO_PCIE2_OFFSET(i32) #1

declare dso_local i32 @XLP_IO_PCIE3_OFFSET(i32) #1

declare dso_local i32 @nlm_write_pci_reg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
