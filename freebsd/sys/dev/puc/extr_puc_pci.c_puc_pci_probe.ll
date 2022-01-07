; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/puc/extr_puc_pci.c_puc_pci_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/puc/extr_puc_pci.c_puc_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.puc_cfg = type { i32 }

@PCIR_HDRTYPE = common dso_local global i32 0, align 4
@PCIM_HDRTYPE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@puc_pci_devices = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @puc_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @puc_pci_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.puc_cfg*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @PCIR_HDRTYPE, align 4
  %7 = call i32 @pci_read_config(i32 %5, i32 %6, i32 1)
  %8 = load i32, i32* @PCIM_HDRTYPE, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @ENXIO, align 4
  store i32 %12, i32* %2, align 4
  br label %25

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @puc_pci_devices, align 4
  %16 = call %struct.puc_cfg* @puc_pci_match(i32 %14, i32 %15)
  store %struct.puc_cfg* %16, %struct.puc_cfg** %4, align 8
  %17 = load %struct.puc_cfg*, %struct.puc_cfg** %4, align 8
  %18 = icmp eq %struct.puc_cfg* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i32, i32* @ENXIO, align 4
  store i32 %20, i32* %2, align 4
  br label %25

21:                                               ; preds = %13
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.puc_cfg*, %struct.puc_cfg** %4, align 8
  %24 = call i32 @puc_bfe_probe(i32 %22, %struct.puc_cfg* %23)
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %21, %19, %11
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local %struct.puc_cfg* @puc_pci_match(i32, i32) #1

declare dso_local i32 @puc_bfe_probe(i32, %struct.puc_cfg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
