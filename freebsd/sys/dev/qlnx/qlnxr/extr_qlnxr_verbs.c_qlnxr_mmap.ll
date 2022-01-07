; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_mmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ucontext = type { i32 }
%struct.vm_area_struct = type { i64, i64, i64, i32, i8* }
%struct.qlnxr_ucontext = type { i32, i32 }
%struct.qlnxr_dev = type { i64, i64, i32* }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [85 x i8] c"qedr_mmap enter vm_page=0x%lx vm_pgoff=0x%lx unmapped_db=0x%llx db_size=%x, len=%lx\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"Vma_start not page aligned vm_start = %ld vma_end = %ld\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"Vma_pgoff not found in mapped array = %ld\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Mapping doorbell bar\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Mapping chains\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"exit [%d]\0A\00", align 1
@VM_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlnxr_mmap(%struct.ib_ucontext* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_ucontext*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.qlnxr_ucontext*, align 8
  %7 = alloca %struct.qlnxr_dev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.ib_ucontext* %0, %struct.ib_ucontext** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %14 = load %struct.ib_ucontext*, %struct.ib_ucontext** %4, align 8
  %15 = call %struct.qlnxr_ucontext* @get_qlnxr_ucontext(%struct.ib_ucontext* %14)
  store %struct.qlnxr_ucontext* %15, %struct.qlnxr_ucontext** %6, align 8
  %16 = load %struct.ib_ucontext*, %struct.ib_ucontext** %4, align 8
  %17 = getelementptr inbounds %struct.ib_ucontext, %struct.ib_ucontext* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.qlnxr_dev* @get_qlnxr_dev(i32 %18)
  store %struct.qlnxr_dev* %19, %struct.qlnxr_dev** %7, align 8
  %20 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %21 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @PAGE_SHIFT, align 8
  %24 = shl i64 %22, %23
  store i64 %24, i64* %8, align 8
  %25 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %26 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %29 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = sub i64 %27, %30
  store i64 %31, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %32 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %7, align 8
  %33 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %13, align 8
  %35 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %7, align 8
  %36 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %9, align 8
  %38 = load i32*, i32** %13, align 8
  %39 = load i64, i64* %8, align 8
  %40 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %41 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %9, align 8
  %44 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %7, align 8
  %45 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %10, align 8
  %48 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %38, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0), i64 %39, i64 %42, i64 %43, i64 %46, i64 %47)
  %49 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %50 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* @PAGE_SIZE, align 4
  %53 = sub nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = and i64 %51, %54
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %2
  %58 = load i64, i64* %10, align 8
  %59 = load i32, i32* @PAGE_SIZE, align 4
  %60 = sub nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = and i64 %58, %61
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %57, %2
  %65 = load i32*, i32** %13, align 8
  %66 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %67 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %70 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = call i32 (i32*, i8*, ...) @QL_DPRINT11(i32* %65, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i64 %68, i64 %71)
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %148

75:                                               ; preds = %57
  %76 = load %struct.qlnxr_ucontext*, %struct.qlnxr_ucontext** %6, align 8
  %77 = load i64, i64* %8, align 8
  %78 = load i64, i64* %10, align 8
  %79 = call i32 @qlnxr_search_mmap(%struct.qlnxr_ucontext* %76, i64 %77, i64 %78)
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %12, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %90, label %82

82:                                               ; preds = %75
  %83 = load i32*, i32** %13, align 8
  %84 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %85 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i32 (i32*, i8*, ...) @QL_DPRINT11(i32* %83, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i64 %86)
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %3, align 4
  br label %148

90:                                               ; preds = %75
  %91 = load i32*, i32** %13, align 8
  %92 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %91, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %93 = load i64, i64* %8, align 8
  %94 = load i64, i64* %9, align 8
  %95 = icmp uge i64 %93, %94
  br i1 %95, label %96, label %127

96:                                               ; preds = %90
  %97 = load i64, i64* %8, align 8
  %98 = load i64, i64* %9, align 8
  %99 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %7, align 8
  %100 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = add i64 %98, %101
  %103 = icmp ule i64 %97, %102
  br i1 %103, label %104, label %127

104:                                              ; preds = %96
  %105 = load i32*, i32** %13, align 8
  %106 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %105, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %107 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %108 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %107, i32 0, i32 4
  %109 = load i8*, i8** %108, align 8
  %110 = call i8* @pgprot_writecombine(i8* %109)
  %111 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %112 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %111, i32 0, i32 4
  store i8* %110, i8** %112, align 8
  %113 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %114 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %115 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = trunc i64 %116 to i32
  %118 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %119 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i32, i32* @PAGE_SIZE, align 4
  %122 = sext i32 %121 to i64
  %123 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %124 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %123, i32 0, i32 4
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 @io_remap_pfn_range(%struct.vm_area_struct* %113, i32 %117, i64 %120, i64 %122, i8* %125)
  store i32 %126, i32* %11, align 4
  br label %143

127:                                              ; preds = %96, %90
  %128 = load i32*, i32** %13, align 8
  %129 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %128, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %130 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %131 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %132 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = trunc i64 %133 to i32
  %135 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %136 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* %10, align 8
  %139 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %140 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %139, i32 0, i32 4
  %141 = load i8*, i8** %140, align 8
  %142 = call i32 @io_remap_pfn_range(%struct.vm_area_struct* %130, i32 %134, i64 %137, i64 %138, i8* %141)
  store i32 %142, i32* %11, align 4
  br label %143

143:                                              ; preds = %127, %104
  %144 = load i32*, i32** %13, align 8
  %145 = load i32, i32* %11, align 4
  %146 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %144, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %145)
  %147 = load i32, i32* %11, align 4
  store i32 %147, i32* %3, align 4
  br label %148

148:                                              ; preds = %143, %82, %64
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local %struct.qlnxr_ucontext* @get_qlnxr_ucontext(%struct.ib_ucontext*) #1

declare dso_local %struct.qlnxr_dev* @get_qlnxr_dev(i32) #1

declare dso_local i32 @QL_DPRINT12(i32*, i8*, ...) #1

declare dso_local i32 @QL_DPRINT11(i32*, i8*, ...) #1

declare dso_local i32 @qlnxr_search_mmap(%struct.qlnxr_ucontext*, i64, i64) #1

declare dso_local i8* @pgprot_writecombine(i8*) #1

declare dso_local i32 @io_remap_pfn_range(%struct.vm_area_struct*, i32, i64, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
