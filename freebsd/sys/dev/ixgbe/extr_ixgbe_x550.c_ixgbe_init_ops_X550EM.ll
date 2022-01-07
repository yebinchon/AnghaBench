; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_init_ops_X550EM.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_init_ops_X550EM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32, %struct.TYPE_5__, %struct.ixgbe_phy_info, %struct.ixgbe_eeprom_info, %struct.ixgbe_mac_info }
%struct.TYPE_5__ = type { i32 }
%struct.ixgbe_phy_info = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32*, i8*, i32*, i32 }
%struct.ixgbe_eeprom_info = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ixgbe_mac_info = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 (%struct.ixgbe_hw.0*)*, i32*, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32* }
%struct.ixgbe_hw.0 = type opaque

@.str = private unnamed_addr constant [22 x i8] c"ixgbe_init_ops_X550EM\00", align 1
@ixgbe_bus_type_internal = common dso_local global i32 0, align 4
@ixgbe_get_bus_info_X550em = common dso_local global i32 0, align 4
@ixgbe_setup_sfp_modules_X550em = common dso_local global i32 0, align 4
@ixgbe_get_link_capabilities_X550em = common dso_local global i32 0, align 4
@ixgbe_reset_hw_X550em = common dso_local global i32 0, align 4
@ixgbe_get_supported_physical_layer_X550em = common dso_local global i32 0, align 4
@ixgbe_media_type_copper = common dso_local global i64 0, align 8
@ixgbe_setup_fc_generic = common dso_local global i32* null, align 8
@ixgbe_setup_fc_X550em = common dso_local global i32* null, align 8
@ixgbe_init_phy_ops_X550em = common dso_local global i32 0, align 4
@ixgbe_identify_phy_fw = common dso_local global i8* null, align 8
@ixgbe_identify_phy_x550em = common dso_local global i8* null, align 8
@ixgbe_init_eeprom_params_X540 = common dso_local global i32 0, align 4
@ixgbe_read_ee_hostif_X550 = common dso_local global i32 0, align 4
@ixgbe_read_ee_hostif_buffer_X550 = common dso_local global i32 0, align 4
@ixgbe_write_ee_hostif_X550 = common dso_local global i32 0, align 4
@ixgbe_write_ee_hostif_buffer_X550 = common dso_local global i32 0, align 4
@ixgbe_update_eeprom_checksum_X550 = common dso_local global i32 0, align 4
@ixgbe_validate_eeprom_checksum_X550 = common dso_local global i32 0, align 4
@ixgbe_calc_eeprom_checksum_X550 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_init_ops_X550EM(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca %struct.ixgbe_mac_info*, align 8
  %4 = alloca %struct.ixgbe_eeprom_info*, align 8
  %5 = alloca %struct.ixgbe_phy_info*, align 8
  %6 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %7 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %8 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %7, i32 0, i32 4
  store %struct.ixgbe_mac_info* %8, %struct.ixgbe_mac_info** %3, align 8
  %9 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %10 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %9, i32 0, i32 3
  store %struct.ixgbe_eeprom_info* %10, %struct.ixgbe_eeprom_info** %4, align 8
  %11 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %12 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %11, i32 0, i32 2
  store %struct.ixgbe_phy_info* %12, %struct.ixgbe_phy_info** %5, align 8
  %13 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %15 = call i32 @ixgbe_init_ops_X550(%struct.ixgbe_hw* %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %17 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 18
  store i32* null, i32** %18, align 8
  %19 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %20 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 17
  store i32* null, i32** %21, align 8
  %22 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %23 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 16
  store i32* null, i32** %24, align 8
  %25 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %26 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 15
  store i32* null, i32** %27, align 8
  %28 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %29 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 14
  store i32* null, i32** %30, align 8
  %31 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %32 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 13
  store i32* null, i32** %33, align 8
  %34 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %35 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 12
  store i32* null, i32** %36, align 8
  %37 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %38 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 11
  store i32* null, i32** %39, align 8
  %40 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %41 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 10
  store i32* null, i32** %42, align 8
  %43 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %44 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 9
  store i32* null, i32** %45, align 8
  %46 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %47 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 8
  store i32* null, i32** %48, align 8
  %49 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %50 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 7
  store i32* null, i32** %51, align 8
  %52 = load i32, i32* @ixgbe_bus_type_internal, align 4
  %53 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %54 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 4
  %56 = load i32, i32* @ixgbe_get_bus_info_X550em, align 4
  %57 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %58 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 6
  store i32 %56, i32* %59, align 8
  %60 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %61 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  store i64 (%struct.ixgbe_hw.0*)* bitcast (i64 (%struct.ixgbe_hw*)* @ixgbe_get_media_type_X550em to i64 (%struct.ixgbe_hw.0*)*), i64 (%struct.ixgbe_hw.0*)** %62, align 8
  %63 = load i32, i32* @ixgbe_setup_sfp_modules_X550em, align 4
  %64 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %65 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 5
  store i32 %63, i32* %66, align 4
  %67 = load i32, i32* @ixgbe_get_link_capabilities_X550em, align 4
  %68 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %69 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 4
  store i32 %67, i32* %70, align 8
  %71 = load i32, i32* @ixgbe_reset_hw_X550em, align 4
  %72 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %73 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 3
  store i32 %71, i32* %74, align 4
  %75 = load i32, i32* @ixgbe_get_supported_physical_layer_X550em, align 4
  %76 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %77 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 2
  store i32 %75, i32* %78, align 8
  %79 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %80 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i64 (%struct.ixgbe_hw.0*)*, i64 (%struct.ixgbe_hw.0*)** %81, align 8
  %83 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %84 = bitcast %struct.ixgbe_hw* %83 to %struct.ixgbe_hw.0*
  %85 = call i64 %82(%struct.ixgbe_hw.0* %84)
  %86 = load i64, i64* @ixgbe_media_type_copper, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %1
  %89 = load i32*, i32** @ixgbe_setup_fc_generic, align 8
  %90 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %91 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  store i32* %89, i32** %92, align 8
  br label %98

93:                                               ; preds = %1
  %94 = load i32*, i32** @ixgbe_setup_fc_X550em, align 8
  %95 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %96 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  store i32* %94, i32** %97, align 8
  br label %98

98:                                               ; preds = %93, %88
  %99 = load i32, i32* @ixgbe_init_phy_ops_X550em, align 4
  %100 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %5, align 8
  %101 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 3
  store i32 %99, i32* %102, align 8
  %103 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %104 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  switch i32 %105, label %131 [
    i32 130, label %106
    i32 129, label %106
    i32 128, label %120
  ]

106:                                              ; preds = %98, %98
  %107 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %108 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  store i32* null, i32** %109, align 8
  %110 = load i8*, i8** @ixgbe_identify_phy_fw, align 8
  %111 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %5, align 8
  %112 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 1
  store i8* %110, i8** %113, align 8
  %114 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %5, align 8
  %115 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  store i32* null, i32** %116, align 8
  %117 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %5, align 8
  %118 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 2
  store i32* null, i32** %119, align 8
  br label %136

120:                                              ; preds = %98
  %121 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %122 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 1
  store i32* null, i32** %123, align 8
  %124 = load i8*, i8** @ixgbe_identify_phy_x550em, align 8
  %125 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %5, align 8
  %126 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 1
  store i8* %124, i8** %127, align 8
  %128 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %5, align 8
  %129 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  store i32* null, i32** %130, align 8
  br label %136

131:                                              ; preds = %98
  %132 = load i8*, i8** @ixgbe_identify_phy_x550em, align 8
  %133 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %5, align 8
  %134 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 1
  store i8* %132, i8** %135, align 8
  br label %136

136:                                              ; preds = %131, %120, %106
  %137 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %138 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = load i64 (%struct.ixgbe_hw.0*)*, i64 (%struct.ixgbe_hw.0*)** %139, align 8
  %141 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %142 = bitcast %struct.ixgbe_hw* %141 to %struct.ixgbe_hw.0*
  %143 = call i64 %140(%struct.ixgbe_hw.0* %142)
  %144 = load i64, i64* @ixgbe_media_type_copper, align 8
  %145 = icmp ne i64 %143, %144
  br i1 %145, label %146, label %150

146:                                              ; preds = %136
  %147 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %5, align 8
  %148 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  store i32* null, i32** %149, align 8
  br label %150

150:                                              ; preds = %146, %136
  %151 = load i32, i32* @ixgbe_init_eeprom_params_X540, align 4
  %152 = load %struct.ixgbe_eeprom_info*, %struct.ixgbe_eeprom_info** %4, align 8
  %153 = getelementptr inbounds %struct.ixgbe_eeprom_info, %struct.ixgbe_eeprom_info* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 7
  store i32 %151, i32* %154, align 4
  %155 = load i32, i32* @ixgbe_read_ee_hostif_X550, align 4
  %156 = load %struct.ixgbe_eeprom_info*, %struct.ixgbe_eeprom_info** %4, align 8
  %157 = getelementptr inbounds %struct.ixgbe_eeprom_info, %struct.ixgbe_eeprom_info* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 6
  store i32 %155, i32* %158, align 4
  %159 = load i32, i32* @ixgbe_read_ee_hostif_buffer_X550, align 4
  %160 = load %struct.ixgbe_eeprom_info*, %struct.ixgbe_eeprom_info** %4, align 8
  %161 = getelementptr inbounds %struct.ixgbe_eeprom_info, %struct.ixgbe_eeprom_info* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 5
  store i32 %159, i32* %162, align 4
  %163 = load i32, i32* @ixgbe_write_ee_hostif_X550, align 4
  %164 = load %struct.ixgbe_eeprom_info*, %struct.ixgbe_eeprom_info** %4, align 8
  %165 = getelementptr inbounds %struct.ixgbe_eeprom_info, %struct.ixgbe_eeprom_info* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 4
  store i32 %163, i32* %166, align 4
  %167 = load i32, i32* @ixgbe_write_ee_hostif_buffer_X550, align 4
  %168 = load %struct.ixgbe_eeprom_info*, %struct.ixgbe_eeprom_info** %4, align 8
  %169 = getelementptr inbounds %struct.ixgbe_eeprom_info, %struct.ixgbe_eeprom_info* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 3
  store i32 %167, i32* %170, align 4
  %171 = load i32, i32* @ixgbe_update_eeprom_checksum_X550, align 4
  %172 = load %struct.ixgbe_eeprom_info*, %struct.ixgbe_eeprom_info** %4, align 8
  %173 = getelementptr inbounds %struct.ixgbe_eeprom_info, %struct.ixgbe_eeprom_info* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 2
  store i32 %171, i32* %174, align 4
  %175 = load i32, i32* @ixgbe_validate_eeprom_checksum_X550, align 4
  %176 = load %struct.ixgbe_eeprom_info*, %struct.ixgbe_eeprom_info** %4, align 8
  %177 = getelementptr inbounds %struct.ixgbe_eeprom_info, %struct.ixgbe_eeprom_info* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 1
  store i32 %175, i32* %178, align 4
  %179 = load i32, i32* @ixgbe_calc_eeprom_checksum_X550, align 4
  %180 = load %struct.ixgbe_eeprom_info*, %struct.ixgbe_eeprom_info** %4, align 8
  %181 = getelementptr inbounds %struct.ixgbe_eeprom_info, %struct.ixgbe_eeprom_info* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 0
  store i32 %179, i32* %182, align 4
  %183 = load i32, i32* %6, align 4
  ret i32 %183
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @ixgbe_init_ops_X550(%struct.ixgbe_hw*) #1

declare dso_local i64 @ixgbe_get_media_type_X550em(%struct.ixgbe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
