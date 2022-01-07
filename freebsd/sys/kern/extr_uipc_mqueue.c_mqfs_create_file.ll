; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mqueue.c_mqfs_create_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mqueue.c_mqfs_create_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mqfs_node = type { i32 }
%struct.ucred = type { i32 }

@mqfstype_file = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mqfs_node* (%struct.mqfs_node*, i8*, i32, %struct.ucred*, i32)* @mqfs_create_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mqfs_node* @mqfs_create_file(%struct.mqfs_node* %0, i8* %1, i32 %2, %struct.ucred* %3, i32 %4) #0 {
  %6 = alloca %struct.mqfs_node*, align 8
  %7 = alloca %struct.mqfs_node*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ucred*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.mqfs_node*, align 8
  store %struct.mqfs_node* %0, %struct.mqfs_node** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.ucred* %3, %struct.ucred** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i8*, i8** %8, align 8
  %14 = load i32, i32* %9, align 4
  %15 = load %struct.ucred*, %struct.ucred** %10, align 8
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* @mqfstype_file, align 4
  %18 = call %struct.mqfs_node* @mqfs_create_node(i8* %13, i32 %14, %struct.ucred* %15, i32 %16, i32 %17)
  store %struct.mqfs_node* %18, %struct.mqfs_node** %12, align 8
  %19 = load %struct.mqfs_node*, %struct.mqfs_node** %7, align 8
  %20 = load %struct.mqfs_node*, %struct.mqfs_node** %12, align 8
  %21 = call i64 @mqfs_add_node(%struct.mqfs_node* %19, %struct.mqfs_node* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %5
  %24 = load %struct.mqfs_node*, %struct.mqfs_node** %12, align 8
  %25 = call i32 @mqnode_free(%struct.mqfs_node* %24)
  store %struct.mqfs_node* null, %struct.mqfs_node** %6, align 8
  br label %28

26:                                               ; preds = %5
  %27 = load %struct.mqfs_node*, %struct.mqfs_node** %12, align 8
  store %struct.mqfs_node* %27, %struct.mqfs_node** %6, align 8
  br label %28

28:                                               ; preds = %26, %23
  %29 = load %struct.mqfs_node*, %struct.mqfs_node** %6, align 8
  ret %struct.mqfs_node* %29
}

declare dso_local %struct.mqfs_node* @mqfs_create_node(i8*, i32, %struct.ucred*, i32, i32) #1

declare dso_local i64 @mqfs_add_node(%struct.mqfs_node*, %struct.mqfs_node*) #1

declare dso_local i32 @mqnode_free(%struct.mqfs_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
