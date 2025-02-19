; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/pseudofs/extr_pseudofs.c_pfs_fixup_dir_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/pseudofs/extr_pseudofs.c_pfs_fixup_dir_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfs_node = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@pfstype_this = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@pfstype_parent = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pfs_node*, i32)* @pfs_fixup_dir_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfs_fixup_dir_flags(%struct.pfs_node* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pfs_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pfs_node*, align 8
  %7 = alloca %struct.pfs_node*, align 8
  store %struct.pfs_node* %0, %struct.pfs_node** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.pfs_node*, %struct.pfs_node** %4, align 8
  %9 = getelementptr inbounds %struct.pfs_node, %struct.pfs_node* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @pfstype_this, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.pfs_node* @pfs_alloc_node_flags(i32 %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12)
  store %struct.pfs_node* %13, %struct.pfs_node** %6, align 8
  %14 = load %struct.pfs_node*, %struct.pfs_node** %6, align 8
  %15 = icmp eq %struct.pfs_node* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  store i32 %17, i32* %3, align 4
  br label %38

18:                                               ; preds = %2
  %19 = load %struct.pfs_node*, %struct.pfs_node** %4, align 8
  %20 = getelementptr inbounds %struct.pfs_node, %struct.pfs_node* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @pfstype_parent, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call %struct.pfs_node* @pfs_alloc_node_flags(i32 %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %22, i32 %23)
  store %struct.pfs_node* %24, %struct.pfs_node** %7, align 8
  %25 = load %struct.pfs_node*, %struct.pfs_node** %7, align 8
  %26 = icmp eq %struct.pfs_node* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %18
  %28 = load %struct.pfs_node*, %struct.pfs_node** %6, align 8
  %29 = call i32 @pfs_destroy(%struct.pfs_node* %28)
  %30 = load i32, i32* @ENOMEM, align 4
  store i32 %30, i32* %3, align 4
  br label %38

31:                                               ; preds = %18
  %32 = load %struct.pfs_node*, %struct.pfs_node** %4, align 8
  %33 = load %struct.pfs_node*, %struct.pfs_node** %6, align 8
  %34 = call i32 @pfs_add_node(%struct.pfs_node* %32, %struct.pfs_node* %33)
  %35 = load %struct.pfs_node*, %struct.pfs_node** %4, align 8
  %36 = load %struct.pfs_node*, %struct.pfs_node** %7, align 8
  %37 = call i32 @pfs_add_node(%struct.pfs_node* %35, %struct.pfs_node* %36)
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %31, %27, %16
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.pfs_node* @pfs_alloc_node_flags(i32, i8*, i32, i32) #1

declare dso_local i32 @pfs_destroy(%struct.pfs_node*) #1

declare dso_local i32 @pfs_add_node(%struct.pfs_node*, %struct.pfs_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
