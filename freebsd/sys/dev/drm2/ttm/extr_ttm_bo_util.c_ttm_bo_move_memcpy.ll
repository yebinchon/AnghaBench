; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_bo_util.c_ttm_bo_move_memcpy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_bo_util.c_ttm_bo_move_memcpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { %struct.ttm_tt*, %struct.ttm_mem_reg, %struct.ttm_bo_device* }
%struct.ttm_tt = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.ttm_tt*)* }
%struct.ttm_mem_reg = type { i64, i64, i64, i32, i32*, i32 }
%struct.ttm_bo_device = type { %struct.ttm_mem_type_manager* }
%struct.ttm_mem_type_manager = type { i32 }

@tt_unpopulated = common dso_local global i64 0, align 8
@TTM_MEMTYPE_FLAG_FIXED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_bo_move_memcpy(%struct.ttm_buffer_object* %0, i32 %1, i32 %2, %struct.ttm_mem_reg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ttm_buffer_object*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ttm_mem_reg*, align 8
  %10 = alloca %struct.ttm_bo_device*, align 8
  %11 = alloca %struct.ttm_mem_type_manager*, align 8
  %12 = alloca %struct.ttm_tt*, align 8
  %13 = alloca %struct.ttm_mem_reg*, align 8
  %14 = alloca %struct.ttm_mem_reg, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.ttm_mem_reg* %3, %struct.ttm_mem_reg** %9, align 8
  %24 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %25 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %24, i32 0, i32 2
  %26 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %25, align 8
  store %struct.ttm_bo_device* %26, %struct.ttm_bo_device** %10, align 8
  %27 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %10, align 8
  %28 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %27, i32 0, i32 0
  %29 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %28, align 8
  %30 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %31 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %29, i64 %32
  store %struct.ttm_mem_type_manager* %33, %struct.ttm_mem_type_manager** %11, align 8
  %34 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %35 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %34, i32 0, i32 0
  %36 = load %struct.ttm_tt*, %struct.ttm_tt** %35, align 8
  store %struct.ttm_tt* %36, %struct.ttm_tt** %12, align 8
  %37 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %38 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %37, i32 0, i32 1
  store %struct.ttm_mem_reg* %38, %struct.ttm_mem_reg** %13, align 8
  %39 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %13, align 8
  %40 = bitcast %struct.ttm_mem_reg* %14 to i8*
  %41 = bitcast %struct.ttm_mem_reg* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %40, i8* align 8 %41, i64 48, i1 false)
  store i64 0, i64* %20, align 8
  %42 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %10, align 8
  %43 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %13, align 8
  %44 = call i32 @ttm_mem_reg_ioremap(%struct.ttm_bo_device* %42, %struct.ttm_mem_reg* %43, i8** %15)
  store i32 %44, i32* %17, align 4
  %45 = load i32, i32* %17, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %4
  %48 = load i32, i32* %17, align 4
  store i32 %48, i32* %5, align 4
  br label %213

49:                                               ; preds = %4
  %50 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %10, align 8
  %51 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %52 = call i32 @ttm_mem_reg_ioremap(%struct.ttm_bo_device* %50, %struct.ttm_mem_reg* %51, i8** %16)
  store i32 %52, i32* %17, align 4
  %53 = load i32, i32* %17, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %206

56:                                               ; preds = %49
  %57 = load i8*, i8** %15, align 8
  %58 = icmp eq i8* %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load i8*, i8** %16, align 8
  %61 = icmp eq i8* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  br label %174

63:                                               ; preds = %59, %56
  %64 = load i8*, i8** %15, align 8
  %65 = icmp eq i8* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load %struct.ttm_tt*, %struct.ttm_tt** %12, align 8
  %68 = icmp eq %struct.ttm_tt* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  br label %174

70:                                               ; preds = %66, %63
  %71 = load %struct.ttm_tt*, %struct.ttm_tt** %12, align 8
  %72 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @tt_unpopulated, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %91

