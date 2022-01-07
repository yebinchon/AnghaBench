; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_get_bus_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_get_bus_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { i32, i32, %struct.i40e_hw }
%struct.i40e_hw = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@I40E_MAC_X722 = common dso_local global i64 0, align 8
@PCIY_EXPRESS = common dso_local global i32 0, align 4
@PCIER_LINK_STA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"PCI Express Bus: Speed %s %s\0A\00", align 1
@i40e_bus_speed_8000 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"8.0GT/s\00", align 1
@i40e_bus_speed_5000 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"5.0GT/s\00", align 1
@i40e_bus_speed_2500 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"2.5GT/s\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@i40e_bus_width_pcie_x8 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"Width x8\00", align 1
@i40e_bus_width_pcie_x4 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"Width x4\00", align 1
@i40e_bus_width_pcie_x2 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"Width x2\00", align 1
@i40e_bus_width_pcie_x1 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [9 x i8] c"Width x1\00", align 1
@.str.9 = private unnamed_addr constant [94 x i8] c"PCI-Express bandwidth available for this device may be insufficient for optimal performance.\0A\00", align 1
@.str.10 = private unnamed_addr constant [95 x i8] c"Please move the device to a different PCI-e link with more lanes and/or higher transfer rate.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixl_get_bus_info(%struct.ixl_pf* %0) #0 {
  %2 = alloca %struct.ixl_pf*, align 8
  %3 = alloca %struct.i40e_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ixl_pf* %0, %struct.ixl_pf** %2, align 8
  %9 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %10 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %9, i32 0, i32 2
  store %struct.i40e_hw* %10, %struct.i40e_hw** %3, align 8
  %11 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %12 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %4, align 4
  %14 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %15 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @I40E_MAC_X722, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %144

21:                                               ; preds = %1
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @PCIY_EXPRESS, align 4
  %24 = call i32 @pci_find_cap(i32 %22, i32 %23, i32* %6)
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @PCIER_LINK_STA, align 4
  %28 = add nsw i32 %26, %27
  %29 = call i32 @pci_read_config(i32 %25, i32 %28, i32 2)
  store i32 %29, i32* %5, align 4
  %30 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @i40e_set_pci_config_data(%struct.i40e_hw* %30, i32 %31)
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %35 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @i40e_bus_speed_8000, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %21
  br label %60

41:                                               ; preds = %21
  %42 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %43 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @i40e_bus_speed_5000, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %58

49:                                               ; preds = %41
  %50 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %51 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @i40e_bus_speed_2500, align 4
  %55 = icmp eq i32 %53, %54
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)
  br label %58

58:                                               ; preds = %49, %48
  %59 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %48 ], [ %57, %49 ]
  br label %60

60:                                               ; preds = %58, %40
  %61 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %40 ], [ %59, %58 ]
  %62 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %63 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @i40e_bus_width_pcie_x8, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  br label %98

69:                                               ; preds = %60
  %70 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %71 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @i40e_bus_width_pcie_x4, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  br label %96

77:                                               ; preds = %69
  %78 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %79 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @i40e_bus_width_pcie_x2, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  br label %94

85:                                               ; preds = %77
  %86 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %87 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @i40e_bus_width_pcie_x1, align 4
  %91 = icmp eq i32 %89, %90
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)
  br label %94

94:                                               ; preds = %85, %84
  %95 = phi i8* [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), %84 ], [ %93, %85 ]
  br label %96

96:                                               ; preds = %94, %76
  %97 = phi i8* [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), %76 ], [ %95, %94 ]
  br label %98

98:                                               ; preds = %96, %68
  %99 = phi i8* [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), %68 ], [ %97, %96 ]
  %100 = call i32 (i32, i8*, ...) @device_printf(i32 %33, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %61, i8* %99)
  %101 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %102 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @i40e_bus_speed_8000, align 4
  %106 = icmp sge i32 %104, %105
  br i1 %106, label %107, label %115

107:                                              ; preds = %98
  %108 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %109 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @i40e_bus_width_pcie_x8, align 4
  %113 = icmp sge i32 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %107
  br label %144

115:                                              ; preds = %107, %98
  %116 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %117 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @bitcount32(i32 %119)
  store i32 %120, i32* %7, align 4
  %121 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %122 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @ixl_max_aq_speed_to_value(i32 %123)
  %125 = sdiv i32 %124, 1000000
  store i32 %125, i32* %8, align 4
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* %8, align 4
  %128 = mul nsw i32 %126, %127
  %129 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %130 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %134 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = mul nsw i32 %132, %136
  %138 = icmp sgt i32 %128, %137
  br i1 %138, label %139, label %144

139:                                              ; preds = %115
  %140 = load i32, i32* %4, align 4
  %141 = call i32 (i32, i8*, ...) @device_printf(i32 %140, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.9, i64 0, i64 0))
  %142 = load i32, i32* %4, align 4
  %143 = call i32 (i32, i8*, ...) @device_printf(i32 %142, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.10, i64 0, i64 0))
  br label %144

144:                                              ; preds = %20, %114, %139, %115
  ret void
}

declare dso_local i32 @pci_find_cap(i32, i32, i32*) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @i40e_set_pci_config_data(%struct.i40e_hw*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @bitcount32(i32) #1

declare dso_local i32 @ixl_max_aq_speed_to_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
