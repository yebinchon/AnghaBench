; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_subr.c_tmpfs_dirtree_cmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_subr.c_tmpfs_dirtree_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmpfs_dirent = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tmpfs_dirent*, %struct.tmpfs_dirent*)* @tmpfs_dirtree_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmpfs_dirtree_cmp(%struct.tmpfs_dirent* %0, %struct.tmpfs_dirent* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tmpfs_dirent*, align 8
  %5 = alloca %struct.tmpfs_dirent*, align 8
  store %struct.tmpfs_dirent* %0, %struct.tmpfs_dirent** %4, align 8
  store %struct.tmpfs_dirent* %1, %struct.tmpfs_dirent** %5, align 8
  %6 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %4, align 8
  %7 = getelementptr inbounds %struct.tmpfs_dirent, %struct.tmpfs_dirent* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %5, align 8
  %10 = getelementptr inbounds %struct.tmpfs_dirent, %struct.tmpfs_dirent* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sgt i64 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %25

14:                                               ; preds = %2
  %15 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %4, align 8
  %16 = getelementptr inbounds %struct.tmpfs_dirent, %struct.tmpfs_dirent* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %5, align 8
  %19 = getelementptr inbounds %struct.tmpfs_dirent, %struct.tmpfs_dirent* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp slt i64 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  store i32 -1, i32* %3, align 4
  br label %25

23:                                               ; preds = %14
  br label %24

24:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %24, %22, %13
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
