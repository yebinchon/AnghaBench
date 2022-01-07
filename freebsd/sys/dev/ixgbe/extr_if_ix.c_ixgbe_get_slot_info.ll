; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_get_slot_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_get_slot_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.ixgbe_hw, i32 }
%struct.ixgbe_hw = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@PCIY_EXPRESS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@PCIER_LINK_STA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"PCI Express Bus: Speed %s %s\0A\00", align 1
@ixgbe_bus_speed_8000 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"8.0GT/s\00", align 1
@ixgbe_bus_speed_5000 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"5.0GT/s\00", align 1
@ixgbe_bus_speed_2500 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"2.5GT/s\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@ixgbe_bus_width_pcie_x8 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [9 x i8] c"Width x8\00", align 1
@ixgbe_bus_width_pcie_x4 = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [9 x i8] c"Width x4\00", align 1
@ixgbe_bus_width_pcie_x1 = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [9 x i8] c"Width x1\00", align 1
@.str.8 = private unnamed_addr constant [95 x i8] c"PCI-Express bandwidth available for this card\0A     is not sufficient for optimal performance.\0A\00", align 1
@.str.9 = private unnamed_addr constant [70 x i8] c"For optimal performance a x8 PCIE, or x4 PCIE Gen2 slot is required.\0A\00", align 1
@.str.10 = private unnamed_addr constant [58 x i8] c"For optimal performance a x8 PCIE Gen3 slot is required.\0A\00", align 1
@.str.11 = private unnamed_addr constant [97 x i8] c"Unable to determine slot speed/width. The speed/width reported are that of the internal switch.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @ixgbe_get_slot_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_get_slot_info(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %8 = load %struct.adapter*, %struct.adapter** %2, align 8
  %9 = getelementptr inbounds %struct.adapter, %struct.adapter* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @iflib_get_dev(i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load %struct.adapter*, %struct.adapter** %2, align 8
  %13 = getelementptr inbounds %struct.adapter, %struct.adapter* %12, i32 0, i32 0
  store %struct.ixgbe_hw* %13, %struct.ixgbe_hw** %4, align 8
  %14 = load i32, i32* @TRUE, align 4
  store i32 %14, i32* %5, align 4
  %15 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %16 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %19 [
    i32 130, label %18
    i32 131, label %18
  ]

18:                                               ; preds = %1, %1
  br label %29

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %19
  %21 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %22 = call i32 @ixgbe_get_bus_info(%struct.ixgbe_hw* %21)
  %23 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %24 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %28 [
    i32 128, label %27
    i32 129, label %27
  ]

27:                                               ; preds = %20, %20
  br label %167

28:                                               ; preds = %20
  br label %53

29:                                               ; preds = %18
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @device_get_parent(i32 %30)
  %32 = call i32 @device_get_parent(i32 %31)
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @device_get_parent(i32 %33)
  %35 = call i32 @device_get_parent(i32 %34)
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @PCIY_EXPRESS, align 4
  %38 = call i64 @pci_find_cap(i32 %36, i32 %37, i64* %6)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %29
  %41 = load i32, i32* @FALSE, align 4
  store i32 %41, i32* %5, align 4
  %42 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %43 = call i32 @ixgbe_get_bus_info(%struct.ixgbe_hw* %42)
  br label %53

44:                                               ; preds = %29
  %45 = load i32, i32* %3, align 4
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* @PCIER_LINK_STA, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @pci_read_config(i32 %45, i64 %48, i32 2)
  store i32 %49, i32* %7, align 4
  %50 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @ixgbe_set_pci_config_data_generic(%struct.ixgbe_hw* %50, i32 %51)
  br label %53

53:                                               ; preds = %44, %40, %28
  %54 = load i32, i32* %3, align 4
  %55 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %56 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @ixgbe_bus_speed_8000, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  br label %81

62:                                               ; preds = %53
  %63 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %64 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @ixgbe_bus_speed_5000, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  br label %79

70:                                               ; preds = %62
  %71 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %72 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @ixgbe_bus_speed_2500, align 8
  %76 = icmp eq i64 %74, %75
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)
  br label %79

79:                                               ; preds = %70, %69
  %80 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %69 ], [ %78, %70 ]
  br label %81

81:                                               ; preds = %79, %61
  %82 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %61 ], [ %80, %79 ]
  %83 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %84 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @ixgbe_bus_width_pcie_x8, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %81
  br label %109

90:                                               ; preds = %81
  %91 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %92 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @ixgbe_bus_width_pcie_x4, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %90
  br label %107

98:                                               ; preds = %90
  %99 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %100 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @ixgbe_bus_width_pcie_x1, align 8
  %104 = icmp eq i64 %102, %103
  %105 = zext i1 %104 to i64
  %106 = select i1 %104, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)
  br label %107

107:                                              ; preds = %98, %97
  %108 = phi i8* [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), %97 ], [ %106, %98 ]
  br label %109

109:                                              ; preds = %107, %89
  %110 = phi i8* [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), %89 ], [ %108, %107 ]
  %111 = call i32 (i32, i8*, ...) @device_printf(i32 %54, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %82, i8* %110)
  %112 = load i32, i32* %5, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %163

114:                                              ; preds = %109
  %115 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %116 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %117, 130
  br i1 %118, label %119, label %138

119:                                              ; preds = %114
  %120 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %121 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @ixgbe_bus_width_pcie_x4, align 8
  %125 = icmp sle i64 %123, %124
  br i1 %125, label %126, label %138

126:                                              ; preds = %119
  %127 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %128 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @ixgbe_bus_speed_2500, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %138

133:                                              ; preds = %126
  %134 = load i32, i32* %3, align 4
  %135 = call i32 (i32, i8*, ...) @device_printf(i32 %134, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.8, i64 0, i64 0))
  %136 = load i32, i32* %3, align 4
  %137 = call i32 (i32, i8*, ...) @device_printf(i32 %136, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.9, i64 0, i64 0))
  br label %138

138:                                              ; preds = %133, %126, %119, %114
  %139 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %140 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = icmp eq i32 %141, 130
  br i1 %142, label %143, label %162

143:                                              ; preds = %138
  %144 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %145 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @ixgbe_bus_width_pcie_x8, align 8
  %149 = icmp sle i64 %147, %148
  br i1 %149, label %150, label %162

150:                                              ; preds = %143
  %151 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %152 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @ixgbe_bus_speed_8000, align 8
  %156 = icmp slt i64 %154, %155
  br i1 %156, label %157, label %162

157:                                              ; preds = %150
  %158 = load i32, i32* %3, align 4
  %159 = call i32 (i32, i8*, ...) @device_printf(i32 %158, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.8, i64 0, i64 0))
  %160 = load i32, i32* %3, align 4
  %161 = call i32 (i32, i8*, ...) @device_printf(i32 %160, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.10, i64 0, i64 0))
  br label %162

162:                                              ; preds = %157, %150, %143, %138
  br label %166

163:                                              ; preds = %109
  %164 = load i32, i32* %3, align 4
  %165 = call i32 (i32, i8*, ...) @device_printf(i32 %164, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.11, i64 0, i64 0))
  br label %166

166:                                              ; preds = %163, %162
  br label %167

167:                                              ; preds = %166, %27
  ret void
}

declare dso_local i32 @iflib_get_dev(i32) #1

declare dso_local i32 @ixgbe_get_bus_info(%struct.ixgbe_hw*) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i64 @pci_find_cap(i32, i32, i64*) #1

declare dso_local i32 @pci_read_config(i32, i64, i32) #1

declare dso_local i32 @ixgbe_set_pci_config_data_generic(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
