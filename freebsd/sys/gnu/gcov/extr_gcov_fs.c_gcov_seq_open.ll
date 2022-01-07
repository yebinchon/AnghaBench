; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gnu/gcov/extr_gcov_fs.c_gcov_seq_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gnu/gcov/extr_gcov_fs.c_gcov_seq_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.gcov_node* }
%struct.gcov_node = type { i32 }
%struct.file = type { %struct.seq_file* }
%struct.seq_file = type { %struct.gcov_iterator* }
%struct.gcov_iterator = type { i32 }
%struct.gcov_info = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@node_lock = common dso_local global i32 0, align 4
@gcov_seq_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @gcov_seq_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gcov_seq_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.gcov_node*, align 8
  %6 = alloca %struct.gcov_iterator*, align 8
  %7 = alloca %struct.seq_file*, align 8
  %8 = alloca %struct.gcov_info*, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 0
  %12 = load %struct.gcov_node*, %struct.gcov_node** %11, align 8
  store %struct.gcov_node* %12, %struct.gcov_node** %5, align 8
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %9, align 4
  %15 = call i32 @mtx_lock(i32* @node_lock)
  %16 = load %struct.gcov_node*, %struct.gcov_node** %5, align 8
  %17 = call %struct.gcov_info* @get_accumulated_info(%struct.gcov_node* %16)
  store %struct.gcov_info* %17, %struct.gcov_info** %8, align 8
  %18 = load %struct.gcov_info*, %struct.gcov_info** %8, align 8
  %19 = icmp eq %struct.gcov_info* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %40

21:                                               ; preds = %2
  %22 = load %struct.gcov_info*, %struct.gcov_info** %8, align 8
  %23 = call %struct.gcov_iterator* @gcov_iter_new(%struct.gcov_info* %22)
  store %struct.gcov_iterator* %23, %struct.gcov_iterator** %6, align 8
  %24 = load %struct.gcov_iterator*, %struct.gcov_iterator** %6, align 8
  %25 = icmp eq %struct.gcov_iterator* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %46

27:                                               ; preds = %21
  %28 = load %struct.file*, %struct.file** %4, align 8
  %29 = call i32 @seq_open(%struct.file* %28, i32* @gcov_seq_ops)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %43

33:                                               ; preds = %27
  %34 = load %struct.file*, %struct.file** %4, align 8
  %35 = getelementptr inbounds %struct.file, %struct.file* %34, i32 0, i32 0
  %36 = load %struct.seq_file*, %struct.seq_file** %35, align 8
  store %struct.seq_file* %36, %struct.seq_file** %7, align 8
  %37 = load %struct.gcov_iterator*, %struct.gcov_iterator** %6, align 8
  %38 = load %struct.seq_file*, %struct.seq_file** %7, align 8
  %39 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %38, i32 0, i32 0
  store %struct.gcov_iterator* %37, %struct.gcov_iterator** %39, align 8
  br label %40

40:                                               ; preds = %46, %33, %20
  %41 = call i32 @mtx_unlock(i32* @node_lock)
  %42 = load i32, i32* %9, align 4
  ret i32 %42

43:                                               ; preds = %32
  %44 = load %struct.gcov_iterator*, %struct.gcov_iterator** %6, align 8
  %45 = call i32 @gcov_iter_free(%struct.gcov_iterator* %44)
  br label %46

46:                                               ; preds = %43, %26
  %47 = load %struct.gcov_info*, %struct.gcov_info** %8, align 8
  %48 = call i32 @gcov_info_free(%struct.gcov_info* %47)
  br label %40
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.gcov_info* @get_accumulated_info(%struct.gcov_node*) #1

declare dso_local %struct.gcov_iterator* @gcov_iter_new(%struct.gcov_info*) #1

declare dso_local i32 @seq_open(%struct.file*, i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @gcov_iter_free(%struct.gcov_iterator*) #1

declare dso_local i32 @gcov_info_free(%struct.gcov_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
