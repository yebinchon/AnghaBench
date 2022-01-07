; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_ahci.c_ahci_write_fis_d2h_ncq.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_ahci.c_ahci_write_fis_d2h_ncq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_port = type { i32, i32 }

@ATA_S_READY = common dso_local global i32 0, align 4
@ATA_S_DSC = common dso_local global i32 0, align 4
@FIS_TYPE_REGD2H = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahci_port*, i32)* @ahci_write_fis_d2h_ncq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahci_write_fis_d2h_ncq(%struct.ahci_port* %0, i32 %1) #0 {
  %3 = alloca %struct.ahci_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [20 x i32], align 16
  store %struct.ahci_port* %0, %struct.ahci_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @ATA_S_READY, align 4
  %7 = load i32, i32* @ATA_S_DSC, align 4
  %8 = or i32 %6, %7
  %9 = load %struct.ahci_port*, %struct.ahci_port** %3, align 8
  %10 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = getelementptr inbounds [20 x i32], [20 x i32]* %5, i64 0, i64 0
  %12 = call i32 @memset(i32* %11, i32 0, i32 80)
  %13 = load i32, i32* @FIS_TYPE_REGD2H, align 4
  %14 = getelementptr inbounds [20 x i32], [20 x i32]* %5, i64 0, i64 0
  store i32 %13, i32* %14, align 16
  %15 = getelementptr inbounds [20 x i32], [20 x i32]* %5, i64 0, i64 1
  store i32 0, i32* %15, align 4
  %16 = load %struct.ahci_port*, %struct.ahci_port** %3, align 8
  %17 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds [20 x i32], [20 x i32]* %5, i64 0, i64 2
  store i32 %18, i32* %19, align 8
  %20 = getelementptr inbounds [20 x i32], [20 x i32]* %5, i64 0, i64 3
  store i32 0, i32* %20, align 4
  %21 = load i32, i32* %4, align 4
  %22 = shl i32 1, %21
  %23 = xor i32 %22, -1
  %24 = load %struct.ahci_port*, %struct.ahci_port** %3, align 8
  %25 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load %struct.ahci_port*, %struct.ahci_port** %3, align 8
  %29 = load i32, i32* @FIS_TYPE_REGD2H, align 4
  %30 = getelementptr inbounds [20 x i32], [20 x i32]* %5, i64 0, i64 0
  %31 = call i32 @ahci_write_fis(%struct.ahci_port* %28, i32 %29, i32* %30)
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ahci_write_fis(%struct.ahci_port*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
