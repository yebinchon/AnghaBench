; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_vnops.c_tmpfs_vptocnp_dir.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_vnops.c_tmpfs_vptocnp_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmpfs_node = type { i32 }
%struct.tmpfs_dirent = type { %struct.tmpfs_node* }
%struct.tmpfs_dir_cursor = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tmpfs_node*, %struct.tmpfs_node*, %struct.tmpfs_dirent**)* @tmpfs_vptocnp_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmpfs_vptocnp_dir(%struct.tmpfs_node* %0, %struct.tmpfs_node* %1, %struct.tmpfs_dirent** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tmpfs_node*, align 8
  %6 = alloca %struct.tmpfs_node*, align 8
  %7 = alloca %struct.tmpfs_dirent**, align 8
  %8 = alloca %struct.tmpfs_dir_cursor, align 4
  %9 = alloca %struct.tmpfs_dirent*, align 8
  store %struct.tmpfs_node* %0, %struct.tmpfs_node** %5, align 8
  store %struct.tmpfs_node* %1, %struct.tmpfs_node** %6, align 8
  store %struct.tmpfs_dirent** %2, %struct.tmpfs_dirent*** %7, align 8
  %10 = load %struct.tmpfs_node*, %struct.tmpfs_node** %6, align 8
  %11 = call %struct.tmpfs_dirent* @tmpfs_dir_first(%struct.tmpfs_node* %10, %struct.tmpfs_dir_cursor* %8)
  store %struct.tmpfs_dirent* %11, %struct.tmpfs_dirent** %9, align 8
  br label %12

12:                                               ; preds = %25, %3
  %13 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %9, align 8
  %14 = icmp ne %struct.tmpfs_dirent* %13, null
  br i1 %14, label %15, label %28

15:                                               ; preds = %12
  %16 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %9, align 8
  %17 = getelementptr inbounds %struct.tmpfs_dirent, %struct.tmpfs_dirent* %16, i32 0, i32 0
  %18 = load %struct.tmpfs_node*, %struct.tmpfs_node** %17, align 8
  %19 = load %struct.tmpfs_node*, %struct.tmpfs_node** %5, align 8
  %20 = icmp eq %struct.tmpfs_node* %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %9, align 8
  %23 = load %struct.tmpfs_dirent**, %struct.tmpfs_dirent*** %7, align 8
  store %struct.tmpfs_dirent* %22, %struct.tmpfs_dirent** %23, align 8
  store i32 0, i32* %4, align 4
  br label %30

24:                                               ; preds = %15
  br label %25

25:                                               ; preds = %24
  %26 = load %struct.tmpfs_node*, %struct.tmpfs_node** %6, align 8
  %27 = call %struct.tmpfs_dirent* @tmpfs_dir_next(%struct.tmpfs_node* %26, %struct.tmpfs_dir_cursor* %8)
  store %struct.tmpfs_dirent* %27, %struct.tmpfs_dirent** %9, align 8
  br label %12

28:                                               ; preds = %12
  %29 = load i32, i32* @ENOENT, align 4
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %28, %21
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local %struct.tmpfs_dirent* @tmpfs_dir_first(%struct.tmpfs_node*, %struct.tmpfs_dir_cursor*) #1

declare dso_local %struct.tmpfs_dirent* @tmpfs_dir_next(%struct.tmpfs_node*, %struct.tmpfs_dir_cursor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
