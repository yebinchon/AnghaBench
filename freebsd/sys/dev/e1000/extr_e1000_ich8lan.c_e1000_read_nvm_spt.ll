; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_read_nvm_spt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_read_nvm_spt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__, %struct.e1000_nvm_info }
%struct.TYPE_4__ = type { %struct.e1000_dev_spec_ich8lan }
%struct.e1000_dev_spec_ich8lan = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64 }
%struct.e1000_nvm_info = type { i64, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.1*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@E1000_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"e1000_read_nvm_spt\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"nvm parameter(s) out of bounds\0A\00", align 1
@E1000_ERR_NVM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"Could not detect valid bank, assuming bank 0\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"NVM read error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*, i64, i64, i64*)* @e1000_read_nvm_spt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_read_nvm_spt(%struct.e1000_hw* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.e1000_nvm_info*, align 8
  %10 = alloca %struct.e1000_dev_spec_ich8lan*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  %17 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %18 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %17, i32 0, i32 1
  store %struct.e1000_nvm_info* %18, %struct.e1000_nvm_info** %9, align 8
  %19 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %20 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store %struct.e1000_dev_spec_ich8lan* %21, %struct.e1000_dev_spec_ich8lan** %10, align 8
  %22 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %22, i32* %12, align 4
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %23 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %24 = load i64, i64* %6, align 8
  %25 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %9, align 8
  %26 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sge i64 %24, %27
  br i1 %28, label %40, label %29

29:                                               ; preds = %4
  %30 = load i64, i64* %7, align 8
  %31 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %9, align 8
  %32 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %6, align 8
  %35 = sub nsw i64 %33, %34
  %36 = icmp sgt i64 %30, %35
  br i1 %36, label %40, label %37

37:                                               ; preds = %29
  %38 = load i64, i64* %7, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37, %29, %4
  %41 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @E1000_ERR_NVM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %12, align 4
  br label %253

44:                                               ; preds = %37
  %45 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %9, align 8
  %46 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i32 (%struct.e1000_hw.1*)*, i32 (%struct.e1000_hw.1*)** %47, align 8
  %49 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %50 = bitcast %struct.e1000_hw* %49 to %struct.e1000_hw.1*
  %51 = call i32 %48(%struct.e1000_hw.1* %50)
  %52 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %53 = call i32 @e1000_valid_nvm_bank_detect_ich8lan(%struct.e1000_hw* %52, i64* %13)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* @E1000_SUCCESS, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %44
  %58 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  store i64 0, i64* %13, align 8
  br label %59

59:                                               ; preds = %57, %44
  %60 = load i64, i64* %13, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %9, align 8
  %64 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  br label %67

66:                                               ; preds = %59
  br label %67

67:                                               ; preds = %66, %62
  %68 = phi i64 [ %65, %62 ], [ 0, %66 ]
  store i64 %68, i64* %11, align 8
  %69 = load i64, i64* %6, align 8
  %70 = load i64, i64* %11, align 8
  %71 = add nsw i64 %70, %69
  store i64 %71, i64* %11, align 8
  %72 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %72, i32* %12, align 4
  store i64 0, i64* %16, align 8
  br label %73

73:                                               ; preds = %242, %67
  %74 = load i64, i64* %16, align 8
  %75 = load i64, i64* %7, align 8
  %76 = icmp slt i64 %74, %75
  br i1 %76, label %77, label %245

77:                                               ; preds = %73
  %78 = load i64, i64* %7, align 8
  %79 = load i64, i64* %16, align 8
  %80 = sub nsw i64 %78, %79
  %81 = icmp eq i64 %80, 1
  br i1 %81, label %82, label %142

82:                                               ; preds = %77
  %83 = load %struct.e1000_dev_spec_ich8lan*, %struct.e1000_dev_spec_ich8lan** %10, align 8
  %84 = getelementptr inbounds %struct.e1000_dev_spec_ich8lan, %struct.e1000_dev_spec_ich8lan* %83, i32 0, i32 0
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = load i64, i64* %6, align 8
  %87 = load i64, i64* %16, align 8
  %88 = add nsw i64 %86, %87
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %106

93:                                               ; preds = %82
  %94 = load %struct.e1000_dev_spec_ich8lan*, %struct.e1000_dev_spec_ich8lan** %10, align 8
  %95 = getelementptr inbounds %struct.e1000_dev_spec_ich8lan, %struct.e1000_dev_spec_ich8lan* %94, i32 0, i32 0
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %95, align 8
  %97 = load i64, i64* %6, align 8
  %98 = load i64, i64* %16, align 8
  %99 = add nsw i64 %97, %98
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64*, i64** %8, align 8
  %104 = load i64, i64* %16, align 8
  %105 = getelementptr inbounds i64, i64* %103, i64 %104
  store i64 %102, i64* %105, align 8
  br label %141

106:                                              ; preds = %82
  %107 = load i64, i64* %11, align 8
  %108 = load i64, i64* %16, align 8
  %109 = add nsw i64 %107, %108
  %110 = load i64, i64* %11, align 8
  %111 = load i64, i64* %16, align 8
  %112 = add nsw i64 %110, %111
  %113 = srem i64 %112, 2
  %114 = sub nsw i64 %109, %113
  store i64 %114, i64* %15, align 8
  %115 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %116 = load i64, i64* %15, align 8
  %117 = call i32 @e1000_read_flash_dword_ich8lan(%struct.e1000_hw* %115, i64 %116, i64* %14)
  store i32 %117, i32* %12, align 4
  %118 = load i32, i32* %12, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %106
  br label %245

121:                                              ; preds = %106
  %122 = load i64, i64* %11, align 8
  %123 = load i64, i64* %16, align 8
  %124 = add nsw i64 %122, %123
  %125 = srem i64 %124, 2
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %121
  %128 = load i64, i64* %14, align 8
  %129 = and i64 %128, 65535
  %130 = load i64*, i64** %8, align 8
  %131 = load i64, i64* %16, align 8
  %132 = getelementptr inbounds i64, i64* %130, i64 %131
  store i64 %129, i64* %132, align 8
  br label %140

133:                                              ; preds = %121
  %134 = load i64, i64* %14, align 8
  %135 = ashr i64 %134, 16
  %136 = and i64 %135, 65535
  %137 = load i64*, i64** %8, align 8
  %138 = load i64, i64* %16, align 8
  %139 = getelementptr inbounds i64, i64* %137, i64 %138
  store i64 %136, i64* %139, align 8
  br label %140

140:                                              ; preds = %133, %127
  br label %141

141:                                              ; preds = %140, %93
  br label %241

142:                                              ; preds = %77
  %143 = load i64, i64* %11, align 8
  %144 = load i64, i64* %16, align 8
  %145 = add nsw i64 %143, %144
  store i64 %145, i64* %15, align 8
  %146 = load %struct.e1000_dev_spec_ich8lan*, %struct.e1000_dev_spec_ich8lan** %10, align 8
  %147 = getelementptr inbounds %struct.e1000_dev_spec_ich8lan, %struct.e1000_dev_spec_ich8lan* %146, i32 0, i32 0
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %147, align 8
  %149 = load i64, i64* %6, align 8
  %150 = load i64, i64* %16, align 8
  %151 = add nsw i64 %149, %150
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %168

156:                                              ; preds = %142
  %157 = load %struct.e1000_dev_spec_ich8lan*, %struct.e1000_dev_spec_ich8lan** %10, align 8
  %158 = getelementptr inbounds %struct.e1000_dev_spec_ich8lan, %struct.e1000_dev_spec_ich8lan* %157, i32 0, i32 0
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %158, align 8
  %160 = load i64, i64* %6, align 8
  %161 = load i64, i64* %16, align 8
  %162 = add nsw i64 %160, %161
  %163 = add nsw i64 %162, 1
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %176, label %168

168:                                              ; preds = %156, %142
  %169 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %170 = load i64, i64* %15, align 8
  %171 = call i32 @e1000_read_flash_dword_ich8lan(%struct.e1000_hw* %169, i64 %170, i64* %14)
  store i32 %171, i32* %12, align 4
  %172 = load i32, i32* %12, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %168
  br label %245

175:                                              ; preds = %168
  br label %176

176:                                              ; preds = %175, %156
  %177 = load %struct.e1000_dev_spec_ich8lan*, %struct.e1000_dev_spec_ich8lan** %10, align 8
  %178 = getelementptr inbounds %struct.e1000_dev_spec_ich8lan, %struct.e1000_dev_spec_ich8lan* %177, i32 0, i32 0
  %179 = load %struct.TYPE_5__*, %struct.TYPE_5__** %178, align 8
  %180 = load i64, i64* %6, align 8
  %181 = load i64, i64* %16, align 8
  %182 = add nsw i64 %180, %181
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %200

187:                                              ; preds = %176
  %188 = load %struct.e1000_dev_spec_ich8lan*, %struct.e1000_dev_spec_ich8lan** %10, align 8
  %189 = getelementptr inbounds %struct.e1000_dev_spec_ich8lan, %struct.e1000_dev_spec_ich8lan* %188, i32 0, i32 0
  %190 = load %struct.TYPE_5__*, %struct.TYPE_5__** %189, align 8
  %191 = load i64, i64* %6, align 8
  %192 = load i64, i64* %16, align 8
  %193 = add nsw i64 %191, %192
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load i64*, i64** %8, align 8
  %198 = load i64, i64* %16, align 8
  %199 = getelementptr inbounds i64, i64* %197, i64 %198
  store i64 %196, i64* %199, align 8
  br label %206

200:                                              ; preds = %176
  %201 = load i64, i64* %14, align 8
  %202 = and i64 %201, 65535
  %203 = load i64*, i64** %8, align 8
  %204 = load i64, i64* %16, align 8
  %205 = getelementptr inbounds i64, i64* %203, i64 %204
  store i64 %202, i64* %205, align 8
  br label %206

206:                                              ; preds = %200, %187
  %207 = load %struct.e1000_dev_spec_ich8lan*, %struct.e1000_dev_spec_ich8lan** %10, align 8
  %208 = getelementptr inbounds %struct.e1000_dev_spec_ich8lan, %struct.e1000_dev_spec_ich8lan* %207, i32 0, i32 0
  %209 = load %struct.TYPE_5__*, %struct.TYPE_5__** %208, align 8
  %210 = load i64, i64* %6, align 8
  %211 = load i64, i64* %16, align 8
  %212 = add nsw i64 %210, %211
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %232

217:                                              ; preds = %206
  %218 = load %struct.e1000_dev_spec_ich8lan*, %struct.e1000_dev_spec_ich8lan** %10, align 8
  %219 = getelementptr inbounds %struct.e1000_dev_spec_ich8lan, %struct.e1000_dev_spec_ich8lan* %218, i32 0, i32 0
  %220 = load %struct.TYPE_5__*, %struct.TYPE_5__** %219, align 8
  %221 = load i64, i64* %6, align 8
  %222 = load i64, i64* %16, align 8
  %223 = add nsw i64 %221, %222
  %224 = add nsw i64 %223, 1
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = load i64*, i64** %8, align 8
  %229 = load i64, i64* %16, align 8
  %230 = add nsw i64 %229, 1
  %231 = getelementptr inbounds i64, i64* %228, i64 %230
  store i64 %227, i64* %231, align 8
  br label %240

232:                                              ; preds = %206
  %233 = load i64, i64* %14, align 8
  %234 = ashr i64 %233, 16
  %235 = and i64 %234, 65535
  %236 = load i64*, i64** %8, align 8
  %237 = load i64, i64* %16, align 8
  %238 = add nsw i64 %237, 1
  %239 = getelementptr inbounds i64, i64* %236, i64 %238
  store i64 %235, i64* %239, align 8
  br label %240

240:                                              ; preds = %232, %217
  br label %241

241:                                              ; preds = %240, %141
  br label %242

242:                                              ; preds = %241
  %243 = load i64, i64* %16, align 8
  %244 = add nsw i64 %243, 2
  store i64 %244, i64* %16, align 8
  br label %73

245:                                              ; preds = %174, %120, %73
  %246 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %9, align 8
  %247 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %246, i32 0, i32 2
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i32 0, i32 0
  %249 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %248, align 8
  %250 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %251 = bitcast %struct.e1000_hw* %250 to %struct.e1000_hw.0*
  %252 = call i32 %249(%struct.e1000_hw.0* %251)
  br label %253

253:                                              ; preds = %245, %40
  %254 = load i32, i32* %12, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %259

256:                                              ; preds = %253
  %257 = load i32, i32* %12, align 4
  %258 = call i32 @DEBUGOUT1(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %257)
  br label %259

259:                                              ; preds = %256, %253
  %260 = load i32, i32* %12, align 4
  ret i32 %260
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @e1000_valid_nvm_bank_detect_ich8lan(%struct.e1000_hw*, i64*) #1

declare dso_local i32 @e1000_read_flash_dword_ich8lan(%struct.e1000_hw*, i64, i64*) #1

declare dso_local i32 @DEBUGOUT1(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
