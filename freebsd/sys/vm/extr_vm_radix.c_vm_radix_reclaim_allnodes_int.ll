; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_radix.c_vm_radix_reclaim_allnodes_int.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_radix.c_vm_radix_reclaim_allnodes_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_radix_node = type { i64, %struct.vm_radix_node** }

@VM_RADIX_COUNT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"vm_radix_reclaim_allnodes_int: bad count in rnode %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vm_radix_node*)* @vm_radix_reclaim_allnodes_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vm_radix_reclaim_allnodes_int(%struct.vm_radix_node* %0) #0 {
  %2 = alloca %struct.vm_radix_node*, align 8
  %3 = alloca i32, align 4
  store %struct.vm_radix_node* %0, %struct.vm_radix_node** %2, align 8
  %4 = load %struct.vm_radix_node*, %struct.vm_radix_node** %2, align 8
  %5 = getelementptr inbounds %struct.vm_radix_node, %struct.vm_radix_node* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @VM_RADIX_COUNT, align 8
  %8 = icmp sle i64 %6, %7
  %9 = zext i1 %8 to i32
  %10 = load %struct.vm_radix_node*, %struct.vm_radix_node** %2, align 8
  %11 = bitcast %struct.vm_radix_node* %10 to i8*
  %12 = call i32 @KASSERT(i32 %9, i8* %11)
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %57, %1
  %14 = load %struct.vm_radix_node*, %struct.vm_radix_node** %2, align 8
  %15 = getelementptr inbounds %struct.vm_radix_node, %struct.vm_radix_node* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %60

18:                                               ; preds = %13
  %19 = load %struct.vm_radix_node*, %struct.vm_radix_node** %2, align 8
  %20 = getelementptr inbounds %struct.vm_radix_node, %struct.vm_radix_node* %19, i32 0, i32 1
  %21 = load %struct.vm_radix_node**, %struct.vm_radix_node*** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.vm_radix_node*, %struct.vm_radix_node** %21, i64 %23
  %25 = load %struct.vm_radix_node*, %struct.vm_radix_node** %24, align 8
  %26 = icmp eq %struct.vm_radix_node* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  br label %57

28:                                               ; preds = %18
  %29 = load %struct.vm_radix_node*, %struct.vm_radix_node** %2, align 8
  %30 = getelementptr inbounds %struct.vm_radix_node, %struct.vm_radix_node* %29, i32 0, i32 1
  %31 = load %struct.vm_radix_node**, %struct.vm_radix_node*** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.vm_radix_node*, %struct.vm_radix_node** %31, i64 %33
  %35 = load %struct.vm_radix_node*, %struct.vm_radix_node** %34, align 8
  %36 = call i32 @vm_radix_isleaf(%struct.vm_radix_node* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %28
  %39 = load %struct.vm_radix_node*, %struct.vm_radix_node** %2, align 8
  %40 = getelementptr inbounds %struct.vm_radix_node, %struct.vm_radix_node* %39, i32 0, i32 1
  %41 = load %struct.vm_radix_node**, %struct.vm_radix_node*** %40, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.vm_radix_node*, %struct.vm_radix_node** %41, i64 %43
  %45 = load %struct.vm_radix_node*, %struct.vm_radix_node** %44, align 8
  call void @vm_radix_reclaim_allnodes_int(%struct.vm_radix_node* %45)
  br label %46

46:                                               ; preds = %38, %28
  %47 = load %struct.vm_radix_node*, %struct.vm_radix_node** %2, align 8
  %48 = getelementptr inbounds %struct.vm_radix_node, %struct.vm_radix_node* %47, i32 0, i32 1
  %49 = load %struct.vm_radix_node**, %struct.vm_radix_node*** %48, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.vm_radix_node*, %struct.vm_radix_node** %49, i64 %51
  store %struct.vm_radix_node* null, %struct.vm_radix_node** %52, align 8
  %53 = load %struct.vm_radix_node*, %struct.vm_radix_node** %2, align 8
  %54 = getelementptr inbounds %struct.vm_radix_node, %struct.vm_radix_node* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, -1
  store i64 %56, i64* %54, align 8
  br label %57

57:                                               ; preds = %46, %27
  %58 = load i32, i32* %3, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %3, align 4
  br label %13

60:                                               ; preds = %13
  %61 = load %struct.vm_radix_node*, %struct.vm_radix_node** %2, align 8
  %62 = call i32 @vm_radix_node_put(%struct.vm_radix_node* %61)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @vm_radix_isleaf(%struct.vm_radix_node*) #1

declare dso_local i32 @vm_radix_node_put(%struct.vm_radix_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
