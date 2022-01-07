; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_update_nvm_checksum_ich8lan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_update_nvm_checksum_ich8lan.c"
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

@.str = private unnamed_addr constant [34 x i8] c"e1000_update_nvm_checksum_ich8lan\00", align 1
@e1000_nvm_flash_sw = common dso_local global i64 0, align 8
@E1000_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"Could not detect valid bank, assuming bank 0\0A\00", align 1
@E1000_SHADOW_RAM_WORDS = common dso_local global i64 0, align 8
@E1000_ICH_NVM_SIG_WORD = common dso_local global i64 0, align 8
@E1000_ICH_NVM_SIG_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Flash commit failed.\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"NVM update error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_update_nvm_checksum_ich8lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_update_nvm_checksum_ich8lan(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_nvm_info*, align 8
  %4 = alloca %struct.e1000_dev_spec_ich8lan*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %12 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %13 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %12, i32 0, i32 1
  store %struct.e1000_nvm_info* %13, %struct.e1000_nvm_info** %3, align 8
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %15 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store %struct.e1000_dev_spec_ich8lan* %16, %struct.e1000_dev_spec_ich8lan** %4, align 8
  store i32 0, i32* %11, align 4
  %17 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %19 = call i64 @e1000_update_nvm_checksum_generic(%struct.e1000_hw* %18)
  store i64 %19, i64* %10, align 8
  %20 = load i64, i64* %10, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %219

23:                                               ; preds = %1
  %24 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %25 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @e1000_nvm_flash_sw, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %219

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
  br label %199

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
  br label %199

67:                                               ; preds = %58
  br label %68

68:                                               ; preds = %67, %57
  store i64 0, i64* %5, align 8
  br label %69

69:                                               ; preds = %133, %68
  %70 = load i64, i64* %5, align 8
  %71 = load i64, i64* @E1000_SHADOW_RAM_WORDS, align 8
  %72 = icmp slt i64 %70, %71
  br i1 %72, label %73, label %136

73:                                               ; preds = %69
  %74 = load %struct.e1000_dev_spec_ich8lan*, %struct.e1000_dev_spec_ich8lan** %4, align 8
  %75 = getelementptr inbounds %struct.e1000_dev_spec_ich8lan, %struct.e1000_dev_spec_ich8lan* %74, i32 0, i32 0
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = load i64, i64* %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %73
  %83 = load %struct.e1000_dev_spec_ich8lan*, %struct.e1000_dev_spec_ich8lan** %4, align 8
  %84 = getelementptr inbounds %struct.e1000_dev_spec_ich8lan, %struct.e1000_dev_spec_ich8lan* %83, i32 0, i32 0
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = load i64, i64* %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  store i32 %89, i32* %11, align 4
  br label %100

90:                                               ; preds = %73
  %91 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %92 = load i64, i64* %5, align 8
  %93 = load i64, i64* %8, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i64 @e1000_read_flash_word_ich8lan(%struct.e1000_hw* %91, i64 %94, i32* %11)
  store i64 %95, i64* %10, align 8
  %96 = load i64, i64* %10, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %90
  br label %136

99:                                               ; preds = %90
  br label %100

100:                                              ; preds = %99, %82
  %101 = load i64, i64* %5, align 8
  %102 = load i64, i64* @E1000_ICH_NVM_SIG_WORD, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %100
  %105 = load i32, i32* @E1000_ICH_NVM_SIG_MASK, align 4
  %106 = load i32, i32* %11, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %11, align 4
  br label %108

108:                                              ; preds = %104, %100
  %109 = load i64, i64* %5, align 8
  %110 = load i64, i64* %7, align 8
  %111 = add nsw i64 %109, %110
  %112 = shl i64 %111, 1
  store i64 %112, i64* %6, align 8
  %113 = call i32 @usec_delay(i32 100)
  %114 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %115 = load i64, i64* %6, align 8
  %116 = load i32, i32* %11, align 4
  %117 = call i64 @e1000_retry_write_flash_byte_ich8lan(%struct.e1000_hw* %114, i64 %115, i32 %116)
  store i64 %117, i64* %10, align 8
  %118 = load i64, i64* %10, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %108
  br label %136

121:                                              ; preds = %108
  %122 = call i32 @usec_delay(i32 100)
  %123 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %124 = load i64, i64* %6, align 8
  %125 = add nsw i64 %124, 1
  %126 = load i32, i32* %11, align 4
  %127 = ashr i32 %126, 8
  %128 = call i64 @e1000_retry_write_flash_byte_ich8lan(%struct.e1000_hw* %123, i64 %125, i32 %127)
  store i64 %128, i64* %10, align 8
  %129 = load i64, i64* %10, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %121
  br label %136

132:                                              ; preds = %121
  br label %133

133:                                              ; preds = %132
  %134 = load i64, i64* %5, align 8
  %135 = add nsw i64 %134, 1
  store i64 %135, i64* %5, align 8
  br label %69

136:                                              ; preds = %131, %120, %98, %69
  %137 = load i64, i64* %10, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %136
  %140 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %199

