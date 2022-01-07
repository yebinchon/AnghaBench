; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_vnops.c_tmpfs_whiteout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_vnops.c_tmpfs_whiteout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_whiteout_args = type { i32, %struct.componentname*, %struct.vnode* }
%struct.componentname = type { i32 }
%struct.vnode = type { i32 }
%struct.tmpfs_dirent = type { i32* }

@EEXIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"tmpfs_whiteout: unknown op\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_whiteout_args*)* @tmpfs_whiteout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmpfs_whiteout(%struct.vop_whiteout_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_whiteout_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.componentname*, align 8
  %6 = alloca %struct.tmpfs_dirent*, align 8
  store %struct.vop_whiteout_args* %0, %struct.vop_whiteout_args** %3, align 8
  %7 = load %struct.vop_whiteout_args*, %struct.vop_whiteout_args** %3, align 8
  %8 = getelementptr inbounds %struct.vop_whiteout_args, %struct.vop_whiteout_args* %7, i32 0, i32 2
  %9 = load %struct.vnode*, %struct.vnode** %8, align 8
  store %struct.vnode* %9, %struct.vnode** %4, align 8
  %10 = load %struct.vop_whiteout_args*, %struct.vop_whiteout_args** %3, align 8
  %11 = getelementptr inbounds %struct.vop_whiteout_args, %struct.vop_whiteout_args* %10, i32 0, i32 1
  %12 = load %struct.componentname*, %struct.componentname** %11, align 8
  store %struct.componentname* %12, %struct.componentname** %5, align 8
  %13 = load %struct.vop_whiteout_args*, %struct.vop_whiteout_args** %3, align 8
  %14 = getelementptr inbounds %struct.vop_whiteout_args, %struct.vop_whiteout_args* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %42 [
    i32 128, label %16
    i32 130, label %17
    i32 129, label %38
  ]

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %44

17:                                               ; preds = %1
  %18 = load %struct.vnode*, %struct.vnode** %4, align 8
  %19 = call i32 @VP_TO_TMPFS_DIR(%struct.vnode* %18)
  %20 = load %struct.componentname*, %struct.componentname** %5, align 8
  %21 = call %struct.tmpfs_dirent* @tmpfs_dir_lookup(i32 %19, i32* null, %struct.componentname* %20)
  store %struct.tmpfs_dirent* %21, %struct.tmpfs_dirent** %6, align 8
  %22 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %6, align 8
  %23 = icmp ne %struct.tmpfs_dirent* %22, null
  br i1 %23, label %24, label %34

24:                                               ; preds = %17
  %25 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %6, align 8
  %26 = getelementptr inbounds %struct.tmpfs_dirent, %struct.tmpfs_dirent* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @EEXIST, align 4
  br label %32

32:                                               ; preds = %30, %29
  %33 = phi i32 [ 0, %29 ], [ %31, %30 ]
  store i32 %33, i32* %2, align 4
  br label %44

34:                                               ; preds = %17
  %35 = load %struct.vnode*, %struct.vnode** %4, align 8
  %36 = load %struct.componentname*, %struct.componentname** %5, align 8
  %37 = call i32 @tmpfs_dir_whiteout_add(%struct.vnode* %35, %struct.componentname* %36)
  store i32 %37, i32* %2, align 4
  br label %44

38:                                               ; preds = %1
  %39 = load %struct.vnode*, %struct.vnode** %4, align 8
  %40 = load %struct.componentname*, %struct.componentname** %5, align 8
  %41 = call i32 @tmpfs_dir_whiteout_remove(%struct.vnode* %39, %struct.componentname* %40)
  store i32 0, i32* %2, align 4
  br label %44

42:                                               ; preds = %1
  %43 = call i32 @panic(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %16, %32, %34, %38, %42
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local %struct.tmpfs_dirent* @tmpfs_dir_lookup(i32, i32*, %struct.componentname*) #1

declare dso_local i32 @VP_TO_TMPFS_DIR(%struct.vnode*) #1

declare dso_local i32 @tmpfs_dir_whiteout_add(%struct.vnode*, %struct.componentname*) #1

declare dso_local i32 @tmpfs_dir_whiteout_remove(%struct.vnode*, %struct.componentname*) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
