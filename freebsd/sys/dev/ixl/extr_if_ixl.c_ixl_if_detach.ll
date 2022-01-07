; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_ixl.c_ixl_if_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_ixl.c_ixl_if_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { i32, i64, i32, %struct.i40e_hw, %struct.ixl_vsi }
%struct.i40e_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.ixl_vsi = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"begin\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"i40e_shutdown_lan_hmc() failed with status %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"i40e_shutdown_adminq() failed with status %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@ixl_enable_iwarp = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ixl_if_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixl_if_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ixl_pf*, align 8
  %4 = alloca %struct.ixl_vsi*, align 8
  %5 = alloca %struct.i40e_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call %struct.ixl_pf* @iflib_get_softc(i32 %8)
  store %struct.ixl_pf* %9, %struct.ixl_pf** %3, align 8
  %10 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %11 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %10, i32 0, i32 4
  store %struct.ixl_vsi* %11, %struct.ixl_vsi** %4, align 8
  %12 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %13 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %12, i32 0, i32 3
  store %struct.i40e_hw* %13, %struct.i40e_hw** %5, align 8
  %14 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %15 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @INIT_DBG_DEV(i32 %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.ixl_vsi*, %struct.ixl_vsi** %4, align 8
  %20 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ifmedia_removeall(i32 %21)
  %23 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %24 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %1
  %29 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %30 = call i32 @i40e_shutdown_lan_hmc(%struct.i40e_hw* %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @i40e_stat_str(%struct.i40e_hw* %35, i32 %36)
  %38 = call i32 (i32, i8*, ...) @device_printf(i32 %34, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %33, %28
  br label %40

40:                                               ; preds = %39, %1
  %41 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %42 = call i32 @ixl_disable_intr0(%struct.i40e_hw* %41)
  %43 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %44 = call i32 @i40e_shutdown_adminq(%struct.i40e_hw* %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %40
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @i40e_stat_str(%struct.i40e_hw* %49, i32 %50)
  %52 = call i32 (i32, i8*, ...) @device_printf(i32 %48, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %47, %40
  %54 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %55 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %54, i32 0, i32 0
  %56 = call i32 @ixl_pf_qmgr_destroy(i32* %55)
  %57 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %58 = call i32 @ixl_free_pci_resources(%struct.ixl_pf* %57)
  %59 = load %struct.ixl_vsi*, %struct.ixl_vsi** %4, align 8
  %60 = call i32 @ixl_free_mac_filters(%struct.ixl_vsi* %59)
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @INIT_DBG_DEV(i32 %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  ret i32 0
}

declare dso_local %struct.ixl_pf* @iflib_get_softc(i32) #1

declare dso_local i32 @INIT_DBG_DEV(i32, i8*) #1

declare dso_local i32 @ifmedia_removeall(i32) #1

declare dso_local i32 @i40e_shutdown_lan_hmc(%struct.i40e_hw*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @i40e_stat_str(%struct.i40e_hw*, i32) #1

declare dso_local i32 @ixl_disable_intr0(%struct.i40e_hw*) #1

declare dso_local i32 @i40e_shutdown_adminq(%struct.i40e_hw*) #1

declare dso_local i32 @ixl_pf_qmgr_destroy(i32*) #1

declare dso_local i32 @ixl_free_pci_resources(%struct.ixl_pf*) #1

declare dso_local i32 @ixl_free_mac_filters(%struct.ixl_vsi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
