; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_config_gpie.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_config_gpie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i64, i32, %struct.ixgbe_hw }
%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IXGBE_GPIE = common dso_local global i32 0, align 4
@IFLIB_INTR_MSIX = common dso_local global i64 0, align 8
@IXGBE_GPIE_MSIX_MODE = common dso_local global i32 0, align 4
@IXGBE_GPIE_EIAME = common dso_local global i32 0, align 4
@IXGBE_GPIE_PBA_SUPPORT = common dso_local global i32 0, align 4
@IXGBE_GPIE_OCD = common dso_local global i32 0, align 4
@IXGBE_FEATURE_FAN_FAIL = common dso_local global i32 0, align 4
@IXGBE_SDP1_GPIEN = common dso_local global i32 0, align 4
@IXGBE_FEATURE_TEMP_SENSOR = common dso_local global i32 0, align 4
@IXGBE_SDP0_GPIEN_X540 = common dso_local global i32 0, align 4
@IXGBE_SDP2_GPIEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @ixgbe_config_gpie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_config_gpie(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %5 = load %struct.adapter*, %struct.adapter** %2, align 8
  %6 = getelementptr inbounds %struct.adapter, %struct.adapter* %5, i32 0, i32 2
  store %struct.ixgbe_hw* %6, %struct.ixgbe_hw** %3, align 8
  %7 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %8 = load i32, i32* @IXGBE_GPIE, align 4
  %9 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.adapter*, %struct.adapter** %2, align 8
  %11 = getelementptr inbounds %struct.adapter, %struct.adapter* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @IFLIB_INTR_MSIX, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %1
  %16 = load i32, i32* @IXGBE_GPIE_MSIX_MODE, align 4
  %17 = load i32, i32* @IXGBE_GPIE_EIAME, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @IXGBE_GPIE_PBA_SUPPORT, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @IXGBE_GPIE_OCD, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* %4, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %15, %1
  %26 = load %struct.adapter*, %struct.adapter** %2, align 8
  %27 = getelementptr inbounds %struct.adapter, %struct.adapter* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @IXGBE_FEATURE_FAN_FAIL, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load i32, i32* @IXGBE_SDP1_GPIEN, align 4
  %34 = load i32, i32* %4, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %32, %25
  %37 = load %struct.adapter*, %struct.adapter** %2, align 8
  %38 = getelementptr inbounds %struct.adapter, %struct.adapter* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @IXGBE_FEATURE_TEMP_SENSOR, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = load i32, i32* @IXGBE_SDP0_GPIEN_X540, align 4
  %45 = load i32, i32* %4, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %43, %36
  %48 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %49 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  switch i32 %51, label %62 [
    i32 130, label %52
    i32 128, label %58
    i32 129, label %58
  ]

52:                                               ; preds = %47
  %53 = load i32, i32* @IXGBE_SDP1_GPIEN, align 4
  %54 = load i32, i32* @IXGBE_SDP2_GPIEN, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* %4, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %4, align 4
  br label %63

58:                                               ; preds = %47, %47
  %59 = load i32, i32* @IXGBE_SDP0_GPIEN_X540, align 4
  %60 = load i32, i32* %4, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %4, align 4
  br label %63

62:                                               ; preds = %47
  br label %63

63:                                               ; preds = %62, %58, %52
  %64 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %65 = load i32, i32* @IXGBE_GPIE, align 4
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %64, i32 %65, i32 %66)
  ret void
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
