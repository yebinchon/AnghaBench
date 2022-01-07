; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_read_filter_mode_and_ingress_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_read_filter_mode_and_ingress_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.tp_params }
%struct.tp_params = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32 }

@A_TP_VLAN_PRI_MAP = common dso_local global i32 0, align 4
@A_TP_INGRESS_CONFIG = common dso_local global i32 0, align 4
@F_FCOE = common dso_local global i32 0, align 4
@F_PORT = common dso_local global i32 0, align 4
@F_VNIC_ID = common dso_local global i32 0, align 4
@F_VLAN = common dso_local global i32 0, align 4
@F_TOS = common dso_local global i32 0, align 4
@F_PROTOCOL = common dso_local global i32 0, align 4
@F_ETHERTYPE = common dso_local global i32 0, align 4
@F_MACMATCH = common dso_local global i32 0, align 4
@F_MPSHITTYPE = common dso_local global i32 0, align 4
@F_FRAGMENTATION = common dso_local global i32 0, align 4
@CHELSIO_T4 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, i32)* @read_filter_mode_and_ingress_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_filter_mode_and_ingress_config(%struct.adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.tp_params*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.adapter*, %struct.adapter** %3, align 8
  %8 = getelementptr inbounds %struct.adapter, %struct.adapter* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.tp_params* %9, %struct.tp_params** %6, align 8
  %10 = load %struct.adapter*, %struct.adapter** %3, align 8
  %11 = load %struct.tp_params*, %struct.tp_params** %6, align 8
  %12 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %11, i32 0, i32 12
  %13 = load i32, i32* @A_TP_VLAN_PRI_MAP, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @t4_tp_pio_read(%struct.adapter* %10, i32* %12, i32 1, i32 %13, i32 %14)
  %16 = load %struct.adapter*, %struct.adapter** %3, align 8
  %17 = load %struct.tp_params*, %struct.tp_params** %6, align 8
  %18 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %17, i32 0, i32 11
  %19 = load i32, i32* @A_TP_INGRESS_CONFIG, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @t4_tp_pio_read(%struct.adapter* %16, i32* %18, i32 1, i32 %19, i32 %20)
  %22 = load %struct.adapter*, %struct.adapter** %3, align 8
  %23 = load i32, i32* @F_FCOE, align 4
  %24 = call i8* @t4_filter_field_shift(%struct.adapter* %22, i32 %23)
  %25 = load %struct.tp_params*, %struct.tp_params** %6, align 8
  %26 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %25, i32 0, i32 10
  store i8* %24, i8** %26, align 8
  %27 = load %struct.adapter*, %struct.adapter** %3, align 8
  %28 = load i32, i32* @F_PORT, align 4
  %29 = call i8* @t4_filter_field_shift(%struct.adapter* %27, i32 %28)
  %30 = load %struct.tp_params*, %struct.tp_params** %6, align 8
  %31 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %30, i32 0, i32 9
  store i8* %29, i8** %31, align 8
  %32 = load %struct.adapter*, %struct.adapter** %3, align 8
  %33 = load i32, i32* @F_VNIC_ID, align 4
  %34 = call i8* @t4_filter_field_shift(%struct.adapter* %32, i32 %33)
  %35 = load %struct.tp_params*, %struct.tp_params** %6, align 8
  %36 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %35, i32 0, i32 8
  store i8* %34, i8** %36, align 8
  %37 = load %struct.adapter*, %struct.adapter** %3, align 8
  %38 = load i32, i32* @F_VLAN, align 4
  %39 = call i8* @t4_filter_field_shift(%struct.adapter* %37, i32 %38)
  %40 = load %struct.tp_params*, %struct.tp_params** %6, align 8
  %41 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %40, i32 0, i32 7
  store i8* %39, i8** %41, align 8
  %42 = load %struct.adapter*, %struct.adapter** %3, align 8
  %43 = load i32, i32* @F_TOS, align 4
  %44 = call i8* @t4_filter_field_shift(%struct.adapter* %42, i32 %43)
  %45 = load %struct.tp_params*, %struct.tp_params** %6, align 8
  %46 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %45, i32 0, i32 6
  store i8* %44, i8** %46, align 8
  %47 = load %struct.adapter*, %struct.adapter** %3, align 8
  %48 = load i32, i32* @F_PROTOCOL, align 4
  %49 = call i8* @t4_filter_field_shift(%struct.adapter* %47, i32 %48)
  %50 = load %struct.tp_params*, %struct.tp_params** %6, align 8
  %51 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %50, i32 0, i32 5
  store i8* %49, i8** %51, align 8
  %52 = load %struct.adapter*, %struct.adapter** %3, align 8
  %53 = load i32, i32* @F_ETHERTYPE, align 4
  %54 = call i8* @t4_filter_field_shift(%struct.adapter* %52, i32 %53)
  %55 = load %struct.tp_params*, %struct.tp_params** %6, align 8
  %56 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %55, i32 0, i32 4
  store i8* %54, i8** %56, align 8
  %57 = load %struct.adapter*, %struct.adapter** %3, align 8
  %58 = load i32, i32* @F_MACMATCH, align 4
  %59 = call i8* @t4_filter_field_shift(%struct.adapter* %57, i32 %58)
  %60 = load %struct.tp_params*, %struct.tp_params** %6, align 8
  %61 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %60, i32 0, i32 3
  store i8* %59, i8** %61, align 8
  %62 = load %struct.adapter*, %struct.adapter** %3, align 8
  %63 = load i32, i32* @F_MPSHITTYPE, align 4
  %64 = call i8* @t4_filter_field_shift(%struct.adapter* %62, i32 %63)
  %65 = load %struct.tp_params*, %struct.tp_params** %6, align 8
  %66 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %65, i32 0, i32 2
  store i8* %64, i8** %66, align 8
  %67 = load %struct.adapter*, %struct.adapter** %3, align 8
  %68 = load i32, i32* @F_FRAGMENTATION, align 4
  %69 = call i8* @t4_filter_field_shift(%struct.adapter* %67, i32 %68)
  %70 = load %struct.tp_params*, %struct.tp_params** %6, align 8
  %71 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %70, i32 0, i32 1
  store i8* %69, i8** %71, align 8
  %72 = load %struct.adapter*, %struct.adapter** %3, align 8
  %73 = call i64 @chip_id(%struct.adapter* %72)
  %74 = load i64, i64* @CHELSIO_T4, align 8
  %75 = icmp sgt i64 %73, %74
  br i1 %75, label %76, label %96

76:                                               ; preds = %2
  %77 = load %struct.adapter*, %struct.adapter** %3, align 8
  %78 = call i32 @LE_HASH_MASK_GEN_IPV4T5(i32 3)
  %79 = call i32 @t4_read_reg(%struct.adapter* %77, i32 %78)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = load %struct.adapter*, %struct.adapter** %3, align 8
  %82 = getelementptr inbounds %struct.adapter, %struct.adapter* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %83, i32 0, i32 0
  store i32 %80, i32* %84, align 8
  %85 = load %struct.adapter*, %struct.adapter** %3, align 8
  %86 = call i32 @LE_HASH_MASK_GEN_IPV4T5(i32 4)
  %87 = call i32 @t4_read_reg(%struct.adapter* %85, i32 %86)
  store i32 %87, i32* %5, align 4
  %88 = load i32, i32* %5, align 4
  %89 = shl i32 %88, 32
  %90 = load %struct.adapter*, %struct.adapter** %3, align 8
  %91 = getelementptr inbounds %struct.adapter, %struct.adapter* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, %89
  store i32 %95, i32* %93, align 8
  br label %96

96:                                               ; preds = %76, %2
  ret void
}

declare dso_local i32 @t4_tp_pio_read(%struct.adapter*, i32*, i32, i32, i32) #1

declare dso_local i8* @t4_filter_field_shift(%struct.adapter*, i32) #1

declare dso_local i64 @chip_id(%struct.adapter*) #1

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @LE_HASH_MASK_GEN_IPV4T5(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
