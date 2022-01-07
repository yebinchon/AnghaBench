; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_nvm.c_i40e_nvmupd_state_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_nvm.c_i40e_nvmupd_state_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i8*, i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i40e_nvm_access = type { i32 }

@I40E_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"i40e_nvmupd_state_init\00", align 1
@I40E_RESOURCE_READ = common dso_local global i32 0, align 4
@I40E_NVMUPD_STATE_READING = common dso_local global i8* null, align 8
@I40E_RESOURCE_WRITE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@i40e_aqc_opc_nvm_erase = common dso_local global i8* null, align 8
@I40E_NVMUPD_STATE_INIT_WAIT = common dso_local global i8* null, align 8
@i40e_aqc_opc_nvm_update = common dso_local global i8* null, align 8
@I40E_NVMUPD_STATE_WRITE_WAIT = common dso_local global i8* null, align 8
@EIO = common dso_local global i32 0, align 4
@I40E_DEBUG_NVM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"NVMUPD: bad cmd %s in init state\0A\00", align 1
@i40e_nvm_update_state_str = common dso_local global i32* null, align 8
@I40E_ERR_NVM = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_hw*, %struct.i40e_nvm_access*, i32*, i32*)* @i40e_nvmupd_state_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_nvmupd_state_init(%struct.i40e_hw* %0, %struct.i40e_nvm_access* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.i40e_hw*, align 8
  %6 = alloca %struct.i40e_nvm_access*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %5, align 8
  store %struct.i40e_nvm_access* %1, %struct.i40e_nvm_access** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i32, i32* @I40E_SUCCESS, align 4
  store i32 %11, i32* %9, align 4
  %12 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %14 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %6, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = call i32 @i40e_nvmupd_validate_command(%struct.i40e_hw* %13, %struct.i40e_nvm_access* %14, i32* %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  switch i32 %17, label %249 [
    i32 132, label %18
    i32 131, label %41
    i32 130, label %72
    i32 129, label %108
    i32 128, label %145
    i32 136, label %179
    i32 135, label %231
    i32 133, label %237
    i32 134, label %243
  ]

18:                                               ; preds = %4
  %19 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %20 = load i32, i32* @I40E_RESOURCE_READ, align 4
  %21 = call i32 @i40e_acquire_nvm(%struct.i40e_hw* %19, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %18
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %27 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @i40e_aq_rc_to_posix(i32 %25, i32 %29)
  %31 = load i32*, i32** %8, align 8
  store i32 %30, i32* %31, align 4
  br label %40

32:                                               ; preds = %18
  %33 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %34 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %6, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = call i32 @i40e_nvmupd_nvm_read(%struct.i40e_hw* %33, %struct.i40e_nvm_access* %34, i32* %35, i32* %36)
  store i32 %37, i32* %9, align 4
  %38 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %39 = call i32 @i40e_release_nvm(%struct.i40e_hw* %38)
  br label %40

40:                                               ; preds = %32, %24
  br label %262

41:                                               ; preds = %4
  %42 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %43 = load i32, i32* @I40E_RESOURCE_READ, align 4
  %44 = call i32 @i40e_acquire_nvm(%struct.i40e_hw* %42, i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %41
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %50 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @i40e_aq_rc_to_posix(i32 %48, i32 %52)
  %54 = load i32*, i32** %8, align 8
  store i32 %53, i32* %54, align 4
  br label %71

55:                                               ; preds = %41
  %56 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %57 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %6, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = load i32*, i32** %8, align 8
  %60 = call i32 @i40e_nvmupd_nvm_read(%struct.i40e_hw* %56, %struct.i40e_nvm_access* %57, i32* %58, i32* %59)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %55
  %64 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %65 = call i32 @i40e_release_nvm(%struct.i40e_hw* %64)
  br label %70

66:                                               ; preds = %55
  %67 = load i8*, i8** @I40E_NVMUPD_STATE_READING, align 8
  %68 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %69 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %68, i32 0, i32 0
  store i8* %67, i8** %69, align 8
  br label %70

70:                                               ; preds = %66, %63
  br label %71

71:                                               ; preds = %70, %47
  br label %262

72:                                               ; preds = %4
  %73 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %74 = load i32, i32* @I40E_RESOURCE_WRITE, align 4
  %75 = call i32 @i40e_acquire_nvm(%struct.i40e_hw* %73, i32 %74)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %72
  %79 = load i32, i32* %9, align 4
  %80 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %81 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @i40e_aq_rc_to_posix(i32 %79, i32 %83)
  %85 = load i32*, i32** %8, align 8
  store i32 %84, i32* %85, align 4
  br label %107

86:                                               ; preds = %72
  %87 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %88 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %6, align 8
  %89 = load i32*, i32** %8, align 8
  %90 = call i32 @i40e_nvmupd_nvm_erase(%struct.i40e_hw* %87, %struct.i40e_nvm_access* %88, i32* %89)
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %86
  %94 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %95 = call i32 @i40e_release_nvm(%struct.i40e_hw* %94)
  br label %106

96:                                               ; preds = %86
  %97 = load i8*, i8** @TRUE, align 8
  %98 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %99 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %98, i32 0, i32 2
  store i8* %97, i8** %99, align 8
  %100 = load i8*, i8** @i40e_aqc_opc_nvm_erase, align 8
  %101 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %102 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %101, i32 0, i32 1
  store i8* %100, i8** %102, align 8
  %103 = load i8*, i8** @I40E_NVMUPD_STATE_INIT_WAIT, align 8
  %104 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %105 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %104, i32 0, i32 0
  store i8* %103, i8** %105, align 8
  br label %106

106:                                              ; preds = %96, %93
  br label %107

107:                                              ; preds = %106, %78
  br label %262

108:                                              ; preds = %4
  %109 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %110 = load i32, i32* @I40E_RESOURCE_WRITE, align 4
  %111 = call i32 @i40e_acquire_nvm(%struct.i40e_hw* %109, i32 %110)
  store i32 %111, i32* %9, align 4
  %112 = load i32, i32* %9, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %108
  %115 = load i32, i32* %9, align 4
  %116 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %117 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @i40e_aq_rc_to_posix(i32 %115, i32 %119)
  %121 = load i32*, i32** %8, align 8
  store i32 %120, i32* %121, align 4
  br label %144

122:                                              ; preds = %108
  %123 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %124 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %6, align 8
  %125 = load i32*, i32** %7, align 8
  %126 = load i32*, i32** %8, align 8
  %127 = call i32 @i40e_nvmupd_nvm_write(%struct.i40e_hw* %123, %struct.i40e_nvm_access* %124, i32* %125, i32* %126)
  store i32 %127, i32* %9, align 4
  %128 = load i32, i32* %9, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %122
  %131 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %132 = call i32 @i40e_release_nvm(%struct.i40e_hw* %131)
  br label %143

133:                                              ; preds = %122
  %134 = load i8*, i8** @TRUE, align 8
  %135 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %136 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %135, i32 0, i32 2
  store i8* %134, i8** %136, align 8
  %137 = load i8*, i8** @i40e_aqc_opc_nvm_update, align 8
  %138 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %139 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %138, i32 0, i32 1
  store i8* %137, i8** %139, align 8
  %140 = load i8*, i8** @I40E_NVMUPD_STATE_INIT_WAIT, align 8
  %141 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %142 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %141, i32 0, i32 0
  store i8* %140, i8** %142, align 8
  br label %143

143:                                              ; preds = %133, %130
  br label %144

144:                                              ; preds = %143, %114
  br label %262

145:                                              ; preds = %4
  %146 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %147 = load i32, i32* @I40E_RESOURCE_WRITE, align 4
  %148 = call i32 @i40e_acquire_nvm(%struct.i40e_hw* %146, i32 %147)
  store i32 %148, i32* %9, align 4
  %149 = load i32, i32* %9, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %159

151:                                              ; preds = %145
  %152 = load i32, i32* %9, align 4
  %153 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %154 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %153, i32 0, i32 3
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @i40e_aq_rc_to_posix(i32 %152, i32 %156)
  %158 = load i32*, i32** %8, align 8
  store i32 %157, i32* %158, align 4
  br label %178

159:                                              ; preds = %145
  %160 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %161 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %6, align 8
  %162 = load i32*, i32** %7, align 8
  %163 = load i32*, i32** %8, align 8
  %164 = call i32 @i40e_nvmupd_nvm_write(%struct.i40e_hw* %160, %struct.i40e_nvm_access* %161, i32* %162, i32* %163)
  store i32 %164, i32* %9, align 4
  %165 = load i32, i32* %9, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %159
  %168 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %169 = call i32 @i40e_release_nvm(%struct.i40e_hw* %168)
  br label %177

170:                                              ; preds = %159
  %171 = load i8*, i8** @i40e_aqc_opc_nvm_update, align 8
  %172 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %173 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %172, i32 0, i32 1
  store i8* %171, i8** %173, align 8
  %174 = load i8*, i8** @I40E_NVMUPD_STATE_WRITE_WAIT, align 8
  %175 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %176 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %175, i32 0, i32 0
  store i8* %174, i8** %176, align 8
  br label %177

177:                                              ; preds = %170, %167
  br label %178

178:                                              ; preds = %177, %151
  br label %262

179:                                              ; preds = %4
  %180 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %181 = load i32, i32* @I40E_RESOURCE_WRITE, align 4
  %182 = call i32 @i40e_acquire_nvm(%struct.i40e_hw* %180, i32 %181)
  store i32 %182, i32* %9, align 4
  %183 = load i32, i32* %9, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %193

185:                                              ; preds = %179
  %186 = load i32, i32* %9, align 4
  %187 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %188 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %187, i32 0, i32 3
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = call i32 @i40e_aq_rc_to_posix(i32 %186, i32 %190)
  %192 = load i32*, i32** %8, align 8
  store i32 %191, i32* %192, align 4
  br label %230

193:                                              ; preds = %179
  %194 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %195 = call i32 @i40e_update_nvm_checksum(%struct.i40e_hw* %194)
  store i32 %195, i32* %9, align 4
  %196 = load i32, i32* %9, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %219

198:                                              ; preds = %193
  %199 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %200 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %199, i32 0, i32 3
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %211

204:                                              ; preds = %198
  %205 = load i32, i32* %9, align 4
  %206 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %207 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %206, i32 0, i32 3
  %208 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = call i32 @i40e_aq_rc_to_posix(i32 %205, i32 %209)
  br label %214

211:                                              ; preds = %198
  %212 = load i32, i32* @EIO, align 4
  %213 = sub nsw i32 0, %212
  br label %214

214:                                              ; preds = %211, %204
  %215 = phi i32 [ %210, %204 ], [ %213, %211 ]
  %216 = load i32*, i32** %8, align 8
  store i32 %215, i32* %216, align 4
  %217 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %218 = call i32 @i40e_release_nvm(%struct.i40e_hw* %217)
  br label %229

219:                                              ; preds = %193
  %220 = load i8*, i8** @TRUE, align 8
  %221 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %222 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %221, i32 0, i32 2
  store i8* %220, i8** %222, align 8
  %223 = load i8*, i8** @i40e_aqc_opc_nvm_update, align 8
  %224 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %225 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %224, i32 0, i32 1
  store i8* %223, i8** %225, align 8
  %226 = load i8*, i8** @I40E_NVMUPD_STATE_INIT_WAIT, align 8
  %227 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %228 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %227, i32 0, i32 0
  store i8* %226, i8** %228, align 8
  br label %229

229:                                              ; preds = %219, %214
  br label %230

230:                                              ; preds = %229, %185
  br label %262

231:                                              ; preds = %4
  %232 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %233 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %6, align 8
  %234 = load i32*, i32** %7, align 8
  %235 = load i32*, i32** %8, align 8
  %236 = call i32 @i40e_nvmupd_exec_aq(%struct.i40e_hw* %232, %struct.i40e_nvm_access* %233, i32* %234, i32* %235)
  store i32 %236, i32* %9, align 4
  br label %262

237:                                              ; preds = %4
  %238 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %239 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %6, align 8
  %240 = load i32*, i32** %7, align 8
  %241 = load i32*, i32** %8, align 8
  %242 = call i32 @i40e_nvmupd_get_aq_result(%struct.i40e_hw* %238, %struct.i40e_nvm_access* %239, i32* %240, i32* %241)
  store i32 %242, i32* %9, align 4
  br label %262

243:                                              ; preds = %4
  %244 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %245 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %6, align 8
  %246 = load i32*, i32** %7, align 8
  %247 = load i32*, i32** %8, align 8
  %248 = call i32 @i40e_nvmupd_get_aq_event(%struct.i40e_hw* %244, %struct.i40e_nvm_access* %245, i32* %246, i32* %247)
  store i32 %248, i32* %9, align 4
  br label %262

249:                                              ; preds = %4
  %250 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %251 = load i32, i32* @I40E_DEBUG_NVM, align 4
  %252 = load i32*, i32** @i40e_nvm_update_state_str, align 8
  %253 = load i32, i32* %10, align 4
  %254 = zext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %252, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @i40e_debug(%struct.i40e_hw* %250, i32 %251, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %256)
  %258 = load i32, i32* @I40E_ERR_NVM, align 4
  store i32 %258, i32* %9, align 4
  %259 = load i32, i32* @ESRCH, align 4
  %260 = sub nsw i32 0, %259
  %261 = load i32*, i32** %8, align 8
  store i32 %260, i32* %261, align 4
  br label %262

262:                                              ; preds = %249, %243, %237, %231, %230, %178, %144, %107, %71, %40
  %263 = load i32, i32* %9, align 4
  ret i32 %263
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @i40e_nvmupd_validate_command(%struct.i40e_hw*, %struct.i40e_nvm_access*, i32*) #1

declare dso_local i32 @i40e_acquire_nvm(%struct.i40e_hw*, i32) #1

declare dso_local i32 @i40e_aq_rc_to_posix(i32, i32) #1

declare dso_local i32 @i40e_nvmupd_nvm_read(%struct.i40e_hw*, %struct.i40e_nvm_access*, i32*, i32*) #1

declare dso_local i32 @i40e_release_nvm(%struct.i40e_hw*) #1

declare dso_local i32 @i40e_nvmupd_nvm_erase(%struct.i40e_hw*, %struct.i40e_nvm_access*, i32*) #1

declare dso_local i32 @i40e_nvmupd_nvm_write(%struct.i40e_hw*, %struct.i40e_nvm_access*, i32*, i32*) #1

declare dso_local i32 @i40e_update_nvm_checksum(%struct.i40e_hw*) #1

declare dso_local i32 @i40e_nvmupd_exec_aq(%struct.i40e_hw*, %struct.i40e_nvm_access*, i32*, i32*) #1

declare dso_local i32 @i40e_nvmupd_get_aq_result(%struct.i40e_hw*, %struct.i40e_nvm_access*, i32*, i32*) #1

declare dso_local i32 @i40e_nvmupd_get_aq_event(%struct.i40e_hw*, %struct.i40e_nvm_access*, i32*, i32*) #1

declare dso_local i32 @i40e_debug(%struct.i40e_hw*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
