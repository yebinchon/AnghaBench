; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_adminq.c_i40e_init_adminq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_adminq.c_i40e_init_adminq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { %struct.TYPE_6__, i32, i32, i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@I40E_ERR_CONFIG = common dso_local global i32 0, align 4
@I40E_ASQ_CMD_TIMEOUT = common dso_local global i32 0, align 4
@I40E_SUCCESS = common dso_local global i32 0, align 4
@I40E_ERR_ADMIN_QUEUE_TIMEOUT = common dso_local global i32 0, align 4
@I40E_SR_NVM_DEV_STARTER_VERSION = common dso_local global i32 0, align 4
@I40E_SR_NVM_EETRACK_LO = common dso_local global i32 0, align 4
@I40E_SR_NVM_EETRACK_HI = common dso_local global i32 0, align 4
@I40E_SR_BOOT_CONFIG_PTR = common dso_local global i32 0, align 4
@I40E_NVM_OEM_VER_OFF = common dso_local global i32 0, align 4
@I40E_HW_FLAG_802_1AD_CAPABLE = common dso_local global i32 0, align 4
@I40E_MAC_XL710 = common dso_local global i64 0, align 8
@I40E_FW_API_VERSION_MAJOR = common dso_local global i32 0, align 4
@I40E_MINOR_VER_GET_LINK_INFO_XL710 = common dso_local global i32 0, align 4
@I40E_HW_FLAG_AQ_PHY_ACCESS_CAPABLE = common dso_local global i32 0, align 4
@I40E_HW_FLAG_NVM_READ_REQUIRES_LOCK = common dso_local global i32 0, align 4
@I40E_ERR_FIRMWARE_API_VERSION = common dso_local global i32 0, align 4
@I40E_NVM_RESOURCE_ID = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@I40E_NVMUPD_STATE_INIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_init_adminq(%struct.i40e_hw* %0) #0 {
  %2 = alloca %struct.i40e_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %2, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %11 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %33, label %15

15:                                               ; preds = %1
  %16 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %17 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %33, label %21

21:                                               ; preds = %15
  %22 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %23 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %29 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27, %21, %15, %1
  %34 = load i32, i32* @I40E_ERR_CONFIG, align 4
  store i32 %34, i32* %8, align 4
  br label %255

35:                                               ; preds = %27
  %36 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %37 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 7
  %39 = call i32 @i40e_init_spinlock(i32* %38)
  %40 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %41 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 6
  %43 = call i32 @i40e_init_spinlock(i32* %42)
  %44 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %45 = call i32 @i40e_adminq_init_regs(%struct.i40e_hw* %44)
  %46 = load i32, i32* @I40E_ASQ_CMD_TIMEOUT, align 4
  %47 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %48 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 11
  store i32 %46, i32* %49, align 4
  %50 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %51 = call i32 @i40e_init_asq(%struct.i40e_hw* %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @I40E_SUCCESS, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %35
  br label %246

56:                                               ; preds = %35
  %57 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %58 = call i32 @i40e_init_arq(%struct.i40e_hw* %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @I40E_SUCCESS, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %243

63:                                               ; preds = %56
  %64 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %65 = call i64 @i40e_is_vf(%struct.i40e_hw* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  br label %255

68:                                               ; preds = %63
  br label %69

69:                                               ; preds = %97, %68
  %70 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %71 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %72 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 10
  %74 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %75 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 9
  %77 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %78 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 8
  %80 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %81 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 4
  %83 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %84 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 5
  %86 = call i32 @i40e_aq_get_firmware_version(%struct.i40e_hw* %70, i32* %73, i32* %76, i32* %79, i32* %82, i32* %85, i32* null)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @I40E_ERR_ADMIN_QUEUE_TIMEOUT, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %69
  br label %100

91:                                               ; preds = %69
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %9, align 4
  %94 = call i32 @i40e_msec_delay(i32 100)
  %95 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %96 = call i32 @i40e_resume_aq(%struct.i40e_hw* %95)
  br label %97

97:                                               ; preds = %91
  %98 = load i32, i32* %9, align 4
  %99 = icmp slt i32 %98, 10
  br i1 %99, label %69, label %100

100:                                              ; preds = %97, %90
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* @I40E_SUCCESS, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  br label %240

105:                                              ; preds = %100
  %106 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %107 = load i32, i32* @I40E_SR_NVM_DEV_STARTER_VERSION, align 4
  %108 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %109 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %108, i32 0, i32 5
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = call i32 @i40e_read_nvm_word(%struct.i40e_hw* %106, i32 %107, i32* %110)
  %112 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %113 = load i32, i32* @I40E_SR_NVM_EETRACK_LO, align 4
  %114 = call i32 @i40e_read_nvm_word(%struct.i40e_hw* %112, i32 %113, i32* %6)
  %115 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %116 = load i32, i32* @I40E_SR_NVM_EETRACK_HI, align 4
  %117 = call i32 @i40e_read_nvm_word(%struct.i40e_hw* %115, i32 %116, i32* %7)
  %118 = load i32, i32* %7, align 4
  %119 = shl i32 %118, 16
  %120 = load i32, i32* %6, align 4
  %121 = or i32 %119, %120
  %122 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %123 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %122, i32 0, i32 5
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 1
  store i32 %121, i32* %124, align 4
  %125 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %126 = load i32, i32* @I40E_SR_BOOT_CONFIG_PTR, align 4
  %127 = call i32 @i40e_read_nvm_word(%struct.i40e_hw* %125, i32 %126, i32* %3)
  %128 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %129 = load i32, i32* %3, align 4
  %130 = load i32, i32* @I40E_NVM_OEM_VER_OFF, align 4
  %131 = add nsw i32 %129, %130
  %132 = call i32 @i40e_read_nvm_word(%struct.i40e_hw* %128, i32 %131, i32* %4)
  %133 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %134 = load i32, i32* %3, align 4
  %135 = load i32, i32* @I40E_NVM_OEM_VER_OFF, align 4
  %136 = add nsw i32 %135, 1
  %137 = add nsw i32 %134, %136
  %138 = call i32 @i40e_read_nvm_word(%struct.i40e_hw* %133, i32 %137, i32* %5)
  %139 = load i32, i32* %4, align 4
  %140 = shl i32 %139, 16
  %141 = load i32, i32* %5, align 4
  %142 = or i32 %140, %141
  %143 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %144 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %143, i32 0, i32 5
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 2
  store i32 %142, i32* %145, align 8
  %146 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %147 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 8
  %150 = icmp sgt i32 %149, 1
  br i1 %150, label %163, label %151

151:                                              ; preds = %105
  %152 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %153 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 8
  %156 = icmp eq i32 %155, 1
  br i1 %156, label %157, label %169

157:                                              ; preds = %151
  %158 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %159 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 5
  %161 = load i32, i32* %160, align 4
  %162 = icmp sge i32 %161, 7
  br i1 %162, label %163, label %169

163:                                              ; preds = %157, %105
  %164 = load i32, i32* @I40E_HW_FLAG_802_1AD_CAPABLE, align 4
  %165 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %166 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 8
  %168 = or i32 %167, %164
  store i32 %168, i32* %166, align 8
  br label %169

169:                                              ; preds = %163, %157, %151
  %170 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %171 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %170, i32 0, i32 4
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @I40E_MAC_XL710, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %196

176:                                              ; preds = %169
  %177 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %178 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 4
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @I40E_FW_API_VERSION_MAJOR, align 4
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %183, label %196

183:                                              ; preds = %176
  %184 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %185 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 5
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* @I40E_MINOR_VER_GET_LINK_INFO_XL710, align 4
  %189 = icmp sge i32 %187, %188
  br i1 %189, label %190, label %196

190:                                              ; preds = %183
  %191 = load i32, i32* @I40E_HW_FLAG_AQ_PHY_ACCESS_CAPABLE, align 4
  %192 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %193 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 8
  %195 = or i32 %194, %191
  store i32 %195, i32* %193, align 8
  br label %196

196:                                              ; preds = %190, %183, %176, %169
  %197 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %198 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 4
  %200 = load i32, i32* %199, align 8
  %201 = icmp sgt i32 %200, 1
  br i1 %201, label %214, label %202

202:                                              ; preds = %196
  %203 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %204 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 4
  %206 = load i32, i32* %205, align 8
  %207 = icmp eq i32 %206, 1
  br i1 %207, label %208, label %220

208:                                              ; preds = %202
  %209 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %210 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 5
  %212 = load i32, i32* %211, align 4
  %213 = icmp sge i32 %212, 5
  br i1 %213, label %214, label %220

214:                                              ; preds = %208, %196
  %215 = load i32, i32* @I40E_HW_FLAG_NVM_READ_REQUIRES_LOCK, align 4
  %216 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %217 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 8
  %219 = or i32 %218, %215
  store i32 %219, i32* %217, align 8
  br label %220

220:                                              ; preds = %214, %208, %202
  %221 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %222 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 4
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* @I40E_FW_API_VERSION_MAJOR, align 4
  %226 = icmp sgt i32 %224, %225
  br i1 %226, label %227, label %229

227:                                              ; preds = %220
  %228 = load i32, i32* @I40E_ERR_FIRMWARE_API_VERSION, align 4
  store i32 %228, i32* %8, align 4
  br label %240

229:                                              ; preds = %220
  %230 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %231 = load i32, i32* @I40E_NVM_RESOURCE_ID, align 4
  %232 = call i32 @i40e_aq_release_resource(%struct.i40e_hw* %230, i32 %231, i32 0, i32* null)
  %233 = load i32, i32* @FALSE, align 4
  %234 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %235 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %234, i32 0, i32 2
  store i32 %233, i32* %235, align 4
  %236 = load i32, i32* @I40E_NVMUPD_STATE_INIT, align 4
  %237 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %238 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %237, i32 0, i32 1
  store i32 %236, i32* %238, align 8
  %239 = load i32, i32* @I40E_SUCCESS, align 4
  store i32 %239, i32* %8, align 4
  br label %255

240:                                              ; preds = %227, %104
  %241 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %242 = call i32 @i40e_shutdown_arq(%struct.i40e_hw* %241)
  br label %243

243:                                              ; preds = %240, %62
  %244 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %245 = call i32 @i40e_shutdown_asq(%struct.i40e_hw* %244)
  br label %246

246:                                              ; preds = %243, %55
  %247 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %248 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i32 0, i32 7
  %250 = call i32 @i40e_destroy_spinlock(i32* %249)
  %251 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %252 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %252, i32 0, i32 6
  %254 = call i32 @i40e_destroy_spinlock(i32* %253)
  br label %255

255:                                              ; preds = %246, %229, %67, %33
  %256 = load i32, i32* %8, align 4
  ret i32 %256
}

declare dso_local i32 @i40e_init_spinlock(i32*) #1

declare dso_local i32 @i40e_adminq_init_regs(%struct.i40e_hw*) #1

declare dso_local i32 @i40e_init_asq(%struct.i40e_hw*) #1

declare dso_local i32 @i40e_init_arq(%struct.i40e_hw*) #1

declare dso_local i64 @i40e_is_vf(%struct.i40e_hw*) #1

declare dso_local i32 @i40e_aq_get_firmware_version(%struct.i40e_hw*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @i40e_msec_delay(i32) #1

declare dso_local i32 @i40e_resume_aq(%struct.i40e_hw*) #1

declare dso_local i32 @i40e_read_nvm_word(%struct.i40e_hw*, i32, i32*) #1

declare dso_local i32 @i40e_aq_release_resource(%struct.i40e_hw*, i32, i32, i32*) #1

declare dso_local i32 @i40e_shutdown_arq(%struct.i40e_hw*) #1

declare dso_local i32 @i40e_shutdown_asq(%struct.i40e_hw*) #1

declare dso_local i32 @i40e_destroy_spinlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
