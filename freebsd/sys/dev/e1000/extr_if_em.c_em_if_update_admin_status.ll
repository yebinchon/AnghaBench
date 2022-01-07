; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_if_em.c_em_if_update_admin_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_if_em.c_em_if_update_admin_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i64, i64, i64, %struct.e1000_hw, i32, i64 }
%struct.e1000_hw = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i64, i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i64 }

@e1000_pch_spt = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@E1000_STATUS = common dso_local global i32 0, align 4
@E1000_STATUS_LU = common dso_local global i32 0, align 4
@e1000_i350 = common dso_local global i64 0, align 8
@E1000_THSTAT = common dso_local global i32 0, align 4
@E1000_CTRL_EXT = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i64 0, align 8
@e1000_82571 = common dso_local global i64 0, align 8
@e1000_82572 = common dso_local global i64 0, align 8
@TARC_SPEED_MODE_BIT = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"Link is up %d Mbps %s\0A\00", align 1
@FULL_DUPLEX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"Full Duplex\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Half Duplex\00", align 1
@E1000_CTRL_EXT_LINK_MODE_MASK = common dso_local global i32 0, align 4
@E1000_CTRL_EXT_LINK_MODE_GMII = common dso_local global i32 0, align 4
@E1000_THSTAT_LINK_THROTTLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Link: thermal downshift\0A\00", align 1
@e1000_i210 = common dso_local global i64 0, align 8
@e1000_i211 = common dso_local global i64 0, align 8
@I210_I_PHY_ID = common dso_local global i64 0, align 8
@I210_LINK_DELAY = common dso_local global i32 0, align 4
@igb_mac_min = common dso_local global i64 0, align 8
@IGB_MEDIA_RESET = common dso_local global i32 0, align 4
@LINK_STATE_UP = common dso_local global i32 0, align 4
@LINK_STATE_DOWN = common dso_local global i32 0, align 4
@em_mac_min = common dso_local global i64 0, align 8
@e1000_82574 = common dso_local global i64 0, align 8
@IFLIB_INTR_MSIX = common dso_local global i64 0, align 8
@E1000_IMS = common dso_local global i32 0, align 4
@EM_MSIX_LINK = common dso_local global i32 0, align 4
@E1000_IMS_LSC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @em_if_update_admin_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @em_if_update_admin_status(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = call %struct.adapter* @iflib_get_softc(i32 %10)
  store %struct.adapter* %11, %struct.adapter** %3, align 8
  %12 = load %struct.adapter*, %struct.adapter** %3, align 8
  %13 = getelementptr inbounds %struct.adapter, %struct.adapter* %12, i32 0, i32 4
  store %struct.e1000_hw* %13, %struct.e1000_hw** %4, align 8
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @iflib_get_dev(i32 %14)
  store i32 %15, i32* %5, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  %16 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %17 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %80 [
    i32 131, label %20
    i32 130, label %54
    i32 129, label %62
    i32 128, label %70
  ]

20:                                               ; preds = %1
  %21 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %22 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %51

26:                                               ; preds = %20
  %27 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %28 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @e1000_pch_spt, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = call i32 @msec_delay(i32 50)
  br label %35

35:                                               ; preds = %33, %26
  %36 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %37 = call i32 @e1000_check_for_link(%struct.e1000_hw* %36)
  %38 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %39 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %35
  %48 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %49 = call i32 @e1000_cfg_on_link_up(%struct.e1000_hw* %48)
  br label %50

50:                                               ; preds = %47, %35
  br label %53

51:                                               ; preds = %20
  %52 = load i32, i32* @TRUE, align 4
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %51, %50
  br label %81

54:                                               ; preds = %1
  %55 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %56 = call i32 @e1000_check_for_link(%struct.e1000_hw* %55)
  %57 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %58 = load i32, i32* @E1000_STATUS, align 4
  %59 = call i32 @E1000_READ_REG(%struct.e1000_hw* %57, i32 %58)
  %60 = load i32, i32* @E1000_STATUS_LU, align 4
  %61 = and i32 %59, %60
  store i32 %61, i32* %6, align 4
  br label %81

62:                                               ; preds = %1
  %63 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %64 = call i32 @e1000_check_for_link(%struct.e1000_hw* %63)
  %65 = load %struct.adapter*, %struct.adapter** %3, align 8
  %66 = getelementptr inbounds %struct.adapter, %struct.adapter* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %6, align 4
  br label %81

70:                                               ; preds = %1
  %71 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %72 = call i32 @e1000_check_for_link(%struct.e1000_hw* %71)
  %73 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %74 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  store i32 %79, i32* %6, align 4
  br label %80

80:                                               ; preds = %1, %70
  br label %81

81:                                               ; preds = %80, %62, %54, %53
  %82 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %83 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @e1000_i350, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %81
  %89 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %90 = load i32, i32* @E1000_THSTAT, align 4
  %91 = call i32 @E1000_READ_REG(%struct.e1000_hw* %89, i32 %90)
  store i32 %91, i32* %7, align 4
  %92 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %93 = load i32, i32* @E1000_CTRL_EXT, align 4
  %94 = call i32 @E1000_READ_REG(%struct.e1000_hw* %92, i32 %93)
  store i32 %94, i32* %8, align 4
  br label %95

95:                                               ; preds = %88, %81
  %96 = load i32, i32* %6, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %234

98:                                               ; preds = %95
  %99 = load %struct.adapter*, %struct.adapter** %3, align 8
  %100 = getelementptr inbounds %struct.adapter, %struct.adapter* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %234

103:                                              ; preds = %98
  %104 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %105 = load %struct.adapter*, %struct.adapter** %3, align 8
  %106 = getelementptr inbounds %struct.adapter, %struct.adapter* %105, i32 0, i32 1
  %107 = load %struct.adapter*, %struct.adapter** %3, align 8
  %108 = getelementptr inbounds %struct.adapter, %struct.adapter* %107, i32 0, i32 2
  %109 = call i32 @e1000_get_speed_and_duplex(%struct.e1000_hw* %104, i64* %106, i64* %108)
  %110 = load %struct.adapter*, %struct.adapter** %3, align 8
  %111 = getelementptr inbounds %struct.adapter, %struct.adapter* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @SPEED_1000, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %141

115:                                              ; preds = %103
  %116 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %117 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @e1000_82571, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %129, label %122

122:                                              ; preds = %115
  %123 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %124 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @e1000_82572, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %141

129:                                              ; preds = %122, %115
  %130 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %131 = call i32 @E1000_TARC(i32 0)
  %132 = call i32 @E1000_READ_REG(%struct.e1000_hw* %130, i32 %131)
  store i32 %132, i32* %9, align 4
  %133 = load i32, i32* @TARC_SPEED_MODE_BIT, align 4
  %134 = xor i32 %133, -1
  %135 = load i32, i32* %9, align 4
  %136 = and i32 %135, %134
  store i32 %136, i32* %9, align 4
  %137 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %138 = call i32 @E1000_TARC(i32 0)
  %139 = load i32, i32* %9, align 4
  %140 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %137, i32 %138, i32 %139)
  br label %141

