; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_init_io.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_init_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_16__**, i32, i32, %struct.TYPE_14__ }
%struct.TYPE_16__ = type { i64, i32, i64, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_14__ = type { i32 }

@SLI4_BMBX_SIZE = common dso_local global i32 0, align 4
@OCS_HW_RTN_SUCCESS = common dso_local global i64 0, align 8
@OCS_M_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"ocs_malloc sgls failed\0A\00", align 1
@OCS_HW_RTN_NO_MEMORY = common dso_local global i64 0, align 8
@OCS_MIN_DMA_ALIGNMENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"ocs_dma_alloc reqbuf failed\0A\00", align 1
@OCS_CMD_POLL = common dso_local global i32 0, align 4
@OCS_HW_RTN_ERROR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"SGL post failed\0A\00", align 1
@OCS_HW_IO_STATE_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_15__*)* @ocs_hw_init_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ocs_hw_init_io(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_17__**, align 8
  %15 = alloca %struct.TYPE_17__, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %7, align 8
  %17 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %8, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  %21 = load i64, i64* @OCS_HW_RTN_SUCCESS, align 8
  store i64 %21, i64* %10, align 8
  store i32 0, i32* %12, align 4
  store i32 256, i32* %13, align 4
  store %struct.TYPE_17__** null, %struct.TYPE_17__*** %14, align 8
  %22 = bitcast %struct.TYPE_17__* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %22, i8 0, i64 4, i1 false)
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 3
  %25 = call i32 @sli_get_sgl_preregister(i32* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %73

28:                                               ; preds = %1
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %13, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 8, %33
  %35 = trunc i64 %34 to i32
  %36 = load i32, i32* @OCS_M_NOWAIT, align 4
  %37 = call %struct.TYPE_17__** @ocs_malloc(i32 %31, i32 %35, i32 %36)
  store %struct.TYPE_17__** %37, %struct.TYPE_17__*** %14, align 8
  %38 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %14, align 8
  %39 = icmp eq %struct.TYPE_17__** %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %28
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @ocs_log_err(i32 %43, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %45 = load i64, i64* @OCS_HW_RTN_NO_MEMORY, align 8
  store i64 %45, i64* %2, align 8
  store i32 1, i32* %16, align 4
  br label %227

46:                                               ; preds = %28
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %13, align 4
  %51 = mul nsw i32 %50, 16
  %52 = add nsw i32 32, %51
  %53 = load i32, i32* @OCS_MIN_DMA_ALIGNMENT, align 4
  %54 = call i64 @ocs_dma_alloc(i32 %49, %struct.TYPE_17__* %15, i32 %52, i32 %53)
  store i64 %54, i64* %10, align 8
  %55 = load i64, i64* %10, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %72

57:                                               ; preds = %46
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @ocs_log_err(i32 %60, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %14, align 8
  %66 = load i32, i32* %13, align 4
  %67 = sext i32 %66 to i64
  %68 = mul i64 8, %67
  %69 = trunc i64 %68 to i32
  %70 = call i32 @ocs_free(i32 %64, %struct.TYPE_17__** %65, i32 %69)
  %71 = load i64, i64* @OCS_HW_RTN_NO_MEMORY, align 8
  store i64 %71, i64* %2, align 8
  store i32 1, i32* %16, align 4
  br label %227

72:                                               ; preds = %46
  br label %73

73:                                               ; preds = %72, %1
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %76, i64 %78
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %79, align 8
  store %struct.TYPE_16__* %80, %struct.TYPE_16__** %7, align 8
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  store i32 %84, i32* %11, align 4
  br label %85

85:                                               ; preds = %204, %73
  %86 = load i32, i32* %11, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %208

88:                                               ; preds = %85
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %173

91:                                               ; preds = %88
  store i32 0, i32* %12, align 4
  br label %92

92:                                               ; preds = %145, %91
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* %11, align 4
  %96 = call i32 @MIN(i32 %94, i32 %95)
  %97 = icmp slt i32 %93, %96
  br i1 %97, label %98, label %148

98:                                               ; preds = %92
  %99 = load i32, i32* %12, align 4
  %100 = icmp sgt i32 %99, 0
  br i1 %100, label %101, label %129

101:                                              ; preds = %98
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %103, align 8
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* %12, align 4
  %107 = add nsw i32 %105, %106
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %104, i64 %108
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %114, align 8
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* %12, align 4
  %118 = add nsw i32 %116, %117
  %119 = sub nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %115, i64 %120
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = add nsw i64 %124, 1
  %126 = icmp ne i64 %112, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %101
  br label %148

128:                                              ; preds = %101
  br label %129

129:                                              ; preds = %128, %98
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %131, align 8
  %133 = load i32, i32* %5, align 4
  %134 = load i32, i32* %12, align 4
  %135 = add nsw i32 %133, %134
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %132, i64 %136
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 3
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %139, align 8
  %141 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %14, align 8
  %142 = load i32, i32* %12, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %141, i64 %143
  store %struct.TYPE_17__* %140, %struct.TYPE_17__** %144, align 8
  br label %145

145:                                              ; preds = %129
  %146 = load i32, i32* %12, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %12, align 4
  br label %92

148:                                              ; preds = %127, %92
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 3
  %151 = mul nuw i64 4, %18
  %152 = trunc i64 %151 to i32
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i32, i32* %12, align 4
  %157 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %14, align 8
  %158 = call i64 @sli_cmd_fcoe_post_sgl_pages(i32* %150, i32* %20, i32 %152, i64 %155, i32 %156, %struct.TYPE_17__** %157, i32* null, %struct.TYPE_17__* %15)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %172

160:                                              ; preds = %148
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %162 = load i32, i32* @OCS_CMD_POLL, align 4
  %163 = call i64 @ocs_hw_command(%struct.TYPE_15__* %161, i32* %20, i32 %162, i32* null, i32* null)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %160
  %166 = load i64, i64* @OCS_HW_RTN_ERROR, align 8
  store i64 %166, i64* %10, align 8
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @ocs_log_err(i32 %169, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %208

171:                                              ; preds = %160
  br label %172

172:                                              ; preds = %171, %148
  br label %175

173:                                              ; preds = %88
  %174 = load i32, i32* %11, align 4
  store i32 %174, i32* %12, align 4
  br label %175

175:                                              ; preds = %173, %172
  store i32 0, i32* %4, align 4
  br label %176

176:                                              ; preds = %200, %175
  %177 = load i32, i32* %4, align 4
  %178 = load i32, i32* %12, align 4
  %179 = icmp slt i32 %177, %178
  br i1 %179, label %180, label %203

180:                                              ; preds = %176
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 2
  store i64 0, i64* %182, align 8
  %183 = load i32, i32* @OCS_HW_IO_STATE_FREE, align 4
  %184 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i32 0, i32 1
  store i32 %183, i32* %185, align 8
  %186 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 0, i32 2
  %188 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %189 = call i32 @ocs_list_add_tail(i32* %187, %struct.TYPE_16__* %188)
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %190, i32 0, i32 1
  %192 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %191, align 8
  %193 = load i32, i32* %5, align 4
  %194 = add nsw i32 %193, 1
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %192, i64 %195
  %197 = load %struct.TYPE_16__*, %struct.TYPE_16__** %196, align 8
  store %struct.TYPE_16__* %197, %struct.TYPE_16__** %7, align 8
  %198 = load i32, i32* %5, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %5, align 4
  br label %200

200:                                              ; preds = %180
  %201 = load i32, i32* %4, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %4, align 4
  br label %176

203:                                              ; preds = %176
  br label %204

204:                                              ; preds = %203
  %205 = load i32, i32* %12, align 4
  %206 = load i32, i32* %11, align 4
  %207 = sub nsw i32 %206, %205
  store i32 %207, i32* %11, align 4
  br label %85

208:                                              ; preds = %165, %85
  %209 = load i32, i32* %6, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %225

211:                                              ; preds = %208
  %212 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = call i32 @ocs_dma_free(i32 %214, %struct.TYPE_17__* %15)
  %216 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %14, align 8
  %220 = load i32, i32* %13, align 4
  %221 = sext i32 %220 to i64
  %222 = mul i64 8, %221
  %223 = trunc i64 %222 to i32
  %224 = call i32 @ocs_free(i32 %218, %struct.TYPE_17__** %219, i32 %223)
  br label %225

225:                                              ; preds = %211, %208
  %226 = load i64, i64* %10, align 8
  store i64 %226, i64* %2, align 8
  store i32 1, i32* %16, align 4
  br label %227

227:                                              ; preds = %225, %57, %40
  %228 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %228)
  %229 = load i64, i64* %2, align 8
  ret i64 %229
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @sli_get_sgl_preregister(i32*) #3

declare dso_local %struct.TYPE_17__** @ocs_malloc(i32, i32, i32) #3

declare dso_local i32 @ocs_log_err(i32, i8*) #3

declare dso_local i64 @ocs_dma_alloc(i32, %struct.TYPE_17__*, i32, i32) #3

declare dso_local i32 @ocs_free(i32, %struct.TYPE_17__**, i32) #3

declare dso_local i32 @MIN(i32, i32) #3

declare dso_local i64 @sli_cmd_fcoe_post_sgl_pages(i32*, i32*, i32, i64, i32, %struct.TYPE_17__**, i32*, %struct.TYPE_17__*) #3

declare dso_local i64 @ocs_hw_command(%struct.TYPE_15__*, i32*, i32, i32*, i32*) #3

declare dso_local i32 @ocs_list_add_tail(i32*, %struct.TYPE_16__*) #3

declare dso_local i32 @ocs_dma_free(i32, %struct.TYPE_17__*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
