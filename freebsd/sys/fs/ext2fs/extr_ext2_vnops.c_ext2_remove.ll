; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_vnops.c_ext2_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_vnops.c_ext2_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_remove_args = type { i32, %struct.vnode*, %struct.vnode* }
%struct.vnode = type { i32 }
%struct.inode = type { i32, i32, i32 }

@NOUNLINK = common dso_local global i32 0, align 4
@IMMUTABLE = common dso_local global i32 0, align 4
@APPEND = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@IN_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_remove_args*)* @ext2_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2_remove(%struct.vop_remove_args* %0) #0 {
  %2 = alloca %struct.vop_remove_args*, align 8
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca i32, align 4
  store %struct.vop_remove_args* %0, %struct.vop_remove_args** %2, align 8
  %7 = load %struct.vop_remove_args*, %struct.vop_remove_args** %2, align 8
  %8 = getelementptr inbounds %struct.vop_remove_args, %struct.vop_remove_args* %7, i32 0, i32 2
  %9 = load %struct.vnode*, %struct.vnode** %8, align 8
  store %struct.vnode* %9, %struct.vnode** %4, align 8
  %10 = load %struct.vop_remove_args*, %struct.vop_remove_args** %2, align 8
  %11 = getelementptr inbounds %struct.vop_remove_args, %struct.vop_remove_args* %10, i32 0, i32 1
  %12 = load %struct.vnode*, %struct.vnode** %11, align 8
  store %struct.vnode* %12, %struct.vnode** %5, align 8
  %13 = load %struct.vnode*, %struct.vnode** %4, align 8
  %14 = call %struct.inode* @VTOI(%struct.vnode* %13)
  store %struct.inode* %14, %struct.inode** %3, align 8
  %15 = load %struct.inode*, %struct.inode** %3, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @NOUNLINK, align 4
  %19 = load i32, i32* @IMMUTABLE, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @APPEND, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %17, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %1
  %26 = load %struct.vnode*, %struct.vnode** %5, align 8
  %27 = call %struct.inode* @VTOI(%struct.vnode* %26)
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @APPEND, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %25, %1
  %34 = load i32, i32* @EPERM, align 4
  store i32 %34, i32* %6, align 4
  br label %54

35:                                               ; preds = %25
  %36 = load %struct.vnode*, %struct.vnode** %5, align 8
  %37 = load %struct.vop_remove_args*, %struct.vop_remove_args** %2, align 8
  %38 = getelementptr inbounds %struct.vop_remove_args, %struct.vop_remove_args* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @ext2_dirremove(%struct.vnode* %36, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %35
  %44 = load %struct.inode*, %struct.inode** %3, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %45, align 4
  %48 = load i32, i32* @IN_CHANGE, align 4
  %49 = load %struct.inode*, %struct.inode** %3, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %43, %35
  br label %54

54:                                               ; preds = %53, %33
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

declare dso_local %struct.inode* @VTOI(%struct.vnode*) #1

declare dso_local i32 @ext2_dirremove(%struct.vnode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
