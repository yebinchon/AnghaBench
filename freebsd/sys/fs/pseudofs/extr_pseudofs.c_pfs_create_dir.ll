; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/pseudofs/extr_pseudofs.c_pfs_create_dir.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/pseudofs/extr_pseudofs.c_pfs_create_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfs_node = type { i32, i32, i32, i32, i32 }

@PFS_PROCDEP = common dso_local global i32 0, align 4
@pfstype_procdir = common dso_local global i32 0, align 4
@pfstype_dir = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pfs_node* @pfs_create_dir(%struct.pfs_node* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.pfs_node*, align 8
  %8 = alloca %struct.pfs_node*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.pfs_node*, align 8
  %15 = alloca i32, align 4
  store %struct.pfs_node* %0, %struct.pfs_node** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load %struct.pfs_node*, %struct.pfs_node** %8, align 8
  %17 = getelementptr inbounds %struct.pfs_node, %struct.pfs_node* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = load i8*, i8** %9, align 8
  %20 = load i32, i32* %13, align 4
  %21 = load i32, i32* @PFS_PROCDEP, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %6
  %25 = load i32, i32* @pfstype_procdir, align 4
  br label %28

26:                                               ; preds = %6
  %27 = load i32, i32* @pfstype_dir, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  %30 = load i32, i32* %13, align 4
  %31 = call %struct.pfs_node* @pfs_alloc_node_flags(i32 %18, i8* %19, i32 %29, i32 %30)
  store %struct.pfs_node* %31, %struct.pfs_node** %14, align 8
  %32 = load %struct.pfs_node*, %struct.pfs_node** %14, align 8
  %33 = icmp eq %struct.pfs_node* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store %struct.pfs_node* null, %struct.pfs_node** %7, align 8
  br label %61

35:                                               ; preds = %28
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.pfs_node*, %struct.pfs_node** %14, align 8
  %38 = getelementptr inbounds %struct.pfs_node, %struct.pfs_node* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load %struct.pfs_node*, %struct.pfs_node** %14, align 8
  %41 = getelementptr inbounds %struct.pfs_node, %struct.pfs_node* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load %struct.pfs_node*, %struct.pfs_node** %14, align 8
  %44 = getelementptr inbounds %struct.pfs_node, %struct.pfs_node* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %13, align 4
  %46 = load %struct.pfs_node*, %struct.pfs_node** %14, align 8
  %47 = getelementptr inbounds %struct.pfs_node, %struct.pfs_node* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.pfs_node*, %struct.pfs_node** %8, align 8
  %49 = load %struct.pfs_node*, %struct.pfs_node** %14, align 8
  %50 = call i32 @pfs_add_node(%struct.pfs_node* %48, %struct.pfs_node* %49)
  %51 = load %struct.pfs_node*, %struct.pfs_node** %14, align 8
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @pfs_fixup_dir_flags(%struct.pfs_node* %51, i32 %52)
  store i32 %53, i32* %15, align 4
  %54 = load i32, i32* %15, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %35
  %57 = load %struct.pfs_node*, %struct.pfs_node** %14, align 8
  %58 = call i32 @pfs_destroy(%struct.pfs_node* %57)
  store %struct.pfs_node* null, %struct.pfs_node** %7, align 8
  br label %61

59:                                               ; preds = %35
  %60 = load %struct.pfs_node*, %struct.pfs_node** %14, align 8
  store %struct.pfs_node* %60, %struct.pfs_node** %7, align 8
  br label %61

61:                                               ; preds = %59, %56, %34
  %62 = load %struct.pfs_node*, %struct.pfs_node** %7, align 8
  ret %struct.pfs_node* %62
}

declare dso_local %struct.pfs_node* @pfs_alloc_node_flags(i32, i8*, i32, i32) #1

declare dso_local i32 @pfs_add_node(%struct.pfs_node*, %struct.pfs_node*) #1

declare dso_local i32 @pfs_fixup_dir_flags(%struct.pfs_node*, i32) #1

declare dso_local i32 @pfs_destroy(%struct.pfs_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
