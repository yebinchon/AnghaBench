; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_enter_lplu_t_x550em.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_enter_lplu_t_x550em.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_10__, %struct.TYPE_9__, i64, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 (%struct.ixgbe_hw.1*, i64, i32)* }
%struct.ixgbe_hw.1 = type opaque
%struct.TYPE_6__ = type { i32 }

@ixgbe_mac_X550EM_x = common dso_local global i64 0, align 8
@IXGBE_FUSES0_REV_MASK = common dso_local global i32 0, align 4
@IXGBE_SUCCESS = common dso_local global i64 0, align 8
@NVM_INIT_CTRL_3 = common dso_local global i32 0, align 4
@NVM_INIT_CTRL_3_LPLU = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_UNKNOWN = common dso_local global i64 0, align 8
@IXGBE_MDIO_AUTO_NEG_VENDOR_STAT = common dso_local global i32 0, align 4
@IXGBE_MDIO_AUTO_NEG_DEV_TYPE = common dso_local global i32 0, align 4
@IXGBE_MDIO_AUTO_NEG_VEN_STAT_SPEED_MASK = common dso_local global i32 0, align 4
@IXGBE_MDIO_AUTO_NEG_VENDOR_STATUS_1GB = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_1GB_FULL = common dso_local global i64 0, align 8
@IXGBE_MDIO_AUTO_NEG_VENDOR_STATUS_10GB = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_10GB_FULL = common dso_local global i64 0, align 8
@IXGBE_MDIO_AUTO_NEG_VENDOR_TX_ALARM = common dso_local global i32 0, align 4
@IXGBE_MII_10GBASE_T_AUTONEG_CTRL_REG = common dso_local global i32 0, align 4
@IXGBE_MII_AUTONEG_VENDOR_PROVISION_1_REG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ixgbe_enter_lplu_t_x550em(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  %11 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %12 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ixgbe_mac_X550EM_x, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %1
  %18 = load i32, i32* @IXGBE_FUSES0_REV_MASK, align 4
  %19 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %20 = call i32 @IXGBE_FUSES0_GROUP(i32 0)
  %21 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %19, i32 %20)
  %22 = and i32 %18, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i64, i64* @IXGBE_SUCCESS, align 8
  store i64 %25, i64* %2, align 8
  br label %207

