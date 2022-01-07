; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_manage.c_e1000_load_firmware.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_manage.c_e1000_load_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [20 x i8] c"e1000_load_firmware\00", align 1
@e1000_i210 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"Hardware doesn't support loading FW by the driver\0A\00", align 1
@E1000_ERR_CONFIG = common dso_local global i32 0, align 4
@E1000_HICR = common dso_local global i32 0, align 4
@E1000_HICR_EN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"E1000_HOST_EN bit disabled.\0A\00", align 1
@E1000_HICR_MEMORY_BASE_EN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"E1000_HICR_MEMORY_BASE_EN bit disabled.\0A\00", align 1
@E1000_HI_FW_MAX_LENGTH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"Buffer length failure.\0A\00", align 1
@E1000_ERR_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@E1000_ICR_V2 = common dso_local global i32 0, align 4
@E1000_HICR_FW_RESET_ENABLE = common dso_local global i32 0, align 4
@E1000_HICR_FW_RESET = common dso_local global i32 0, align 4
@E1000_HI_COMMAND_TIMEOUT = common dso_local global i32 0, align 4
@E1000_ICR_MNG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"FW reset failed.\0A\00", align 1
@E1000_ERR_HOST_INTERFACE_COMMAND = common dso_local global i32 0, align 4
@E1000_FWSM = common dso_local global i32 0, align 4
@E1000_FWSM_FW_VALID = common dso_local global i32 0, align 4
@E1000_FWSM_MODE_MASK = common dso_local global i32 0, align 4
@E1000_FWSM_MODE_SHIFT = common dso_local global i64 0, align 8
@E1000_FWSM_HI_EN_ONLY_MODE = common dso_local global i64 0, align 8
@E1000_HI_FW_BLOCK_DWORD_LENGTH = common dso_local global i32 0, align 4
@E1000_HI_FW_BASE_ADDRESS = common dso_local global i32 0, align 4
@E1000_HIBBA = common dso_local global i32 0, align 4
@E1000_HOST_IF = common dso_local global i32 0, align 4
@E1000_HICR_C = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [45 x i8] c"New FW did not start within timeout period.\0A\00", align 1
@E1000_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @e1000_load_firmware(%struct.e1000_hw* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %15 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @e1000_i210, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* @E1000_ERR_CONFIG, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %225

24:                                               ; preds = %3
  %25 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %26 = load i32, i32* @E1000_HICR, align 4
  %27 = call i32 @E1000_READ_REG(%struct.e1000_hw* %25, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @E1000_HICR_EN, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %24
  %33 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %34 = load i32, i32* @E1000_ERR_CONFIG, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %225

36:                                               ; preds = %24
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @E1000_HICR_MEMORY_BASE_EN, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %36
  %42 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %43 = load i32, i32* @E1000_ERR_CONFIG, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %225

45:                                               ; preds = %36
  %46 = load i32, i32* %7, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %7, align 4
  %50 = and i32 %49, 3
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @E1000_HI_FW_MAX_LENGTH, align 4
  %55 = icmp sgt i32 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %52, %48, %45
  %57 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %58 = load i32, i32* @E1000_ERR_INVALID_ARGUMENT, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %225

60:                                               ; preds = %52
  %61 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %62 = load i32, i32* @E1000_ICR_V2, align 4
  %63 = call i32 @E1000_READ_REG(%struct.e1000_hw* %61, i32 %62)
  store i32 %63, i32* %11, align 4
  %64 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %65 = load i32, i32* @E1000_HICR, align 4
  %66 = call i32 @E1000_READ_REG(%struct.e1000_hw* %64, i32 %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* @E1000_HICR_FW_RESET_ENABLE, align 4
  %68 = load i32, i32* %8, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %8, align 4
  %70 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %71 = load i32, i32* @E1000_HICR, align 4
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %70, i32 %71, i32 %72)
  %74 = load i32, i32* @E1000_HICR_FW_RESET, align 4
  %75 = load i32, i32* %8, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %8, align 4
  %77 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %78 = load i32, i32* @E1000_HICR, align 4
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %77, i32 %78, i32 %79)
  %81 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %82 = call i32 @E1000_WRITE_FLUSH(%struct.e1000_hw* %81)
  store i32 0, i32* %12, align 4
  br label %83

83:                                               ; preds = %99, %60
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* @E1000_HI_COMMAND_TIMEOUT, align 4
  %86 = mul nsw i32 %85, 2
  %87 = icmp slt i32 %84, %86
  br i1 %87, label %88, label %102

88:                                               ; preds = %83
  %89 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %90 = load i32, i32* @E1000_ICR_V2, align 4
  %91 = call i32 @E1000_READ_REG(%struct.e1000_hw* %89, i32 %90)
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* @E1000_ICR_MNG, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %88
  br label %102

97:                                               ; preds = %88
  %98 = call i32 @msec_delay(i32 1)
  br label %99

99:                                               ; preds = %97
  %100 = load i32, i32* %12, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %12, align 4
  br label %83

102:                                              ; preds = %96, %83
  %103 = load i32, i32* %12, align 4
  %104 = load i32, i32* @E1000_HI_COMMAND_TIMEOUT, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %102
  %107 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %108 = load i32, i32* @E1000_ERR_HOST_INTERFACE_COMMAND, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %4, align 4
  br label %225

110:                                              ; preds = %102
  store i32 0, i32* %12, align 4
  br label %111

111:                                              ; preds = %136, %110
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* @E1000_HI_COMMAND_TIMEOUT, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %139

115:                                              ; preds = %111
  %116 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %117 = load i32, i32* @E1000_FWSM, align 4
  %118 = call i32 @E1000_READ_REG(%struct.e1000_hw* %116, i32 %117)
  store i32 %118, i32* %10, align 4
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* @E1000_FWSM_FW_VALID, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %134

123:                                              ; preds = %115
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* @E1000_FWSM_MODE_MASK, align 4
  %126 = and i32 %124, %125
  %127 = load i64, i64* @E1000_FWSM_MODE_SHIFT, align 8
  %128 = trunc i64 %127 to i32
  %129 = ashr i32 %126, %128
  %130 = sext i32 %129 to i64
  %131 = load i64, i64* @E1000_FWSM_HI_EN_ONLY_MODE, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %123
  br label %139

134:                                              ; preds = %123, %115
  %135 = call i32 @msec_delay(i32 1)
  br label %136

136:                                              ; preds = %134
  %137 = load i32, i32* %12, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %12, align 4
  br label %111

139:                                              ; preds = %133, %111
  %140 = load i32, i32* %12, align 4
  %141 = load i32, i32* @E1000_HI_COMMAND_TIMEOUT, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %147

143:                                              ; preds = %139
  %144 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %145 = load i32, i32* @E1000_ERR_HOST_INTERFACE_COMMAND, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %4, align 4
  br label %225

147:                                              ; preds = %139
  %148 = load i32, i32* %7, align 4
  %149 = ashr i32 %148, 2
  store i32 %149, i32* %7, align 4
  store i32 0, i32* %12, align 4
  br label %150

150:                                              ; preds = %184, %147
  %151 = load i32, i32* %12, align 4
  %152 = load i32, i32* %7, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %154, label %187

154:                                              ; preds = %150
  %155 = load i32, i32* %12, align 4
  %156 = load i32, i32* @E1000_HI_FW_BLOCK_DWORD_LENGTH, align 4
  %157 = srem i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %172, label %159

159:                                              ; preds = %154
  %160 = load i32, i32* @E1000_HI_FW_BASE_ADDRESS, align 4
  %161 = load i32, i32* @E1000_HI_FW_BLOCK_DWORD_LENGTH, align 4
  %162 = shl i32 %161, 2
  %163 = load i32, i32* %12, align 4
  %164 = load i32, i32* @E1000_HI_FW_BLOCK_DWORD_LENGTH, align 4
  %165 = sdiv i32 %163, %164
  %166 = mul nsw i32 %162, %165
  %167 = add nsw i32 %160, %166
  store i32 %167, i32* %9, align 4
  %168 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %169 = load i32, i32* @E1000_HIBBA, align 4
  %170 = load i32, i32* %9, align 4
  %171 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %168, i32 %169, i32 %170)
  br label %172

