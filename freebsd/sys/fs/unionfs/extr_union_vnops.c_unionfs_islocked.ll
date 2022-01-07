; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_vnops.c_unionfs_islocked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_vnops.c_unionfs_islocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_islocked_args = type { i32 }
%struct.unionfs_node = type { i64, i64 }

@NULLVP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_islocked_args*)* @unionfs_islocked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unionfs_islocked(%struct.vop_islocked_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_islocked_args*, align 8
  %4 = alloca %struct.unionfs_node*, align 8
  store %struct.vop_islocked_args* %0, %struct.vop_islocked_args** %3, align 8
  %5 = load %struct.vop_islocked_args*, %struct.vop_islocked_args** %3, align 8
  %6 = getelementptr inbounds %struct.vop_islocked_args, %struct.vop_islocked_args* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @KASSERT_UNIONFS_VNODE(i32 %7)
  %9 = load %struct.vop_islocked_args*, %struct.vop_islocked_args** %3, align 8
  %10 = getelementptr inbounds %struct.vop_islocked_args, %struct.vop_islocked_args* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.unionfs_node* @VTOUNIONFS(i32 %11)
  store %struct.unionfs_node* %12, %struct.unionfs_node** %4, align 8
  %13 = load %struct.unionfs_node*, %struct.unionfs_node** %4, align 8
  %14 = icmp eq %struct.unionfs_node* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.vop_islocked_args*, %struct.vop_islocked_args** %3, align 8
  %17 = call i32 @vop_stdislocked(%struct.vop_islocked_args* %16)
  store i32 %17, i32* %2, align 4
  br label %43

18:                                               ; preds = %1
  %19 = load %struct.unionfs_node*, %struct.unionfs_node** %4, align 8
  %20 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @NULLVP, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load %struct.unionfs_node*, %struct.unionfs_node** %4, align 8
  %26 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @VOP_ISLOCKED(i64 %27)
  store i32 %28, i32* %2, align 4
  br label %43

29:                                               ; preds = %18
  %30 = load %struct.unionfs_node*, %struct.unionfs_node** %4, align 8
  %31 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @NULLVP, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %29
  %36 = load %struct.unionfs_node*, %struct.unionfs_node** %4, align 8
  %37 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @VOP_ISLOCKED(i64 %38)
  store i32 %39, i32* %2, align 4
  br label %43

40:                                               ; preds = %29
  %41 = load %struct.vop_islocked_args*, %struct.vop_islocked_args** %3, align 8
  %42 = call i32 @vop_stdislocked(%struct.vop_islocked_args* %41)
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %40, %35, %24, %15
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @KASSERT_UNIONFS_VNODE(i32) #1

declare dso_local %struct.unionfs_node* @VTOUNIONFS(i32) #1

declare dso_local i32 @vop_stdislocked(%struct.vop_islocked_args*) #1

declare dso_local i32 @VOP_ISLOCKED(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
