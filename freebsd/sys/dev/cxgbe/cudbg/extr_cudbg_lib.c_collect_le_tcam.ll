; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_cudbg_lib.c_collect_le_tcam.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_cudbg_lib.c_collect_le_tcam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cudbg_init = type { %struct.adapter* }
%struct.adapter = type { i32 }
%struct.cudbg_buffer = type { i32, i64 }
%struct.cudbg_error = type { i32 }
%struct.cudbg_tcam = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.cudbg_tid_data = type { i32 }

@A_LE_DB_TID_HASHBASE = common dso_local global i32 0, align 4
@A_LE_DB_ROUTING_TABLE_INDEX = common dso_local global i32 0, align 4
@A_LE_DB_CLIP_TABLE_INDEX = common dso_local global i32 0, align 4
@A_LE_DB_FILTER_TABLE_INDEX = common dso_local global i32 0, align 4
@A_LE_DB_SERVER_INDEX = common dso_local global i32 0, align 4
@A_LE_DB_CONFIG = common dso_local global i32 0, align 4
@S_HASHEN = common dso_local global i32 0, align 4
@A_LE_DB_HASH_CONFIG = common dso_local global i32 0, align 4
@CHELSIO_T5 = common dso_local global i64 0, align 8
@CUDBG_MAX_TCAM_TID = common dso_local global i32 0, align 4
@CUDBG_CHUNK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cudbg_init*, %struct.cudbg_buffer*, %struct.cudbg_error*)* @collect_le_tcam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @collect_le_tcam(%struct.cudbg_init* %0, %struct.cudbg_buffer* %1, %struct.cudbg_error* %2) #0 {
  %4 = alloca %struct.cudbg_init*, align 8
  %5 = alloca %struct.cudbg_buffer*, align 8
  %6 = alloca %struct.cudbg_error*, align 8
  %7 = alloca %struct.cudbg_buffer, align 8
  %8 = alloca %struct.adapter*, align 8
  %9 = alloca %struct.cudbg_tcam, align 4
  %10 = alloca %struct.cudbg_tid_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.cudbg_init* %0, %struct.cudbg_init** %4, align 8
  store %struct.cudbg_buffer* %1, %struct.cudbg_buffer** %5, align 8
  store %struct.cudbg_error* %2, %struct.cudbg_error** %6, align 8
  %17 = load %struct.cudbg_init*, %struct.cudbg_init** %4, align 8
  %18 = getelementptr inbounds %struct.cudbg_init, %struct.cudbg_init* %17, i32 0, i32 0
  %19 = load %struct.adapter*, %struct.adapter** %18, align 8
  store %struct.adapter* %19, %struct.adapter** %8, align 8
  %20 = bitcast %struct.cudbg_tcam* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %20, i8 0, i64 28, i1 false)
  store %struct.cudbg_tid_data* null, %struct.cudbg_tid_data** %10, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %21 = load %struct.adapter*, %struct.adapter** %8, align 8
  %22 = load i32, i32* @A_LE_DB_TID_HASHBASE, align 4
  %23 = call i32 @t4_read_reg(%struct.adapter* %21, i32 %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = getelementptr inbounds %struct.cudbg_tcam, %struct.cudbg_tcam* %9, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = load %struct.adapter*, %struct.adapter** %8, align 8
  %27 = load i32, i32* @A_LE_DB_ROUTING_TABLE_INDEX, align 4
  %28 = call i32 @t4_read_reg(%struct.adapter* %26, i32 %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = getelementptr inbounds %struct.cudbg_tcam, %struct.cudbg_tcam* %9, i32 0, i32 1
  store i32 %29, i32* %30, align 4
  %31 = load %struct.adapter*, %struct.adapter** %8, align 8
  %32 = load i32, i32* @A_LE_DB_CLIP_TABLE_INDEX, align 4
  %33 = call i32 @t4_read_reg(%struct.adapter* %31, i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = getelementptr inbounds %struct.cudbg_tcam, %struct.cudbg_tcam* %9, i32 0, i32 2
  store i32 %34, i32* %35, align 4
  %36 = load %struct.adapter*, %struct.adapter** %8, align 8
  %37 = load i32, i32* @A_LE_DB_FILTER_TABLE_INDEX, align 4
  %38 = call i32 @t4_read_reg(%struct.adapter* %36, i32 %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = getelementptr inbounds %struct.cudbg_tcam, %struct.cudbg_tcam* %9, i32 0, i32 3
  store i32 %39, i32* %40, align 4
  %41 = load %struct.adapter*, %struct.adapter** %8, align 8
  %42 = load i32, i32* @A_LE_DB_SERVER_INDEX, align 4
  %43 = call i32 @t4_read_reg(%struct.adapter* %41, i32 %42)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = getelementptr inbounds %struct.cudbg_tcam, %struct.cudbg_tcam* %9, i32 0, i32 4
  store i32 %44, i32* %45, align 4
  %46 = load %struct.adapter*, %struct.adapter** %8, align 8
  %47 = load i32, i32* @A_LE_DB_CONFIG, align 4
  %48 = call i32 @t4_read_reg(%struct.adapter* %46, i32 %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @S_HASHEN, align 4
  %51 = ashr i32 %49, %50
  %52 = and i32 %51, 1
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %80

54:                                               ; preds = %3
  %55 = load %struct.adapter*, %struct.adapter** %8, align 8
  %56 = load i32, i32* @A_LE_DB_HASH_CONFIG, align 4
  %57 = call i32 @t4_read_reg(%struct.adapter* %55, i32 %56)
  store i32 %57, i32* %11, align 4
  %58 = load %struct.adapter*, %struct.adapter** %8, align 8
  %59 = call i64 @chip_id(%struct.adapter* %58)
  %60 = load i64, i64* @CHELSIO_T5, align 8
  %61 = icmp sgt i64 %59, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %54
  %63 = load i32, i32* %11, align 4
  %64 = and i32 %63, 1048575
  %65 = getelementptr inbounds %struct.cudbg_tcam, %struct.cudbg_tcam* %9, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %64, %66
  %68 = getelementptr inbounds %struct.cudbg_tcam, %struct.cudbg_tcam* %9, i32 0, i32 5
  store i32 %67, i32* %68, align 4
  br label %79

69:                                               ; preds = %54
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @G_HASHTIDSIZE(i32 %70)
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = shl i32 1, %72
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = getelementptr inbounds %struct.cudbg_tcam, %struct.cudbg_tcam* %9, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %74, %76
  %78 = getelementptr inbounds %struct.cudbg_tcam, %struct.cudbg_tcam* %9, i32 0, i32 5
  store i32 %77, i32* %78, align 4
  br label %79

79:                                               ; preds = %69, %62
  br label %83

80:                                               ; preds = %3
  %81 = load i32, i32* @CUDBG_MAX_TCAM_TID, align 4
  %82 = getelementptr inbounds %struct.cudbg_tcam, %struct.cudbg_tcam* %9, i32 0, i32 5
  store i32 %81, i32* %82, align 4
  br label %83

83:                                               ; preds = %80, %79
  %84 = getelementptr inbounds %struct.cudbg_tcam, %struct.cudbg_tcam* %9, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = mul i64 4, %86
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %16, align 4
  %89 = load i32, i32* %16, align 4
  %90 = sext i32 %89 to i64
  %91 = add i64 %90, 28
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %16, align 4
  %93 = load i32, i32* %16, align 4
  %94 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %7, i32 0, i32 0
  store i32 %93, i32* %94, align 8
  %95 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %96 = call i32 @write_compression_hdr(%struct.cudbg_buffer* %7, %struct.cudbg_buffer* %95)
  store i32 %96, i32* %15, align 4
  %97 = load i32, i32* %15, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %83
  br label %192

100:                                              ; preds = %83
  %101 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %102 = load i32, i32* @CUDBG_CHUNK_SIZE, align 4
  %103 = call i32 @get_scratch_buff(%struct.cudbg_buffer* %101, i32 %102, %struct.cudbg_buffer* %7)
  store i32 %103, i32* %15, align 4
  %104 = load i32, i32* %15, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %100
  br label %192

107:                                              ; preds = %100
  %108 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %7, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = call i32 @memcpy(i64 %109, %struct.cudbg_tcam* %9, i32 28)
  %111 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %7, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = inttoptr i64 %112 to %struct.cudbg_tcam*
  %114 = getelementptr inbounds %struct.cudbg_tcam, %struct.cudbg_tcam* %113, i64 1
  %115 = bitcast %struct.cudbg_tcam* %114 to %struct.cudbg_tid_data*
  store %struct.cudbg_tid_data* %115, %struct.cudbg_tid_data** %10, align 8
  %116 = load i32, i32* @CUDBG_CHUNK_SIZE, align 4
  %117 = sext i32 %116 to i64
  %118 = sub i64 %117, 28
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %13, align 4
  store i32 28, i32* %12, align 4
  store i32 0, i32* %14, align 4
  br label %120

120:                                              ; preds = %175, %107
  %121 = load i32, i32* %14, align 4
  %122 = getelementptr inbounds %struct.cudbg_tcam, %struct.cudbg_tcam* %9, i32 0, i32 5
  %123 = load i32, i32* %122, align 4
  %124 = icmp slt i32 %121, %123
  br i1 %124, label %125, label %178

125:                                              ; preds = %120
  %126 = load i32, i32* %13, align 4
  %127 = sext i32 %126 to i64
  %128 = icmp ult i64 %127, 4
  br i1 %128, label %129, label %153

129:                                              ; preds = %125
  %130 = load i32, i32* %12, align 4
  %131 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %7, i32 0, i32 0
  store i32 %130, i32* %131, align 8
  %132 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %133 = call i32 @compress_buff(%struct.cudbg_buffer* %7, %struct.cudbg_buffer* %132)
  store i32 %133, i32* %15, align 4
  %134 = load i32, i32* %15, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %129
  br label %187

137:                                              ; preds = %129
  %138 = load i32, i32* @CUDBG_CHUNK_SIZE, align 4
  %139 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %7, i32 0, i32 0
  store i32 %138, i32* %139, align 8
  %140 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %141 = call i32 @release_scratch_buff(%struct.cudbg_buffer* %7, %struct.cudbg_buffer* %140)
  %142 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %143 = load i32, i32* @CUDBG_CHUNK_SIZE, align 4
  %144 = call i32 @get_scratch_buff(%struct.cudbg_buffer* %142, i32 %143, %struct.cudbg_buffer* %7)
  store i32 %144, i32* %15, align 4
  %145 = load i32, i32* %15, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %137
  br label %192

148:                                              ; preds = %137
  %149 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %7, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = inttoptr i64 %150 to %struct.cudbg_tid_data*
  store %struct.cudbg_tid_data* %151, %struct.cudbg_tid_data** %10, align 8
  %152 = load i32, i32* @CUDBG_CHUNK_SIZE, align 4
  store i32 %152, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %153

153:                                              ; preds = %148, %125
  %154 = load %struct.cudbg_init*, %struct.cudbg_init** %4, align 8
  %155 = load i32, i32* %14, align 4
  %156 = load %struct.cudbg_tid_data*, %struct.cudbg_tid_data** %10, align 8
  %157 = call i32 @cudbg_read_tid(%struct.cudbg_init* %154, i32 %155, %struct.cudbg_tid_data* %156)
  store i32 %157, i32* %15, align 4
  %158 = load i32, i32* %15, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %153
  %161 = load i32, i32* %15, align 4
  %162 = load %struct.cudbg_error*, %struct.cudbg_error** %6, align 8
  %163 = getelementptr inbounds %struct.cudbg_error, %struct.cudbg_error* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 4
  br label %187

164:                                              ; preds = %153
  %165 = load %struct.cudbg_tid_data*, %struct.cudbg_tid_data** %10, align 8
  %166 = getelementptr inbounds %struct.cudbg_tid_data, %struct.cudbg_tid_data* %165, i32 1
  store %struct.cudbg_tid_data* %166, %struct.cudbg_tid_data** %10, align 8
  %167 = load i32, i32* %13, align 4
  %168 = sext i32 %167 to i64
  %169 = sub i64 %168, 4
  %170 = trunc i64 %169 to i32
  store i32 %170, i32* %13, align 4
  %171 = load i32, i32* %12, align 4
  %172 = sext i32 %171 to i64
  %173 = add i64 %172, 4
  %174 = trunc i64 %173 to i32
  store i32 %174, i32* %12, align 4
  br label %175

175:                                              ; preds = %164
  %176 = load i32, i32* %14, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %14, align 4
  br label %120

178:                                              ; preds = %120
  %179 = load i32, i32* %12, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %186

181:                                              ; preds = %178
  %182 = load i32, i32* %12, align 4
  %183 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %7, i32 0, i32 0
  store i32 %182, i32* %183, align 8
  %184 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %185 = call i32 @compress_buff(%struct.cudbg_buffer* %7, %struct.cudbg_buffer* %184)
  store i32 %185, i32* %15, align 4
  br label %186

186:                                              ; preds = %181, %178
  br label %187

187:                                              ; preds = %186, %160, %136
  %188 = load i32, i32* @CUDBG_CHUNK_SIZE, align 4
  %189 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %7, i32 0, i32 0
  store i32 %188, i32* %189, align 8
  %190 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %191 = call i32 @release_scratch_buff(%struct.cudbg_buffer* %7, %struct.cudbg_buffer* %190)
  br label %192

192:                                              ; preds = %187, %147, %106, %99
  %193 = load i32, i32* %15, align 4
  ret i32 %193
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #2

declare dso_local i64 @chip_id(%struct.adapter*) #2

declare dso_local i32 @G_HASHTIDSIZE(i32) #2

declare dso_local i32 @write_compression_hdr(%struct.cudbg_buffer*, %struct.cudbg_buffer*) #2

declare dso_local i32 @get_scratch_buff(%struct.cudbg_buffer*, i32, %struct.cudbg_buffer*) #2

declare dso_local i32 @memcpy(i64, %struct.cudbg_tcam*, i32) #2

declare dso_local i32 @compress_buff(%struct.cudbg_buffer*, %struct.cudbg_buffer*) #2

declare dso_local i32 @release_scratch_buff(%struct.cudbg_buffer*, %struct.cudbg_buffer*) #2

declare dso_local i32 @cudbg_read_tid(%struct.cudbg_init*, i32, %struct.cudbg_tid_data*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