141:                                              ; preds = %129, %122, %103
  %142 = load i64, i64* @bootverbose, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %157

144:                                              ; preds = %141
  %145 = load i32, i32* %5, align 4
  %146 = load %struct.adapter*, %struct.adapter** %3, align 8
  %147 = getelementptr inbounds %struct.adapter, %struct.adapter* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.adapter*, %struct.adapter** %3, align 8
  %150 = getelementptr inbounds %struct.adapter, %struct.adapter* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @FULL_DUPLEX, align 8
  %153 = icmp eq i64 %151, %152
  %154 = zext i1 %153 to i64
  %155 = select i1 %153, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0)
  %156 = call i32 (i32, i8*, ...) @device_printf(i32 %145, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %148, i8* %155)
  br label %157

157:                                              ; preds = %144, %141
  %158 = load %struct.adapter*, %struct.adapter** %3, align 8
  %159 = getelementptr inbounds %struct.adapter, %struct.adapter* %158, i32 0, i32 0
  store i32 1, i32* %159, align 8
  %160 = load %struct.adapter*, %struct.adapter** %3, align 8
  %161 = getelementptr inbounds %struct.adapter, %struct.adapter* %160, i32 0, i32 6
  store i64 0, i64* %161, align 8
  %162 = load i32, i32* %8, align 4
  %163 = load i32, i32* @E1000_CTRL_EXT_LINK_MODE_MASK, align 4
  %164 = and i32 %162, %163
  %165 = load i32, i32* @E1000_CTRL_EXT_LINK_MODE_GMII, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %175

