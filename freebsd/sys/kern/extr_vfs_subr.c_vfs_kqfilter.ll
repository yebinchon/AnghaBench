; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_vfs_kqfilter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_vfs_kqfilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_kqfilter_args = type { %struct.knote*, %struct.vnode* }
%struct.knote = type { i32, i64, i32* }
%struct.vnode = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.knlist }
%struct.knlist = type { i32 }

@vfsread_filtops = common dso_local global i32 0, align 4
@vfswrite_filtops = common dso_local global i32 0, align 4
@vfsvnode_filtops = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfs_kqfilter(%struct.vop_kqfilter_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_kqfilter_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.knote*, align 8
  %6 = alloca %struct.knlist*, align 8
  store %struct.vop_kqfilter_args* %0, %struct.vop_kqfilter_args** %3, align 8
  %7 = load %struct.vop_kqfilter_args*, %struct.vop_kqfilter_args** %3, align 8
  %8 = getelementptr inbounds %struct.vop_kqfilter_args, %struct.vop_kqfilter_args* %7, i32 0, i32 1
  %9 = load %struct.vnode*, %struct.vnode** %8, align 8
  store %struct.vnode* %9, %struct.vnode** %4, align 8
  %10 = load %struct.vop_kqfilter_args*, %struct.vop_kqfilter_args** %3, align 8
  %11 = getelementptr inbounds %struct.vop_kqfilter_args, %struct.vop_kqfilter_args* %10, i32 0, i32 0
  %12 = load %struct.knote*, %struct.knote** %11, align 8
  store %struct.knote* %12, %struct.knote** %5, align 8
  %13 = load %struct.knote*, %struct.knote** %5, align 8
  %14 = getelementptr inbounds %struct.knote, %struct.knote* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %25 [
    i32 130, label %16
    i32 128, label %19
    i32 129, label %22
  ]

16:                                               ; preds = %1
  %17 = load %struct.knote*, %struct.knote** %5, align 8
  %18 = getelementptr inbounds %struct.knote, %struct.knote* %17, i32 0, i32 2
  store i32* @vfsread_filtops, i32** %18, align 8
  br label %27

19:                                               ; preds = %1
  %20 = load %struct.knote*, %struct.knote** %5, align 8
  %21 = getelementptr inbounds %struct.knote, %struct.knote* %20, i32 0, i32 2
  store i32* @vfswrite_filtops, i32** %21, align 8
  br label %27

22:                                               ; preds = %1
  %23 = load %struct.knote*, %struct.knote** %5, align 8
  %24 = getelementptr inbounds %struct.knote, %struct.knote* %23, i32 0, i32 2
  store i32* @vfsvnode_filtops, i32** %24, align 8
  br label %27

25:                                               ; preds = %1
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %2, align 4
  br label %51

27:                                               ; preds = %22, %19, %16
  %28 = load %struct.vnode*, %struct.vnode** %4, align 8
  %29 = ptrtoint %struct.vnode* %28 to i64
  %30 = load %struct.knote*, %struct.knote** %5, align 8
  %31 = getelementptr inbounds %struct.knote, %struct.knote* %30, i32 0, i32 1
  store i64 %29, i64* %31, align 8
  %32 = load %struct.vnode*, %struct.vnode** %4, align 8
  %33 = call i32 @v_addpollinfo(%struct.vnode* %32)
  %34 = load %struct.vnode*, %struct.vnode** %4, align 8
  %35 = getelementptr inbounds %struct.vnode, %struct.vnode* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = icmp eq %struct.TYPE_4__* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %27
  %39 = load i32, i32* @ENOMEM, align 4
  store i32 %39, i32* %2, align 4
  br label %51

40:                                               ; preds = %27
  %41 = load %struct.vnode*, %struct.vnode** %4, align 8
  %42 = getelementptr inbounds %struct.vnode, %struct.vnode* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store %struct.knlist* %45, %struct.knlist** %6, align 8
  %46 = load %struct.vnode*, %struct.vnode** %4, align 8
  %47 = call i32 @vhold(%struct.vnode* %46)
  %48 = load %struct.knlist*, %struct.knlist** %6, align 8
  %49 = load %struct.knote*, %struct.knote** %5, align 8
  %50 = call i32 @knlist_add(%struct.knlist* %48, %struct.knote* %49, i32 0)
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %40, %38, %25
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @v_addpollinfo(%struct.vnode*) #1

declare dso_local i32 @vhold(%struct.vnode*) #1

declare dso_local i32 @knlist_add(%struct.knlist*, %struct.knote*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
