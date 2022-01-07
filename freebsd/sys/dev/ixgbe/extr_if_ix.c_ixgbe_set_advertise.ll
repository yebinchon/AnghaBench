; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_set_advertise.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_set_advertise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.ixgbe_hw, i32 }
%struct.ixgbe_hw = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64 (%struct.ixgbe_hw.0*, i32*, i32*)*, i32 (%struct.ixgbe_hw.1*, i32, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque
%struct.TYPE_4__ = type { i64, i64 }

@IXGBE_NOT_IMPLEMENTED = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@ixgbe_media_type_backplane = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@ixgbe_media_type_copper = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [77 x i8] c"Advertised speed can only be set on copper or multispeed fiber media types.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"Invalid advertised speed; valid modes are 0x1 through 0xF\0A\00", align 1
@IXGBE_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [48 x i8] c"Unable to determine supported advertise speeds\0A\00", align 1
@IXGBE_LINK_SPEED_100_FULL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"Interface does not support 100Mb advertised speed\0A\00", align 1
@IXGBE_LINK_SPEED_1GB_FULL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [49 x i8] c"Interface does not support 1Gb advertised speed\0A\00", align 1
@IXGBE_LINK_SPEED_10GB_FULL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [50 x i8] c"Interface does not support 10Gb advertised speed\0A\00", align 1
@IXGBE_LINK_SPEED_10_FULL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [50 x i8] c"Interface does not support 10Mb advertised speed\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, i32)* @ixgbe_set_advertise to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_set_advertise(%struct.adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ixgbe_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.adapter*, %struct.adapter** %4, align 8
  %13 = getelementptr inbounds %struct.adapter, %struct.adapter* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @iflib_get_dev(i32 %14)
  store i32 %15, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %16 = load i64, i64* @IXGBE_NOT_IMPLEMENTED, align 8
  store i64 %16, i64* %10, align 8
  %17 = load i32, i32* @FALSE, align 4
  store i32 %17, i32* %11, align 4
  %18 = load %struct.adapter*, %struct.adapter** %4, align 8
  %19 = getelementptr inbounds %struct.adapter, %struct.adapter* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %172

24:                                               ; preds = %2
  %25 = load %struct.adapter*, %struct.adapter** %4, align 8
  %26 = getelementptr inbounds %struct.adapter, %struct.adapter* %25, i32 0, i32 1
  store %struct.ixgbe_hw* %26, %struct.ixgbe_hw** %7, align 8
  %27 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %28 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @ixgbe_media_type_backplane, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i32, i32* @ENODEV, align 4
  store i32 %34, i32* %3, align 4
  br label %172

35:                                               ; preds = %24
  %36 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %37 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @ixgbe_media_type_copper, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %52, label %42

42:                                               ; preds = %35
  %43 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %44 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %42
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @device_printf(i32 %49, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* @EINVAL, align 4
  store i32 %51, i32* %3, align 4
  br label %172

52:                                               ; preds = %42, %35
  %53 = load i32, i32* %5, align 4
  %54 = icmp slt i32 %53, 1
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %5, align 4
  %57 = icmp sgt i32 %56, 15
  br i1 %57, label %58, label %62

58:                                               ; preds = %55, %52
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @device_printf(i32 %59, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32, i32* @EINVAL, align 4
  store i32 %61, i32* %3, align 4
  br label %172

62:                                               ; preds = %55
  %63 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %64 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i64 (%struct.ixgbe_hw.0*, i32*, i32*)*, i64 (%struct.ixgbe_hw.0*, i32*, i32*)** %66, align 8
  %68 = icmp ne i64 (%struct.ixgbe_hw.0*, i32*, i32*)* %67, null
  br i1 %68, label %69, label %86

69:                                               ; preds = %62
  %70 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %71 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i64 (%struct.ixgbe_hw.0*, i32*, i32*)*, i64 (%struct.ixgbe_hw.0*, i32*, i32*)** %73, align 8
  %75 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %76 = bitcast %struct.ixgbe_hw* %75 to %struct.ixgbe_hw.0*
  %77 = call i64 %74(%struct.ixgbe_hw.0* %76, i32* %9, i32* %11)
  store i64 %77, i64* %10, align 8
  %78 = load i64, i64* %10, align 8
  %79 = load i64, i64* @IXGBE_SUCCESS, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %69
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @device_printf(i32 %82, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %84 = load i32, i32* @ENODEV, align 4
  store i32 %84, i32* %3, align 4
  br label %172

85:                                               ; preds = %69
  br label %86

86:                                               ; preds = %85, %62
  %87 = load i32, i32* %5, align 4
  %88 = and i32 %87, 1
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %103

90:                                               ; preds = %86
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @IXGBE_LINK_SPEED_100_FULL, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %90
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @device_printf(i32 %96, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0))
  %98 = load i32, i32* @EINVAL, align 4
  store i32 %98, i32* %3, align 4
  br label %172

99:                                               ; preds = %90
  %100 = load i32, i32* @IXGBE_LINK_SPEED_100_FULL, align 4
  %101 = load i32, i32* %8, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %8, align 4
  br label %103

103:                                              ; preds = %99, %86
  %104 = load i32, i32* %5, align 4
  %105 = and i32 %104, 2
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %120

107:                                              ; preds = %103
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %107
  %113 = load i32, i32* %6, align 4
  %114 = call i32 @device_printf(i32 %113, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0))
  %115 = load i32, i32* @EINVAL, align 4
  store i32 %115, i32* %3, align 4
  br label %172

116:                                              ; preds = %107
  %117 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %118 = load i32, i32* %8, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %8, align 4
  br label %120

120:                                              ; preds = %116, %103
  %121 = load i32, i32* %5, align 4
  %122 = and i32 %121, 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %137

124:                                              ; preds = %120
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %133, label %129

129:                                              ; preds = %124
  %130 = load i32, i32* %6, align 4
  %131 = call i32 @device_printf(i32 %130, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0))
  %132 = load i32, i32* @EINVAL, align 4
  store i32 %132, i32* %3, align 4
  br label %172

133:                                              ; preds = %124
  %134 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %135 = load i32, i32* %8, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %8, align 4
  br label %137

137:                                              ; preds = %133, %120
  %138 = load i32, i32* %5, align 4
  %139 = and i32 %138, 8
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %154

141:                                              ; preds = %137
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* @IXGBE_LINK_SPEED_10_FULL, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %150, label %146

146:                                              ; preds = %141
  %147 = load i32, i32* %6, align 4
  %148 = call i32 @device_printf(i32 %147, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0))
  %149 = load i32, i32* @EINVAL, align 4
  store i32 %149, i32* %3, align 4
  br label %172

