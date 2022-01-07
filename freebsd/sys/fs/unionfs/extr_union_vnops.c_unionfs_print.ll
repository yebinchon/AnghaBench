; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_vnops.c_unionfs_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_vnops.c_unionfs_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_print_args = type { i32 }
%struct.unionfs_node = type { i64, i64 }

@.str = private unnamed_addr constant [39 x i8] c"unionfs_vp=%p, uppervp=%p, lowervp=%p\0A\00", align 1
@NULLVP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"unionfs: upper \00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"unionfs: lower \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_print_args*)* @unionfs_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unionfs_print(%struct.vop_print_args* %0) #0 {
  %2 = alloca %struct.vop_print_args*, align 8
  %3 = alloca %struct.unionfs_node*, align 8
  store %struct.vop_print_args* %0, %struct.vop_print_args** %2, align 8
  %4 = load %struct.vop_print_args*, %struct.vop_print_args** %2, align 8
  %5 = getelementptr inbounds %struct.vop_print_args, %struct.vop_print_args* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.unionfs_node* @VTOUNIONFS(i32 %6)
  store %struct.unionfs_node* %7, %struct.unionfs_node** %3, align 8
  %8 = load %struct.vop_print_args*, %struct.vop_print_args** %2, align 8
  %9 = getelementptr inbounds %struct.vop_print_args, %struct.vop_print_args* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.unionfs_node*, %struct.unionfs_node** %3, align 8
  %12 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.unionfs_node*, %struct.unionfs_node** %3, align 8
  %15 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %10, i64 %13, i64 %16)
  %18 = load %struct.unionfs_node*, %struct.unionfs_node** %3, align 8
  %19 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @NULLVP, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load %struct.unionfs_node*, %struct.unionfs_node** %3, align 8
  %25 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @vn_printf(i64 %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %23, %1
  %29 = load %struct.unionfs_node*, %struct.unionfs_node** %3, align 8
  %30 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @NULLVP, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load %struct.unionfs_node*, %struct.unionfs_node** %3, align 8
  %36 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @vn_printf(i64 %37, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %39

39:                                               ; preds = %34, %28
  ret i32 0
}

declare dso_local %struct.unionfs_node* @VTOUNIONFS(i32) #1

declare dso_local i32 @printf(i8*, i32, i64, i64) #1

declare dso_local i32 @vn_printf(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
