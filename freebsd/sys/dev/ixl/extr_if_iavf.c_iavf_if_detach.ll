; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_iavf.c_iavf_if_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_iavf.c_iavf_if_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_sc = type { i32, %struct.i40e_hw, i32, %struct.ixl_vsi }
%struct.i40e_hw = type { i32 }
%struct.ixl_vsi = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"begin\00", align 1
@I40E_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"i40e_shutdown_adminq() failed with status %s\0A\00", align 1
@M_IAVF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @iavf_if_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iavf_if_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iavf_sc*, align 8
  %4 = alloca %struct.ixl_vsi*, align 8
  %5 = alloca %struct.i40e_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call %struct.iavf_sc* @iflib_get_softc(i32 %8)
  store %struct.iavf_sc* %9, %struct.iavf_sc** %3, align 8
  %10 = load %struct.iavf_sc*, %struct.iavf_sc** %3, align 8
  %11 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %10, i32 0, i32 3
  store %struct.ixl_vsi* %11, %struct.ixl_vsi** %4, align 8
  %12 = load %struct.iavf_sc*, %struct.iavf_sc** %3, align 8
  %13 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %12, i32 0, i32 1
  store %struct.i40e_hw* %13, %struct.i40e_hw** %5, align 8
  %14 = load %struct.iavf_sc*, %struct.iavf_sc** %3, align 8
  %15 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @INIT_DBG_DEV(i32 %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.ixl_vsi*, %struct.ixl_vsi** %4, align 8
  %20 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ifmedia_removeall(i32 %21)
  %23 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %24 = call i32 @iavf_disable_adminq_irq(%struct.i40e_hw* %23)
  %25 = load %struct.iavf_sc*, %struct.iavf_sc** %3, align 8
  %26 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %25, i32 0, i32 1
  %27 = call i32 @i40e_shutdown_adminq(%struct.i40e_hw* %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @I40E_SUCCESS, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %1
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @i40e_stat_str(%struct.i40e_hw* %33, i32 %34)
  %36 = call i32 @device_printf(i32 %32, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %31, %1
  %38 = load %struct.iavf_sc*, %struct.iavf_sc** %3, align 8
  %39 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @M_IAVF, align 4
  %42 = call i32 @free(i32 %40, i32 %41)
  %43 = load %struct.iavf_sc*, %struct.iavf_sc** %3, align 8
  %44 = call i32 @iavf_free_pci_resources(%struct.iavf_sc* %43)
  %45 = load %struct.iavf_sc*, %struct.iavf_sc** %3, align 8
  %46 = call i32 @iavf_free_filters(%struct.iavf_sc* %45)
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @INIT_DBG_DEV(i32 %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  ret i32 0
}

declare dso_local %struct.iavf_sc* @iflib_get_softc(i32) #1

declare dso_local i32 @INIT_DBG_DEV(i32, i8*) #1

declare dso_local i32 @ifmedia_removeall(i32) #1

declare dso_local i32 @iavf_disable_adminq_irq(%struct.i40e_hw*) #1

declare dso_local i32 @i40e_shutdown_adminq(%struct.i40e_hw*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @i40e_stat_str(%struct.i40e_hw*, i32) #1

declare dso_local i32 @free(i32, i32) #1

declare dso_local i32 @iavf_free_pci_resources(%struct.iavf_sc*) #1

declare dso_local i32 @iavf_free_filters(%struct.iavf_sc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
