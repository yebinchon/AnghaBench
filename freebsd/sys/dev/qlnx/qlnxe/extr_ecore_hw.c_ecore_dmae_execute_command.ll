; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_hw.c_ecore_dmae_execute_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_hw.c_ecore_dmae_execute_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32, %struct.dmae_cmd*, i32 }
%struct.dmae_cmd = type { i8*, i8*, i8* }
%struct.ecore_ptt = type { i32 }
%struct.ecore_dmae_params = type { i32 }

@DMAE_MAX_RW_SIZE = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@ECORE_MSG_HW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [115 x i8] c"No buffers allocated. Avoid DMAE transaction [{src: addr 0x%llx, type %d}, {dst: addr 0x%llx, type %d}, size %d].\0A\00", align 1
@ECORE_NOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [118 x i8] c"Recovery is in progress. Avoid DMAE transaction [{src: addr 0x%llx, type %d}, {dst: addr 0x%llx, type %d}, size %d].\0A\00", align 1
@.str.2 = private unnamed_addr constant [122 x i8] c"ecore_dmae_execute_sub_operation failed. Invalid state. source_addr 0x%llx, destination addr 0x%llx, size_in_dwords 0x%x\0A\00", align 1
@ECORE_INVAL = common dso_local global i32 0, align 4
@ECORE_DMAE_ADDRESS_GRC = common dso_local global i32 0, align 4
@DMAE_COMPLETION_VAL = common dso_local global i32 0, align 4
@RW_REPL_SRC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [123 x i8] c"ecore_dmae_execute_sub_operation Failed with error 0x%x. source_addr 0x%llx, destination addr 0x%llx, size_in_dwords 0x%x\0A\00", align 1
@ECORE_HW_ERR_DMAE_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_ptt*, i64, i64, i32, i32, i32, %struct.ecore_dmae_params*)* @ecore_dmae_execute_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_dmae_execute_command(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i64 %2, i64 %3, i32 %4, i32 %5, i32 %6, %struct.ecore_dmae_params* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.ecore_hwfn*, align 8
  %11 = alloca %struct.ecore_ptt*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ecore_dmae_params*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.dmae_cmd*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %10, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %11, align 8
  store i64 %2, i64* %12, align 8
  store i64 %3, i64* %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store %struct.ecore_dmae_params* %7, %struct.ecore_dmae_params** %17, align 8
  %29 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %10, align 8
  %30 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %33 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %10, align 8
  %34 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load %struct.dmae_cmd*, %struct.dmae_cmd** %35, align 8
  store %struct.dmae_cmd* %36, %struct.dmae_cmd** %23, align 8
  store i64 0, i64* %24, align 8
  store i64 0, i64* %25, align 8
  %37 = load i32, i32* @DMAE_MAX_RW_SIZE, align 4
  store i32 %37, i32* %26, align 4
  %38 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %38, i32* %27, align 4
  store i32 0, i32* %28, align 4
  %39 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %10, align 8
  %40 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %8
  %45 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %10, align 8
  %46 = load i32, i32* @ECORE_MSG_HW, align 4
  %47 = load i64, i64* %12, align 8
  %48 = load i32, i32* %14, align 4
  %49 = load i64, i64* %13, align 8
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* %16, align 4
  %52 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %45, i32 %46, i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str, i64 0, i64 0), i64 %47, i32 %48, i64 %49, i32 %50, i32 %51)
  %53 = load i32, i32* @ECORE_NOMEM, align 4
  store i32 %53, i32* %9, align 4
  br label %201

54:                                               ; preds = %8
  %55 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %10, align 8
  %56 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %54
  %62 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %10, align 8
  %63 = load i32, i32* @ECORE_MSG_HW, align 4
  %64 = load i64, i64* %12, align 8
  %65 = load i32, i32* %14, align 4
  %66 = load i64, i64* %13, align 8
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* %16, align 4
  %69 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %62, i32 %63, i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.1, i64 0, i64 0), i64 %64, i32 %65, i64 %66, i32 %67, i32 %68)
  %70 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %70, i32* %9, align 4
  br label %201

71:                                               ; preds = %54
  %72 = load %struct.dmae_cmd*, %struct.dmae_cmd** %23, align 8
  %73 = icmp ne %struct.dmae_cmd* %72, null
  br i1 %73, label %83, label %74

