; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_vm_hold_free_pages.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_vm_hold_free_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32, i32**, i64 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buf*, i32)* @vm_hold_free_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vm_hold_free_pages(%struct.buf* %0, i32 %1) #0 {
  %3 = alloca %struct.buf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.buf* %0, %struct.buf** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.buf*, %struct.buf** %3, align 8
  %10 = call i32 @BUF_CHECK_MAPPED(%struct.buf* %9)
  %11 = load %struct.buf*, %struct.buf** %3, align 8
  %12 = getelementptr inbounds %struct.buf, %struct.buf* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = trunc i64 %13 to i32
  %15 = load i32, i32* %4, align 4
  %16 = add nsw i32 %14, %15
  %17 = call i32 @round_page(i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.buf*, %struct.buf** %3, align 8
  %20 = getelementptr inbounds %struct.buf, %struct.buf* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i32
  %23 = call i32 @trunc_page(i32 %22)
  %24 = sub nsw i32 %18, %23
  %25 = load i32, i32* @PAGE_SHIFT, align 4
  %26 = ashr i32 %24, %25
  store i32 %26, i32* %8, align 4
  %27 = load %struct.buf*, %struct.buf** %3, align 8
  %28 = getelementptr inbounds %struct.buf, %struct.buf* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %2
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.buf*, %struct.buf** %3, align 8
  %35 = getelementptr inbounds %struct.buf, %struct.buf* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sub nsw i32 %36, %37
  %39 = call i32 @pmap_qremove(i32 %33, i32 %38)
  br label %40

40:                                               ; preds = %32, %2
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %66, %40
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.buf*, %struct.buf** %3, align 8
  %45 = getelementptr inbounds %struct.buf, %struct.buf* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %69

48:                                               ; preds = %42
  %49 = load %struct.buf*, %struct.buf** %3, align 8
  %50 = getelementptr inbounds %struct.buf, %struct.buf* %49, i32 0, i32 1
  %51 = load i32**, i32*** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32*, i32** %51, i64 %53
  %55 = load i32*, i32** %54, align 8
  store i32* %55, i32** %6, align 8
  %56 = load %struct.buf*, %struct.buf** %3, align 8
  %57 = getelementptr inbounds %struct.buf, %struct.buf* %56, i32 0, i32 1
  %58 = load i32**, i32*** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32*, i32** %58, i64 %60
  store i32* null, i32** %61, align 8
  %62 = load i32*, i32** %6, align 8
  %63 = call i32 @vm_page_unwire_noq(i32* %62)
  %64 = load i32*, i32** %6, align 8
  %65 = call i32 @vm_page_free(i32* %64)
  br label %66

66:                                               ; preds = %48
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %42

69:                                               ; preds = %42
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.buf*, %struct.buf** %3, align 8
  %72 = getelementptr inbounds %struct.buf, %struct.buf* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  ret void
}

declare dso_local i32 @BUF_CHECK_MAPPED(%struct.buf*) #1

declare dso_local i32 @round_page(i32) #1

declare dso_local i32 @trunc_page(i32) #1

declare dso_local i32 @pmap_qremove(i32, i32) #1

declare dso_local i32 @vm_page_unwire_noq(i32*) #1

declare dso_local i32 @vm_page_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
