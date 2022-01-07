; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nic_main.c_nicpf_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nic_main.c_nicpf_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicpf = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"Could not allocate PCI resources\0A\00", align 1
@NIC_TNS_ENABLED = common dso_local global i32 0, align 4
@NIC_MAX_RSS_IDR_TBL_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"VNIC PF link poll\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @nicpf_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nicpf_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.nicpf*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.nicpf* @device_get_softc(i32 %6)
  store %struct.nicpf* %7, %struct.nicpf** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %10 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %9, i32 0, i32 6
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @pci_enable_busmaster(i32 %11)
  %13 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %14 = call i32 @nicpf_alloc_res(%struct.nicpf* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @device_printf(i32 %18, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %2, align 4
  br label %88

21:                                               ; preds = %1
  %22 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %23 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @nic_get_node_id(i32 %24)
  %26 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %27 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @NIC_TNS_ENABLED, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %31 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %35 = call i32 @nic_set_lmac_vf_mapping(%struct.nicpf* %34)
  %36 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %37 = call i32 @nic_init_hw(%struct.nicpf* %36)
  %38 = load i32, i32* @NIC_MAX_RSS_IDR_TBL_SIZE, align 4
  %39 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %40 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  %41 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %42 = call i32 @nic_register_interrupts(%struct.nicpf* %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %21
  br label %82

46:                                               ; preds = %21
  %47 = load i32, i32* %3, align 4
  %48 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %49 = call i32 @nic_sriov_init(i32 %47, %struct.nicpf* %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %79

53:                                               ; preds = %46
  %54 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %55 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @NIC_TNS_ENABLED, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  store i32 0, i32* %2, align 4
  br label %88

61:                                               ; preds = %53
  %62 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %63 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %62, i32 0, i32 1
  %64 = load i32, i32* @MTX_DEF, align 4
  %65 = call i32 @mtx_init(i32* %63, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %64)
  %66 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %67 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %66, i32 0, i32 2
  %68 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %69 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %68, i32 0, i32 1
  %70 = call i32 @callout_init_mtx(i32* %67, i32* %69, i32 0)
  %71 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %72 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %71, i32 0, i32 1
  %73 = call i32 @mtx_lock(i32* %72)
  %74 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %75 = call i32 @nic_poll_for_link(%struct.nicpf* %74)
  %76 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %77 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %76, i32 0, i32 1
  %78 = call i32 @mtx_unlock(i32* %77)
  store i32 0, i32* %2, align 4
  br label %88

79:                                               ; preds = %52
  %80 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %81 = call i32 @nic_unregister_interrupts(%struct.nicpf* %80)
  br label %82

82:                                               ; preds = %79, %45
  %83 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %84 = call i32 @nicpf_free_res(%struct.nicpf* %83)
  %85 = load i32, i32* %3, align 4
  %86 = call i32 @pci_disable_busmaster(i32 %85)
  %87 = load i32, i32* %5, align 4
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %82, %61, %60, %17
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local %struct.nicpf* @device_get_softc(i32) #1

declare dso_local i32 @pci_enable_busmaster(i32) #1

declare dso_local i32 @nicpf_alloc_res(%struct.nicpf*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @nic_get_node_id(i32) #1

declare dso_local i32 @nic_set_lmac_vf_mapping(%struct.nicpf*) #1

declare dso_local i32 @nic_init_hw(%struct.nicpf*) #1

declare dso_local i32 @nic_register_interrupts(%struct.nicpf*) #1

declare dso_local i32 @nic_sriov_init(i32, %struct.nicpf*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @nic_poll_for_link(%struct.nicpf*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @nic_unregister_interrupts(%struct.nicpf*) #1

declare dso_local i32 @nicpf_free_res(%struct.nicpf*) #1

declare dso_local i32 @pci_disable_busmaster(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
