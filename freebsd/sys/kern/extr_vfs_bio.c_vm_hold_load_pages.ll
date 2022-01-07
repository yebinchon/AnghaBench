; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_vm_hold_load_pages.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_vm_hold_load_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32, i32*, i64 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@VM_ALLOC_SYSTEM = common dso_local global i32 0, align 4
@VM_ALLOC_NOOBJ = common dso_local global i32 0, align 4
@VM_ALLOC_WIRED = common dso_local global i32 0, align 4
@VM_ALLOC_WAITOK = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buf*, i64, i64)* @vm_hold_load_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vm_hold_load_pages(%struct.buf* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.buf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.buf* %0, %struct.buf** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.buf*, %struct.buf** %4, align 8
  %11 = call i32 @BUF_CHECK_MAPPED(%struct.buf* %10)
  %12 = load i64, i64* %6, align 8
  %13 = call i64 @round_page(i64 %12)
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call i64 @round_page(i64 %14)
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load %struct.buf*, %struct.buf** %4, align 8
  %18 = getelementptr inbounds %struct.buf, %struct.buf* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = call i64 @trunc_page(i64 %19)
  %21 = sub nsw i64 %16, %20
  %22 = load i64, i64* @PAGE_SHIFT, align 8
  %23 = ashr i64 %21, %22
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %9, align 4
  %25 = load i64, i64* %5, align 8
  store i64 %25, i64* %7, align 8
  br label %26

26:                                               ; preds = %55, %3
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* %6, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %61

30:                                               ; preds = %26
  %31 = load i32, i32* @VM_ALLOC_SYSTEM, align 4
  %32 = load i32, i32* @VM_ALLOC_NOOBJ, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @VM_ALLOC_WIRED, align 4
  %35 = or i32 %33, %34
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* %7, align 8
  %38 = sub nsw i64 %36, %37
  %39 = load i64, i64* @PAGE_SHIFT, align 8
  %40 = ashr i64 %38, %39
  %41 = call i32 @VM_ALLOC_COUNT(i64 %40)
  %42 = or i32 %35, %41
  %43 = load i32, i32* @VM_ALLOC_WAITOK, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @vm_page_alloc(i32* null, i32 0, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @pmap_qenter(i64 %46, i32* %8, i32 1)
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.buf*, %struct.buf** %4, align 8
  %50 = getelementptr inbounds %struct.buf, %struct.buf* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32 %48, i32* %54, align 4
  br label %55

55:                                               ; preds = %30
  %56 = load i64, i64* @PAGE_SIZE, align 8
  %57 = load i64, i64* %7, align 8
  %58 = add nsw i64 %57, %56
  store i64 %58, i64* %7, align 8
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %9, align 4
  br label %26

61:                                               ; preds = %26
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.buf*, %struct.buf** %4, align 8
  %64 = getelementptr inbounds %struct.buf, %struct.buf* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  ret void
}

declare dso_local i32 @BUF_CHECK_MAPPED(%struct.buf*) #1

declare dso_local i64 @round_page(i64) #1

declare dso_local i64 @trunc_page(i64) #1

declare dso_local i32 @vm_page_alloc(i32*, i32, i32) #1

declare dso_local i32 @VM_ALLOC_COUNT(i64) #1

declare dso_local i32 @pmap_qenter(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
