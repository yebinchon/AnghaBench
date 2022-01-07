; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvdimm/extr_nvdimm_spa.c_nvdimm_spa_g_all_unmapped.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvdimm/extr_nvdimm_spa.c_nvdimm_spa_g_all_unmapped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvdimm_spa_dev = type { i64, i32 }
%struct.bio = type { i32, i32, i32, i32, %struct.vm_page** }
%struct.vm_page = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@BIO_READ = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvdimm_spa_dev*, %struct.bio*, i32)* @nvdimm_spa_g_all_unmapped to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvdimm_spa_g_all_unmapped(%struct.nvdimm_spa_dev* %0, %struct.bio* %1, i32 %2) #0 {
  %4 = alloca %struct.nvdimm_spa_dev*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nvdimm_spa_dev* %0, %struct.nvdimm_spa_dev** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.bio*, %struct.bio** %5, align 8
  %13 = getelementptr inbounds %struct.bio, %struct.bio* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %7, align 8
  %17 = alloca %struct.vm_page, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  %18 = load %struct.bio*, %struct.bio** %5, align 8
  %19 = getelementptr inbounds %struct.bio, %struct.bio* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = zext i32 %20 to i64
  %22 = alloca %struct.vm_page*, i64 %21, align 16
  store i64 %21, i64* %9, align 8
  %23 = load %struct.nvdimm_spa_dev*, %struct.nvdimm_spa_dev** %4, align 8
  %24 = getelementptr inbounds %struct.nvdimm_spa_dev, %struct.nvdimm_spa_dev* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %26

26:                                               ; preds = %59, %3
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @nitems(%struct.vm_page** %22)
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %62

30:                                               ; preds = %26
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.vm_page, %struct.vm_page* %17, i64 %32
  %34 = call i32 @bzero(%struct.vm_page* %33, i32 4)
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.vm_page, %struct.vm_page* %17, i64 %36
  %38 = load %struct.nvdimm_spa_dev*, %struct.nvdimm_spa_dev** %4, align 8
  %39 = getelementptr inbounds %struct.nvdimm_spa_dev, %struct.nvdimm_spa_dev* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.bio*, %struct.bio** %5, align 8
  %42 = getelementptr inbounds %struct.bio, %struct.bio* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @trunc_page(i32 %43)
  %45 = add nsw i64 %40, %44
  %46 = load i32, i32* @PAGE_SIZE, align 4
  %47 = load i32, i32* %11, align 4
  %48 = mul nsw i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %45, %49
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @vm_page_initfake(%struct.vm_page* %37, i64 %50, i32 %51)
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.vm_page, %struct.vm_page* %17, i64 %54
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.vm_page*, %struct.vm_page** %22, i64 %57
  store %struct.vm_page* %55, %struct.vm_page** %58, align 8
  br label %59

59:                                               ; preds = %30
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %11, align 4
  br label %26

62:                                               ; preds = %26
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @BIO_READ, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %82

66:                                               ; preds = %62
  %67 = load %struct.bio*, %struct.bio** %5, align 8
  %68 = getelementptr inbounds %struct.bio, %struct.bio* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @PAGE_MASK, align 4
  %71 = and i32 %69, %70
  %72 = load %struct.bio*, %struct.bio** %5, align 8
  %73 = getelementptr inbounds %struct.bio, %struct.bio* %72, i32 0, i32 4
  %74 = load %struct.vm_page**, %struct.vm_page*** %73, align 8
  %75 = load %struct.bio*, %struct.bio** %5, align 8
  %76 = getelementptr inbounds %struct.bio, %struct.bio* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.bio*, %struct.bio** %5, align 8
  %79 = getelementptr inbounds %struct.bio, %struct.bio* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @pmap_copy_pages(%struct.vm_page** %22, i32 %71, %struct.vm_page** %74, i32 %77, i32 %80)
  br label %98

82:                                               ; preds = %62
  %83 = load %struct.bio*, %struct.bio** %5, align 8
  %84 = getelementptr inbounds %struct.bio, %struct.bio* %83, i32 0, i32 4
  %85 = load %struct.vm_page**, %struct.vm_page*** %84, align 8
  %86 = load %struct.bio*, %struct.bio** %5, align 8
  %87 = getelementptr inbounds %struct.bio, %struct.bio* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.bio*, %struct.bio** %5, align 8
  %90 = getelementptr inbounds %struct.bio, %struct.bio* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @PAGE_MASK, align 4
  %93 = and i32 %91, %92
  %94 = load %struct.bio*, %struct.bio** %5, align 8
  %95 = getelementptr inbounds %struct.bio, %struct.bio* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @pmap_copy_pages(%struct.vm_page** %85, i32 %88, %struct.vm_page** %22, i32 %93, i32 %96)
  br label %98

98:                                               ; preds = %82, %66
  %99 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %99)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nitems(%struct.vm_page**) #2

declare dso_local i32 @bzero(%struct.vm_page*, i32) #2

declare dso_local i32 @vm_page_initfake(%struct.vm_page*, i64, i32) #2

declare dso_local i64 @trunc_page(i32) #2

declare dso_local i32 @pmap_copy_pages(%struct.vm_page**, i32, %struct.vm_page**, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