141:                                              ; preds = %136
  %142 = load i64, i64* %7, align 8
  %143 = load i64, i64* @E1000_ICH_NVM_SIG_WORD, align 8
  %144 = add nsw i64 %142, %143
  store i64 %144, i64* %6, align 8
  %145 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %146 = load i64, i64* %6, align 8
  %147 = call i64 @e1000_read_flash_word_ich8lan(%struct.e1000_hw* %145, i64 %146, i32* %11)
  store i64 %147, i64* %10, align 8
  %148 = load i64, i64* %10, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %141
  br label %199

151:                                              ; preds = %141
  %152 = load i32, i32* %11, align 4
  %153 = and i32 %152, 49151
  store i32 %153, i32* %11, align 4
  %154 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %155 = load i64, i64* %6, align 8
  %156 = mul nsw i64 %155, 2
  %157 = add nsw i64 %156, 1
  %158 = load i32, i32* %11, align 4
  %159 = ashr i32 %158, 8
  %160 = call i64 @e1000_retry_write_flash_byte_ich8lan(%struct.e1000_hw* %154, i64 %157, i32 %159)
  store i64 %160, i64* %10, align 8
  %161 = load i64, i64* %10, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %151
  br label %199

164:                                              ; preds = %151
  %165 = load i64, i64* %8, align 8
  %166 = load i64, i64* @E1000_ICH_NVM_SIG_WORD, align 8
  %167 = add nsw i64 %165, %166
  %168 = mul nsw i64 %167, 2
  %169 = add nsw i64 %168, 1
  store i64 %169, i64* %6, align 8
  %170 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %171 = load i64, i64* %6, align 8
  %172 = call i64 @e1000_retry_write_flash_byte_ich8lan(%struct.e1000_hw* %170, i64 %171, i32 0)
  store i64 %172, i64* %10, align 8
  %173 = load i64, i64* %10, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %164
  br label %199

176:                                              ; preds = %164
  store i64 0, i64* %5, align 8
  br label %177

177:                                              ; preds = %195, %176
  %178 = load i64, i64* %5, align 8
  %179 = load i64, i64* @E1000_SHADOW_RAM_WORDS, align 8
  %180 = icmp slt i64 %178, %179
  br i1 %180, label %181, label %198

181:                                              ; preds = %177
  %182 = load i64, i64* @FALSE, align 8
  %183 = load %struct.e1000_dev_spec_ich8lan*, %struct.e1000_dev_spec_ich8lan** %4, align 8
  %184 = getelementptr inbounds %struct.e1000_dev_spec_ich8lan, %struct.e1000_dev_spec_ich8lan* %183, i32 0, i32 0
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** %184, align 8
  %186 = load i64, i64* %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 1
  store i64 %182, i64* %188, align 8
  %189 = load %struct.e1000_dev_spec_ich8lan*, %struct.e1000_dev_spec_ich8lan** %4, align 8
  %190 = getelementptr inbounds %struct.e1000_dev_spec_ich8lan, %struct.e1000_dev_spec_ich8lan* %189, i32 0, i32 0
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** %190, align 8
  %192 = load i64, i64* %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 0
  store i32 65535, i32* %194, align 8
  br label %195

195:                                              ; preds = %181
  %196 = load i64, i64* %5, align 8
  %197 = add nsw i64 %196, 1
  store i64 %197, i64* %5, align 8
  br label %177

198:                                              ; preds = %177
  br label %199

199:                                              ; preds = %198, %175, %163, %150, %139, %66, %56
  %200 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %201 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %200, i32 0, i32 2
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 1
  %203 = load i32 (%struct.e1000_hw.1*)*, i32 (%struct.e1000_hw.1*)** %202, align 8
  %204 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %205 = bitcast %struct.e1000_hw* %204 to %struct.e1000_hw.1*
  %206 = call i32 %203(%struct.e1000_hw.1* %205)
  %207 = load i64, i64* %10, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %218, label %209

209:                                              ; preds = %199
  %210 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %211 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %210, i32 0, i32 2
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 0
  %213 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %212, align 8
  %214 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %215 = bitcast %struct.e1000_hw* %214 to %struct.e1000_hw.0*
  %216 = call i32 %213(%struct.e1000_hw.0* %215)
  %217 = call i32 @msec_delay(i32 10)
  br label %218

218:                                              ; preds = %209, %199
  br label %219

219:                                              ; preds = %218, %29, %22
  %220 = load i64, i64* %10, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %225

222:                                              ; preds = %219
  %223 = load i64, i64* %10, align 8
  %224 = call i32 @DEBUGOUT1(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i64 %223)
  br label %225

225:                                              ; preds = %222, %219
  %226 = load i64, i64* %10, align 8
  ret i64 %226
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @e1000_update_nvm_checksum_generic(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_valid_nvm_bank_detect_ich8lan(%struct.e1000_hw*, i64*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i64 @e1000_erase_flash_bank_ich8lan(%struct.e1000_hw*, i32) #1

declare dso_local i64 @e1000_read_flash_word_ich8lan(%struct.e1000_hw*, i64, i32*) #1

declare dso_local i32 @usec_delay(i32) #1

declare dso_local i64 @e1000_retry_write_flash_byte_ich8lan(%struct.e1000_hw*, i64, i32) #1

declare dso_local i32 @msec_delay(i32) #1

declare dso_local i32 @DEBUGOUT1(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
