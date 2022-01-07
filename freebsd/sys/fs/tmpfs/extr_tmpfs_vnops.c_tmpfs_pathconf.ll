; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_vnops.c_tmpfs_pathconf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_vnops.c_tmpfs_pathconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_pathconf_args = type { i32, i64*, %struct.vnode* }
%struct.vnode = type { i32 }

@TMPFS_LINK_MAX = common dso_local global i64 0, align 8
@NAME_MAX = common dso_local global i64 0, align 8
@VDIR = common dso_local global i32 0, align 4
@VFIFO = common dso_local global i32 0, align 4
@PIPE_BUF = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tmpfs_pathconf(%struct.vop_pathconf_args* %0) #0 {
  %2 = alloca %struct.vop_pathconf_args*, align 8
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  store %struct.vop_pathconf_args* %0, %struct.vop_pathconf_args** %2, align 8
  %7 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %2, align 8
  %8 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %7, i32 0, i32 2
  %9 = load %struct.vnode*, %struct.vnode** %8, align 8
  store %struct.vnode* %9, %struct.vnode** %3, align 8
  %10 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %2, align 8
  %11 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %4, align 4
  %13 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %2, align 8
  %14 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %13, i32 0, i32 1
  %15 = load i64*, i64** %14, align 8
  store i64* %15, i64** %5, align 8
  store i32 0, i32* %6, align 4
  %16 = load i32, i32* %4, align 4
  switch i32 %16, label %49 [
    i32 132, label %17
    i32 131, label %20
    i32 129, label %23
    i32 134, label %41
    i32 130, label %43
    i32 128, label %45
    i32 133, label %47
  ]

17:                                               ; preds = %1
  %18 = load i64, i64* @TMPFS_LINK_MAX, align 8
  %19 = load i64*, i64** %5, align 8
  store i64 %18, i64* %19, align 8
  br label %52

20:                                               ; preds = %1
  %21 = load i64, i64* @NAME_MAX, align 8
  %22 = load i64*, i64** %5, align 8
  store i64 %21, i64* %22, align 8
  br label %52

23:                                               ; preds = %1
  %24 = load %struct.vnode*, %struct.vnode** %3, align 8
  %25 = getelementptr inbounds %struct.vnode, %struct.vnode* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @VDIR, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %23
  %30 = load %struct.vnode*, %struct.vnode** %3, align 8
  %31 = getelementptr inbounds %struct.vnode, %struct.vnode* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @VFIFO, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29, %23
  %36 = load i64, i64* @PIPE_BUF, align 8
  %37 = load i64*, i64** %5, align 8
  store i64 %36, i64* %37, align 8
  br label %40

38:                                               ; preds = %29
  %39 = load i32, i32* @EINVAL, align 4
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %38, %35
  br label %52

41:                                               ; preds = %1
  %42 = load i64*, i64** %5, align 8
  store i64 1, i64* %42, align 8
  br label %52

43:                                               ; preds = %1
  %44 = load i64*, i64** %5, align 8
  store i64 1, i64* %44, align 8
  br label %52

45:                                               ; preds = %1
  %46 = load i64*, i64** %5, align 8
  store i64 1, i64* %46, align 8
  br label %52

47:                                               ; preds = %1
  %48 = load i64*, i64** %5, align 8
  store i64 64, i64* %48, align 8
  br label %52

49:                                               ; preds = %1
  %50 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %2, align 8
  %51 = call i32 @vop_stdpathconf(%struct.vop_pathconf_args* %50)
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %49, %47, %45, %43, %41, %40, %20, %17
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local i32 @vop_stdpathconf(%struct.vop_pathconf_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