74:                                               ; preds = %71
  %75 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %10, align 8
  %76 = load i64, i64* %12, align 8
  %77 = trunc i64 %76 to i32
  %78 = load i64, i64* %13, align 8
  %79 = load i32, i32* %19, align 4
  %80 = sext i32 %79 to i64
  %81 = call i32 (%struct.ecore_hwfn*, i32, i8*, i32, i64, i64, ...) @DP_NOTICE(%struct.ecore_hwfn* %75, i32 1, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.2, i64 0, i64 0), i32 %77, i64 %78, i64 %80)
  %82 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %82, i32* %9, align 4
  br label %201

83:                                               ; preds = %71
  %84 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %10, align 8
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* @ECORE_DMAE_ADDRESS_GRC, align 4
  %87 = icmp eq i32 %85, %86
  %88 = zext i1 %87 to i32
  %89 = load i32, i32* %15, align 4
  %90 = load i32, i32* @ECORE_DMAE_ADDRESS_GRC, align 4
  %91 = icmp eq i32 %89, %90
  %92 = zext i1 %91 to i32
  %93 = load %struct.ecore_dmae_params*, %struct.ecore_dmae_params** %17, align 8
  %94 = call i32 @ecore_dmae_opcode(%struct.ecore_hwfn* %84, i32 %88, i32 %92, %struct.ecore_dmae_params* %93)
  %95 = load i32, i32* %18, align 4
  %96 = call i32 @DMA_LO(i32 %95)
  %97 = call i8* @OSAL_CPU_TO_LE32(i32 %96)
  %98 = load %struct.dmae_cmd*, %struct.dmae_cmd** %23, align 8
  %99 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %98, i32 0, i32 2
  store i8* %97, i8** %99, align 8
  %100 = load i32, i32* %18, align 4
  %101 = call i32 @DMA_HI(i32 %100)
  %102 = call i8* @OSAL_CPU_TO_LE32(i32 %101)
  %103 = load %struct.dmae_cmd*, %struct.dmae_cmd** %23, align 8
  %104 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %103, i32 0, i32 1
  store i8* %102, i8** %104, align 8
  %105 = load i32, i32* @DMAE_COMPLETION_VAL, align 4
  %106 = call i8* @OSAL_CPU_TO_LE32(i32 %105)
  %107 = load %struct.dmae_cmd*, %struct.dmae_cmd** %23, align 8
  %108 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %107, i32 0, i32 0
  store i8* %106, i8** %108, align 8
  %109 = load i32, i32* %16, align 4
  %110 = load i32, i32* %26, align 4
  %111 = sdiv i32 %109, %110
  store i32 %111, i32* %21, align 4
  %112 = load i32, i32* %16, align 4
  %113 = load i32, i32* %26, align 4
  %114 = srem i32 %112, %113
  store i32 %114, i32* %22, align 4
  %115 = load i64, i64* %12, align 8
  store i64 %115, i64* %24, align 8
  %116 = load i64, i64* %13, align 8
  store i64 %116, i64* %25, align 8
  store i32 0, i32* %20, align 4
  br label %117

117:                                              ; preds = %196, %83
  %118 = load i32, i32* %20, align 4
  %119 = load i32, i32* %21, align 4
  %120 = icmp sle i32 %118, %119
  br i1 %120, label %121, label %199

