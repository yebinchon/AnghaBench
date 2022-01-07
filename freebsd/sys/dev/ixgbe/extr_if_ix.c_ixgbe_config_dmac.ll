; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_config_dmac.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_config_dmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32, %struct.ixgbe_hw }
%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__, %struct.ixgbe_dmac_config }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_dmac_config = type { i32, i32, i32, i32 }

@ixgbe_mac_X550 = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"dmac settings: watchdog %d, link speed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @ixgbe_config_dmac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_config_dmac(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca %struct.ixgbe_dmac_config*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %5 = load %struct.adapter*, %struct.adapter** %2, align 8
  %6 = getelementptr inbounds %struct.adapter, %struct.adapter* %5, i32 0, i32 2
  store %struct.ixgbe_hw* %6, %struct.ixgbe_hw** %3, align 8
  %7 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %8 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  store %struct.ixgbe_dmac_config* %9, %struct.ixgbe_dmac_config** %4, align 8
  %10 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %11 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ixgbe_mac_X550, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %23, label %16

16:                                               ; preds = %1
  %17 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %18 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32 (%struct.ixgbe_hw.0*)*, i32 (%struct.ixgbe_hw.0*)** %20, align 8
  %22 = icmp ne i32 (%struct.ixgbe_hw.0*)* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %16, %1
  br label %73

24:                                               ; preds = %16
  %25 = load %struct.ixgbe_dmac_config*, %struct.ixgbe_dmac_config** %4, align 8
  %26 = getelementptr inbounds %struct.ixgbe_dmac_config, %struct.ixgbe_dmac_config* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.adapter*, %struct.adapter** %2, align 8
  %29 = getelementptr inbounds %struct.adapter, %struct.adapter* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = xor i32 %27, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %24
  %34 = load %struct.ixgbe_dmac_config*, %struct.ixgbe_dmac_config** %4, align 8
  %35 = getelementptr inbounds %struct.ixgbe_dmac_config, %struct.ixgbe_dmac_config* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.adapter*, %struct.adapter** %2, align 8
  %38 = getelementptr inbounds %struct.adapter, %struct.adapter* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = xor i32 %36, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %73

42:                                               ; preds = %33, %24
  %43 = load %struct.adapter*, %struct.adapter** %2, align 8
  %44 = getelementptr inbounds %struct.adapter, %struct.adapter* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.ixgbe_dmac_config*, %struct.ixgbe_dmac_config** %4, align 8
  %47 = getelementptr inbounds %struct.ixgbe_dmac_config, %struct.ixgbe_dmac_config* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @FALSE, align 4
  %49 = load %struct.ixgbe_dmac_config*, %struct.ixgbe_dmac_config** %4, align 8
  %50 = getelementptr inbounds %struct.ixgbe_dmac_config, %struct.ixgbe_dmac_config* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 4
  %51 = load %struct.adapter*, %struct.adapter** %2, align 8
  %52 = getelementptr inbounds %struct.adapter, %struct.adapter* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ixgbe_dmac_config*, %struct.ixgbe_dmac_config** %4, align 8
  %55 = getelementptr inbounds %struct.ixgbe_dmac_config, %struct.ixgbe_dmac_config* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.ixgbe_dmac_config*, %struct.ixgbe_dmac_config** %4, align 8
  %57 = getelementptr inbounds %struct.ixgbe_dmac_config, %struct.ixgbe_dmac_config* %56, i32 0, i32 2
  store i32 1, i32* %57, align 4
  %58 = load %struct.ixgbe_dmac_config*, %struct.ixgbe_dmac_config** %4, align 8
  %59 = getelementptr inbounds %struct.ixgbe_dmac_config, %struct.ixgbe_dmac_config* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.ixgbe_dmac_config*, %struct.ixgbe_dmac_config** %4, align 8
  %62 = getelementptr inbounds %struct.ixgbe_dmac_config, %struct.ixgbe_dmac_config* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @INIT_DEBUGOUT2(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %63)
  %65 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %66 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32 (%struct.ixgbe_hw.0*)*, i32 (%struct.ixgbe_hw.0*)** %68, align 8
  %70 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %71 = bitcast %struct.ixgbe_hw* %70 to %struct.ixgbe_hw.0*
  %72 = call i32 %69(%struct.ixgbe_hw.0* %71)
  br label %73

73:                                               ; preds = %23, %42, %33
  ret void
}

declare dso_local i32 @INIT_DEBUGOUT2(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
