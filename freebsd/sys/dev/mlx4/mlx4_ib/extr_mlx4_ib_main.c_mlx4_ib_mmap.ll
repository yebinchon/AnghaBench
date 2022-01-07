; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_main.c_mlx4_ib_mmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_main.c_mlx4_ib_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ucontext = type { i32 }
%struct.vm_area_struct = type { i64, i64, i32, i8* }
%struct.mlx4_ib_dev = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64, i32 }
%struct.mlx4_ib_ucontext = type { %struct.TYPE_9__*, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.mlx4_clock_params = type { i32, i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@HW_BAR_DB = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@HW_BAR_BF = common dso_local global i64 0, align 8
@HW_BAR_CLOCK = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_ucontext*, %struct.vm_area_struct*)* @mlx4_ib_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_ib_mmap(%struct.ib_ucontext* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_ucontext*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.mlx4_ib_dev*, align 8
  %7 = alloca %struct.mlx4_ib_ucontext*, align 8
  %8 = alloca %struct.mlx4_clock_params, align 4
  %9 = alloca i32, align 4
  store %struct.ib_ucontext* %0, %struct.ib_ucontext** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %10 = load %struct.ib_ucontext*, %struct.ib_ucontext** %4, align 8
  %11 = getelementptr inbounds %struct.ib_ucontext, %struct.ib_ucontext* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.mlx4_ib_dev* @to_mdev(i32 %12)
  store %struct.mlx4_ib_dev* %13, %struct.mlx4_ib_dev** %6, align 8
  %14 = load %struct.ib_ucontext*, %struct.ib_ucontext** %4, align 8
  %15 = call %struct.mlx4_ib_ucontext* @to_mucontext(%struct.ib_ucontext* %14)
  store %struct.mlx4_ib_ucontext* %15, %struct.mlx4_ib_ucontext** %7, align 8
  %16 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %17 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %20 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = sub nsw i64 %18, %21
  %23 = load i64, i64* @PAGE_SIZE, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %218

28:                                               ; preds = %2
  %29 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %30 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %78

33:                                               ; preds = %28
  %34 = load %struct.mlx4_ib_ucontext*, %struct.mlx4_ib_ucontext** %7, align 8
  %35 = getelementptr inbounds %struct.mlx4_ib_ucontext, %struct.mlx4_ib_ucontext* %34, i32 0, i32 0
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = load i64, i64* @HW_BAR_DB, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %218

45:                                               ; preds = %33
  %46 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %47 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %46, i32 0, i32 3
  %48 = load i8*, i8** %47, align 8
  %49 = call i8* @pgprot_noncached(i8* %48)
  %50 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %51 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %50, i32 0, i32 3
  store i8* %49, i8** %51, align 8
  %52 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %53 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %54 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.ib_ucontext*, %struct.ib_ucontext** %4, align 8
  %57 = call %struct.mlx4_ib_ucontext* @to_mucontext(%struct.ib_ucontext* %56)
  %58 = getelementptr inbounds %struct.mlx4_ib_ucontext, %struct.mlx4_ib_ucontext* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i64, i64* @PAGE_SIZE, align 8
  %62 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %63 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %62, i32 0, i32 3
  %64 = load i8*, i8** %63, align 8
  %65 = call i64 @io_remap_pfn_range(%struct.vm_area_struct* %52, i64 %55, i32 %60, i64 %61, i8* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %45
  %68 = load i32, i32* @EAGAIN, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %218

70:                                               ; preds = %45
  %71 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %72 = load %struct.mlx4_ib_ucontext*, %struct.mlx4_ib_ucontext** %7, align 8
  %73 = getelementptr inbounds %struct.mlx4_ib_ucontext, %struct.mlx4_ib_ucontext* %72, i32 0, i32 0
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  %75 = load i64, i64* @HW_BAR_DB, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i64 %75
  %77 = call i32 @mlx4_ib_set_vma_data(%struct.vm_area_struct* %71, %struct.TYPE_9__* %76)
  br label %217

78:                                               ; preds = %28
  %79 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %80 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %83, label %143

83:                                               ; preds = %78
  %84 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %85 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %84, i32 0, i32 0
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %143

91:                                               ; preds = %83
  %92 = load %struct.mlx4_ib_ucontext*, %struct.mlx4_ib_ucontext** %7, align 8
  %93 = getelementptr inbounds %struct.mlx4_ib_ucontext, %struct.mlx4_ib_ucontext* %92, i32 0, i32 0
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %93, align 8
  %95 = load i64, i64* @HW_BAR_BF, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %91
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %3, align 4
  br label %218

103:                                              ; preds = %91
  %104 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %105 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %104, i32 0, i32 3
  %106 = load i8*, i8** %105, align 8
  %107 = call i8* @pgprot_writecombine(i8* %106)
  %108 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %109 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %108, i32 0, i32 3
  store i8* %107, i8** %109, align 8
  %110 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %111 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %112 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.ib_ucontext*, %struct.ib_ucontext** %4, align 8
  %115 = call %struct.mlx4_ib_ucontext* @to_mucontext(%struct.ib_ucontext* %114)
  %116 = getelementptr inbounds %struct.mlx4_ib_ucontext, %struct.mlx4_ib_ucontext* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %120 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %119, i32 0, i32 0
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = add nsw i32 %118, %124
  %126 = load i64, i64* @PAGE_SIZE, align 8
  %127 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %128 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %127, i32 0, i32 3
  %129 = load i8*, i8** %128, align 8
  %130 = call i64 @io_remap_pfn_range(%struct.vm_area_struct* %110, i64 %113, i32 %125, i64 %126, i8* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %103
  %133 = load i32, i32* @EAGAIN, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %3, align 4
  br label %218

135:                                              ; preds = %103
  %136 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %137 = load %struct.mlx4_ib_ucontext*, %struct.mlx4_ib_ucontext** %7, align 8
  %138 = getelementptr inbounds %struct.mlx4_ib_ucontext, %struct.mlx4_ib_ucontext* %137, i32 0, i32 0
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %138, align 8
  %140 = load i64, i64* @HW_BAR_BF, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i64 %140
  %142 = call i32 @mlx4_ib_set_vma_data(%struct.vm_area_struct* %136, %struct.TYPE_9__* %141)
  br label %216

143:                                              ; preds = %83, %78
  %144 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %145 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = icmp eq i32 %146, 3
  br i1 %147, label %148, label %212

148:                                              ; preds = %143
  %149 = load %struct.mlx4_ib_ucontext*, %struct.mlx4_ib_ucontext** %7, align 8
  %150 = getelementptr inbounds %struct.mlx4_ib_ucontext, %struct.mlx4_ib_ucontext* %149, i32 0, i32 0
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %150, align 8
  %152 = load i64, i64* @HW_BAR_CLOCK, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %148
  %158 = load i32, i32* @EINVAL, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %3, align 4
  br label %218

160:                                              ; preds = %148
  %161 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %162 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %161, i32 0, i32 0
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %162, align 8
  %164 = call i32 @mlx4_get_internal_clock_params(%struct.TYPE_10__* %163, %struct.mlx4_clock_params* %8)
  store i32 %164, i32* %9, align 4
  %165 = load i32, i32* %9, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %160
  %168 = load i32, i32* %9, align 4
  store i32 %168, i32* %3, align 4
  br label %218

169:                                              ; preds = %160
  %170 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %171 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %170, i32 0, i32 3
  %172 = load i8*, i8** %171, align 8
  %173 = call i8* @pgprot_noncached(i8* %172)
  %174 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %175 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %174, i32 0, i32 3
  store i8* %173, i8** %175, align 8
  %176 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %177 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %178 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %181 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %180, i32 0, i32 0
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 0
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = getelementptr inbounds %struct.mlx4_clock_params, %struct.mlx4_clock_params* %8, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @pci_resource_start(i32 %186, i32 %188)
  %190 = getelementptr inbounds %struct.mlx4_clock_params, %struct.mlx4_clock_params* %8, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = add nsw i32 %189, %191
  %193 = load i32, i32* @PAGE_SHIFT, align 4
  %194 = ashr i32 %192, %193
  %195 = load i64, i64* @PAGE_SIZE, align 8
  %196 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %197 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %196, i32 0, i32 3
  %198 = load i8*, i8** %197, align 8
  %199 = call i64 @io_remap_pfn_range(%struct.vm_area_struct* %176, i64 %179, i32 %194, i64 %195, i8* %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %169
  %202 = load i32, i32* @EAGAIN, align 4
  %203 = sub nsw i32 0, %202
  store i32 %203, i32* %3, align 4
  br label %218

204:                                              ; preds = %169
  %205 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %206 = load %struct.mlx4_ib_ucontext*, %struct.mlx4_ib_ucontext** %7, align 8
  %207 = getelementptr inbounds %struct.mlx4_ib_ucontext, %struct.mlx4_ib_ucontext* %206, i32 0, i32 0
  %208 = load %struct.TYPE_9__*, %struct.TYPE_9__** %207, align 8
  %209 = load i64, i64* @HW_BAR_CLOCK, align 8
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i64 %209
  %211 = call i32 @mlx4_ib_set_vma_data(%struct.vm_area_struct* %205, %struct.TYPE_9__* %210)
  br label %215

212:                                              ; preds = %143
  %213 = load i32, i32* @EINVAL, align 4
  %214 = sub nsw i32 0, %213
  store i32 %214, i32* %3, align 4
  br label %218

215:                                              ; preds = %204
  br label %216

216:                                              ; preds = %215, %135
  br label %217

217:                                              ; preds = %216, %70
  store i32 0, i32* %3, align 4
  br label %218

218:                                              ; preds = %217, %212, %201, %167, %157, %132, %100, %67, %42, %25
  %219 = load i32, i32* %3, align 4
  ret i32 %219
}

declare dso_local %struct.mlx4_ib_dev* @to_mdev(i32) #1

declare dso_local %struct.mlx4_ib_ucontext* @to_mucontext(%struct.ib_ucontext*) #1

declare dso_local i8* @pgprot_noncached(i8*) #1

declare dso_local i64 @io_remap_pfn_range(%struct.vm_area_struct*, i64, i32, i64, i8*) #1

declare dso_local i32 @mlx4_ib_set_vma_data(%struct.vm_area_struct*, %struct.TYPE_9__*) #1

declare dso_local i8* @pgprot_writecombine(i8*) #1

declare dso_local i32 @mlx4_get_internal_clock_params(%struct.TYPE_10__*, %struct.mlx4_clock_params*) #1

declare dso_local i32 @pci_resource_start(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