76:                                               ; preds = %70
  %77 = load %struct.ttm_tt*, %struct.ttm_tt** %12, align 8
  %78 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %77, i32 0, i32 1
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32 (%struct.ttm_tt*)*, i32 (%struct.ttm_tt*)** %82, align 8
  %84 = load %struct.ttm_tt*, %struct.ttm_tt** %12, align 8
  %85 = call i32 %83(%struct.ttm_tt* %84)
  store i32 %85, i32* %17, align 4
  %86 = load i32, i32* %17, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %76
  %89 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %14, i32 0, i32 4
  store i32* null, i32** %89, align 8
  br label %201

90:                                               ; preds = %76
  br label %91

91:                                               ; preds = %90, %70
  store i64 0, i64* %20, align 8
  store i32 1, i32* %21, align 4
  %92 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %13, align 8
  %93 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %96 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %94, %97
  br i1 %98, label %99, label %117

99:                                               ; preds = %91
  %100 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %101 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %13, align 8
  %104 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %13, align 8
  %107 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %105, %108
  %110 = icmp slt i64 %102, %109
  br i1 %110, label %111, label %117

111:                                              ; preds = %99
  store i32 -1, i32* %21, align 4
  %112 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %113 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = sub nsw i32 %114, 1
  %116 = sext i32 %115 to i64
  store i64 %116, i64* %20, align 8
  br label %117

117:                                              ; preds = %111, %99, %91
  store i64 0, i64* %18, align 8
  br label %118

118:                                              ; preds = %169, %117
  %119 = load i64, i64* %18, align 8
  %120 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %121 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = sext i32 %122 to i64
  %124 = icmp ult i64 %119, %123
  br i1 %124, label %125, label %172

125:                                              ; preds = %118
  %126 = load i64, i64* %18, align 8
  %127 = load i32, i32* %21, align 4
  %128 = sext i32 %127 to i64
  %129 = mul i64 %126, %128
  %130 = load i64, i64* %20, align 8
  %131 = add i64 %129, %130
  store i64 %131, i64* %19, align 8
  %132 = load i8*, i8** %15, align 8
  %133 = icmp eq i8* %132, null
  br i1 %133, label %134, label %144

134:                                              ; preds = %125
  %135 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %13, align 8
  %136 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @ttm_io_prot(i32 %137)
  store i32 %138, i32* %22, align 4
  %139 = load %struct.ttm_tt*, %struct.ttm_tt** %12, align 8
  %140 = load i8*, i8** %16, align 8
  %141 = load i64, i64* %19, align 8
  %142 = load i32, i32* %22, align 4
  %143 = call i32 @ttm_copy_ttm_io_page(%struct.ttm_tt* %139, i8* %140, i64 %141, i32 %142)
  store i32 %143, i32* %17, align 4
  br label %163

144:                                              ; preds = %125
  %145 = load i8*, i8** %16, align 8
  %146 = icmp eq i8* %145, null
  br i1 %146, label %147, label %157

147:                                              ; preds = %144
  %148 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %149 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %148, i32 0, i32 5
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @ttm_io_prot(i32 %150)
  store i32 %151, i32* %23, align 4
  %152 = load %struct.ttm_tt*, %struct.ttm_tt** %12, align 8
  %153 = load i8*, i8** %15, align 8
  %154 = load i64, i64* %19, align 8
  %155 = load i32, i32* %23, align 4
  %156 = call i32 @ttm_copy_io_ttm_page(%struct.ttm_tt* %152, i8* %153, i64 %154, i32 %155)
  store i32 %156, i32* %17, align 4
  br label %162

157:                                              ; preds = %144
  %158 = load i8*, i8** %16, align 8
  %159 = load i8*, i8** %15, align 8
  %160 = load i64, i64* %19, align 8
  %161 = call i32 @ttm_copy_io_page(i8* %158, i8* %159, i64 %160)
  store i32 %161, i32* %17, align 4
  br label %162

162:                                              ; preds = %157, %147
  br label %163

163:                                              ; preds = %162, %134
  %164 = load i32, i32* %17, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %163
  %167 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %14, i32 0, i32 4
  store i32* null, i32** %167, align 8
  br label %201

