; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c_vn_fsid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c_vn_fsid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64* }
%struct.vattr = type { i32 }

@NBBY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vn_fsid(%struct.vnode* %0, %struct.vattr* %1) #0 {
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca %struct.vattr*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  store %struct.vnode* %0, %struct.vnode** %3, align 8
  store %struct.vattr* %1, %struct.vattr** %4, align 8
  %6 = load %struct.vnode*, %struct.vnode** %3, align 8
  %7 = getelementptr inbounds %struct.vnode, %struct.vnode* %6, i32 0, i32 0
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %5, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 1
  %15 = load i64, i64* %14, align 8
  %16 = trunc i64 %15 to i32
  %17 = load %struct.vattr*, %struct.vattr** %4, align 8
  %18 = getelementptr inbounds %struct.vattr, %struct.vattr* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @NBBY, align 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 8, %20
  %22 = load %struct.vattr*, %struct.vattr** %4, align 8
  %23 = getelementptr inbounds %struct.vattr, %struct.vattr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = trunc i64 %21 to i32
  %26 = shl i32 %24, %25
  store i32 %26, i32* %23, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 0
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = load %struct.vattr*, %struct.vattr** %4, align 8
  %34 = getelementptr inbounds %struct.vattr, %struct.vattr* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, %32
  store i32 %36, i32* %34, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
