; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_vfs_bio_bzero_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_vfs_bio_bzero_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32, i32*, i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vfs_bio_bzero_buf(%struct.buf* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.buf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.buf* %0, %struct.buf** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.buf*, %struct.buf** %4, align 8
  %11 = call i64 @buf_mapped(%struct.buf* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %3
  %14 = load %struct.buf*, %struct.buf** %4, align 8
  %15 = call i32 @BUF_CHECK_MAPPED(%struct.buf* %14)
  %16 = load %struct.buf*, %struct.buf** %4, align 8
  %17 = getelementptr inbounds %struct.buf, %struct.buf* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %18, %20
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @bzero(i64 %21, i32 %22)
  br label %77

24:                                               ; preds = %3
  %25 = load %struct.buf*, %struct.buf** %4, align 8
  %26 = call i32 @BUF_CHECK_UNMAPPED(%struct.buf* %25)
  %27 = load i32, i32* @PAGE_SIZE, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @PAGE_MASK, align 4
  %30 = and i32 %28, %29
  %31 = sub nsw i32 %27, %30
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @PAGE_SIZE, align 4
  %34 = sdiv i32 %32, %33
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %73, %24
  %36 = load i32, i32* %6, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.buf*, %struct.buf** %4, align 8
  %41 = getelementptr inbounds %struct.buf, %struct.buf* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %39, %42
  br label %44

44:                                               ; preds = %38, %35
  %45 = phi i1 [ false, %35 ], [ %43, %38 ]
  br i1 %45, label %46, label %76

46:                                               ; preds = %44
  %47 = load %struct.buf*, %struct.buf** %4, align 8
  %48 = getelementptr inbounds %struct.buf, %struct.buf* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %46
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %57, %46
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @PAGE_MASK, align 4
  %63 = and i32 %61, %62
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @pmap_zero_page_area(i32 %60, i32 %63, i32 %64)
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, %66
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %6, align 4
  %71 = sub nsw i32 %70, %69
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %72, i32* %9, align 4
  br label %73

73:                                               ; preds = %59
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %8, align 4
  br label %35

76:                                               ; preds = %44
  br label %77

77:                                               ; preds = %76, %13
  ret void
}

declare dso_local i64 @buf_mapped(%struct.buf*) #1

declare dso_local i32 @BUF_CHECK_MAPPED(%struct.buf*) #1

declare dso_local i32 @bzero(i64, i32) #1

declare dso_local i32 @BUF_CHECK_UNMAPPED(%struct.buf*) #1

declare dso_local i32 @pmap_zero_page_area(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
