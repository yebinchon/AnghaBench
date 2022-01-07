; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_iov.c_ixl_initialize_sriov.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_iov.c_ixl_initialize_sriov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { %struct.i40e_hw, i32 }
%struct.i40e_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [9 x i8] c"mac-addr\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"mac-anti-spoof\00", align 1
@IOV_SCHEMA_HASDEFAULT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"allow-set-mac\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"allow-promisc\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"num-queues\00", align 1
@IAVF_MAX_QUEUES = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [40 x i8] c"Failed to initialize SR-IOV (error=%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"SR-IOV ready\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixl_initialize_sriov(%struct.ixl_pf* %0) #0 {
  %2 = alloca %struct.ixl_pf*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40e_hw*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.ixl_pf* %0, %struct.ixl_pf** %2, align 8
  %8 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %9 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %3, align 4
  %11 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %12 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %11, i32 0, i32 0
  store %struct.i40e_hw* %12, %struct.i40e_hw** %4, align 8
  %13 = call i32* (...) @pci_iov_schema_alloc_node()
  store i32* %13, i32** %5, align 8
  %14 = call i32* (...) @pci_iov_schema_alloc_node()
  store i32* %14, i32** %6, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @pci_iov_schema_add_unicast_mac(i32* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 0, i32* null)
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* @IOV_SCHEMA_HASDEFAULT, align 4
  %19 = load i32, i32* @TRUE, align 4
  %20 = call i32 @pci_iov_schema_add_bool(i32* %17, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %18, i32 %19)
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* @IOV_SCHEMA_HASDEFAULT, align 4
  %23 = load i32, i32* @FALSE, align 4
  %24 = call i32 @pci_iov_schema_add_bool(i32* %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %22, i32 %23)
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* @IOV_SCHEMA_HASDEFAULT, align 4
  %27 = load i32, i32* @FALSE, align 4
  %28 = call i32 @pci_iov_schema_add_bool(i32* %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %26, i32 %27)
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* @IOV_SCHEMA_HASDEFAULT, align 4
  %31 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %32 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = sub nsw i64 %34, 1
  %36 = load i32, i32* @IAVF_MAX_QUEUES, align 4
  %37 = call i32 @min(i64 %35, i32 %36)
  %38 = call i32 @max(i32 1, i32 %37)
  %39 = call i32 @pci_iov_schema_add_uint16(i32* %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %30, i32 %38)
  %40 = load i32, i32* %3, align 4
  %41 = load i32*, i32** %5, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @pci_iov_attach(i32 %40, i32* %41, i32* %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %1
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 (i32, i8*, ...) @device_printf(i32 %47, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %48)
  br label %53

50:                                               ; preds = %1
  %51 = load i32, i32* %3, align 4
  %52 = call i32 (i32, i8*, ...) @device_printf(i32 %51, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  br label %53

53:                                               ; preds = %50, %46
  ret void
}

declare dso_local i32* @pci_iov_schema_alloc_node(...) #1

declare dso_local i32 @pci_iov_schema_add_unicast_mac(i32*, i8*, i32, i32*) #1

declare dso_local i32 @pci_iov_schema_add_bool(i32*, i8*, i32, i32) #1

declare dso_local i32 @pci_iov_schema_add_uint16(i32*, i8*, i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @min(i64, i32) #1

declare dso_local i32 @pci_iov_attach(i32, i32*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
