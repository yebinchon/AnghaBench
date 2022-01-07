; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_vfs_clean_pages_dirty_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_vfs_clean_pages_dirty_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32, i32, i32, i32, i32* }

@B_VMIO = common dso_local global i32 0, align 4
@NOOFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"vfs_clean_pages_dirty_buf: no buffer offset\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buf*)* @vfs_clean_pages_dirty_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfs_clean_pages_dirty_buf(%struct.buf* %0) #0 {
  %2 = alloca %struct.buf*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.buf* %0, %struct.buf** %2, align 8
  %8 = load %struct.buf*, %struct.buf** %2, align 8
  %9 = getelementptr inbounds %struct.buf, %struct.buf* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @B_VMIO, align 4
  %12 = and i32 %10, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %1
  %15 = load %struct.buf*, %struct.buf** %2, align 8
  %16 = getelementptr inbounds %struct.buf, %struct.buf* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14, %1
  br label %86

20:                                               ; preds = %14
  %21 = load %struct.buf*, %struct.buf** %2, align 8
  %22 = getelementptr inbounds %struct.buf, %struct.buf* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %3, align 4
  %24 = load %struct.buf*, %struct.buf** %2, align 8
  %25 = getelementptr inbounds %struct.buf, %struct.buf* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @NOOFFSET, align 4
  %28 = icmp ne i32 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @KASSERT(i32 %29, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.buf*, %struct.buf** %2, align 8
  %32 = call i32 @vfs_busy_pages_acquire(%struct.buf* %31)
  %33 = load %struct.buf*, %struct.buf** %2, align 8
  %34 = call i32 @vfs_setdirty_range(%struct.buf* %33)
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %80, %20
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.buf*, %struct.buf** %2, align 8
  %38 = getelementptr inbounds %struct.buf, %struct.buf* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %83

41:                                               ; preds = %35
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @PAGE_SIZE, align 4
  %44 = add nsw i32 %42, %43
  %45 = load i64, i64* @PAGE_MASK, align 8
  %46 = trunc i64 %45 to i32
  %47 = xor i32 %46, -1
  %48 = and i32 %44, %47
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.buf*, %struct.buf** %2, align 8
  %52 = getelementptr inbounds %struct.buf, %struct.buf* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.buf*, %struct.buf** %2, align 8
  %55 = getelementptr inbounds %struct.buf, %struct.buf* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %53, %56
  %58 = icmp sgt i32 %50, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %41
  %60 = load %struct.buf*, %struct.buf** %2, align 8
  %61 = getelementptr inbounds %struct.buf, %struct.buf* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.buf*, %struct.buf** %2, align 8
  %64 = getelementptr inbounds %struct.buf, %struct.buf* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %62, %65
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %59, %41
  %68 = load %struct.buf*, %struct.buf** %2, align 8
  %69 = getelementptr inbounds %struct.buf, %struct.buf* %68, i32 0, i32 4
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %6, align 4
  %75 = load %struct.buf*, %struct.buf** %2, align 8
  %76 = load i32, i32* %3, align 4
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @vfs_page_set_validclean(%struct.buf* %75, i32 %76, i32 %77)
  %79 = load i32, i32* %4, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %67
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %7, align 4
  br label %35

83:                                               ; preds = %35
  %84 = load %struct.buf*, %struct.buf** %2, align 8
  %85 = call i32 @vfs_busy_pages_release(%struct.buf* %84)
  br label %86

86:                                               ; preds = %83, %19
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @vfs_busy_pages_acquire(%struct.buf*) #1

declare dso_local i32 @vfs_setdirty_range(%struct.buf*) #1

declare dso_local i32 @vfs_page_set_validclean(%struct.buf*, i32, i32) #1

declare dso_local i32 @vfs_busy_pages_release(%struct.buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