26:                                               ; preds = %17, %1
  %27 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %28 = call i64 @ixgbe_check_reset_blocked(%struct.ixgbe_hw* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i64, i64* @IXGBE_SUCCESS, align 8
  store i64 %31, i64* %2, align 8
  br label %207

32:                                               ; preds = %26
  %33 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %34 = call i64 @ixgbe_ext_phy_t_x550em_get_link(%struct.ixgbe_hw* %33, i32* %10)
  store i64 %34, i64* %7, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* @IXGBE_SUCCESS, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i64, i64* %7, align 8
  store i64 %39, i64* %2, align 8
  br label %207

40:                                               ; preds = %32
  %41 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %42 = load i32, i32* @NVM_INIT_CTRL_3, align 4
  %43 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %44 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = call i64 @ixgbe_read_eeprom(%struct.ixgbe_hw* %41, i32 %42, i32* %45)
  store i64 %46, i64* %7, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* @IXGBE_SUCCESS, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %40
  %51 = load i64, i64* %7, align 8
  store i64 %51, i64* %2, align 8
  br label %207

52:                                               ; preds = %40
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %72

55:                                               ; preds = %52
  %56 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %57 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @NVM_INIT_CTRL_3_LPLU, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %55
  %64 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %65 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %76, label %68

68:                                               ; preds = %63
  %69 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %70 = call i64 @ixgbe_mng_present(%struct.ixgbe_hw* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %68, %55, %52
  %73 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %74 = load i32, i32* @FALSE, align 4
  %75 = call i64 @ixgbe_set_copper_phy_power(%struct.ixgbe_hw* %73, i32 %74)
  store i64 %75, i64* %2, align 8
  br label %207

76:                                               ; preds = %68, %63
  %77 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %78 = call i64 @ixgbe_get_lcd_t_x550em(%struct.ixgbe_hw* %77, i64* %8)
  store i64 %78, i64* %7, align 8
  %79 = load i64, i64* %7, align 8
  %80 = load i64, i64* @IXGBE_SUCCESS, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = load i64, i64* %7, align 8
  store i64 %83, i64* %2, align 8
  br label %207

84:                                               ; preds = %76
  %85 = load i64, i64* %8, align 8
  %86 = load i64, i64* @IXGBE_LINK_SPEED_UNKNOWN, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %90 = load i32, i32* @FALSE, align 4
  %91 = call i64 @ixgbe_set_copper_phy_power(%struct.ixgbe_hw* %89, i32 %90)
  store i64 %91, i64* %2, align 8
  br label %207

92:                                               ; preds = %84
  %93 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %94 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %96, align 8
  %98 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %99 = bitcast %struct.ixgbe_hw* %98 to %struct.ixgbe_hw.0*
  %100 = load i32, i32* @IXGBE_MDIO_AUTO_NEG_VENDOR_STAT, align 4
  %101 = load i32, i32* @IXGBE_MDIO_AUTO_NEG_DEV_TYPE, align 4
  %102 = call i64 %97(%struct.ixgbe_hw.0* %99, i32 %100, i32 %101, i32* %6)
  store i64 %102, i64* %7, align 8
  %103 = load i64, i64* %7, align 8
  %104 = load i64, i64* @IXGBE_SUCCESS, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %92
  %107 = load i64, i64* %7, align 8
  store i64 %107, i64* %2, align 8
  br label %207

108:                                              ; preds = %92
  %109 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %110 = call i64 @ixgbe_ext_phy_t_x550em_get_link(%struct.ixgbe_hw* %109, i32* %10)
  store i64 %110, i64* %7, align 8
  %111 = load i64, i64* %7, align 8
  %112 = load i64, i64* @IXGBE_SUCCESS, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %108
  %115 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %116 = load i32, i32* @FALSE, align 4
  %117 = call i64 @ixgbe_set_copper_phy_power(%struct.ixgbe_hw* %115, i32 %116)
  store i64 %117, i64* %2, align 8
  br label %207

118:                                              ; preds = %108
  %119 = load i32, i32* @IXGBE_MDIO_AUTO_NEG_VEN_STAT_SPEED_MASK, align 4
  %120 = load i32, i32* %6, align 4
  %121 = and i32 %120, %119
  store i32 %121, i32* %6, align 4
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* @IXGBE_MDIO_AUTO_NEG_VENDOR_STATUS_1GB, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %129

125:                                              ; preds = %118
  %126 = load i64, i64* %8, align 8
  %127 = load i64, i64* @IXGBE_LINK_SPEED_1GB_FULL, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %137, label %129

129:                                              ; preds = %125, %118
  %130 = load i32, i32* %6, align 4
  %131 = load i32, i32* @IXGBE_MDIO_AUTO_NEG_VENDOR_STATUS_10GB, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %139

133:                                              ; preds = %129
  %134 = load i64, i64* %8, align 8
  %135 = load i64, i64* @IXGBE_LINK_SPEED_10GB_FULL, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %133, %125
  %138 = load i64, i64* %7, align 8
  store i64 %138, i64* %2, align 8
  br label %207

139:                                              ; preds = %133, %129
  %140 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %141 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  %144 = load i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %143, align 8
  %145 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %146 = bitcast %struct.ixgbe_hw* %145 to %struct.ixgbe_hw.0*
  %147 = load i32, i32* @IXGBE_MDIO_AUTO_NEG_VENDOR_TX_ALARM, align 4
  %148 = load i32, i32* @IXGBE_MDIO_AUTO_NEG_DEV_TYPE, align 4
  %149 = call i64 %144(%struct.ixgbe_hw.0* %146, i32 %147, i32 %148, i32* %5)
  store i64 %149, i64* %7, align 8
  %150 = load i64, i64* %7, align 8
  %151 = load i64, i64* @IXGBE_SUCCESS, align 8
  %152 = icmp ne i64 %150, %151
  br i1 %152, label %153, label %155

153:                                              ; preds = %139
  %154 = load i64, i64* %7, align 8
  store i64 %154, i64* %2, align 8
  br label %207

155:                                              ; preds = %139
  %156 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %157 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 0
  %160 = load i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %159, align 8
  %161 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %162 = bitcast %struct.ixgbe_hw* %161 to %struct.ixgbe_hw.0*
  %163 = load i32, i32* @IXGBE_MII_10GBASE_T_AUTONEG_CTRL_REG, align 4
  %164 = load i32, i32* @IXGBE_MDIO_AUTO_NEG_DEV_TYPE, align 4
  %165 = call i64 %160(%struct.ixgbe_hw.0* %162, i32 %163, i32 %164, i32* %4)
  store i64 %165, i64* %7, align 8
  %166 = load i64, i64* %7, align 8
  %167 = load i64, i64* @IXGBE_SUCCESS, align 8
  %168 = icmp ne i64 %166, %167
  br i1 %168, label %169, label %171

169:                                              ; preds = %155
  %170 = load i64, i64* %7, align 8
  store i64 %170, i64* %2, align 8
  br label %207

171:                                              ; preds = %155
  %172 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %173 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 0
  %176 = load i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %175, align 8
  %177 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %178 = bitcast %struct.ixgbe_hw* %177 to %struct.ixgbe_hw.0*
  %179 = load i32, i32* @IXGBE_MII_AUTONEG_VENDOR_PROVISION_1_REG, align 4
  %180 = load i32, i32* @IXGBE_MDIO_AUTO_NEG_DEV_TYPE, align 4
  %181 = call i64 %176(%struct.ixgbe_hw.0* %178, i32 %179, i32 %180, i32* %5)
  store i64 %181, i64* %7, align 8
  %182 = load i64, i64* %7, align 8
  %183 = load i64, i64* @IXGBE_SUCCESS, align 8
  %184 = icmp ne i64 %182, %183
  br i1 %184, label %185, label %187

185:                                              ; preds = %171
  %186 = load i64, i64* %7, align 8
  store i64 %186, i64* %2, align 8
  br label %207

187:                                              ; preds = %171
  %188 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %189 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  store i32 %191, i32* %9, align 4
  %192 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %193 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 0
  %196 = load i64 (%struct.ixgbe_hw.1*, i64, i32)*, i64 (%struct.ixgbe_hw.1*, i64, i32)** %195, align 8
  %197 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %198 = bitcast %struct.ixgbe_hw* %197 to %struct.ixgbe_hw.1*
  %199 = load i64, i64* %8, align 8
  %200 = load i32, i32* @FALSE, align 4
  %201 = call i64 %196(%struct.ixgbe_hw.1* %198, i64 %199, i32 %200)
  store i64 %201, i64* %7, align 8
  %202 = load i32, i32* %9, align 4
  %203 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %204 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 0
  store i32 %202, i32* %205, align 8
  %206 = load i64, i64* %7, align 8
  store i64 %206, i64* %2, align 8
  br label %207

207:                                              ; preds = %187, %185, %169, %153, %137, %114, %106, %88, %82, %72, %50, %38, %30, %24
  %208 = load i64, i64* %2, align 8
  ret i64 %208
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_FUSES0_GROUP(i32) #1

declare dso_local i64 @ixgbe_check_reset_blocked(%struct.ixgbe_hw*) #1

declare dso_local i64 @ixgbe_ext_phy_t_x550em_get_link(%struct.ixgbe_hw*, i32*) #1

declare dso_local i64 @ixgbe_read_eeprom(%struct.ixgbe_hw*, i32, i32*) #1

declare dso_local i64 @ixgbe_mng_present(%struct.ixgbe_hw*) #1

declare dso_local i64 @ixgbe_set_copper_phy_power(%struct.ixgbe_hw*, i32) #1

declare dso_local i64 @ixgbe_get_lcd_t_x550em(%struct.ixgbe_hw*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
