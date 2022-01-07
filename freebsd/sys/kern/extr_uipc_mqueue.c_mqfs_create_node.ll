; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mqueue.c_mqfs_create_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mqueue.c_mqfs_create_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mqfs_node = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ucred = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mqfs_node* (i8*, i32, %struct.ucred*, i32, i32)* @mqfs_create_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mqfs_node* @mqfs_create_node(i8* %0, i32 %1, %struct.ucred* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ucred*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mqfs_node*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.ucred* %2, %struct.ucred** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = call %struct.mqfs_node* (...) @mqnode_alloc()
  store %struct.mqfs_node* %12, %struct.mqfs_node** %11, align 8
  %13 = load %struct.mqfs_node*, %struct.mqfs_node** %11, align 8
  %14 = getelementptr inbounds %struct.mqfs_node, %struct.mqfs_node* %13, i32 0, i32 10
  %15 = load i32, i32* %14, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @strncpy(i32 %15, i8* %16, i32 %17)
  %19 = load %struct.ucred*, %struct.ucred** %8, align 8
  %20 = getelementptr inbounds %struct.ucred, %struct.ucred* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.mqfs_node*, %struct.mqfs_node** %11, align 8
  %25 = getelementptr inbounds %struct.mqfs_node, %struct.mqfs_node* %24, i32 0, i32 9
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load %struct.mqfs_node*, %struct.mqfs_node** %11, align 8
  %28 = getelementptr inbounds %struct.mqfs_node, %struct.mqfs_node* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.mqfs_node*, %struct.mqfs_node** %11, align 8
  %30 = getelementptr inbounds %struct.mqfs_node, %struct.mqfs_node* %29, i32 0, i32 1
  store i32 1, i32* %30, align 4
  %31 = load %struct.mqfs_node*, %struct.mqfs_node** %11, align 8
  %32 = getelementptr inbounds %struct.mqfs_node, %struct.mqfs_node* %31, i32 0, i32 5
  %33 = call i32 @vfs_timestamp(i32* %32)
  %34 = load %struct.mqfs_node*, %struct.mqfs_node** %11, align 8
  %35 = getelementptr inbounds %struct.mqfs_node, %struct.mqfs_node* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.mqfs_node*, %struct.mqfs_node** %11, align 8
  %38 = getelementptr inbounds %struct.mqfs_node, %struct.mqfs_node* %37, i32 0, i32 6
  store i32 %36, i32* %38, align 4
  %39 = load %struct.mqfs_node*, %struct.mqfs_node** %11, align 8
  %40 = getelementptr inbounds %struct.mqfs_node, %struct.mqfs_node* %39, i32 0, i32 7
  store i32 %36, i32* %40, align 4
  %41 = load %struct.mqfs_node*, %struct.mqfs_node** %11, align 8
  %42 = getelementptr inbounds %struct.mqfs_node, %struct.mqfs_node* %41, i32 0, i32 8
  store i32 %36, i32* %42, align 4
  %43 = load %struct.ucred*, %struct.ucred** %8, align 8
  %44 = getelementptr inbounds %struct.ucred, %struct.ucred* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.mqfs_node*, %struct.mqfs_node** %11, align 8
  %47 = getelementptr inbounds %struct.mqfs_node, %struct.mqfs_node* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 4
  %48 = load %struct.ucred*, %struct.ucred** %8, align 8
  %49 = getelementptr inbounds %struct.ucred, %struct.ucred* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.mqfs_node*, %struct.mqfs_node** %11, align 8
  %52 = getelementptr inbounds %struct.mqfs_node, %struct.mqfs_node* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.mqfs_node*, %struct.mqfs_node** %11, align 8
  %55 = getelementptr inbounds %struct.mqfs_node, %struct.mqfs_node* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  %56 = load %struct.mqfs_node*, %struct.mqfs_node** %11, align 8
  ret %struct.mqfs_node* %56
}

declare dso_local %struct.mqfs_node* @mqnode_alloc(...) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @vfs_timestamp(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
