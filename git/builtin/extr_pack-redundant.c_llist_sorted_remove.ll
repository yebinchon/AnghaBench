; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_pack-redundant.c_llist_sorted_remove.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_pack-redundant.c_llist_sorted_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llist = type { i32, %struct.llist_item*, %struct.llist_item* }
%struct.object_id = type { i32 }
%struct.llist_item = type { %struct.llist_item*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.llist_item* (%struct.llist*, %struct.object_id*, %struct.llist_item*)* @llist_sorted_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.llist_item* @llist_sorted_remove(%struct.llist* %0, %struct.object_id* %1, %struct.llist_item* %2) #0 {
  %4 = alloca %struct.llist_item*, align 8
  %5 = alloca %struct.llist*, align 8
  %6 = alloca %struct.object_id*, align 8
  %7 = alloca %struct.llist_item*, align 8
  %8 = alloca %struct.llist_item*, align 8
  %9 = alloca %struct.llist_item*, align 8
  %10 = alloca i32, align 4
  store %struct.llist* %0, %struct.llist** %5, align 8
  store %struct.object_id* %1, %struct.object_id** %6, align 8
  store %struct.llist_item* %2, %struct.llist_item** %7, align 8
  br label %11

11:                                               ; preds = %50, %3
  %12 = load %struct.llist_item*, %struct.llist_item** %7, align 8
  %13 = icmp eq %struct.llist_item* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load %struct.llist*, %struct.llist** %5, align 8
  %16 = getelementptr inbounds %struct.llist, %struct.llist* %15, i32 0, i32 2
  %17 = load %struct.llist_item*, %struct.llist_item** %16, align 8
  br label %20

18:                                               ; preds = %11
  %19 = load %struct.llist_item*, %struct.llist_item** %7, align 8
  br label %20

20:                                               ; preds = %18, %14
  %21 = phi %struct.llist_item* [ %17, %14 ], [ %19, %18 ]
  store %struct.llist_item* %21, %struct.llist_item** %9, align 8
  store %struct.llist_item* null, %struct.llist_item** %8, align 8
  br label %22

22:                                               ; preds = %81, %20
  %23 = load %struct.llist_item*, %struct.llist_item** %9, align 8
  %24 = icmp ne %struct.llist_item* %23, null
  br i1 %24, label %25, label %86

25:                                               ; preds = %22
  %26 = load %struct.llist_item*, %struct.llist_item** %9, align 8
  %27 = getelementptr inbounds %struct.llist_item, %struct.llist_item* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.object_id*, %struct.object_id** %6, align 8
  %30 = call i32 @oidcmp(i32 %28, %struct.object_id* %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load %struct.llist_item*, %struct.llist_item** %8, align 8
  store %struct.llist_item* %34, %struct.llist_item** %4, align 8
  br label %88

35:                                               ; preds = %25
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %81, label %38

38:                                               ; preds = %35
  %39 = load %struct.llist_item*, %struct.llist_item** %8, align 8
  %40 = icmp eq %struct.llist_item* %39, null
  br i1 %40, label %41, label %57

41:                                               ; preds = %38
  %42 = load %struct.llist_item*, %struct.llist_item** %7, align 8
  %43 = icmp ne %struct.llist_item* %42, null
  br i1 %43, label %44, label %51

44:                                               ; preds = %41
  %45 = load %struct.llist_item*, %struct.llist_item** %7, align 8
  %46 = load %struct.llist*, %struct.llist** %5, align 8
  %47 = getelementptr inbounds %struct.llist, %struct.llist* %46, i32 0, i32 2
  %48 = load %struct.llist_item*, %struct.llist_item** %47, align 8
  %49 = icmp ne %struct.llist_item* %45, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store %struct.llist_item* null, %struct.llist_item** %7, align 8
  br label %11

51:                                               ; preds = %44, %41
  %52 = load %struct.llist_item*, %struct.llist_item** %9, align 8
  %53 = getelementptr inbounds %struct.llist_item, %struct.llist_item* %52, i32 0, i32 0
  %54 = load %struct.llist_item*, %struct.llist_item** %53, align 8
  %55 = load %struct.llist*, %struct.llist** %5, align 8
  %56 = getelementptr inbounds %struct.llist, %struct.llist* %55, i32 0, i32 2
  store %struct.llist_item* %54, %struct.llist_item** %56, align 8
  br label %63

57:                                               ; preds = %38
  %58 = load %struct.llist_item*, %struct.llist_item** %9, align 8
  %59 = getelementptr inbounds %struct.llist_item, %struct.llist_item* %58, i32 0, i32 0
  %60 = load %struct.llist_item*, %struct.llist_item** %59, align 8
  %61 = load %struct.llist_item*, %struct.llist_item** %8, align 8
  %62 = getelementptr inbounds %struct.llist_item, %struct.llist_item* %61, i32 0, i32 0
  store %struct.llist_item* %60, %struct.llist_item** %62, align 8
  br label %63

63:                                               ; preds = %57, %51
  %64 = load %struct.llist_item*, %struct.llist_item** %9, align 8
  %65 = load %struct.llist*, %struct.llist** %5, align 8
  %66 = getelementptr inbounds %struct.llist, %struct.llist* %65, i32 0, i32 1
  %67 = load %struct.llist_item*, %struct.llist_item** %66, align 8
  %68 = icmp eq %struct.llist_item* %64, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load %struct.llist_item*, %struct.llist_item** %8, align 8
  %71 = load %struct.llist*, %struct.llist** %5, align 8
  %72 = getelementptr inbounds %struct.llist, %struct.llist* %71, i32 0, i32 1
  store %struct.llist_item* %70, %struct.llist_item** %72, align 8
  br label %73

73:                                               ; preds = %69, %63
  %74 = load %struct.llist_item*, %struct.llist_item** %9, align 8
  %75 = call i32 @llist_item_put(%struct.llist_item* %74)
  %76 = load %struct.llist*, %struct.llist** %5, align 8
  %77 = getelementptr inbounds %struct.llist, %struct.llist* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %77, align 8
  %80 = load %struct.llist_item*, %struct.llist_item** %8, align 8
  store %struct.llist_item* %80, %struct.llist_item** %4, align 8
  br label %88

81:                                               ; preds = %35
  %82 = load %struct.llist_item*, %struct.llist_item** %9, align 8
  store %struct.llist_item* %82, %struct.llist_item** %8, align 8
  %83 = load %struct.llist_item*, %struct.llist_item** %9, align 8
  %84 = getelementptr inbounds %struct.llist_item, %struct.llist_item* %83, i32 0, i32 0
  %85 = load %struct.llist_item*, %struct.llist_item** %84, align 8
  store %struct.llist_item* %85, %struct.llist_item** %9, align 8
  br label %22

86:                                               ; preds = %22
  %87 = load %struct.llist_item*, %struct.llist_item** %8, align 8
  store %struct.llist_item* %87, %struct.llist_item** %4, align 8
  br label %88

88:                                               ; preds = %86, %73, %33
  %89 = load %struct.llist_item*, %struct.llist_item** %4, align 8
  ret %struct.llist_item* %89
}

declare dso_local i32 @oidcmp(i32, %struct.object_id*) #1

declare dso_local i32 @llist_item_put(%struct.llist_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
