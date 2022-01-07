; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82540.c_e1000_init_hw_82540.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82540.c_e1000_init_hw_82540.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i64, %struct.e1000_mac_info }
%struct.e1000_mac_info = type { i64, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.1*)*, i64 (%struct.e1000_hw.2*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.e1000_hw.2 = type opaque

@.str = private unnamed_addr constant [20 x i8] c"e1000_init_hw_82540\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Error initializing identification LED\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Initializing the IEEE VLAN\0A\00", align 1
@e1000_82545_rev_3 = common dso_local global i64 0, align 8
@E1000_VET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"Zeroing the MTA\0A\00", align 1
@E1000_MTA = common dso_local global i32 0, align 4
@E1000_TXDCTL_WTHRESH = common dso_local global i32 0, align 4
@E1000_TXDCTL_FULL_TX_DESC_WB = common dso_local global i32 0, align 4
@E1000_DEV_ID_82546GB_QUAD_COPPER = common dso_local global i64 0, align 8
@E1000_DEV_ID_82546GB_QUAD_COPPER_KSP3 = common dso_local global i64 0, align 8
@E1000_CTRL_EXT = common dso_local global i32 0, align 4
@E1000_CTRL_EXT_RO_DIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_init_hw_82540 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_init_hw_82540(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_mac_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 1
  store %struct.e1000_mac_info* %9, %struct.e1000_mac_info** %3, align 8
  %10 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %12 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  %14 = load i64 (%struct.e1000_hw.2*)*, i64 (%struct.e1000_hw.2*)** %13, align 8
  %15 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %16 = bitcast %struct.e1000_hw* %15 to %struct.e1000_hw.2*
  %17 = call i64 %14(%struct.e1000_hw.2* %16)
  store i64 %17, i64* %6, align 8
  %18 = load i64, i64* %6, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %1
  %23 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %24 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %25 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @e1000_82545_rev_3, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %31 = load i32, i32* @E1000_VET, align 4
  %32 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %30, i32 %31, i32 0)
  br label %33

33:                                               ; preds = %29, %22
  %34 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %35 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32 (%struct.e1000_hw.1*)*, i32 (%struct.e1000_hw.1*)** %36, align 8
  %38 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %39 = bitcast %struct.e1000_hw* %38 to %struct.e1000_hw.1*
  %40 = call i32 %37(%struct.e1000_hw.1* %39)
  %41 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %42 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %43 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @e1000_init_rx_addrs_generic(%struct.e1000_hw* %41, i32 %44)
  %46 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  store i64 0, i64* %7, align 8
  br label %47

47:                                               ; preds = %60, %33
  %48 = load i64, i64* %7, align 8
  %49 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %50 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp slt i64 %48, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %47
  %54 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %55 = load i32, i32* @E1000_MTA, align 4
  %56 = load i64, i64* %7, align 8
  %57 = call i32 @E1000_WRITE_REG_ARRAY(%struct.e1000_hw* %54, i32 %55, i64 %56, i32 0)
  %58 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %59 = call i32 @E1000_WRITE_FLUSH(%struct.e1000_hw* %58)
  br label %60

60:                                               ; preds = %53
  %61 = load i64, i64* %7, align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* %7, align 8
  br label %47

63:                                               ; preds = %47
  %64 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %65 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @e1000_82545_rev_3, align 8
  %68 = icmp slt i64 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %71 = call i32 @e1000_pcix_mmrbc_workaround_generic(%struct.e1000_hw* %70)
  br label %72

72:                                               ; preds = %69, %63
  %73 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %74 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.0*)** %75, align 8
  %77 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %78 = bitcast %struct.e1000_hw* %77 to %struct.e1000_hw.0*
  %79 = call i64 %76(%struct.e1000_hw.0* %78)
  store i64 %79, i64* %6, align 8
  %80 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %81 = call i32 @E1000_TXDCTL(i32 0)
  %82 = call i32 @E1000_READ_REG(%struct.e1000_hw* %80, i32 %81)
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @E1000_TXDCTL_WTHRESH, align 4
  %85 = xor i32 %84, -1
  %86 = and i32 %83, %85
  %87 = load i32, i32* @E1000_TXDCTL_FULL_TX_DESC_WB, align 4
  %88 = or i32 %86, %87
  store i32 %88, i32* %4, align 4
  %89 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %90 = call i32 @E1000_TXDCTL(i32 0)
  %91 = load i32, i32* %4, align 4
  %92 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %89, i32 %90, i32 %91)
  %93 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %94 = call i32 @e1000_clear_hw_cntrs_82540(%struct.e1000_hw* %93)
  %95 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %96 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @E1000_DEV_ID_82546GB_QUAD_COPPER, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %106, label %100

100:                                              ; preds = %72
  %101 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %102 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @E1000_DEV_ID_82546GB_QUAD_COPPER_KSP3, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %117

106:                                              ; preds = %100, %72
  %107 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %108 = load i32, i32* @E1000_CTRL_EXT, align 4
  %109 = call i32 @E1000_READ_REG(%struct.e1000_hw* %107, i32 %108)
  store i32 %109, i32* %5, align 4
  %110 = load i32, i32* @E1000_CTRL_EXT_RO_DIS, align 4
  %111 = load i32, i32* %5, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %5, align 4
  %113 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %114 = load i32, i32* @E1000_CTRL_EXT, align 4
  %115 = load i32, i32* %5, align 4
  %116 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %113, i32 %114, i32 %115)
  br label %117

117:                                              ; preds = %106, %100
  %118 = load i64, i64* %6, align 8
  ret i64 %118
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @e1000_init_rx_addrs_generic(%struct.e1000_hw*, i32) #1

declare dso_local i32 @E1000_WRITE_REG_ARRAY(%struct.e1000_hw*, i32, i64, i32) #1

declare dso_local i32 @E1000_WRITE_FLUSH(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_pcix_mmrbc_workaround_generic(%struct.e1000_hw*) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @E1000_TXDCTL(i32) #1

declare dso_local i32 @e1000_clear_hw_cntrs_82540(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
