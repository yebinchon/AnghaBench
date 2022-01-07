; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_subr.c_unionfs_get_hashhead.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_subr.c_unionfs_get_hashhead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unionfs_node_hashhead = type { i32 }
%struct.vnode = type { i32 }
%struct.unionfs_node = type { i8, %struct.unionfs_node_hashhead* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.unionfs_node_hashhead* (%struct.vnode*, i8*)* @unionfs_get_hashhead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.unionfs_node_hashhead* @unionfs_get_hashhead(%struct.vnode* %0, i8* %1) #0 {
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca %struct.unionfs_node*, align 8
  store %struct.vnode* %0, %struct.vnode** %3, align 8
  store i8* %1, i8** %4, align 8
  store i8 0, i8* %6, align 1
  %8 = load %struct.vnode*, %struct.vnode** %3, align 8
  %9 = call %struct.unionfs_node* @VTOUNIONFS(%struct.vnode* %8)
  store %struct.unionfs_node* %9, %struct.unionfs_node** %7, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %35

12:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %31, %12
  %14 = load i8*, i8** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = icmp ne i8 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %13
  %21 = load i8*, i8** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = load i8, i8* %6, align 1
  %28 = sext i8 %27 to i32
  %29 = add nsw i32 %28, %26
  %30 = trunc i32 %29 to i8
  store i8 %30, i8* %6, align 1
  br label %31

31:                                               ; preds = %20
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %13

34:                                               ; preds = %13
  br label %35

35:                                               ; preds = %34, %2
  %36 = load %struct.unionfs_node*, %struct.unionfs_node** %7, align 8
  %37 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %36, i32 0, i32 1
  %38 = load %struct.unionfs_node_hashhead*, %struct.unionfs_node_hashhead** %37, align 8
  %39 = load i8, i8* %6, align 1
  %40 = sext i8 %39 to i32
  %41 = load %struct.unionfs_node*, %struct.unionfs_node** %7, align 8
  %42 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %41, i32 0, i32 0
  %43 = load i8, i8* %42, align 8
  %44 = sext i8 %43 to i32
  %45 = and i32 %40, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.unionfs_node_hashhead, %struct.unionfs_node_hashhead* %38, i64 %46
  ret %struct.unionfs_node_hashhead* %47
}

declare dso_local %struct.unionfs_node* @VTOUNIONFS(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
