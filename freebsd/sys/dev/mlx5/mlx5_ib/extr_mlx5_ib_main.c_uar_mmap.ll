; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_main.c_uar_mmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_main.c_uar_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32 }
%struct.vm_area_struct = type { i64, i64, i32, i32 }
%struct.mlx5_ib_ucontext = type { %struct.mlx5_uuar_info }
%struct.mlx5_uuar_info = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"uar idx 0x%lx, pfn %pa\0A\00", align 1
@.str.1 = private unnamed_addr constant [80 x i8] c"io_remap_pfn_range failed with error=%d, vm_start=0x%llx, pfn=%pa, mmap_cmd=%s\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"mapped %s at 0x%llx, PA %pa\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*, i32, %struct.vm_area_struct*, %struct.mlx5_ib_ucontext*)* @uar_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uar_mmap(%struct.mlx5_ib_dev* %0, i32 %1, %struct.vm_area_struct* %2, %struct.mlx5_ib_ucontext* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_ib_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vm_area_struct*, align 8
  %9 = alloca %struct.mlx5_ib_ucontext*, align 8
  %10 = alloca %struct.mlx5_uuar_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.vm_area_struct* %2, %struct.vm_area_struct** %8, align 8
  store %struct.mlx5_ib_ucontext* %3, %struct.mlx5_ib_ucontext** %9, align 8
  %16 = load %struct.mlx5_ib_ucontext*, %struct.mlx5_ib_ucontext** %9, align 8
  %17 = getelementptr inbounds %struct.mlx5_ib_ucontext, %struct.mlx5_ib_ucontext* %16, i32 0, i32 0
  store %struct.mlx5_uuar_info* %17, %struct.mlx5_uuar_info** %10, align 8
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %32 [
    i32 128, label %19
    i32 129, label %22
    i32 130, label %27
  ]

19:                                               ; preds = %4
  %20 = load i32, i32* @EPERM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %115

22:                                               ; preds = %4
  %23 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %24 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @pgprot_writecombine(i32 %25)
  store i32 %26, i32* %15, align 4
  br label %35

27:                                               ; preds = %4
  %28 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %29 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @pgprot_noncached(i32 %30)
  store i32 %31, i32* %15, align 4
  br label %35

32:                                               ; preds = %4
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %115

35:                                               ; preds = %27, %22
  %36 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %37 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %40 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = sub nsw i64 %38, %41
  %43 = load i64, i64* @PAGE_SIZE, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %35
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %115

48:                                               ; preds = %35
  %49 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %50 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @get_index(i32 %51)
  store i64 %52, i64* %12, align 8
  %53 = load i64, i64* %12, align 8
  %54 = load %struct.mlx5_uuar_info*, %struct.mlx5_uuar_info** %10, align 8
  %55 = getelementptr inbounds %struct.mlx5_uuar_info, %struct.mlx5_uuar_info* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp uge i64 %53, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %48
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %5, align 4
  br label %115

61:                                               ; preds = %48
  %62 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %63 = load %struct.mlx5_uuar_info*, %struct.mlx5_uuar_info** %10, align 8
  %64 = getelementptr inbounds %struct.mlx5_uuar_info, %struct.mlx5_uuar_info* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i64, i64* %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @uar_index2pfn(%struct.mlx5_ib_dev* %62, i32 %69)
  store i32 %70, i32* %13, align 4
  %71 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %72 = load i64, i64* %12, align 8
  %73 = call i32 (%struct.mlx5_ib_dev*, i8*, i64, ...) @mlx5_ib_dbg(%struct.mlx5_ib_dev* %71, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %72, i32* %13)
  %74 = load i32, i32* %15, align 4
  %75 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %76 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  %77 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %78 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %79 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* %13, align 4
  %82 = load i64, i64* @PAGE_SIZE, align 8
  %83 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %84 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @io_remap_pfn_range(%struct.vm_area_struct* %77, i64 %80, i32 %81, i64 %82, i32 %85)
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %61
  %90 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %91 = load i32, i32* %11, align 4
  %92 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %93 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @mmap_cmd2str(i32 %95)
  %97 = call i32 @mlx5_ib_err(%struct.mlx5_ib_dev* %90, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i32 %91, i64 %94, i32* %13, i32 %96)
  %98 = load i32, i32* @EAGAIN, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %5, align 4
  br label %115

100:                                              ; preds = %61
  %101 = load i32, i32* %13, align 4
  %102 = load i32, i32* @PAGE_SHIFT, align 4
  %103 = shl i32 %101, %102
  store i32 %103, i32* %14, align 4
  %104 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @mmap_cmd2str(i32 %105)
  %107 = sext i32 %106 to i64
  %108 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %109 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = call i32 (%struct.mlx5_ib_dev*, i8*, i64, ...) @mlx5_ib_dbg(%struct.mlx5_ib_dev* %104, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i64 %107, i64 %110, i32* %14)
  %112 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %113 = load %struct.mlx5_ib_ucontext*, %struct.mlx5_ib_ucontext** %9, align 8
  %114 = call i32 @mlx5_ib_set_vma_data(%struct.vm_area_struct* %112, %struct.mlx5_ib_ucontext* %113)
  store i32 %114, i32* %5, align 4
  br label %115

115:                                              ; preds = %100, %89, %58, %45, %32, %19
  %116 = load i32, i32* %5, align 4
  ret i32 %116
}

declare dso_local i32 @pgprot_writecombine(i32) #1

declare dso_local i32 @pgprot_noncached(i32) #1

declare dso_local i64 @get_index(i32) #1

declare dso_local i32 @uar_index2pfn(%struct.mlx5_ib_dev*, i32) #1

declare dso_local i32 @mlx5_ib_dbg(%struct.mlx5_ib_dev*, i8*, i64, ...) #1

declare dso_local i32 @io_remap_pfn_range(%struct.vm_area_struct*, i64, i32, i64, i32) #1

declare dso_local i32 @mlx5_ib_err(%struct.mlx5_ib_dev*, i8*, i32, i64, i32*, i32) #1

declare dso_local i32 @mmap_cmd2str(i32) #1

declare dso_local i32 @mlx5_ib_set_vma_data(%struct.vm_area_struct*, %struct.mlx5_ib_ucontext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
