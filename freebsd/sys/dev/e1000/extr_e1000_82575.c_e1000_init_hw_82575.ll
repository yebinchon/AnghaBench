; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82575.c_e1000_init_hw_82575.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82575.c_e1000_init_hw_82575.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_6__, %struct.e1000_mac_info }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.e1000_mac_info = type { i64, i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.1*)*, i64 (%struct.e1000_hw.2*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.e1000_hw.2 = type opaque

@.str = private unnamed_addr constant [20 x i8] c"e1000_init_hw_82575\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Error initializing identification LED\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Initializing the IEEE VLAN\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Zeroing the MTA\0A\00", align 1
@E1000_MTA = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"Zeroing the UTA\0A\00", align 1
@E1000_UTA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_init_hw_82575(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_mac_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 1
  store %struct.e1000_mac_info* %8, %struct.e1000_mac_info** %3, align 8
  %9 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %10 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %6, align 8
  %12 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %14 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  %16 = load i64 (%struct.e1000_hw.2*)*, i64 (%struct.e1000_hw.2*)** %15, align 8
  %17 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %18 = bitcast %struct.e1000_hw* %17 to %struct.e1000_hw.2*
  %19 = call i64 %16(%struct.e1000_hw.2* %18)
  store i64 %19, i64* %4, align 8
  %20 = load i64, i64* %4, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %1
  %25 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %26 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %27 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32 (%struct.e1000_hw.1*)*, i32 (%struct.e1000_hw.1*)** %28, align 8
  %30 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %31 = bitcast %struct.e1000_hw* %30 to %struct.e1000_hw.1*
  %32 = call i32 %29(%struct.e1000_hw.1* %31)
  %33 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @e1000_init_rx_addrs_generic(%struct.e1000_hw* %33, i64 %34)
  %36 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  store i64 0, i64* %5, align 8
  br label %37

37:                                               ; preds = %48, %24
  %38 = load i64, i64* %5, align 8
  %39 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %40 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp slt i64 %38, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %37
  %44 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %45 = load i32, i32* @E1000_MTA, align 4
  %46 = load i64, i64* %5, align 8
  %47 = call i32 @E1000_WRITE_REG_ARRAY(%struct.e1000_hw* %44, i32 %45, i64 %46, i32 0)
  br label %48

48:                                               ; preds = %43
  %49 = load i64, i64* %5, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* %5, align 8
  br label %37

51:                                               ; preds = %37
  %52 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  store i64 0, i64* %5, align 8
  br label %53

53:                                               ; preds = %64, %51
  %54 = load i64, i64* %5, align 8
  %55 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %56 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp slt i64 %54, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %53
  %60 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %61 = load i32, i32* @E1000_UTA, align 4
  %62 = load i64, i64* %5, align 8
  %63 = call i32 @E1000_WRITE_REG_ARRAY(%struct.e1000_hw* %60, i32 %61, i64 %62, i32 0)
  br label %64

64:                                               ; preds = %59
  %65 = load i64, i64* %5, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %5, align 8
  br label %53

67:                                               ; preds = %53
  %68 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %69 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i64 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.0*)** %70, align 8
  %72 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %73 = bitcast %struct.e1000_hw* %72 to %struct.e1000_hw.0*
  %74 = call i64 %71(%struct.e1000_hw.0* %73)
  store i64 %74, i64* %4, align 8
  %75 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %76 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  store i32 1500, i32* %78, align 8
  %79 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %80 = call i32 @e1000_clear_hw_cntrs_82575(%struct.e1000_hw* %79)
  %81 = load i64, i64* %4, align 8
  ret i64 %81
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @e1000_init_rx_addrs_generic(%struct.e1000_hw*, i64) #1

declare dso_local i32 @E1000_WRITE_REG_ARRAY(%struct.e1000_hw*, i32, i64, i32) #1

declare dso_local i32 @e1000_clear_hw_cntrs_82575(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