167:                                              ; preds = %157
  %168 = load i32, i32* %7, align 4
  %169 = load i32, i32* @E1000_THSTAT_LINK_THROTTLE, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %167
  %173 = load i32, i32* %5, align 4
  %174 = call i32 (i32, i8*, ...) @device_printf(i32 %173, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %175

175:                                              ; preds = %172, %167, %157
  %176 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %177 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @e1000_i210, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %189, label %182

182:                                              ; preds = %175
  %183 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %184 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @e1000_i211, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %199

189:                                              ; preds = %182, %175
  %190 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %191 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %190, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @I210_I_PHY_ID, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %196, label %199

196:                                              ; preds = %189
  %197 = load i32, i32* @I210_LINK_DELAY, align 4
  %198 = call i32 @msec_delay(i32 %197)
  br label %199

199:                                              ; preds = %196, %189, %182
  %200 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %201 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %226

206:                                              ; preds = %199
  %207 = load %struct.adapter*, %struct.adapter** %3, align 8
  %208 = getelementptr inbounds %struct.adapter, %struct.adapter* %207, i32 0, i32 4
  %209 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @igb_mac_min, align 8
  %213 = icmp sge i64 %211, %212
  br i1 %213, label %214, label %226

214:                                              ; preds = %206
  %215 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %216 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 0
  store i32 0, i32* %218, align 8
  %219 = load i32, i32* @IGB_MEDIA_RESET, align 4
  %220 = load %struct.adapter*, %struct.adapter** %3, align 8
  %221 = getelementptr inbounds %struct.adapter, %struct.adapter* %220, i32 0, i32 5
  %222 = load i32, i32* %221, align 8
  %223 = or i32 %222, %219
  store i32 %223, i32* %221, align 8
  %224 = load i32, i32* %2, align 4
  %225 = call i32 @em_reset(i32 %224)
  br label %226

226:                                              ; preds = %214, %206, %199
  %227 = load i32, i32* %2, align 4
  %228 = load i32, i32* @LINK_STATE_UP, align 4
  %229 = load %struct.adapter*, %struct.adapter** %3, align 8
  %230 = getelementptr inbounds %struct.adapter, %struct.adapter* %229, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = call i32 @IF_Mbps(i64 %231)
  %233 = call i32 @iflib_link_state_change(i32 %227, i32 %228, i32 %232)
  br label %253

234:                                              ; preds = %98, %95
  %235 = load i32, i32* %6, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %252, label %237

237:                                              ; preds = %234
  %238 = load %struct.adapter*, %struct.adapter** %3, align 8
  %239 = getelementptr inbounds %struct.adapter, %struct.adapter* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = icmp eq i32 %240, 1
  br i1 %241, label %242, label %252

242:                                              ; preds = %237
  %243 = load %struct.adapter*, %struct.adapter** %3, align 8
  %244 = getelementptr inbounds %struct.adapter, %struct.adapter* %243, i32 0, i32 1
  store i64 0, i64* %244, align 8
  %245 = load %struct.adapter*, %struct.adapter** %3, align 8
  %246 = getelementptr inbounds %struct.adapter, %struct.adapter* %245, i32 0, i32 2
  store i64 0, i64* %246, align 8
  %247 = load %struct.adapter*, %struct.adapter** %3, align 8
  %248 = getelementptr inbounds %struct.adapter, %struct.adapter* %247, i32 0, i32 0
  store i32 0, i32* %248, align 8
  %249 = load i32, i32* %2, align 4
  %250 = load i32, i32* @LINK_STATE_DOWN, align 4
  %251 = call i32 @iflib_link_state_change(i32 %249, i32 %250, i32 0)
  br label %252

252:                                              ; preds = %242, %237, %234
  br label %253

253:                                              ; preds = %252, %226
  %254 = load %struct.adapter*, %struct.adapter** %3, align 8
  %255 = call i32 @em_update_stats_counters(%struct.adapter* %254)
  %256 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %257 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = load i64, i64* @e1000_82571, align 8
  %261 = icmp eq i64 %259, %260
  br i1 %261, label %262, label %273

262:                                              ; preds = %253
  %263 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %264 = call i64 @e1000_get_laa_state_82571(%struct.e1000_hw* %263)
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %273

266:                                              ; preds = %262
  %267 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %268 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %269 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 4
  %272 = call i32 @e1000_rar_set(%struct.e1000_hw* %267, i32 %271, i32 0)
  br label %273

273:                                              ; preds = %266, %262, %253
  %274 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %275 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = load i64, i64* @em_mac_min, align 8
  %279 = icmp slt i64 %277, %278
  br i1 %279, label %280, label %283

280:                                              ; preds = %273
  %281 = load %struct.adapter*, %struct.adapter** %3, align 8
  %282 = call i32 @lem_smartspeed(%struct.adapter* %281)
  br label %305

283:                                              ; preds = %273
  %284 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %285 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %285, i32 0, i32 0
  %287 = load i64, i64* %286, align 8
  %288 = load i64, i64* @e1000_82574, align 8
  %289 = icmp eq i64 %287, %288
  br i1 %289, label %290, label %304

290:                                              ; preds = %283
  %291 = load %struct.adapter*, %struct.adapter** %3, align 8
  %292 = getelementptr inbounds %struct.adapter, %struct.adapter* %291, i32 0, i32 3
  %293 = load i64, i64* %292, align 8
  %294 = load i64, i64* @IFLIB_INTR_MSIX, align 8
  %295 = icmp eq i64 %293, %294
  br i1 %295, label %296, label %304

296:                                              ; preds = %290
  %297 = load %struct.adapter*, %struct.adapter** %3, align 8
  %298 = getelementptr inbounds %struct.adapter, %struct.adapter* %297, i32 0, i32 4
  %299 = load i32, i32* @E1000_IMS, align 4
  %300 = load i32, i32* @EM_MSIX_LINK, align 4
  %301 = load i32, i32* @E1000_IMS_LSC, align 4
  %302 = or i32 %300, %301
  %303 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %298, i32 %299, i32 %302)
  br label %304

304:                                              ; preds = %296, %290, %283
  br label %305

305:                                              ; preds = %304, %280
  ret void
}

declare dso_local %struct.adapter* @iflib_get_softc(i32) #1

declare dso_local i32 @iflib_get_dev(i32) #1

declare dso_local i32 @msec_delay(i32) #1

declare dso_local i32 @e1000_check_for_link(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_cfg_on_link_up(%struct.e1000_hw*) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @e1000_get_speed_and_duplex(%struct.e1000_hw*, i64*, i64*) #1

declare dso_local i32 @E1000_TARC(i32) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @em_reset(i32) #1

declare dso_local i32 @iflib_link_state_change(i32, i32, i32) #1

declare dso_local i32 @IF_Mbps(i64) #1

declare dso_local i32 @em_update_stats_counters(%struct.adapter*) #1

declare dso_local i64 @e1000_get_laa_state_82571(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_rar_set(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @lem_smartspeed(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
