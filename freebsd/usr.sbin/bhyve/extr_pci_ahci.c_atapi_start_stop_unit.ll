; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_ahci.c_atapi_start_stop_unit.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_ahci.c_atapi_start_stop_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_port = type { i32, i32 }

@ATA_I_CMD = common dso_local global i32 0, align 4
@ATA_I_IN = common dso_local global i32 0, align 4
@ATA_S_READY = common dso_local global i32 0, align 4
@ATA_S_DSC = common dso_local global i32 0, align 4
@ATA_SENSE_ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@ATA_S_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahci_port*, i32, i32*)* @atapi_start_stop_unit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atapi_start_stop_unit(%struct.ahci_port* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.ahci_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.ahci_port* %0, %struct.ahci_port** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 64
  store i32* %10, i32** %7, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 4
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, 3
  switch i32 %14, label %53 [
    i32 0, label %15
    i32 1, label %15
    i32 3, label %15
    i32 2, label %29
  ]

15:                                               ; preds = %3, %3, %3
  %16 = load i32*, i32** %6, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 4
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, -8
  %20 = load i32, i32* @ATA_I_CMD, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @ATA_I_IN, align 4
  %23 = or i32 %21, %22
  %24 = load i32*, i32** %6, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 4
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @ATA_S_READY, align 4
  %27 = load i32, i32* @ATA_S_DSC, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %8, align 4
  br label %53

29:                                               ; preds = %3
  %30 = load i32*, i32** %6, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 4
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, -8
  %34 = load i32, i32* @ATA_I_CMD, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @ATA_I_IN, align 4
  %37 = or i32 %35, %36
  %38 = load i32*, i32** %6, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 4
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @ATA_SENSE_ILLEGAL_REQUEST, align 4
  %41 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %42 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %44 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %43, i32 0, i32 1
  store i32 83, i32* %44, align 4
  %45 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %46 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 %47, 12
  %49 = load i32, i32* @ATA_S_READY, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @ATA_S_ERROR, align 4
  %52 = or i32 %50, %51
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %3, %29, %15
  %54 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %55 = load i32, i32* %5, align 4
  %56 = load i32*, i32** %6, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @ahci_write_fis_d2h(%struct.ahci_port* %54, i32 %55, i32* %56, i32 %57)
  ret void
}

declare dso_local i32 @ahci_write_fis_d2h(%struct.ahci_port*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
