; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/pseudofs/extr_pseudofs.c_pfs_create_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/pseudofs/extr_pseudofs.c_pfs_create_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfs_node = type { i32, i32, i32, i32, i32, i32 }

@pfstype_file = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pfs_node* @pfs_create_file(%struct.pfs_node* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.pfs_node*, align 8
  %9 = alloca %struct.pfs_node*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.pfs_node*, align 8
  store %struct.pfs_node* %0, %struct.pfs_node** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %17 = load %struct.pfs_node*, %struct.pfs_node** %9, align 8
  %18 = getelementptr inbounds %struct.pfs_node, %struct.pfs_node* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = load i8*, i8** %10, align 8
  %21 = load i32, i32* @pfstype_file, align 4
  %22 = load i32, i32* %15, align 4
  %23 = call %struct.pfs_node* @pfs_alloc_node_flags(i32 %19, i8* %20, i32 %21, i32 %22)
  store %struct.pfs_node* %23, %struct.pfs_node** %16, align 8
  %24 = load %struct.pfs_node*, %struct.pfs_node** %16, align 8
  %25 = icmp eq %struct.pfs_node* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %7
  store %struct.pfs_node* null, %struct.pfs_node** %8, align 8
  br label %47

27:                                               ; preds = %7
  %28 = load i32, i32* %11, align 4
  %29 = load %struct.pfs_node*, %struct.pfs_node** %16, align 8
  %30 = getelementptr inbounds %struct.pfs_node, %struct.pfs_node* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %12, align 4
  %32 = load %struct.pfs_node*, %struct.pfs_node** %16, align 8
  %33 = getelementptr inbounds %struct.pfs_node, %struct.pfs_node* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %13, align 4
  %35 = load %struct.pfs_node*, %struct.pfs_node** %16, align 8
  %36 = getelementptr inbounds %struct.pfs_node, %struct.pfs_node* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %14, align 4
  %38 = load %struct.pfs_node*, %struct.pfs_node** %16, align 8
  %39 = getelementptr inbounds %struct.pfs_node, %struct.pfs_node* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %15, align 4
  %41 = load %struct.pfs_node*, %struct.pfs_node** %16, align 8
  %42 = getelementptr inbounds %struct.pfs_node, %struct.pfs_node* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.pfs_node*, %struct.pfs_node** %9, align 8
  %44 = load %struct.pfs_node*, %struct.pfs_node** %16, align 8
  %45 = call i32 @pfs_add_node(%struct.pfs_node* %43, %struct.pfs_node* %44)
  %46 = load %struct.pfs_node*, %struct.pfs_node** %16, align 8
  store %struct.pfs_node* %46, %struct.pfs_node** %8, align 8
  br label %47

47:                                               ; preds = %27, %26
  %48 = load %struct.pfs_node*, %struct.pfs_node** %8, align 8
  ret %struct.pfs_node* %48
}

declare dso_local %struct.pfs_node* @pfs_alloc_node_flags(i32, i8*, i32, i32) #1

declare dso_local i32 @pfs_add_node(%struct.pfs_node*, %struct.pfs_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
