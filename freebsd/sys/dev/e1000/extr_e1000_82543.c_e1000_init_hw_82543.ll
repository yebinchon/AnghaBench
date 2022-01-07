; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82543.c_e1000_init_hw_82543.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82543.c_e1000_init_hw_82543.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_mac_info, %struct.TYPE_3__ }
%struct.e1000_mac_info = type { i64, i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.1*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.TYPE_3__ = type { %struct.e1000_dev_spec_82543 }
%struct.e1000_dev_spec_82543 = type { i64 }

@.str = private unnamed_addr constant [20 x i8] c"e1000_init_hw_82543\00", align 1
@E1000_VET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Zeroing the MTA\0A\00", align 1
@E1000_MTA = common dso_local global i32 0, align 4
@e1000_82543 = common dso_local global i64 0, align 8
@E1000_CTRL = common dso_local global i32 0, align 4
@E1000_CTRL_PRIOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*)* @e1000_init_hw_82543 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_init_hw_82543(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_mac_info*, align 8
  %4 = alloca %struct.e1000_dev_spec_82543*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 0
  store %struct.e1000_mac_info* %9, %struct.e1000_mac_info** %3, align 8
  %10 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %11 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store %struct.e1000_dev_spec_82543* %12, %struct.e1000_dev_spec_82543** %4, align 8
  %13 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %15 = load i32, i32* @E1000_VET, align 4
  %16 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %14, i32 %15, i32 0)
  %17 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %18 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32 (%struct.e1000_hw.1*)*, i32 (%struct.e1000_hw.1*)** %19, align 8
  %21 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %22 = bitcast %struct.e1000_hw* %21 to %struct.e1000_hw.1*
  %23 = call i32 %20(%struct.e1000_hw.1* %22)
  %24 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %25 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %26 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @e1000_init_rx_addrs_generic(%struct.e1000_hw* %24, i32 %27)
  %29 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i64 0, i64* %7, align 8
  br label %30

30:                                               ; preds = %43, %1
  %31 = load i64, i64* %7, align 8
  %32 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %33 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp slt i64 %31, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %30
  %37 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %38 = load i32, i32* @E1000_MTA, align 4
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @E1000_WRITE_REG_ARRAY(%struct.e1000_hw* %37, i32 %38, i64 %39, i32 0)
  %41 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %42 = call i32 @E1000_WRITE_FLUSH(%struct.e1000_hw* %41)
  br label %43

43:                                               ; preds = %36
  %44 = load i64, i64* %7, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %7, align 8
  br label %30

46:                                               ; preds = %30
  %47 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %48 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @e1000_82543, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %68

53:                                               ; preds = %46
  %54 = load %struct.e1000_dev_spec_82543*, %struct.e1000_dev_spec_82543** %4, align 8
  %55 = getelementptr inbounds %struct.e1000_dev_spec_82543, %struct.e1000_dev_spec_82543* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %53
  %59 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %60 = load i32, i32* @E1000_CTRL, align 4
  %61 = call i32 @E1000_READ_REG(%struct.e1000_hw* %59, i32 %60)
  store i32 %61, i32* %5, align 4
  %62 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %63 = load i32, i32* @E1000_CTRL, align 4
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @E1000_CTRL_PRIOR, align 4
  %66 = or i32 %64, %65
  %67 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %62, i32 %63, i32 %66)
  br label %68

68:                                               ; preds = %58, %53, %46
  %69 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %70 = call i32 @e1000_pcix_mmrbc_workaround_generic(%struct.e1000_hw* %69)
  %71 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %72 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %73, align 8
  %75 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %76 = bitcast %struct.e1000_hw* %75 to %struct.e1000_hw.0*
  %77 = call i32 %74(%struct.e1000_hw.0* %76)
  store i32 %77, i32* %6, align 4
  %78 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %79 = call i32 @e1000_clear_hw_cntrs_82543(%struct.e1000_hw* %78)
  %80 = load i32, i32* %6, align 4
  ret i32 %80
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @e1000_init_rx_addrs_generic(%struct.e1000_hw*, i32) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @E1000_WRITE_REG_ARRAY(%struct.e1000_hw*, i32, i64, i32) #1

declare dso_local i32 @E1000_WRITE_FLUSH(%struct.e1000_hw*) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @e1000_pcix_mmrbc_workaround_generic(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_clear_hw_cntrs_82543(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