168:                                              ; preds = %163
  br label %169

169:                                              ; preds = %168
  %170 = load i64, i64* %18, align 8
  %171 = add i64 %170, 1
  store i64 %171, i64* %18, align 8
  br label %118

172:                                              ; preds = %118
  %173 = call i32 (...) @mb()
  br label %174

174:                                              ; preds = %172, %69, %62
  %175 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %13, align 8
  %176 = bitcast %struct.ttm_mem_reg* %14 to i8*
  %177 = bitcast %struct.ttm_mem_reg* %175 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %176, i8* align 8 %177, i64 48, i1 false)
  %178 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %13, align 8
  %179 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %180 = bitcast %struct.ttm_mem_reg* %178 to i8*
  %181 = bitcast %struct.ttm_mem_reg* %179 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %180, i8* align 8 %181, i64 48, i1 false)
  %182 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %183 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %182, i32 0, i32 4
  store i32* null, i32** %183, align 8
  %184 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %11, align 8
  %185 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @TTM_MEMTYPE_FLAG_FIXED, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %200

190:                                              ; preds = %174
  %191 = load %struct.ttm_tt*, %struct.ttm_tt** %12, align 8
  %192 = icmp ne %struct.ttm_tt* %191, null
  br i1 %192, label %193, label %200

193:                                              ; preds = %190
  %194 = load %struct.ttm_tt*, %struct.ttm_tt** %12, align 8
  %195 = call i32 @ttm_tt_unbind(%struct.ttm_tt* %194)
  %196 = load %struct.ttm_tt*, %struct.ttm_tt** %12, align 8
  %197 = call i32 @ttm_tt_destroy(%struct.ttm_tt* %196)
  %198 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %199 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %198, i32 0, i32 0
  store %struct.ttm_tt* null, %struct.ttm_tt** %199, align 8
  br label %200

200:                                              ; preds = %193, %190, %174
  br label %201

201:                                              ; preds = %200, %166, %88
  %202 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %10, align 8
  %203 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %13, align 8
  %204 = load i8*, i8** %16, align 8
  %205 = call i32 @ttm_mem_reg_iounmap(%struct.ttm_bo_device* %202, %struct.ttm_mem_reg* %203, i8* %204)
  br label %206

206:                                              ; preds = %201, %55
  %207 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %10, align 8
  %208 = load i8*, i8** %15, align 8
  %209 = call i32 @ttm_mem_reg_iounmap(%struct.ttm_bo_device* %207, %struct.ttm_mem_reg* %14, i8* %208)
  %210 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %211 = call i32 @ttm_bo_mem_put(%struct.ttm_buffer_object* %210, %struct.ttm_mem_reg* %14)
  %212 = load i32, i32* %17, align 4
  store i32 %212, i32* %5, align 4
  br label %213

213:                                              ; preds = %206, %47
  %214 = load i32, i32* %5, align 4
  ret i32 %214
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ttm_mem_reg_ioremap(%struct.ttm_bo_device*, %struct.ttm_mem_reg*, i8**) #2

declare dso_local i32 @ttm_io_prot(i32) #2

declare dso_local i32 @ttm_copy_ttm_io_page(%struct.ttm_tt*, i8*, i64, i32) #2

declare dso_local i32 @ttm_copy_io_ttm_page(%struct.ttm_tt*, i8*, i64, i32) #2

declare dso_local i32 @ttm_copy_io_page(i8*, i8*, i64) #2

declare dso_local i32 @mb(...) #2

declare dso_local i32 @ttm_tt_unbind(%struct.ttm_tt*) #2

declare dso_local i32 @ttm_tt_destroy(%struct.ttm_tt*) #2

declare dso_local i32 @ttm_mem_reg_iounmap(%struct.ttm_bo_device*, %struct.ttm_mem_reg*, i8*) #2

declare dso_local i32 @ttm_bo_mem_put(%struct.ttm_buffer_object*, %struct.ttm_mem_reg*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
