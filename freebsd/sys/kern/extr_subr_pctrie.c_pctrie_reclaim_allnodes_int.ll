; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_pctrie.c_pctrie_reclaim_allnodes_int.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_pctrie.c_pctrie_reclaim_allnodes_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pctrie = type { i32 }
%struct.pctrie_node = type { i64, %struct.pctrie_node** }

@PCTRIE_COUNT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"pctrie_reclaim_allnodes_int: bad count in node %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pctrie*, %struct.pctrie_node*, i32)* @pctrie_reclaim_allnodes_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pctrie_reclaim_allnodes_int(%struct.pctrie* %0, %struct.pctrie_node* %1, i32 %2) #0 {
  %4 = alloca %struct.pctrie*, align 8
  %5 = alloca %struct.pctrie_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pctrie* %0, %struct.pctrie** %4, align 8
  store %struct.pctrie_node* %1, %struct.pctrie_node** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.pctrie_node*, %struct.pctrie_node** %5, align 8
  %9 = getelementptr inbounds %struct.pctrie_node, %struct.pctrie_node* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @PCTRIE_COUNT, align 8
  %12 = icmp sle i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = load %struct.pctrie_node*, %struct.pctrie_node** %5, align 8
  %15 = bitcast %struct.pctrie_node* %14 to i8*
  %16 = call i32 @KASSERT(i32 %13, i8* %15)
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %63, %3
  %18 = load %struct.pctrie_node*, %struct.pctrie_node** %5, align 8
  %19 = getelementptr inbounds %struct.pctrie_node, %struct.pctrie_node* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %66

22:                                               ; preds = %17
  %23 = load %struct.pctrie_node*, %struct.pctrie_node** %5, align 8
  %24 = getelementptr inbounds %struct.pctrie_node, %struct.pctrie_node* %23, i32 0, i32 1
  %25 = load %struct.pctrie_node**, %struct.pctrie_node*** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.pctrie_node*, %struct.pctrie_node** %25, i64 %27
  %29 = load %struct.pctrie_node*, %struct.pctrie_node** %28, align 8
  %30 = icmp eq %struct.pctrie_node* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %63

32:                                               ; preds = %22
  %33 = load %struct.pctrie_node*, %struct.pctrie_node** %5, align 8
  %34 = getelementptr inbounds %struct.pctrie_node, %struct.pctrie_node* %33, i32 0, i32 1
  %35 = load %struct.pctrie_node**, %struct.pctrie_node*** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.pctrie_node*, %struct.pctrie_node** %35, i64 %37
  %39 = load %struct.pctrie_node*, %struct.pctrie_node** %38, align 8
  %40 = call i32 @pctrie_isleaf(%struct.pctrie_node* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %32
  %43 = load %struct.pctrie*, %struct.pctrie** %4, align 8
  %44 = load %struct.pctrie_node*, %struct.pctrie_node** %5, align 8
  %45 = getelementptr inbounds %struct.pctrie_node, %struct.pctrie_node* %44, i32 0, i32 1
  %46 = load %struct.pctrie_node**, %struct.pctrie_node*** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.pctrie_node*, %struct.pctrie_node** %46, i64 %48
  %50 = load %struct.pctrie_node*, %struct.pctrie_node** %49, align 8
  %51 = load i32, i32* %6, align 4
  call void @pctrie_reclaim_allnodes_int(%struct.pctrie* %43, %struct.pctrie_node* %50, i32 %51)
  br label %52

52:                                               ; preds = %42, %32
  %53 = load %struct.pctrie_node*, %struct.pctrie_node** %5, align 8
  %54 = getelementptr inbounds %struct.pctrie_node, %struct.pctrie_node* %53, i32 0, i32 1
  %55 = load %struct.pctrie_node**, %struct.pctrie_node*** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.pctrie_node*, %struct.pctrie_node** %55, i64 %57
  store %struct.pctrie_node* null, %struct.pctrie_node** %58, align 8
  %59 = load %struct.pctrie_node*, %struct.pctrie_node** %5, align 8
  %60 = getelementptr inbounds %struct.pctrie_node, %struct.pctrie_node* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, -1
  store i64 %62, i64* %60, align 8
  br label %63

63:                                               ; preds = %52, %31
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %17

66:                                               ; preds = %17
  %67 = load %struct.pctrie*, %struct.pctrie** %4, align 8
  %68 = load %struct.pctrie_node*, %struct.pctrie_node** %5, align 8
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @pctrie_node_put(%struct.pctrie* %67, %struct.pctrie_node* %68, i32 %69)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @pctrie_isleaf(%struct.pctrie_node*) #1

declare dso_local i32 @pctrie_node_put(%struct.pctrie*, %struct.pctrie_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
