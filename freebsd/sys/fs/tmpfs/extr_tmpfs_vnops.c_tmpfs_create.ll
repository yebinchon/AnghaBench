; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_vnops.c_tmpfs_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_vnops.c_tmpfs_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_create_args = type { %struct.vattr*, %struct.componentname*, %struct.vnode**, %struct.vnode* }
%struct.vattr = type { i64 }
%struct.componentname = type { i32 }
%struct.vnode = type { i32 }

@VREG = common dso_local global i64 0, align 8
@VSOCK = common dso_local global i64 0, align 8
@MAKEENTRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_create_args*)* @tmpfs_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmpfs_create(%struct.vop_create_args* %0) #0 {
  %2 = alloca %struct.vop_create_args*, align 8
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca %struct.vnode**, align 8
  %5 = alloca %struct.componentname*, align 8
  %6 = alloca %struct.vattr*, align 8
  %7 = alloca i32, align 4
  store %struct.vop_create_args* %0, %struct.vop_create_args** %2, align 8
  %8 = load %struct.vop_create_args*, %struct.vop_create_args** %2, align 8
  %9 = getelementptr inbounds %struct.vop_create_args, %struct.vop_create_args* %8, i32 0, i32 3
  %10 = load %struct.vnode*, %struct.vnode** %9, align 8
  store %struct.vnode* %10, %struct.vnode** %3, align 8
  %11 = load %struct.vop_create_args*, %struct.vop_create_args** %2, align 8
  %12 = getelementptr inbounds %struct.vop_create_args, %struct.vop_create_args* %11, i32 0, i32 2
  %13 = load %struct.vnode**, %struct.vnode*** %12, align 8
  store %struct.vnode** %13, %struct.vnode*** %4, align 8
  %14 = load %struct.vop_create_args*, %struct.vop_create_args** %2, align 8
  %15 = getelementptr inbounds %struct.vop_create_args, %struct.vop_create_args* %14, i32 0, i32 1
  %16 = load %struct.componentname*, %struct.componentname** %15, align 8
  store %struct.componentname* %16, %struct.componentname** %5, align 8
  %17 = load %struct.vop_create_args*, %struct.vop_create_args** %2, align 8
  %18 = getelementptr inbounds %struct.vop_create_args, %struct.vop_create_args* %17, i32 0, i32 0
  %19 = load %struct.vattr*, %struct.vattr** %18, align 8
  store %struct.vattr* %19, %struct.vattr** %6, align 8
  %20 = load %struct.vattr*, %struct.vattr** %6, align 8
  %21 = getelementptr inbounds %struct.vattr, %struct.vattr* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @VREG, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %1
  %26 = load %struct.vattr*, %struct.vattr** %6, align 8
  %27 = getelementptr inbounds %struct.vattr, %struct.vattr* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @VSOCK, align 8
  %30 = icmp eq i64 %28, %29
  br label %31

31:                                               ; preds = %25, %1
  %32 = phi i1 [ true, %1 ], [ %30, %25 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @MPASS(i32 %33)
  %35 = load %struct.vnode*, %struct.vnode** %3, align 8
  %36 = load %struct.vnode**, %struct.vnode*** %4, align 8
  %37 = load %struct.vattr*, %struct.vattr** %6, align 8
  %38 = load %struct.componentname*, %struct.componentname** %5, align 8
  %39 = call i32 @tmpfs_alloc_file(%struct.vnode* %35, %struct.vnode** %36, %struct.vattr* %37, %struct.componentname* %38, i32* null)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %31
  %43 = load %struct.componentname*, %struct.componentname** %5, align 8
  %44 = getelementptr inbounds %struct.componentname, %struct.componentname* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @MAKEENTRY, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %42
  %50 = load %struct.vnode*, %struct.vnode** %3, align 8
  %51 = call i64 @tmpfs_use_nc(%struct.vnode* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load %struct.vnode*, %struct.vnode** %3, align 8
  %55 = load %struct.vnode**, %struct.vnode*** %4, align 8
  %56 = load %struct.vnode*, %struct.vnode** %55, align 8
  %57 = load %struct.componentname*, %struct.componentname** %5, align 8
  %58 = call i32 @cache_enter(%struct.vnode* %54, %struct.vnode* %56, %struct.componentname* %57)
  br label %59

59:                                               ; preds = %53, %49, %42, %31
  %60 = load i32, i32* %7, align 4
  ret i32 %60
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @tmpfs_alloc_file(%struct.vnode*, %struct.vnode**, %struct.vattr*, %struct.componentname*, i32*) #1

declare dso_local i64 @tmpfs_use_nc(%struct.vnode*) #1

declare dso_local i32 @cache_enter(%struct.vnode*, %struct.vnode*, %struct.componentname*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
