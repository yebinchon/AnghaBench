; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_ahci.c_ahci_handle_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_ahci.c_ahci_handle_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_port = type { i32, i32, i32, i32, i32, i64 }

@AHCI_P_CMD_ST = common dso_local global i32 0, align 4
@ATA_S_BUSY = common dso_local global i32 0, align 4
@ATA_S_DRQ = common dso_local global i32 0, align 4
@AHCI_P_CMD_CCS_MASK = common dso_local global i32 0, align 4
@AHCI_P_CMD_CCS_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahci_port*)* @ahci_handle_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahci_handle_port(%struct.ahci_port* %0) #0 {
  %2 = alloca %struct.ahci_port*, align 8
  store %struct.ahci_port* %0, %struct.ahci_port** %2, align 8
  %3 = load %struct.ahci_port*, %struct.ahci_port** %2, align 8
  %4 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @AHCI_P_CMD_ST, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %82

10:                                               ; preds = %1
  br label %11

11:                                               ; preds = %74, %10
  %12 = load %struct.ahci_port*, %struct.ahci_port** %2, align 8
  %13 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ahci_port*, %struct.ahci_port** %2, align 8
  %16 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = xor i32 %17, -1
  %19 = and i32 %14, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %82

21:                                               ; preds = %11
  %22 = load %struct.ahci_port*, %struct.ahci_port** %2, align 8
  %23 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @ATA_S_BUSY, align 4
  %26 = load i32, i32* @ATA_S_DRQ, align 4
  %27 = or i32 %25, %26
  %28 = and i32 %24, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  br label %82

31:                                               ; preds = %21
  %32 = load %struct.ahci_port*, %struct.ahci_port** %2, align 8
  %33 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %32, i32 0, i32 5
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %82

37:                                               ; preds = %31
  %38 = load %struct.ahci_port*, %struct.ahci_port** %2, align 8
  %39 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ahci_port*, %struct.ahci_port** %2, align 8
  %42 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = xor i32 %43, -1
  %45 = and i32 %40, %44
  %46 = load %struct.ahci_port*, %struct.ahci_port** %2, align 8
  %47 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = shl i32 1, %48
  %50 = and i32 %45, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %73

52:                                               ; preds = %37
  %53 = load i32, i32* @AHCI_P_CMD_CCS_MASK, align 4
  %54 = xor i32 %53, -1
  %55 = load %struct.ahci_port*, %struct.ahci_port** %2, align 8
  %56 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = and i32 %57, %54
  store i32 %58, i32* %56, align 8
  %59 = load %struct.ahci_port*, %struct.ahci_port** %2, align 8
  %60 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @AHCI_P_CMD_CCS_SHIFT, align 4
  %63 = shl i32 %61, %62
  %64 = load %struct.ahci_port*, %struct.ahci_port** %2, align 8
  %65 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 8
  %68 = load %struct.ahci_port*, %struct.ahci_port** %2, align 8
  %69 = load %struct.ahci_port*, %struct.ahci_port** %2, align 8
  %70 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @ahci_handle_slot(%struct.ahci_port* %68, i32 %71)
  br label %73

73:                                               ; preds = %52, %37
  br label %74

74:                                               ; preds = %73
  %75 = load %struct.ahci_port*, %struct.ahci_port** %2, align 8
  %76 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  %79 = and i32 %78, 31
  %80 = load %struct.ahci_port*, %struct.ahci_port** %2, align 8
  %81 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 4
  br label %11

82:                                               ; preds = %9, %36, %30, %11
  ret void
}

declare dso_local i32 @ahci_handle_slot(%struct.ahci_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