172:                                              ; preds = %159, %154
  %173 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %174 = load i32, i32* @E1000_HOST_IF, align 4
  %175 = load i32, i32* %12, align 4
  %176 = load i32, i32* @E1000_HI_FW_BLOCK_DWORD_LENGTH, align 4
  %177 = srem i32 %175, %176
  %178 = load i32*, i32** %6, align 8
  %179 = load i32, i32* %12, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @E1000_WRITE_REG_ARRAY_DWORD(%struct.e1000_hw* %173, i32 %174, i32 %177, i32 %182)
  br label %184

184:                                              ; preds = %172
  %185 = load i32, i32* %12, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %12, align 4
  br label %150

187:                                              ; preds = %150
  %188 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %189 = load i32, i32* @E1000_HICR, align 4
  %190 = call i32 @E1000_READ_REG(%struct.e1000_hw* %188, i32 %189)
  store i32 %190, i32* %8, align 4
  %191 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %192 = load i32, i32* @E1000_HICR, align 4
  %193 = load i32, i32* %8, align 4
  %194 = load i32, i32* @E1000_HICR_C, align 4
  %195 = or i32 %193, %194
  %196 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %191, i32 %192, i32 %195)
  store i32 0, i32* %12, align 4
  br label %197

197:                                              ; preds = %212, %187
  %198 = load i32, i32* %12, align 4
  %199 = load i32, i32* @E1000_HI_COMMAND_TIMEOUT, align 4
  %200 = icmp slt i32 %198, %199
  br i1 %200, label %201, label %215

201:                                              ; preds = %197
  %202 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %203 = load i32, i32* @E1000_HICR, align 4
  %204 = call i32 @E1000_READ_REG(%struct.e1000_hw* %202, i32 %203)
  store i32 %204, i32* %8, align 4
  %205 = load i32, i32* %8, align 4
  %206 = load i32, i32* @E1000_HICR_C, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %210, label %209

209:                                              ; preds = %201
  br label %215

210:                                              ; preds = %201
  %211 = call i32 @msec_delay(i32 1)
  br label %212

212:                                              ; preds = %210
  %213 = load i32, i32* %12, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %12, align 4
  br label %197

215:                                              ; preds = %209, %197
  %216 = load i32, i32* %12, align 4
  %217 = load i32, i32* @E1000_HI_COMMAND_TIMEOUT, align 4
  %218 = icmp eq i32 %216, %217
  br i1 %218, label %219, label %223

219:                                              ; preds = %215
  %220 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0))
  %221 = load i32, i32* @E1000_ERR_HOST_INTERFACE_COMMAND, align 4
  %222 = sub nsw i32 0, %221
  store i32 %222, i32* %4, align 4
  br label %225

223:                                              ; preds = %215
  %224 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %224, i32* %4, align 4
  br label %225

225:                                              ; preds = %223, %219, %143, %106, %56, %41, %32, %20
  %226 = load i32, i32* %4, align 4
  ret i32 %226
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @E1000_WRITE_FLUSH(%struct.e1000_hw*) #1

declare dso_local i32 @msec_delay(i32) #1

declare dso_local i32 @E1000_WRITE_REG_ARRAY_DWORD(%struct.e1000_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
