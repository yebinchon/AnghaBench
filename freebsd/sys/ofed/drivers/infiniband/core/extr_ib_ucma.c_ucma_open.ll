; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_ucma.c_ucma_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_ucma.c_ucma_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.ucma_file* }
%struct.ucma_file = type { %struct.file*, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"ucma_close_id\00", align 1
@WQ_MEM_RECLAIM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @ucma_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucma_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.ucma_file*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.ucma_file* @kmalloc(i32 32, i32 %7)
  store %struct.ucma_file* %8, %struct.ucma_file** %6, align 8
  %9 = load %struct.ucma_file*, %struct.ucma_file** %6, align 8
  %10 = icmp ne %struct.ucma_file* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %50

14:                                               ; preds = %2
  %15 = load i32, i32* @WQ_MEM_RECLAIM, align 4
  %16 = call i32 @alloc_ordered_workqueue(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.ucma_file*, %struct.ucma_file** %6, align 8
  %18 = getelementptr inbounds %struct.ucma_file, %struct.ucma_file* %17, i32 0, i32 5
  store i32 %16, i32* %18, align 8
  %19 = load %struct.ucma_file*, %struct.ucma_file** %6, align 8
  %20 = getelementptr inbounds %struct.ucma_file, %struct.ucma_file* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %14
  %24 = load %struct.ucma_file*, %struct.ucma_file** %6, align 8
  %25 = call i32 @kfree(%struct.ucma_file* %24)
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %50

28:                                               ; preds = %14
  %29 = load %struct.ucma_file*, %struct.ucma_file** %6, align 8
  %30 = getelementptr inbounds %struct.ucma_file, %struct.ucma_file* %29, i32 0, i32 4
  %31 = call i32 @INIT_LIST_HEAD(i32* %30)
  %32 = load %struct.ucma_file*, %struct.ucma_file** %6, align 8
  %33 = getelementptr inbounds %struct.ucma_file, %struct.ucma_file* %32, i32 0, i32 3
  %34 = call i32 @INIT_LIST_HEAD(i32* %33)
  %35 = load %struct.ucma_file*, %struct.ucma_file** %6, align 8
  %36 = getelementptr inbounds %struct.ucma_file, %struct.ucma_file* %35, i32 0, i32 2
  %37 = call i32 @init_waitqueue_head(i32* %36)
  %38 = load %struct.ucma_file*, %struct.ucma_file** %6, align 8
  %39 = getelementptr inbounds %struct.ucma_file, %struct.ucma_file* %38, i32 0, i32 1
  %40 = call i32 @mutex_init(i32* %39)
  %41 = load %struct.ucma_file*, %struct.ucma_file** %6, align 8
  %42 = load %struct.file*, %struct.file** %5, align 8
  %43 = getelementptr inbounds %struct.file, %struct.file* %42, i32 0, i32 0
  store %struct.ucma_file* %41, %struct.ucma_file** %43, align 8
  %44 = load %struct.file*, %struct.file** %5, align 8
  %45 = load %struct.ucma_file*, %struct.ucma_file** %6, align 8
  %46 = getelementptr inbounds %struct.ucma_file, %struct.ucma_file* %45, i32 0, i32 0
  store %struct.file* %44, %struct.file** %46, align 8
  %47 = load %struct.inode*, %struct.inode** %4, align 8
  %48 = load %struct.file*, %struct.file** %5, align 8
  %49 = call i32 @nonseekable_open(%struct.inode* %47, %struct.file* %48)
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %28, %23, %11
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.ucma_file* @kmalloc(i32, i32) #1

declare dso_local i32 @alloc_ordered_workqueue(i8*, i32) #1

declare dso_local i32 @kfree(%struct.ucma_file*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @nonseekable_open(%struct.inode*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
