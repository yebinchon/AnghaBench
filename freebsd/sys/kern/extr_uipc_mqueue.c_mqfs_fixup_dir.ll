; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mqueue.c_mqfs_fixup_dir.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mqueue.c_mqfs_fixup_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mqfs_node = type { i8*, i32, i32 }

@mqfstype_this = common dso_local global i32 0, align 4
@mqfstype_parent = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mqfs_node*)* @mqfs_fixup_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mqfs_fixup_dir(%struct.mqfs_node* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mqfs_node*, align 8
  %4 = alloca %struct.mqfs_node*, align 8
  store %struct.mqfs_node* %0, %struct.mqfs_node** %3, align 8
  %5 = call %struct.mqfs_node* (...) @mqnode_alloc()
  store %struct.mqfs_node* %5, %struct.mqfs_node** %4, align 8
  %6 = load %struct.mqfs_node*, %struct.mqfs_node** %4, align 8
  %7 = getelementptr inbounds %struct.mqfs_node, %struct.mqfs_node* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  store i8 46, i8* %9, align 1
  %10 = load i32, i32* @mqfstype_this, align 4
  %11 = load %struct.mqfs_node*, %struct.mqfs_node** %4, align 8
  %12 = getelementptr inbounds %struct.mqfs_node, %struct.mqfs_node* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 4
  %13 = load %struct.mqfs_node*, %struct.mqfs_node** %4, align 8
  %14 = getelementptr inbounds %struct.mqfs_node, %struct.mqfs_node* %13, i32 0, i32 1
  store i32 1, i32* %14, align 8
  %15 = load %struct.mqfs_node*, %struct.mqfs_node** %3, align 8
  %16 = load %struct.mqfs_node*, %struct.mqfs_node** %4, align 8
  %17 = call i64 @mqfs_add_node(%struct.mqfs_node* %15, %struct.mqfs_node* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.mqfs_node*, %struct.mqfs_node** %4, align 8
  %21 = call i32 @mqnode_free(%struct.mqfs_node* %20)
  store i32 -1, i32* %2, align 4
  br label %45

22:                                               ; preds = %1
  %23 = call %struct.mqfs_node* (...) @mqnode_alloc()
  store %struct.mqfs_node* %23, %struct.mqfs_node** %4, align 8
  %24 = load %struct.mqfs_node*, %struct.mqfs_node** %4, align 8
  %25 = getelementptr inbounds %struct.mqfs_node, %struct.mqfs_node* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  store i8 46, i8* %27, align 1
  %28 = load %struct.mqfs_node*, %struct.mqfs_node** %4, align 8
  %29 = getelementptr inbounds %struct.mqfs_node, %struct.mqfs_node* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  store i8 46, i8* %31, align 1
  %32 = load i32, i32* @mqfstype_parent, align 4
  %33 = load %struct.mqfs_node*, %struct.mqfs_node** %4, align 8
  %34 = getelementptr inbounds %struct.mqfs_node, %struct.mqfs_node* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load %struct.mqfs_node*, %struct.mqfs_node** %4, align 8
  %36 = getelementptr inbounds %struct.mqfs_node, %struct.mqfs_node* %35, i32 0, i32 1
  store i32 1, i32* %36, align 8
  %37 = load %struct.mqfs_node*, %struct.mqfs_node** %3, align 8
  %38 = load %struct.mqfs_node*, %struct.mqfs_node** %4, align 8
  %39 = call i64 @mqfs_add_node(%struct.mqfs_node* %37, %struct.mqfs_node* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %22
  %42 = load %struct.mqfs_node*, %struct.mqfs_node** %4, align 8
  %43 = call i32 @mqnode_free(%struct.mqfs_node* %42)
  store i32 -1, i32* %2, align 4
  br label %45

44:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %41, %19
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.mqfs_node* @mqnode_alloc(...) #1

declare dso_local i64 @mqfs_add_node(%struct.mqfs_node*, %struct.mqfs_node*) #1

declare dso_local i32 @mqnode_free(%struct.mqfs_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
