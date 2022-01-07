; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82599.c_ixgbe_setup_sfp_modules_82599.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82599.c_ixgbe_setup_sfp_modules_82599.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 (%struct.ixgbe_hw.0*, i32, i32*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 (%struct.ixgbe_hw.1*, i32)*, i64 (%struct.ixgbe_hw.2*, i32, i32)*, i64 (%struct.ixgbe_hw.3*, i32)* }
%struct.ixgbe_hw.1 = type opaque
%struct.ixgbe_hw.2 = type opaque
%struct.ixgbe_hw.3 = type opaque
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }

@IXGBE_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"ixgbe_setup_sfp_modules_82599\00", align 1
@ixgbe_sfp_type_unknown = common dso_local global i64 0, align 8
@IXGBE_GSSR_MAC_CSR_SM = common dso_local global i32 0, align 4
@IXGBE_ERR_SWFW_SYNC = common dso_local global i64 0, align 8
@IXGBE_CORECTL = common dso_local global i32 0, align 4
@IXGBE_AUTOC_LMS_10G_SERIAL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"sfp module setup not complete\0A\00", align 1
@IXGBE_ERR_SFP_SETUP_NOT_COMPLETE = common dso_local global i64 0, align 8
@IXGBE_ERROR_INVALID_STATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"eeprom read at offset %d failed\00", align 1
@IXGBE_ERR_PHY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ixgbe_setup_sfp_modules_82599(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  %8 = load i64, i64* @IXGBE_SUCCESS, align 8
  store i64 %8, i64* %4, align 8
  %9 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %11 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ixgbe_sfp_type_unknown, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %117

16:                                               ; preds = %1
  %17 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %18 = call i32 @ixgbe_init_mac_link_ops_82599(%struct.ixgbe_hw* %17)
  %19 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %20 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  store i32* null, i32** %22, align 8
  %23 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %24 = call i64 @ixgbe_get_sfp_init_sequence_offsets(%struct.ixgbe_hw* %23, i32* %5, i32* %6)
  store i64 %24, i64* %4, align 8
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* @IXGBE_SUCCESS, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %16
  br label %118

29:                                               ; preds = %16
  %30 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %31 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 2
  %34 = load i64 (%struct.ixgbe_hw.3*, i32)*, i64 (%struct.ixgbe_hw.3*, i32)** %33, align 8
  %35 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %36 = bitcast %struct.ixgbe_hw* %35 to %struct.ixgbe_hw.3*
  %37 = load i32, i32* @IXGBE_GSSR_MAC_CSR_SM, align 4
  %38 = call i64 %34(%struct.ixgbe_hw.3* %36, i32 %37)
  store i64 %38, i64* %4, align 8
  %39 = load i64, i64* %4, align 8
  %40 = load i64, i64* @IXGBE_SUCCESS, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %29
  %43 = load i64, i64* @IXGBE_ERR_SWFW_SYNC, align 8
  store i64 %43, i64* %4, align 8
  br label %118

44:                                               ; preds = %29
  %45 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %46 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i64 (%struct.ixgbe_hw.0*, i32, i32*)*, i64 (%struct.ixgbe_hw.0*, i32, i32*)** %48, align 8
  %50 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %51 = bitcast %struct.ixgbe_hw* %50 to %struct.ixgbe_hw.0*
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  %54 = call i64 %49(%struct.ixgbe_hw.0* %51, i32 %53, i32* %7)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %44
  br label %120

57:                                               ; preds = %44
  br label %58

58:                                               ; preds = %80, %57
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 65535
  br i1 %60, label %61, label %81

61:                                               ; preds = %58
  %62 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %63 = load i32, i32* @IXGBE_CORECTL, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %62, i32 %63, i32 %64)
  %66 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %67 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %66)
  %68 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %69 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i64 (%struct.ixgbe_hw.0*, i32, i32*)*, i64 (%struct.ixgbe_hw.0*, i32, i32*)** %71, align 8
  %73 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %74 = bitcast %struct.ixgbe_hw* %73 to %struct.ixgbe_hw.0*
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %6, align 4
  %77 = call i64 %72(%struct.ixgbe_hw.0* %74, i32 %76, i32* %7)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %61
  br label %120

80:                                               ; preds = %61
  br label %58

81:                                               ; preds = %58
  %82 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %83 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load i32 (%struct.ixgbe_hw.1*, i32)*, i32 (%struct.ixgbe_hw.1*, i32)** %85, align 8
  %87 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %88 = bitcast %struct.ixgbe_hw* %87 to %struct.ixgbe_hw.1*
  %89 = load i32, i32* @IXGBE_GSSR_MAC_CSR_SM, align 4
  %90 = call i32 %86(%struct.ixgbe_hw.1* %88, i32 %89)
  %91 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %92 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @msec_delay(i32 %94)
  %96 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %97 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 1
  %100 = load i64 (%struct.ixgbe_hw.2*, i32, i32)*, i64 (%struct.ixgbe_hw.2*, i32, i32)** %99, align 8
  %101 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %102 = bitcast %struct.ixgbe_hw* %101 to %struct.ixgbe_hw.2*
  %103 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %104 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @IXGBE_AUTOC_LMS_10G_SERIAL, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* @FALSE, align 4
  %110 = call i64 %100(%struct.ixgbe_hw.2* %102, i32 %108, i32 %109)
  store i64 %110, i64* %4, align 8
  %111 = load i64, i64* %4, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %81
  %114 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %115 = load i64, i64* @IXGBE_ERR_SFP_SETUP_NOT_COMPLETE, align 8
  store i64 %115, i64* %4, align 8
  br label %118

116:                                              ; preds = %81
  br label %117

117:                                              ; preds = %116, %1
  br label %118

118:                                              ; preds = %117, %113, %42, %28
  %119 = load i64, i64* %4, align 8
  store i64 %119, i64* %2, align 8
  br label %139

120:                                              ; preds = %79, %56
  %121 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %122 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  %125 = load i32 (%struct.ixgbe_hw.1*, i32)*, i32 (%struct.ixgbe_hw.1*, i32)** %124, align 8
  %126 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %127 = bitcast %struct.ixgbe_hw* %126 to %struct.ixgbe_hw.1*
  %128 = load i32, i32* @IXGBE_GSSR_MAC_CSR_SM, align 4
  %129 = call i32 %125(%struct.ixgbe_hw.1* %127, i32 %128)
  %130 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %131 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @msec_delay(i32 %133)
  %135 = load i32, i32* @IXGBE_ERROR_INVALID_STATE, align 4
  %136 = load i32, i32* %6, align 4
  %137 = call i32 @ERROR_REPORT2(i32 %135, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %136)
  %138 = load i64, i64* @IXGBE_ERR_PHY, align 8
  store i64 %138, i64* %2, align 8
  br label %139

139:                                              ; preds = %120, %118
  %140 = load i64, i64* %2, align 8
  ret i64 %140
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @ixgbe_init_mac_link_ops_82599(%struct.ixgbe_hw*) #1

declare dso_local i64 @ixgbe_get_sfp_init_sequence_offsets(%struct.ixgbe_hw*, i32*, i32*) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw*) #1

declare dso_local i32 @msec_delay(i32) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @ERROR_REPORT2(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
