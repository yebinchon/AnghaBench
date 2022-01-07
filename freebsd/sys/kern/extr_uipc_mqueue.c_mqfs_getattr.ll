; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mqueue.c_mqfs_getattr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mqueue.c_mqfs_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_getattr_args = type { %struct.vattr*, %struct.vnode* }
%struct.vattr = type { i32, i64, i64, i32, i64, i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.vnode = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.mqfs_node = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@NODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_getattr_args*)* @mqfs_getattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mqfs_getattr(%struct.vop_getattr_args* %0) #0 {
  %2 = alloca %struct.vop_getattr_args*, align 8
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca %struct.mqfs_node*, align 8
  %5 = alloca %struct.vattr*, align 8
  %6 = alloca i32, align 4
  store %struct.vop_getattr_args* %0, %struct.vop_getattr_args** %2, align 8
  %7 = load %struct.vop_getattr_args*, %struct.vop_getattr_args** %2, align 8
  %8 = getelementptr inbounds %struct.vop_getattr_args, %struct.vop_getattr_args* %7, i32 0, i32 1
  %9 = load %struct.vnode*, %struct.vnode** %8, align 8
  store %struct.vnode* %9, %struct.vnode** %3, align 8
  %10 = load %struct.vnode*, %struct.vnode** %3, align 8
  %11 = call %struct.mqfs_node* @VTON(%struct.vnode* %10)
  store %struct.mqfs_node* %11, %struct.mqfs_node** %4, align 8
  %12 = load %struct.vop_getattr_args*, %struct.vop_getattr_args** %2, align 8
  %13 = getelementptr inbounds %struct.vop_getattr_args, %struct.vop_getattr_args* %12, i32 0, i32 0
  %14 = load %struct.vattr*, %struct.vattr** %13, align 8
  store %struct.vattr* %14, %struct.vattr** %5, align 8
  store i32 0, i32* %6, align 4
  %15 = load %struct.vnode*, %struct.vnode** %3, align 8
  %16 = getelementptr inbounds %struct.vnode, %struct.vnode* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.vattr*, %struct.vattr** %5, align 8
  %19 = getelementptr inbounds %struct.vattr, %struct.vattr* %18, i32 0, i32 17
  store i32 %17, i32* %19, align 8
  %20 = load %struct.mqfs_node*, %struct.mqfs_node** %4, align 8
  %21 = getelementptr inbounds %struct.mqfs_node, %struct.mqfs_node* %20, i32 0, i32 7
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.vattr*, %struct.vattr** %5, align 8
  %24 = getelementptr inbounds %struct.vattr, %struct.vattr* %23, i32 0, i32 16
  store i32 %22, i32* %24, align 4
  %25 = load %struct.vattr*, %struct.vattr** %5, align 8
  %26 = getelementptr inbounds %struct.vattr, %struct.vattr* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load %struct.mqfs_node*, %struct.mqfs_node** %4, align 8
  %28 = getelementptr inbounds %struct.mqfs_node, %struct.mqfs_node* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.vattr*, %struct.vattr** %5, align 8
  %31 = getelementptr inbounds %struct.vattr, %struct.vattr* %30, i32 0, i32 15
  store i32 %29, i32* %31, align 8
  %32 = load %struct.mqfs_node*, %struct.mqfs_node** %4, align 8
  %33 = getelementptr inbounds %struct.mqfs_node, %struct.mqfs_node* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.vattr*, %struct.vattr** %5, align 8
  %36 = getelementptr inbounds %struct.vattr, %struct.vattr* %35, i32 0, i32 14
  store i32 %34, i32* %36, align 4
  %37 = load %struct.vnode*, %struct.vnode** %3, align 8
  %38 = getelementptr inbounds %struct.vnode, %struct.vnode* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.vattr*, %struct.vattr** %5, align 8
  %47 = getelementptr inbounds %struct.vattr, %struct.vattr* %46, i32 0, i32 13
  store i32 %45, i32* %47, align 8
  %48 = load %struct.mqfs_node*, %struct.mqfs_node** %4, align 8
  %49 = getelementptr inbounds %struct.mqfs_node, %struct.mqfs_node* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.vattr*, %struct.vattr** %5, align 8
  %52 = getelementptr inbounds %struct.vattr, %struct.vattr* %51, i32 0, i32 12
  store i32 %50, i32* %52, align 4
  %53 = load %struct.vattr*, %struct.vattr** %5, align 8
  %54 = getelementptr inbounds %struct.vattr, %struct.vattr* %53, i32 0, i32 10
  store i64 0, i64* %54, align 8
  %55 = load i32, i32* @PAGE_SIZE, align 4
  %56 = load %struct.vattr*, %struct.vattr** %5, align 8
  %57 = getelementptr inbounds %struct.vattr, %struct.vattr* %56, i32 0, i32 11
  store i32 %55, i32* %57, align 8
  %58 = load %struct.vattr*, %struct.vattr** %5, align 8
  %59 = getelementptr inbounds %struct.vattr, %struct.vattr* %58, i32 0, i32 10
  store i64 0, i64* %59, align 8
  %60 = load %struct.vattr*, %struct.vattr** %5, align 8
  %61 = getelementptr inbounds %struct.vattr, %struct.vattr* %60, i32 0, i32 2
  store i64 0, i64* %61, align 8
  %62 = load %struct.mqfs_node*, %struct.mqfs_node** %4, align 8
  %63 = getelementptr inbounds %struct.mqfs_node, %struct.mqfs_node* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.vattr*, %struct.vattr** %5, align 8
  %66 = getelementptr inbounds %struct.vattr, %struct.vattr* %65, i32 0, i32 9
  store i32 %64, i32* %66, align 4
  %67 = load %struct.mqfs_node*, %struct.mqfs_node** %4, align 8
  %68 = getelementptr inbounds %struct.mqfs_node, %struct.mqfs_node* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.vattr*, %struct.vattr** %5, align 8
  %71 = getelementptr inbounds %struct.vattr, %struct.vattr* %70, i32 0, i32 8
  store i32 %69, i32* %71, align 8
  %72 = load %struct.mqfs_node*, %struct.mqfs_node** %4, align 8
  %73 = getelementptr inbounds %struct.mqfs_node, %struct.mqfs_node* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.vattr*, %struct.vattr** %5, align 8
  %76 = getelementptr inbounds %struct.vattr, %struct.vattr* %75, i32 0, i32 7
  store i32 %74, i32* %76, align 4
  %77 = load %struct.mqfs_node*, %struct.mqfs_node** %4, align 8
  %78 = getelementptr inbounds %struct.mqfs_node, %struct.mqfs_node* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.vattr*, %struct.vattr** %5, align 8
  %81 = getelementptr inbounds %struct.vattr, %struct.vattr* %80, i32 0, i32 6
  store i32 %79, i32* %81, align 8
  %82 = load %struct.vattr*, %struct.vattr** %5, align 8
  %83 = getelementptr inbounds %struct.vattr, %struct.vattr* %82, i32 0, i32 5
  store i64 0, i64* %83, align 8
  %84 = load %struct.vattr*, %struct.vattr** %5, align 8
  %85 = getelementptr inbounds %struct.vattr, %struct.vattr* %84, i32 0, i32 4
  store i64 0, i64* %85, align 8
  %86 = load i32, i32* @NODEV, align 4
  %87 = load %struct.vattr*, %struct.vattr** %5, align 8
  %88 = getelementptr inbounds %struct.vattr, %struct.vattr* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 8
  %89 = load %struct.vattr*, %struct.vattr** %5, align 8
  %90 = getelementptr inbounds %struct.vattr, %struct.vattr* %89, i32 0, i32 2
  store i64 0, i64* %90, align 8
  %91 = load %struct.vattr*, %struct.vattr** %5, align 8
  %92 = getelementptr inbounds %struct.vattr, %struct.vattr* %91, i32 0, i32 1
  store i64 0, i64* %92, align 8
  %93 = load i32, i32* %6, align 4
  ret i32 %93
}

declare dso_local %struct.mqfs_node* @VTON(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