121:                                              ; preds = %117
  %122 = load i32, i32* %26, align 4
  %123 = load i32, i32* %20, align 4
  %124 = mul nsw i32 %122, %123
  store i32 %124, i32* %28, align 4
  %125 = load %struct.ecore_dmae_params*, %struct.ecore_dmae_params** %17, align 8
  %126 = load i32, i32* @RW_REPL_SRC, align 4
  %127 = call i32 @ECORE_DMAE_FLAGS_IS_SET(%struct.ecore_dmae_params* %125, i32 %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %145, label %129

129:                                              ; preds = %121
  %130 = load i32, i32* %14, align 4
  %131 = load i32, i32* @ECORE_DMAE_ADDRESS_GRC, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %138

133:                                              ; preds = %129
  %134 = load i64, i64* %12, align 8
  %135 = load i32, i32* %28, align 4
  %136 = sext i32 %135 to i64
  %137 = add nsw i64 %134, %136
  store i64 %137, i64* %24, align 8
  br label %144

138:                                              ; preds = %129
  %139 = load i64, i64* %12, align 8
  %140 = load i32, i32* %28, align 4
  %141 = mul nsw i32 %140, 4
  %142 = sext i32 %141 to i64
  %143 = add nsw i64 %139, %142
  store i64 %143, i64* %24, align 8
  br label %144

144:                                              ; preds = %138, %133
  br label %145

145:                                              ; preds = %144, %121
  %146 = load i32, i32* %15, align 4
  %147 = load i32, i32* @ECORE_DMAE_ADDRESS_GRC, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %154

149:                                              ; preds = %145
  %150 = load i64, i64* %13, align 8
  %151 = load i32, i32* %28, align 4
  %152 = sext i32 %151 to i64
  %153 = add nsw i64 %150, %152
  store i64 %153, i64* %25, align 8
  br label %160

154:                                              ; preds = %145
  %155 = load i64, i64* %13, align 8
  %156 = load i32, i32* %28, align 4
  %157 = mul nsw i32 %156, 4
  %158 = sext i32 %157 to i64
  %159 = add nsw i64 %155, %158
  store i64 %159, i64* %25, align 8
  br label %160

160:                                              ; preds = %154, %149
  %161 = load i32, i32* %21, align 4
  %162 = load i32, i32* %20, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %166

164:                                              ; preds = %160
  %165 = load i32, i32* %22, align 4
  br label %168

166:                                              ; preds = %160
  %167 = load i32, i32* %26, align 4
  br label %168

168:                                              ; preds = %166, %164
  %169 = phi i32 [ %165, %164 ], [ %167, %166 ]
  store i32 %169, i32* %19, align 4
  %170 = load i32, i32* %19, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %173, label %172

172:                                              ; preds = %168
  br label %196

173:                                              ; preds = %168
  %174 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %10, align 8
  %175 = load %struct.ecore_ptt*, %struct.ecore_ptt** %11, align 8
  %176 = load i64, i64* %24, align 8
  %177 = load i64, i64* %25, align 8
  %178 = load i32, i32* %14, align 4
  %179 = load i32, i32* %15, align 4
  %180 = load i32, i32* %19, align 4
  %181 = call i32 @ecore_dmae_execute_sub_operation(%struct.ecore_hwfn* %174, %struct.ecore_ptt* %175, i64 %176, i64 %177, i32 %178, i32 %179, i32 %180)
  store i32 %181, i32* %27, align 4
  %182 = load i32, i32* %27, align 4
  %183 = load i32, i32* @ECORE_SUCCESS, align 4
  %184 = icmp ne i32 %182, %183
  br i1 %184, label %185, label %195

185:                                              ; preds = %173
  %186 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %10, align 8
  %187 = load i32, i32* %27, align 4
  %188 = load i64, i64* %12, align 8
  %189 = load i64, i64* %13, align 8
  %190 = load i32, i32* %19, align 4
  %191 = call i32 (%struct.ecore_hwfn*, i32, i8*, i32, i64, i64, ...) @DP_NOTICE(%struct.ecore_hwfn* %186, i32 0, i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.3, i64 0, i64 0), i32 %187, i64 %188, i64 %189, i32 %190)
  %192 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %10, align 8
  %193 = load i32, i32* @ECORE_HW_ERR_DMAE_FAIL, align 4
  %194 = call i32 @ecore_hw_err_notify(%struct.ecore_hwfn* %192, i32 %193)
  br label %199

195:                                              ; preds = %173
  br label %196

196:                                              ; preds = %195, %172
  %197 = load i32, i32* %20, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %20, align 4
  br label %117

199:                                              ; preds = %185, %117
  %200 = load i32, i32* %27, align 4
  store i32 %200, i32* %9, align 4
  br label %201

201:                                              ; preds = %199, %74, %61, %44
  %202 = load i32, i32* %9, align 4
  ret i32 %202
}

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i64, i32, i64, i32, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, i32, i64, i64, ...) #1

declare dso_local i32 @ecore_dmae_opcode(%struct.ecore_hwfn*, i32, i32, %struct.ecore_dmae_params*) #1

declare dso_local i8* @OSAL_CPU_TO_LE32(i32) #1

declare dso_local i32 @DMA_LO(i32) #1

declare dso_local i32 @DMA_HI(i32) #1

declare dso_local i32 @ECORE_DMAE_FLAGS_IS_SET(%struct.ecore_dmae_params*, i32) #1

declare dso_local i32 @ecore_dmae_execute_sub_operation(%struct.ecore_hwfn*, %struct.ecore_ptt*, i64, i64, i32, i32, i32) #1

declare dso_local i32 @ecore_hw_err_notify(%struct.ecore_hwfn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
