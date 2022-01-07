; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64stl_control.c_nat64stl_create_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64stl_control.c_nat64stl_create_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.nat64stl_cfg = type { %struct.TYPE_7__, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@ENOSPC = common dso_local global i32 0, align 4
@NAT64STL_KIDX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NAT64STL_46T = common dso_local global i32 0, align 4
@NAT64STL_64T = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_fw_chain*, %struct.nat64stl_cfg*, %struct.TYPE_6__*)* @nat64stl_create_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nat64stl_create_internal(%struct.ip_fw_chain* %0, %struct.nat64stl_cfg* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_fw_chain*, align 8
  %6 = alloca %struct.nat64stl_cfg*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %5, align 8
  store %struct.nat64stl_cfg* %1, %struct.nat64stl_cfg** %6, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  %8 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %9 = call i32 @IPFW_UH_WLOCK_ASSERT(%struct.ip_fw_chain* %8)
  %10 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %11 = call i32 @CHAIN_TO_SRV(%struct.ip_fw_chain* %10)
  %12 = load %struct.nat64stl_cfg*, %struct.nat64stl_cfg** %6, align 8
  %13 = getelementptr inbounds %struct.nat64stl_cfg, %struct.nat64stl_cfg* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = call i64 @ipfw_objhash_alloc_idx(i32 %11, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOSPC, align 4
  store i32 %18, i32* %4, align 4
  br label %63

19:                                               ; preds = %3
  %20 = load i32, i32* @NAT64STL_KIDX, align 4
  %21 = load %struct.nat64stl_cfg*, %struct.nat64stl_cfg** %6, align 8
  %22 = getelementptr inbounds %struct.nat64stl_cfg, %struct.nat64stl_cfg* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %20
  store i32 %25, i32* %23, align 4
  %26 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load %struct.nat64stl_cfg*, %struct.nat64stl_cfg** %6, align 8
  %30 = getelementptr inbounds %struct.nat64stl_cfg, %struct.nat64stl_cfg* %29, i32 0, i32 3
  %31 = call i64 @ipfw_ref_table(%struct.ip_fw_chain* %26, i32* %28, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %19
  %34 = load i32, i32* @EINVAL, align 4
  store i32 %34, i32* %4, align 4
  br label %63

35:                                               ; preds = %19
  %36 = load i32, i32* @NAT64STL_46T, align 4
  %37 = load %struct.nat64stl_cfg*, %struct.nat64stl_cfg** %6, align 8
  %38 = getelementptr inbounds %struct.nat64stl_cfg, %struct.nat64stl_cfg* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %36
  store i32 %41, i32* %39, align 4
  %42 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load %struct.nat64stl_cfg*, %struct.nat64stl_cfg** %6, align 8
  %46 = getelementptr inbounds %struct.nat64stl_cfg, %struct.nat64stl_cfg* %45, i32 0, i32 2
  %47 = call i64 @ipfw_ref_table(%struct.ip_fw_chain* %42, i32* %44, i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %35
  %50 = load i32, i32* @EINVAL, align 4
  store i32 %50, i32* %4, align 4
  br label %63

51:                                               ; preds = %35
  %52 = load i32, i32* @NAT64STL_64T, align 4
  %53 = load %struct.nat64stl_cfg*, %struct.nat64stl_cfg** %6, align 8
  %54 = getelementptr inbounds %struct.nat64stl_cfg, %struct.nat64stl_cfg* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %52
  store i32 %57, i32* %55, align 4
  %58 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %59 = call i32 @CHAIN_TO_SRV(%struct.ip_fw_chain* %58)
  %60 = load %struct.nat64stl_cfg*, %struct.nat64stl_cfg** %6, align 8
  %61 = getelementptr inbounds %struct.nat64stl_cfg, %struct.nat64stl_cfg* %60, i32 0, i32 0
  %62 = call i32 @ipfw_objhash_add(i32 %59, %struct.TYPE_7__* %61)
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %51, %49, %33, %17
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @IPFW_UH_WLOCK_ASSERT(%struct.ip_fw_chain*) #1

declare dso_local i64 @ipfw_objhash_alloc_idx(i32, i32*) #1

declare dso_local i32 @CHAIN_TO_SRV(%struct.ip_fw_chain*) #1

declare dso_local i64 @ipfw_ref_table(%struct.ip_fw_chain*, i32*, i32*) #1

declare dso_local i32 @ipfw_objhash_add(i32, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
