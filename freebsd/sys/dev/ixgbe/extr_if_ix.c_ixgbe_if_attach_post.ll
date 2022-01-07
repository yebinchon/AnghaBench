; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_if_attach_post.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_if_attach_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i64, i32, i32, i64, i32*, %struct.ixgbe_hw }
%struct.ixgbe_hw = type { i32 }

@IFLIB_INTR_LEGACY = common dso_local global i64 0, align 8
@IXGBE_FEATURE_LEGACY_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Device does not support legacy interrupts\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@MAX_NUM_MULTICAST_ADDRESSES = common dso_local global i32 0, align 4
@M_IXGBE = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Can not allocate multicast setup array\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ixgbe_advertise_speed = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Interface setup failed: %d\0A\00", align 1
@IXGBE_FEATURE_SRIOV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ixgbe_if_attach_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_if_attach_post(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca %struct.ixgbe_hw*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @iflib_get_dev(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.adapter* @iflib_get_softc(i32 %10)
  store %struct.adapter* %11, %struct.adapter** %5, align 8
  %12 = load %struct.adapter*, %struct.adapter** %5, align 8
  %13 = getelementptr inbounds %struct.adapter, %struct.adapter* %12, i32 0, i32 5
  store %struct.ixgbe_hw* %13, %struct.ixgbe_hw** %6, align 8
  %14 = load %struct.adapter*, %struct.adapter** %5, align 8
  %15 = getelementptr inbounds %struct.adapter, %struct.adapter* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @IFLIB_INTR_LEGACY, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %1
  %20 = load %struct.adapter*, %struct.adapter** %5, align 8
  %21 = getelementptr inbounds %struct.adapter, %struct.adapter* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @IXGBE_FEATURE_LEGACY_IRQ, align 4
  %24 = and i32 %22, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load i32, i32* %4, align 4
  %28 = call i32 (i32, i8*, ...) @device_printf(i32 %27, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @ENXIO, align 4
  store i32 %29, i32* %7, align 4
  br label %96

30:                                               ; preds = %19, %1
  %31 = load i32, i32* @MAX_NUM_MULTICAST_ADDRESSES, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 4, %32
  %34 = trunc i64 %33 to i32
  %35 = load i32, i32* @M_IXGBE, align 4
  %36 = load i32, i32* @M_NOWAIT, align 4
  %37 = call i32* @malloc(i32 %34, i32 %35, i32 %36)
  %38 = load %struct.adapter*, %struct.adapter** %5, align 8
  %39 = getelementptr inbounds %struct.adapter, %struct.adapter* %38, i32 0, i32 4
  store i32* %37, i32** %39, align 8
  %40 = load %struct.adapter*, %struct.adapter** %5, align 8
  %41 = getelementptr inbounds %struct.adapter, %struct.adapter* %40, i32 0, i32 4
  %42 = load i32*, i32** %41, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %30
  %45 = load i32, i32* %4, align 4
  %46 = call i32 (i32, i8*, ...) @device_printf(i32 %45, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @ENOMEM, align 4
  store i32 %47, i32* %7, align 4
  br label %96

48:                                               ; preds = %30
  %49 = load %struct.adapter*, %struct.adapter** %5, align 8
  %50 = load i32, i32* @ixgbe_advertise_speed, align 4
  %51 = call i32 @ixgbe_set_advertise(%struct.adapter* %49, i32 %50)
  %52 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %53 = call i32 @ixgbe_enable_tx_laser(%struct.ixgbe_hw* %52)
  %54 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %55 = load i32, i32* @TRUE, align 4
  %56 = call i32 @ixgbe_set_phy_power(%struct.ixgbe_hw* %54, i32 %55)
  %57 = load %struct.adapter*, %struct.adapter** %5, align 8
  %58 = call i32 @ixgbe_initialize_iov(%struct.adapter* %57)
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @ixgbe_setup_interface(i32 %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %48
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 (i32, i8*, ...) @device_printf(i32 %64, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  br label %96

67:                                               ; preds = %48
  %68 = load i32, i32* %3, align 4
  %69 = call i32 @ixgbe_if_update_admin_status(i32 %68)
  %70 = load %struct.adapter*, %struct.adapter** %5, align 8
  %71 = call i32 @ixgbe_update_stats_counters(%struct.adapter* %70)
  %72 = load %struct.adapter*, %struct.adapter** %5, align 8
  %73 = call i32 @ixgbe_add_hw_stats(%struct.adapter* %72)
  %74 = load %struct.adapter*, %struct.adapter** %5, align 8
  %75 = call i32 @ixgbe_get_slot_info(%struct.adapter* %74)
  %76 = load %struct.adapter*, %struct.adapter** %5, align 8
  %77 = call i32 @ixgbe_bypass_init(%struct.adapter* %76)
  %78 = load %struct.adapter*, %struct.adapter** %5, align 8
  %79 = getelementptr inbounds %struct.adapter, %struct.adapter* %78, i32 0, i32 3
  store i64 0, i64* %79, align 8
  %80 = load %struct.adapter*, %struct.adapter** %5, align 8
  %81 = call i32 @ixgbe_get_advertise(%struct.adapter* %80)
  %82 = load %struct.adapter*, %struct.adapter** %5, align 8
  %83 = getelementptr inbounds %struct.adapter, %struct.adapter* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 4
  %84 = load %struct.adapter*, %struct.adapter** %5, align 8
  %85 = getelementptr inbounds %struct.adapter, %struct.adapter* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @IXGBE_FEATURE_SRIOV, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %67
  %91 = load i32, i32* %4, align 4
  %92 = call i32 @ixgbe_define_iov_schemas(i32 %91, i32* %7)
  br label %93

93:                                               ; preds = %90, %67
  %94 = load i32, i32* %3, align 4
  %95 = call i32 @ixgbe_add_device_sysctls(i32 %94)
  store i32 0, i32* %2, align 4
  br label %98

96:                                               ; preds = %63, %44, %26
  %97 = load i32, i32* %7, align 4
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %96, %93
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @iflib_get_dev(i32) #1

declare dso_local %struct.adapter* @iflib_get_softc(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @ixgbe_set_advertise(%struct.adapter*, i32) #1

declare dso_local i32 @ixgbe_enable_tx_laser(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_set_phy_power(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @ixgbe_initialize_iov(%struct.adapter*) #1

declare dso_local i32 @ixgbe_setup_interface(i32) #1

declare dso_local i32 @ixgbe_if_update_admin_status(i32) #1

declare dso_local i32 @ixgbe_update_stats_counters(%struct.adapter*) #1

declare dso_local i32 @ixgbe_add_hw_stats(%struct.adapter*) #1

declare dso_local i32 @ixgbe_get_slot_info(%struct.adapter*) #1

declare dso_local i32 @ixgbe_bypass_init(%struct.adapter*) #1

declare dso_local i32 @ixgbe_get_advertise(%struct.adapter*) #1

declare dso_local i32 @ixgbe_define_iov_schemas(i32, i32*) #1

declare dso_local i32 @ixgbe_add_device_sysctls(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
