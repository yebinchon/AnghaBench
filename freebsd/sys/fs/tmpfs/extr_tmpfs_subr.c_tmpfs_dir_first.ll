; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_subr.c_tmpfs_dir_first.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_subr.c_tmpfs_dir_first.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmpfs_dirent = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.tmpfs_node = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.tmpfs_dir_cursor = type { %struct.tmpfs_dirent*, %struct.tmpfs_dirent* }

@tmpfs_dir = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tmpfs_dirent* @tmpfs_dir_first(%struct.tmpfs_node* %0, %struct.tmpfs_dir_cursor* %1) #0 {
  %3 = alloca %struct.tmpfs_node*, align 8
  %4 = alloca %struct.tmpfs_dir_cursor*, align 8
  %5 = alloca %struct.tmpfs_dirent*, align 8
  store %struct.tmpfs_node* %0, %struct.tmpfs_node** %3, align 8
  store %struct.tmpfs_dir_cursor* %1, %struct.tmpfs_dir_cursor** %4, align 8
  %6 = load i32, i32* @tmpfs_dir, align 4
  %7 = load %struct.tmpfs_node*, %struct.tmpfs_node** %3, align 8
  %8 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = call %struct.tmpfs_dirent* @RB_MIN(i32 %6, i32* %9)
  store %struct.tmpfs_dirent* %10, %struct.tmpfs_dirent** %5, align 8
  %11 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %5, align 8
  %12 = load %struct.tmpfs_dir_cursor*, %struct.tmpfs_dir_cursor** %4, align 8
  %13 = getelementptr inbounds %struct.tmpfs_dir_cursor, %struct.tmpfs_dir_cursor* %12, i32 0, i32 1
  store %struct.tmpfs_dirent* %11, %struct.tmpfs_dirent** %13, align 8
  %14 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %5, align 8
  %15 = icmp ne %struct.tmpfs_dirent* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %2
  %17 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %5, align 8
  %18 = call i64 @tmpfs_dirent_duphead(%struct.tmpfs_dirent* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %5, align 8
  %22 = getelementptr inbounds %struct.tmpfs_dirent, %struct.tmpfs_dirent* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = call %struct.tmpfs_dirent* @LIST_FIRST(i32* %23)
  store %struct.tmpfs_dirent* %24, %struct.tmpfs_dirent** %5, align 8
  br label %25

25:                                               ; preds = %20, %16, %2
  %26 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %5, align 8
  %27 = load %struct.tmpfs_dir_cursor*, %struct.tmpfs_dir_cursor** %4, align 8
  %28 = getelementptr inbounds %struct.tmpfs_dir_cursor, %struct.tmpfs_dir_cursor* %27, i32 0, i32 0
  store %struct.tmpfs_dirent* %26, %struct.tmpfs_dirent** %28, align 8
  %29 = load %struct.tmpfs_dir_cursor*, %struct.tmpfs_dir_cursor** %4, align 8
  %30 = getelementptr inbounds %struct.tmpfs_dir_cursor, %struct.tmpfs_dir_cursor* %29, i32 0, i32 0
  %31 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %30, align 8
  ret %struct.tmpfs_dirent* %31
}

declare dso_local %struct.tmpfs_dirent* @RB_MIN(i32, i32*) #1

declare dso_local i64 @tmpfs_dirent_duphead(%struct.tmpfs_dirent*) #1

declare dso_local %struct.tmpfs_dirent* @LIST_FIRST(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
