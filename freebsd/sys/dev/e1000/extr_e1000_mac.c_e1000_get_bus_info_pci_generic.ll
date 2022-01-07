; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_mac.c_e1000_get_bus_info_pci_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_mac.c_e1000_get_bus_info_pci_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_bus_info, %struct.e1000_mac_info }
%struct.e1000_bus_info = type { i64, i32, i8* }
%struct.e1000_mac_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.e1000_hw.0*)* }
%struct.e1000_hw.0 = type opaque

@E1000_STATUS = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"e1000_get_bus_info_pci_generic\00", align 1
@E1000_STATUS_PCIX_MODE = common dso_local global i32 0, align 4
@e1000_bus_type_pcix = common dso_local global i64 0, align 8
@e1000_bus_type_pci = common dso_local global i64 0, align 8
@E1000_STATUS_PCI66 = common dso_local global i32 0, align 4
@e1000_bus_speed_66 = common dso_local global i8* null, align 8
@e1000_bus_speed_33 = common dso_local global i8* null, align 8
@E1000_STATUS_PCIX_SPEED = common dso_local global i32 0, align 4
@e1000_bus_speed_100 = common dso_local global i8* null, align 8
@e1000_bus_speed_133 = common dso_local global i8* null, align 8
@e1000_bus_speed_reserved = common dso_local global i8* null, align 8
@E1000_STATUS_BUS64 = common dso_local global i32 0, align 4
@e1000_bus_width_64 = common dso_local global i32 0, align 4
@e1000_bus_width_32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @e1000_get_bus_info_pci_generic(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_mac_info*, align 8
  %4 = alloca %struct.e1000_bus_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 1
  store %struct.e1000_mac_info* %8, %struct.e1000_mac_info** %3, align 8
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %10 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %9, i32 0, i32 0
  store %struct.e1000_bus_info* %10, %struct.e1000_bus_info** %4, align 8
  %11 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %12 = load i32, i32* @E1000_STATUS, align 4
  %13 = call i32 @E1000_READ_REG(%struct.e1000_hw* %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %14, i32* %6, align 4
  %15 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @E1000_STATUS_PCIX_MODE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i64, i64* @e1000_bus_type_pcix, align 8
  br label %24

22:                                               ; preds = %1
  %23 = load i64, i64* @e1000_bus_type_pci, align 8
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i64 [ %21, %20 ], [ %23, %22 ]
  %26 = load %struct.e1000_bus_info*, %struct.e1000_bus_info** %4, align 8
  %27 = getelementptr inbounds %struct.e1000_bus_info, %struct.e1000_bus_info* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load %struct.e1000_bus_info*, %struct.e1000_bus_info** %4, align 8
  %29 = getelementptr inbounds %struct.e1000_bus_info, %struct.e1000_bus_info* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @e1000_bus_type_pci, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %24
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @E1000_STATUS_PCI66, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i8*, i8** @e1000_bus_speed_66, align 8
  br label %42

40:                                               ; preds = %33
  %41 = load i8*, i8** @e1000_bus_speed_33, align 8
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i8* [ %39, %38 ], [ %41, %40 ]
  %44 = load %struct.e1000_bus_info*, %struct.e1000_bus_info** %4, align 8
  %45 = getelementptr inbounds %struct.e1000_bus_info, %struct.e1000_bus_info* %44, i32 0, i32 2
  store i8* %43, i8** %45, align 8
  br label %67

46:                                               ; preds = %24
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @E1000_STATUS_PCIX_SPEED, align 4
  %49 = and i32 %47, %48
  switch i32 %49, label %62 [
    i32 128, label %50
    i32 130, label %54
    i32 129, label %58
  ]

50:                                               ; preds = %46
  %51 = load i8*, i8** @e1000_bus_speed_66, align 8
  %52 = load %struct.e1000_bus_info*, %struct.e1000_bus_info** %4, align 8
  %53 = getelementptr inbounds %struct.e1000_bus_info, %struct.e1000_bus_info* %52, i32 0, i32 2
  store i8* %51, i8** %53, align 8
  br label %66

54:                                               ; preds = %46
  %55 = load i8*, i8** @e1000_bus_speed_100, align 8
  %56 = load %struct.e1000_bus_info*, %struct.e1000_bus_info** %4, align 8
  %57 = getelementptr inbounds %struct.e1000_bus_info, %struct.e1000_bus_info* %56, i32 0, i32 2
  store i8* %55, i8** %57, align 8
  br label %66

58:                                               ; preds = %46
  %59 = load i8*, i8** @e1000_bus_speed_133, align 8
  %60 = load %struct.e1000_bus_info*, %struct.e1000_bus_info** %4, align 8
  %61 = getelementptr inbounds %struct.e1000_bus_info, %struct.e1000_bus_info* %60, i32 0, i32 2
  store i8* %59, i8** %61, align 8
  br label %66

62:                                               ; preds = %46
  %63 = load i8*, i8** @e1000_bus_speed_reserved, align 8
  %64 = load %struct.e1000_bus_info*, %struct.e1000_bus_info** %4, align 8
  %65 = getelementptr inbounds %struct.e1000_bus_info, %struct.e1000_bus_info* %64, i32 0, i32 2
  store i8* %63, i8** %65, align 8
  br label %66

66:                                               ; preds = %62, %58, %54, %50
  br label %67

67:                                               ; preds = %66, %42
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @E1000_STATUS_BUS64, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load i32, i32* @e1000_bus_width_64, align 4
  br label %76

74:                                               ; preds = %67
  %75 = load i32, i32* @e1000_bus_width_32, align 4
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi i32 [ %73, %72 ], [ %75, %74 ]
  %78 = load %struct.e1000_bus_info*, %struct.e1000_bus_info** %4, align 8
  %79 = getelementptr inbounds %struct.e1000_bus_info, %struct.e1000_bus_info* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 8
  %80 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %81 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %82, align 8
  %84 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %85 = bitcast %struct.e1000_hw* %84 to %struct.e1000_hw.0*
  %86 = call i32 %83(%struct.e1000_hw.0* %85)
  %87 = load i32, i32* %6, align 4
  ret i32 %87
}

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @DEBUGFUNC(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
