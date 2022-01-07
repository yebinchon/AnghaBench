; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/al_eth/extr_al_eth.c_al_eth_function_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/al_eth/extr_al_eth.c_al_eth_function_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_eth_adapter = type { i64, i32, i32, i32, i32, i32 }
%struct.al_eth_board_params = type { i32 }

@ALPINE_INTEGRATED = common dso_local global i64 0, align 8
@al_eth_read_pci_config = common dso_local global i32 0, align 4
@al_eth_write_pci_config = common dso_local global i32 0, align 4
@al_eth_fpga_read_pci_config = common dso_local global i32 0, align 4
@al_eth_fpga_write_pci_config = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.al_eth_adapter*)* @al_eth_function_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @al_eth_function_reset(%struct.al_eth_adapter* %0) #0 {
  %2 = alloca %struct.al_eth_adapter*, align 8
  %3 = alloca %struct.al_eth_board_params, align 4
  %4 = alloca i32, align 4
  store %struct.al_eth_adapter* %0, %struct.al_eth_adapter** %2, align 8
  %5 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @al_eth_board_params_get(i32 %7, %struct.al_eth_board_params* %3)
  %9 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @al_eth_mac_addr_read(i32 %11, i32 0, i32 %14)
  %16 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %17 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ALPINE_INTEGRATED, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %1
  %22 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %23 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %26 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @al_eth_flr_rmn(i32* @al_eth_read_pci_config, i32* @al_eth_write_pci_config, i32 %24, i32 %27)
  store i32 %28, i32* %4, align 4
  br label %37

29:                                               ; preds = %1
  %30 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %31 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %34 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @al_eth_flr_rmn(i32* @al_eth_fpga_read_pci_config, i32* @al_eth_fpga_write_pci_config, i32 %32, i32 %35)
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %29, %21
  %38 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %39 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @al_eth_board_params_set(i32 %40, %struct.al_eth_board_params* %3)
  %42 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %43 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %46 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @al_eth_mac_addr_store(i32 %44, i32 0, i32 %47)
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @al_eth_board_params_get(i32, %struct.al_eth_board_params*) #1

declare dso_local i32 @al_eth_mac_addr_read(i32, i32, i32) #1

declare dso_local i32 @al_eth_flr_rmn(i32*, i32*, i32, i32) #1

declare dso_local i32 @al_eth_board_params_set(i32, %struct.al_eth_board_params*) #1

declare dso_local i32 @al_eth_mac_addr_store(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
