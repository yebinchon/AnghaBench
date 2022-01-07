; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_bo_util.c_ttm_bo_kmap_ttm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_bo_util.c_ttm_bo_kmap_ttm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { %struct.ttm_tt*, %struct.ttm_mem_reg }
%struct.ttm_tt = type { i64, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.ttm_tt*)* }
%struct.ttm_mem_reg = type { i32 }
%struct.ttm_bo_kmap_obj = type { i64, i32*, i32, i32, i32 }

@tt_unpopulated = common dso_local global i64 0, align 8
@TTM_PL_FLAG_CACHED = common dso_local global i32 0, align 4
@ttm_bo_map_kmap = common dso_local global i32 0, align 4
@VM_MEMATTR_DEFAULT = common dso_local global i32 0, align 4
@ttm_bo_map_vmap = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_buffer_object*, i64, i64, %struct.ttm_bo_kmap_obj*)* @ttm_bo_kmap_ttm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttm_bo_kmap_ttm(%struct.ttm_buffer_object* %0, i64 %1, i64 %2, %struct.ttm_bo_kmap_obj* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ttm_buffer_object*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ttm_bo_kmap_obj*, align 8
  %10 = alloca %struct.ttm_mem_reg*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ttm_tt*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.ttm_bo_kmap_obj* %3, %struct.ttm_bo_kmap_obj** %9, align 8
  %15 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %16 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %15, i32 0, i32 1
  store %struct.ttm_mem_reg* %16, %struct.ttm_mem_reg** %10, align 8
  %17 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %18 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %17, i32 0, i32 0
  %19 = load %struct.ttm_tt*, %struct.ttm_tt** %18, align 8
  store %struct.ttm_tt* %19, %struct.ttm_tt** %12, align 8
  %20 = load %struct.ttm_tt*, %struct.ttm_tt** %12, align 8
  %21 = icmp ne %struct.ttm_tt* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @MPASS(i32 %22)
  %24 = load %struct.ttm_tt*, %struct.ttm_tt** %12, align 8
  %25 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @tt_unpopulated, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %44

29:                                               ; preds = %4
  %30 = load %struct.ttm_tt*, %struct.ttm_tt** %12, align 8
  %31 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %30, i32 0, i32 2
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32 (%struct.ttm_tt*)*, i32 (%struct.ttm_tt*)** %35, align 8
  %37 = load %struct.ttm_tt*, %struct.ttm_tt** %12, align 8
  %38 = call i32 %36(%struct.ttm_tt* %37)
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %14, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %29
  %42 = load i32, i32* %14, align 4
  store i32 %42, i32* %5, align 4
  br label %159

43:                                               ; preds = %29
  br label %44

44:                                               ; preds = %43, %4
  %45 = load i64, i64* %8, align 8
  %46 = icmp eq i64 %45, 1
  br i1 %46, label %47, label %80

47:                                               ; preds = %44
  %48 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %10, align 8
  %49 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @TTM_PL_FLAG_CACHED, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %80

54:                                               ; preds = %47
  %55 = load i32, i32* @ttm_bo_map_kmap, align 4
  %56 = load %struct.ttm_bo_kmap_obj*, %struct.ttm_bo_kmap_obj** %9, align 8
  %57 = getelementptr inbounds %struct.ttm_bo_kmap_obj, %struct.ttm_bo_kmap_obj* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load %struct.ttm_tt*, %struct.ttm_tt** %12, align 8
  %59 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* %7, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ttm_bo_kmap_obj*, %struct.ttm_bo_kmap_obj** %9, align 8
  %65 = getelementptr inbounds %struct.ttm_bo_kmap_obj, %struct.ttm_bo_kmap_obj* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 8
  %66 = load %struct.ttm_bo_kmap_obj*, %struct.ttm_bo_kmap_obj** %9, align 8
  %67 = getelementptr inbounds %struct.ttm_bo_kmap_obj, %struct.ttm_bo_kmap_obj* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @sf_buf_alloc(i32 %68, i32 0)
  %70 = load %struct.ttm_bo_kmap_obj*, %struct.ttm_bo_kmap_obj** %9, align 8
  %71 = getelementptr inbounds %struct.ttm_bo_kmap_obj, %struct.ttm_bo_kmap_obj* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 4
  %72 = load %struct.ttm_bo_kmap_obj*, %struct.ttm_bo_kmap_obj** %9, align 8
  %73 = getelementptr inbounds %struct.ttm_bo_kmap_obj, %struct.ttm_bo_kmap_obj* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @sf_buf_kva(i32 %74)
  %76 = inttoptr i64 %75 to i8*
  %77 = bitcast i8* %76 to i32*
  %78 = load %struct.ttm_bo_kmap_obj*, %struct.ttm_bo_kmap_obj** %9, align 8
  %79 = getelementptr inbounds %struct.ttm_bo_kmap_obj, %struct.ttm_bo_kmap_obj* %78, i32 0, i32 1
  store i32* %77, i32** %79, align 8
  br label %148

80:                                               ; preds = %47, %44
  %81 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %10, align 8
  %82 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @TTM_PL_FLAG_CACHED, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %80
  %88 = load i32, i32* @VM_MEMATTR_DEFAULT, align 4
  br label %94

89:                                               ; preds = %80
  %90 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %10, align 8
  %91 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @ttm_io_prot(i32 %92)
  br label %94

94:                                               ; preds = %89, %87
  %95 = phi i32 [ %88, %87 ], [ %93, %89 ]
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* @ttm_bo_map_vmap, align 4
  %97 = load %struct.ttm_bo_kmap_obj*, %struct.ttm_bo_kmap_obj** %9, align 8
  %98 = getelementptr inbounds %struct.ttm_bo_kmap_obj, %struct.ttm_bo_kmap_obj* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 8
  %99 = load i64, i64* %8, align 8
  %100 = load %struct.ttm_bo_kmap_obj*, %struct.ttm_bo_kmap_obj** %9, align 8
  %101 = getelementptr inbounds %struct.ttm_bo_kmap_obj, %struct.ttm_bo_kmap_obj* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 8
  %102 = load i64, i64* %8, align 8
  %103 = load i64, i64* @PAGE_SIZE, align 8
  %104 = mul i64 %102, %103
  %105 = call i64 @kva_alloc(i64 %104)
  %106 = inttoptr i64 %105 to i8*
  %107 = bitcast i8* %106 to i32*
  %108 = load %struct.ttm_bo_kmap_obj*, %struct.ttm_bo_kmap_obj** %9, align 8
  %109 = getelementptr inbounds %struct.ttm_bo_kmap_obj, %struct.ttm_bo_kmap_obj* %108, i32 0, i32 1
  store i32* %107, i32** %109, align 8
  %110 = load %struct.ttm_bo_kmap_obj*, %struct.ttm_bo_kmap_obj** %9, align 8
  %111 = getelementptr inbounds %struct.ttm_bo_kmap_obj, %struct.ttm_bo_kmap_obj* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %147

114:                                              ; preds = %94
  store i32 0, i32* %13, align 4
  br label %115

115:                                              ; preds = %132, %114
  %116 = load i32, i32* %13, align 4
  %117 = sext i32 %116 to i64
  %118 = load i64, i64* %8, align 8
  %119 = icmp ult i64 %117, %118
  br i1 %119, label %120, label %135

120:                                              ; preds = %115
  %121 = load %struct.ttm_tt*, %struct.ttm_tt** %12, align 8
  %122 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = load i64, i64* %7, align 8
  %125 = load i32, i32* %13, align 4
  %126 = sext i32 %125 to i64
  %127 = add i64 %124, %126
  %128 = getelementptr inbounds i32, i32* %123, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %11, align 4
  %131 = call i32 @pmap_page_set_memattr(i32 %129, i32 %130)
  br label %132

132:                                              ; preds = %120
  %133 = load i32, i32* %13, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %13, align 4
  br label %115

135:                                              ; preds = %115
  %136 = load %struct.ttm_bo_kmap_obj*, %struct.ttm_bo_kmap_obj** %9, align 8
  %137 = getelementptr inbounds %struct.ttm_bo_kmap_obj, %struct.ttm_bo_kmap_obj* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = ptrtoint i32* %138 to i32
  %140 = load %struct.ttm_tt*, %struct.ttm_tt** %12, align 8
  %141 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = load i64, i64* %7, align 8
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  %145 = load i64, i64* %8, align 8
  %146 = call i32 @pmap_qenter(i32 %139, i32* %144, i64 %145)
  br label %147

147:                                              ; preds = %135, %94
  br label %148

148:                                              ; preds = %147, %54
  %149 = load %struct.ttm_bo_kmap_obj*, %struct.ttm_bo_kmap_obj** %9, align 8
  %150 = getelementptr inbounds %struct.ttm_bo_kmap_obj, %struct.ttm_bo_kmap_obj* %149, i32 0, i32 1
  %151 = load i32*, i32** %150, align 8
  %152 = icmp ne i32* %151, null
  br i1 %152, label %156, label %153

153:                                              ; preds = %148
  %154 = load i32, i32* @ENOMEM, align 4
  %155 = sub nsw i32 0, %154
  br label %157

156:                                              ; preds = %148
  br label %157

157:                                              ; preds = %156, %153
  %158 = phi i32 [ %155, %153 ], [ 0, %156 ]
  store i32 %158, i32* %5, align 4
  br label %159

159:                                              ; preds = %157, %41
  %160 = load i32, i32* %5, align 4
  ret i32 %160
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @sf_buf_alloc(i32, i32) #1

declare dso_local i64 @sf_buf_kva(i32) #1

declare dso_local i32 @ttm_io_prot(i32) #1

declare dso_local i64 @kva_alloc(i64) #1

declare dso_local i32 @pmap_page_set_memattr(i32, i32) #1

declare dso_local i32 @pmap_qenter(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
