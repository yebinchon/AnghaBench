; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82541.c_e1000_init_hw_82541.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82541.c_e1000_init_hw_82541.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_7__, %struct.TYPE_5__, %struct.e1000_mac_info }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 (%struct.e1000_hw.0*, i32, i32*)* }
%struct.e1000_hw.0 = type opaque
%struct.TYPE_5__ = type { %struct.e1000_dev_spec_82541 }
%struct.e1000_dev_spec_82541 = type { i32 }
%struct.e1000_mac_info = type { i64, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i64 (%struct.e1000_hw.1*)*, i32 (%struct.e1000_hw.2*)*, i64 (%struct.e1000_hw.3*)* }
%struct.e1000_hw.1 = type opaque
%struct.e1000_hw.2 = type opaque
%struct.e1000_hw.3 = type opaque

@.str = private unnamed_addr constant [20 x i8] c"e1000_init_hw_82541\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Error initializing identification LED\0A\00", align 1
@IGP01E1000_GMII_FIFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Initializing the IEEE VLAN\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Zeroing the MTA\0A\00", align 1
@E1000_MTA = common dso_local global i32 0, align 4
@E1000_TXDCTL_WTHRESH = common dso_local global i64 0, align 8
@E1000_TXDCTL_FULL_TX_DESC_WB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_init_hw_82541 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_init_hw_82541(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_mac_info*, align 8
  %4 = alloca %struct.e1000_dev_spec_82541*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 2
  store %struct.e1000_mac_info* %9, %struct.e1000_mac_info** %3, align 8
  %10 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %11 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store %struct.e1000_dev_spec_82541* %12, %struct.e1000_dev_spec_82541** %4, align 8
  %13 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %15 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 2
  %17 = load i64 (%struct.e1000_hw.3*)*, i64 (%struct.e1000_hw.3*)** %16, align 8
  %18 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %19 = bitcast %struct.e1000_hw* %18 to %struct.e1000_hw.3*
  %20 = call i64 %17(%struct.e1000_hw.3* %19)
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %7, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %1
  %26 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %27 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64 (%struct.e1000_hw.0*, i32, i32*)*, i64 (%struct.e1000_hw.0*, i32, i32*)** %29, align 8
  %31 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %32 = bitcast %struct.e1000_hw* %31 to %struct.e1000_hw.0*
  %33 = load i32, i32* @IGP01E1000_GMII_FIFO, align 4
  %34 = load %struct.e1000_dev_spec_82541*, %struct.e1000_dev_spec_82541** %4, align 8
  %35 = getelementptr inbounds %struct.e1000_dev_spec_82541, %struct.e1000_dev_spec_82541* %34, i32 0, i32 0
  %36 = call i64 %30(%struct.e1000_hw.0* %32, i32 %33, i32* %35)
  store i64 %36, i64* %7, align 8
  %37 = load i64, i64* %7, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %25
  br label %94

40:                                               ; preds = %25
  %41 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %42 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %43 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load i32 (%struct.e1000_hw.2*)*, i32 (%struct.e1000_hw.2*)** %44, align 8
  %46 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %47 = bitcast %struct.e1000_hw* %46 to %struct.e1000_hw.2*
  %48 = call i32 %45(%struct.e1000_hw.2* %47)
  %49 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %50 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %51 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @e1000_init_rx_addrs_generic(%struct.e1000_hw* %49, i32 %52)
  %54 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  store i64 0, i64* %5, align 8
  br label %55

55:                                               ; preds = %68, %40
  %56 = load i64, i64* %5, align 8
  %57 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %58 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp slt i64 %56, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %55
  %62 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %63 = load i32, i32* @E1000_MTA, align 4
  %64 = load i64, i64* %5, align 8
  %65 = call i32 @E1000_WRITE_REG_ARRAY(%struct.e1000_hw* %62, i32 %63, i64 %64, i32 0)
  %66 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %67 = call i32 @E1000_WRITE_FLUSH(%struct.e1000_hw* %66)
  br label %68

68:                                               ; preds = %61
  %69 = load i64, i64* %5, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %5, align 8
  br label %55

71:                                               ; preds = %55
  %72 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %73 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i64 (%struct.e1000_hw.1*)*, i64 (%struct.e1000_hw.1*)** %74, align 8
  %76 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %77 = bitcast %struct.e1000_hw* %76 to %struct.e1000_hw.1*
  %78 = call i64 %75(%struct.e1000_hw.1* %77)
  store i64 %78, i64* %7, align 8
  %79 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %80 = call i32 @E1000_TXDCTL(i32 0)
  %81 = call i64 @E1000_READ_REG(%struct.e1000_hw* %79, i32 %80)
  store i64 %81, i64* %6, align 8
  %82 = load i64, i64* %6, align 8
  %83 = load i64, i64* @E1000_TXDCTL_WTHRESH, align 8
  %84 = xor i64 %83, -1
  %85 = and i64 %82, %84
  %86 = load i64, i64* @E1000_TXDCTL_FULL_TX_DESC_WB, align 8
  %87 = or i64 %85, %86
  store i64 %87, i64* %6, align 8
  %88 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %89 = call i32 @E1000_TXDCTL(i32 0)
  %90 = load i64, i64* %6, align 8
  %91 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %88, i32 %89, i64 %90)
  %92 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %93 = call i32 @e1000_clear_hw_cntrs_82541(%struct.e1000_hw* %92)
  br label %94

94:                                               ; preds = %71, %39
  %95 = load i64, i64* %7, align 8
  ret i64 %95
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @e1000_init_rx_addrs_generic(%struct.e1000_hw*, i32) #1

declare dso_local i32 @E1000_WRITE_REG_ARRAY(%struct.e1000_hw*, i32, i64, i32) #1

declare dso_local i32 @E1000_WRITE_FLUSH(%struct.e1000_hw*) #1

declare dso_local i64 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @E1000_TXDCTL(i32) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i64) #1

declare dso_local i32 @e1000_clear_hw_cntrs_82541(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
