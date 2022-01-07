; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_update_nvm_checksum_spt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_update_nvm_checksum_spt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__, %struct.e1000_nvm_info }
%struct.TYPE_4__ = type { %struct.e1000_dev_spec_ich8lan }
%struct.e1000_dev_spec_ich8lan = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i64 }
%struct.e1000_nvm_info = type { i64, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.1*)*, i32 (%struct.e1000_hw.2*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.e1000_hw.2 = type opaque

@.str = private unnamed_addr constant [30 x i8] c"e1000_update_nvm_checksum_spt\00", align 1
@e1000_nvm_flash_sw = common dso_local global i64 0, align 8
@E1000_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"Could not detect valid bank, assuming bank 0\0A\00", align 1
@E1000_SHADOW_RAM_WORDS = common dso_local global i64 0, align 8
@E1000_ICH_NVM_SIG_WORD = common dso_local global i32 0, align 4
@E1000_ICH_NVM_SIG_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Flash commit failed.\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"NVM update error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_update_nvm_checksum_spt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_update_nvm_checksum_spt(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_nvm_info*, align 8
  %4 = alloca %struct.e1000_dev_spec_ich8lan*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %12 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %13 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %12, i32 0, i32 1
  store %struct.e1000_nvm_info* %13, %struct.e1000_nvm_info** %3, align 8
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %15 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store %struct.e1000_dev_spec_ich8lan* %16, %struct.e1000_dev_spec_ich8lan** %4, align 8
  store i64 0, i64* %11, align 8
  %17 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %19 = call i64 @e1000_update_nvm_checksum_generic(%struct.e1000_hw* %18)
  store i64 %19, i64* %10, align 8
  %20 = load i64, i64* %10, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %262

23:                                               ; preds = %1
  %24 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %25 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @e1000_nvm_flash_sw, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %262

30:                                               ; preds = %23
  %31 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %32 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 2
  %34 = load i32 (%struct.e1000_hw.2*)*, i32 (%struct.e1000_hw.2*)** %33, align 8
  %35 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %36 = bitcast %struct.e1000_hw* %35 to %struct.e1000_hw.2*
  %37 = call i32 %34(%struct.e1000_hw.2* %36)
  %38 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %39 = call i64 @e1000_valid_nvm_bank_detect_ich8lan(%struct.e1000_hw* %38, i64* %9)
  store i64 %39, i64* %10, align 8
  %40 = load i64, i64* %10, align 8
  %41 = load i64, i64* @E1000_SUCCESS, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %30
  %44 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  store i64 0, i64* %9, align 8
  br label %45

45:                                               ; preds = %43, %30
  %46 = load i64, i64* %9, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %45
  %49 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %50 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %52 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %53 = call i64 @e1000_erase_flash_bank_ich8lan(%struct.e1000_hw* %52, i32 1)
  store i64 %53, i64* %10, align 8
  %54 = load i64, i64* %10, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  br label %242

57:                                               ; preds = %48
  br label %68

58:                                               ; preds = %45
  %59 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %60 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %8, align 8
  store i64 0, i64* %7, align 8
  %62 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %63 = call i64 @e1000_erase_flash_bank_ich8lan(%struct.e1000_hw* %62, i32 0)
  store i64 %63, i64* %10, align 8
  %64 = load i64, i64* %10, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  br label %242

67:                                               ; preds = %58
  br label %68

68:                                               ; preds = %67, %57
  store i64 0, i64* %5, align 8
  br label %69

69:                                               ; preds = %160, %68
  %70 = load i64, i64* %5, align 8
  %71 = load i64, i64* @E1000_SHADOW_RAM_WORDS, align 8
  %72 = icmp slt i64 %70, %71
  br i1 %72, label %73, label %163

73:                                               ; preds = %69
  %74 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %75 = load i64, i64* %5, align 8
  %76 = load i64, i64* %8, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i64 @e1000_read_flash_dword_ich8lan(%struct.e1000_hw* %74, i64 %77, i64* %11)
  store i64 %78, i64* %10, align 8
  %79 = load %struct.e1000_dev_spec_ich8lan*, %struct.e1000_dev_spec_ich8lan** %4, align 8
  %80 = getelementptr inbounds %struct.e1000_dev_spec_ich8lan, %struct.e1000_dev_spec_ich8lan* %79, i32 0, i32 0
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = load i64, i64* %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %101

87:                                               ; preds = %73
  %88 = load i64, i64* %11, align 8
  %89 = and i64 %88, 4294901760
  store i64 %89, i64* %11, align 8
  %90 = load %struct.e1000_dev_spec_ich8lan*, %struct.e1000_dev_spec_ich8lan** %4, align 8
  %91 = getelementptr inbounds %struct.e1000_dev_spec_ich8lan, %struct.e1000_dev_spec_ich8lan* %90, i32 0, i32 0
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = load i64, i64* %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = and i32 %96, 65535
  %98 = sext i32 %97 to i64
  %99 = load i64, i64* %11, align 8
  %100 = or i64 %99, %98
  store i64 %100, i64* %11, align 8
  br label %101

101:                                              ; preds = %87, %73
  %102 = load %struct.e1000_dev_spec_ich8lan*, %struct.e1000_dev_spec_ich8lan** %4, align 8
  %103 = getelementptr inbounds %struct.e1000_dev_spec_ich8lan, %struct.e1000_dev_spec_ich8lan* %102, i32 0, i32 0
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = load i64, i64* %5, align 8
  %106 = add nsw i64 %105, 1
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %127

111:                                              ; preds = %101
  %112 = load i64, i64* %11, align 8
  %113 = and i64 %112, 65535
  store i64 %113, i64* %11, align 8
  %114 = load %struct.e1000_dev_spec_ich8lan*, %struct.e1000_dev_spec_ich8lan** %4, align 8
  %115 = getelementptr inbounds %struct.e1000_dev_spec_ich8lan, %struct.e1000_dev_spec_ich8lan* %114, i32 0, i32 0
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %115, align 8
  %117 = load i64, i64* %5, align 8
  %118 = add nsw i64 %117, 1
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = and i32 %121, 65535
  %123 = shl i32 %122, 16
  %124 = sext i32 %123 to i64
  %125 = load i64, i64* %11, align 8
  %126 = or i64 %125, %124
  store i64 %126, i64* %11, align 8
  br label %127

127:                                              ; preds = %111, %101
  %128 = load i64, i64* %10, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %127
  br label %163

131:                                              ; preds = %127
  %132 = load i64, i64* %5, align 8
  %133 = load i32, i32* @E1000_ICH_NVM_SIG_WORD, align 4
  %134 = sub nsw i32 %133, 1
  %135 = sext i32 %134 to i64
  %136 = icmp eq i64 %132, %135
  br i1 %136, label %137, label %143

137:                                              ; preds = %131
  %138 = load i32, i32* @E1000_ICH_NVM_SIG_MASK, align 4
  %139 = shl i32 %138, 16
  %140 = sext i32 %139 to i64
  %141 = load i64, i64* %11, align 8
  %142 = or i64 %141, %140
  store i64 %142, i64* %11, align 8
  br label %143

143:                                              ; preds = %137, %131
  %144 = load i64, i64* %5, align 8
  %145 = load i64, i64* %7, align 8
  %146 = add nsw i64 %144, %145
  %147 = shl i64 %146, 1
  store i64 %147, i64* %6, align 8
  %148 = call i32 @usec_delay(i32 100)
  %149 = load i64, i64* %5, align 8
  %150 = load i64, i64* %7, align 8
  %151 = add nsw i64 %149, %150
  store i64 %151, i64* %6, align 8
  %152 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %153 = load i64, i64* %6, align 8
  %154 = load i64, i64* %11, align 8
  %155 = call i64 @e1000_retry_write_flash_dword_ich8lan(%struct.e1000_hw* %152, i64 %153, i64 %154)
  store i64 %155, i64* %10, align 8
  %156 = load i64, i64* %10, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %143
  br label %163

159:                                              ; preds = %143
  br label %160

160:                                              ; preds = %159
  %161 = load i64, i64* %5, align 8
  %162 = add nsw i64 %161, 2
  store i64 %162, i64* %5, align 8
  br label %69

163:                                              ; preds = %158, %130, %69
  %164 = load i64, i64* %10, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %163
  %167 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %242

168:                                              ; preds = %163
  %169 = load i64, i64* %7, align 8
  %170 = load i32, i32* @E1000_ICH_NVM_SIG_WORD, align 4
  %171 = sext i32 %170 to i64
  %172 = add nsw i64 %169, %171
  store i64 %172, i64* %6, align 8
  %173 = load i64, i64* %6, align 8
  %174 = add nsw i64 %173, -1
  store i64 %174, i64* %6, align 8
  %175 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %176 = load i64, i64* %6, align 8
  %177 = call i64 @e1000_read_flash_dword_ich8lan(%struct.e1000_hw* %175, i64 %176, i64* %11)
  store i64 %177, i64* %10, align 8
  %178 = load i64, i64* %10, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %168
  br label %242

181:                                              ; preds = %168
  %182 = load i64, i64* %11, align 8
  %183 = and i64 %182, 3221225471
  store i64 %183, i64* %11, align 8
  %184 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %185 = load i64, i64* %6, align 8
  %186 = load i64, i64* %11, align 8
  %187 = call i64 @e1000_retry_write_flash_dword_ich8lan(%struct.e1000_hw* %184, i64 %185, i64 %186)
  store i64 %187, i64* %10, align 8
  %188 = load i64, i64* %10, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %181
  br label %242

191:                                              ; preds = %181
  %192 = load i64, i64* %8, align 8
  %193 = load i32, i32* @E1000_ICH_NVM_SIG_WORD, align 4
  %194 = sext i32 %193 to i64
  %195 = add nsw i64 %192, %194
  %196 = mul nsw i64 %195, 2
  %197 = add nsw i64 %196, 1
  store i64 %197, i64* %6, align 8
  %198 = load i64, i64* %8, align 8
  %199 = load i32, i32* @E1000_ICH_NVM_SIG_WORD, align 4
  %200 = sext i32 %199 to i64
  %201 = add nsw i64 %198, %200
  %202 = sub nsw i64 %201, 1
  store i64 %202, i64* %6, align 8
  %203 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %204 = load i64, i64* %6, align 8
  %205 = call i64 @e1000_read_flash_dword_ich8lan(%struct.e1000_hw* %203, i64 %204, i64* %11)
  store i64 %205, i64* %10, align 8
  %206 = load i64, i64* %10, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %191
  br label %242

209:                                              ; preds = %191
  %210 = load i64, i64* %11, align 8
  %211 = and i64 %210, 16777215
  store i64 %211, i64* %11, align 8
  %212 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %213 = load i64, i64* %6, align 8
  %214 = load i64, i64* %11, align 8
  %215 = call i64 @e1000_retry_write_flash_dword_ich8lan(%struct.e1000_hw* %212, i64 %213, i64 %214)
  store i64 %215, i64* %10, align 8
  %216 = load i64, i64* %10, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %209
  br label %242

219:                                              ; preds = %209
  store i64 0, i64* %5, align 8
  br label %220

220:                                              ; preds = %238, %219
  %221 = load i64, i64* %5, align 8
  %222 = load i64, i64* @E1000_SHADOW_RAM_WORDS, align 8
  %223 = icmp slt i64 %221, %222
  br i1 %223, label %224, label %241

224:                                              ; preds = %220
  %225 = load i64, i64* @FALSE, align 8
  %226 = load %struct.e1000_dev_spec_ich8lan*, %struct.e1000_dev_spec_ich8lan** %4, align 8
  %227 = getelementptr inbounds %struct.e1000_dev_spec_ich8lan, %struct.e1000_dev_spec_ich8lan* %226, i32 0, i32 0
  %228 = load %struct.TYPE_5__*, %struct.TYPE_5__** %227, align 8
  %229 = load i64, i64* %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %228, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %230, i32 0, i32 1
  store i64 %225, i64* %231, align 8
  %232 = load %struct.e1000_dev_spec_ich8lan*, %struct.e1000_dev_spec_ich8lan** %4, align 8
  %233 = getelementptr inbounds %struct.e1000_dev_spec_ich8lan, %struct.e1000_dev_spec_ich8lan* %232, i32 0, i32 0
  %234 = load %struct.TYPE_5__*, %struct.TYPE_5__** %233, align 8
  %235 = load i64, i64* %5, align 8
  %236 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %234, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i32 0, i32 0
  store i32 65535, i32* %237, align 8
  br label %238

238:                                              ; preds = %224
  %239 = load i64, i64* %5, align 8
  %240 = add nsw i64 %239, 1
  store i64 %240, i64* %5, align 8
  br label %220

241:                                              ; preds = %220
  br label %242

242:                                              ; preds = %241, %218, %208, %190, %180, %166, %66, %56
  %243 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %244 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %243, i32 0, i32 2
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 1
  %246 = load i32 (%struct.e1000_hw.1*)*, i32 (%struct.e1000_hw.1*)** %245, align 8
  %247 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %248 = bitcast %struct.e1000_hw* %247 to %struct.e1000_hw.1*
  %249 = call i32 %246(%struct.e1000_hw.1* %248)
  %250 = load i64, i64* %10, align 8
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %261, label %252

252:                                              ; preds = %242
  %253 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %254 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %253, i32 0, i32 2
  %255 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %254, i32 0, i32 0
  %256 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %255, align 8
  %257 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %258 = bitcast %struct.e1000_hw* %257 to %struct.e1000_hw.0*
  %259 = call i32 %256(%struct.e1000_hw.0* %258)
  %260 = call i32 @msec_delay(i32 10)
  br label %261

261:                                              ; preds = %252, %242
  br label %262

262:                                              ; preds = %261, %29, %22
  %263 = load i64, i64* %10, align 8
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %268

265:                                              ; preds = %262
  %266 = load i64, i64* %10, align 8
  %267 = call i32 @DEBUGOUT1(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i64 %266)
  br label %268

268:                                              ; preds = %265, %262
  %269 = load i64, i64* %10, align 8
  ret i64 %269
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @e1000_update_nvm_checksum_generic(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_valid_nvm_bank_detect_ich8lan(%struct.e1000_hw*, i64*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i64 @e1000_erase_flash_bank_ich8lan(%struct.e1000_hw*, i32) #1

declare dso_local i64 @e1000_read_flash_dword_ich8lan(%struct.e1000_hw*, i64, i64*) #1

declare dso_local i32 @usec_delay(i32) #1

declare dso_local i64 @e1000_retry_write_flash_dword_ich8lan(%struct.e1000_hw*, i64, i64) #1

declare dso_local i32 @msec_delay(i32) #1

declare dso_local i32 @DEBUGOUT1(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