150:                                              ; preds = %141
  %151 = load i32, i32* @IXGBE_LINK_SPEED_10_FULL, align 4
  %152 = load i32, i32* %8, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %8, align 4
  br label %154

154:                                              ; preds = %150, %137
  %155 = load i32, i32* @TRUE, align 4
  %156 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %157 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 1
  store i32 %155, i32* %158, align 8
  %159 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %160 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 1
  %163 = load i32 (%struct.ixgbe_hw.1*, i32, i32)*, i32 (%struct.ixgbe_hw.1*, i32, i32)** %162, align 8
  %164 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %165 = bitcast %struct.ixgbe_hw* %164 to %struct.ixgbe_hw.1*
  %166 = load i32, i32* %8, align 4
  %167 = load i32, i32* @TRUE, align 4
  %168 = call i32 %163(%struct.ixgbe_hw.1* %165, i32 %166, i32 %167)
  %169 = load i32, i32* %5, align 4
  %170 = load %struct.adapter*, %struct.adapter** %4, align 8
  %171 = getelementptr inbounds %struct.adapter, %struct.adapter* %170, i32 0, i32 0
  store i32 %169, i32* %171, align 8
  store i32 0, i32* %3, align 4
  br label %172

172:                                              ; preds = %154, %146, %129, %112, %95, %81, %58, %48, %33, %23
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local i32 @iflib_get_dev(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
