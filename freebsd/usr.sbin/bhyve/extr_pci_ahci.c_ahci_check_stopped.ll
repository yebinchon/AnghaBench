; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_ahci.c_ahci_check_stopped.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_ahci.c_ahci_check_stopped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_port = type { i32, i64, i64, i64, i64, i64 }

@AHCI_P_CMD_ST = common dso_local global i32 0, align 4
@AHCI_P_CMD_CR = common dso_local global i32 0, align 4
@AHCI_P_CMD_CCS_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahci_port*)* @ahci_check_stopped to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahci_check_stopped(%struct.ahci_port* %0) #0 {
  %2 = alloca %struct.ahci_port*, align 8
  store %struct.ahci_port* %0, %struct.ahci_port** %2, align 8
  %3 = load %struct.ahci_port*, %struct.ahci_port** %2, align 8
  %4 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @AHCI_P_CMD_ST, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %32, label %9

9:                                                ; preds = %1
  %10 = load %struct.ahci_port*, %struct.ahci_port** %2, align 8
  %11 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %31

14:                                               ; preds = %9
  %15 = load %struct.ahci_port*, %struct.ahci_port** %2, align 8
  %16 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %15, i32 0, i32 5
  store i64 0, i64* %16, align 8
  %17 = load i32, i32* @AHCI_P_CMD_CR, align 4
  %18 = load i32, i32* @AHCI_P_CMD_CCS_MASK, align 4
  %19 = or i32 %17, %18
  %20 = xor i32 %19, -1
  %21 = load %struct.ahci_port*, %struct.ahci_port** %2, align 8
  %22 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %23, %20
  store i32 %24, i32* %22, align 8
  %25 = load %struct.ahci_port*, %struct.ahci_port** %2, align 8
  %26 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %25, i32 0, i32 4
  store i64 0, i64* %26, align 8
  %27 = load %struct.ahci_port*, %struct.ahci_port** %2, align 8
  %28 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %27, i32 0, i32 3
  store i64 0, i64* %28, align 8
  %29 = load %struct.ahci_port*, %struct.ahci_port** %2, align 8
  %30 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %29, i32 0, i32 2
  store i64 0, i64* %30, align 8
  br label %31

31:                                               ; preds = %14, %9
  br label %32

32:                                               ; preds = %31, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
