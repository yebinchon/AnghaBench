; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_pack-redundant.c_minimize.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_pack-redundant.c_minimize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pack_list = type { %struct.pack_list*, %struct.llist*, %struct.TYPE_2__* }
%struct.llist = type { i64 }
%struct.TYPE_2__ = type { i64 }

@local_packs = common dso_local global %struct.pack_list* null, align 8
@all_objects = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pack_list**)* @minimize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @minimize(%struct.pack_list** %0) #0 {
  %2 = alloca %struct.pack_list**, align 8
  %3 = alloca %struct.pack_list*, align 8
  %4 = alloca %struct.pack_list*, align 8
  %5 = alloca %struct.pack_list*, align 8
  %6 = alloca %struct.llist*, align 8
  %7 = alloca %struct.llist*, align 8
  store %struct.pack_list** %0, %struct.pack_list*** %2, align 8
  store %struct.pack_list* null, %struct.pack_list** %4, align 8
  store %struct.pack_list* null, %struct.pack_list** %5, align 8
  %8 = load %struct.pack_list*, %struct.pack_list** @local_packs, align 8
  store %struct.pack_list* %8, %struct.pack_list** %3, align 8
  br label %9

9:                                                ; preds = %25, %1
  %10 = load %struct.pack_list*, %struct.pack_list** %3, align 8
  %11 = icmp ne %struct.pack_list* %10, null
  br i1 %11, label %12, label %29

12:                                               ; preds = %9
  %13 = load %struct.pack_list*, %struct.pack_list** %3, align 8
  %14 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %12
  %20 = load %struct.pack_list*, %struct.pack_list** %3, align 8
  %21 = call i32 @pack_list_insert(%struct.pack_list** %4, %struct.pack_list* %20)
  br label %25

22:                                               ; preds = %12
  %23 = load %struct.pack_list*, %struct.pack_list** %3, align 8
  %24 = call i32 @pack_list_insert(%struct.pack_list** %5, %struct.pack_list* %23)
  br label %25

25:                                               ; preds = %22, %19
  %26 = load %struct.pack_list*, %struct.pack_list** %3, align 8
  %27 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %26, i32 0, i32 0
  %28 = load %struct.pack_list*, %struct.pack_list** %27, align 8
  store %struct.pack_list* %28, %struct.pack_list** %3, align 8
  br label %9

29:                                               ; preds = %9
  %30 = load i32, i32* @all_objects, align 4
  %31 = call %struct.llist* @llist_copy(i32 %30)
  store %struct.llist* %31, %struct.llist** %6, align 8
  %32 = load %struct.pack_list*, %struct.pack_list** %4, align 8
  store %struct.pack_list* %32, %struct.pack_list** %3, align 8
  br label %33

33:                                               ; preds = %36, %29
  %34 = load %struct.pack_list*, %struct.pack_list** %3, align 8
  %35 = icmp ne %struct.pack_list* %34, null
  br i1 %35, label %36, label %45

36:                                               ; preds = %33
  %37 = load %struct.llist*, %struct.llist** %6, align 8
  %38 = load %struct.pack_list*, %struct.pack_list** %3, align 8
  %39 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %38, i32 0, i32 1
  %40 = load %struct.llist*, %struct.llist** %39, align 8
  %41 = call i32 @llist_sorted_difference_inplace(%struct.llist* %37, %struct.llist* %40)
  %42 = load %struct.pack_list*, %struct.pack_list** %3, align 8
  %43 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %42, i32 0, i32 0
  %44 = load %struct.pack_list*, %struct.pack_list** %43, align 8
  store %struct.pack_list* %44, %struct.pack_list** %3, align 8
  br label %33

45:                                               ; preds = %33
  %46 = load %struct.pack_list*, %struct.pack_list** %4, align 8
  %47 = load %struct.pack_list**, %struct.pack_list*** %2, align 8
  store %struct.pack_list* %46, %struct.pack_list** %47, align 8
  %48 = load %struct.llist*, %struct.llist** %6, align 8
  %49 = getelementptr inbounds %struct.llist, %struct.llist* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load %struct.llist*, %struct.llist** %6, align 8
  %54 = call i32 @free(%struct.llist* %53)
  br label %122

55:                                               ; preds = %45
  %56 = load i32, i32* @all_objects, align 4
  %57 = call %struct.llist* @llist_copy(i32 %56)
  store %struct.llist* %57, %struct.llist** %7, align 8
  %58 = load %struct.llist*, %struct.llist** %7, align 8
  %59 = load %struct.llist*, %struct.llist** %6, align 8
  %60 = call i32 @llist_sorted_difference_inplace(%struct.llist* %58, %struct.llist* %59)
  %61 = load %struct.pack_list*, %struct.pack_list** %5, align 8
  store %struct.pack_list* %61, %struct.pack_list** %3, align 8
  br label %62

62:                                               ; preds = %65, %55
  %63 = load %struct.pack_list*, %struct.pack_list** %3, align 8
  %64 = icmp ne %struct.pack_list* %63, null
  br i1 %64, label %65, label %74

65:                                               ; preds = %62
  %66 = load %struct.pack_list*, %struct.pack_list** %3, align 8
  %67 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %66, i32 0, i32 1
  %68 = load %struct.llist*, %struct.llist** %67, align 8
  %69 = load %struct.llist*, %struct.llist** %7, align 8
  %70 = call i32 @llist_sorted_difference_inplace(%struct.llist* %68, %struct.llist* %69)
  %71 = load %struct.pack_list*, %struct.pack_list** %3, align 8
  %72 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %71, i32 0, i32 0
  %73 = load %struct.pack_list*, %struct.pack_list** %72, align 8
  store %struct.pack_list* %73, %struct.pack_list** %3, align 8
  br label %62

74:                                               ; preds = %62
  br label %75

75:                                               ; preds = %118, %74
  %76 = load %struct.pack_list*, %struct.pack_list** %5, align 8
  %77 = icmp ne %struct.pack_list* %76, null
  br i1 %77, label %78, label %122

78:                                               ; preds = %75
  %79 = call i32 @sort_pack_list(%struct.pack_list** %5)
  %80 = load %struct.pack_list*, %struct.pack_list** %5, align 8
  %81 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %80, i32 0, i32 1
  %82 = load %struct.llist*, %struct.llist** %81, align 8
  %83 = getelementptr inbounds %struct.llist, %struct.llist* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %78
  br label %122

87:                                               ; preds = %78
  %88 = load %struct.pack_list**, %struct.pack_list*** %2, align 8
  %89 = load %struct.pack_list*, %struct.pack_list** %5, align 8
  %90 = call i32 @pack_list_insert(%struct.pack_list** %88, %struct.pack_list* %89)
  %91 = load %struct.pack_list*, %struct.pack_list** %5, align 8
  %92 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %91, i32 0, i32 0
  %93 = load %struct.pack_list*, %struct.pack_list** %92, align 8
  store %struct.pack_list* %93, %struct.pack_list** %3, align 8
  br label %94

94:                                               ; preds = %114, %87
  %95 = load %struct.pack_list*, %struct.pack_list** %3, align 8
  %96 = icmp ne %struct.pack_list* %95, null
  br i1 %96, label %97, label %104

97:                                               ; preds = %94
  %98 = load %struct.pack_list*, %struct.pack_list** %3, align 8
  %99 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %98, i32 0, i32 1
  %100 = load %struct.llist*, %struct.llist** %99, align 8
  %101 = getelementptr inbounds %struct.llist, %struct.llist* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp sgt i64 %102, 0
  br label %104

104:                                              ; preds = %97, %94
  %105 = phi i1 [ false, %94 ], [ %103, %97 ]
  br i1 %105, label %106, label %118

106:                                              ; preds = %104
  %107 = load %struct.pack_list*, %struct.pack_list** %3, align 8
  %108 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %107, i32 0, i32 1
  %109 = load %struct.llist*, %struct.llist** %108, align 8
  %110 = load %struct.pack_list*, %struct.pack_list** %5, align 8
  %111 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %110, i32 0, i32 1
  %112 = load %struct.llist*, %struct.llist** %111, align 8
  %113 = call i32 @llist_sorted_difference_inplace(%struct.llist* %109, %struct.llist* %112)
  br label %114

114:                                              ; preds = %106
  %115 = load %struct.pack_list*, %struct.pack_list** %3, align 8
  %116 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %115, i32 0, i32 0
  %117 = load %struct.pack_list*, %struct.pack_list** %116, align 8
  store %struct.pack_list* %117, %struct.pack_list** %3, align 8
  br label %94

118:                                              ; preds = %104
  %119 = load %struct.pack_list*, %struct.pack_list** %5, align 8
  %120 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %119, i32 0, i32 0
  %121 = load %struct.pack_list*, %struct.pack_list** %120, align 8
  store %struct.pack_list* %121, %struct.pack_list** %5, align 8
  br label %75

122:                                              ; preds = %52, %86, %75
  ret void
}

declare dso_local i32 @pack_list_insert(%struct.pack_list**, %struct.pack_list*) #1

declare dso_local %struct.llist* @llist_copy(i32) #1

declare dso_local i32 @llist_sorted_difference_inplace(%struct.llist*, %struct.llist*) #1

declare dso_local i32 @free(%struct.llist*) #1

declare dso_local i32 @sort_pack_list(%struct.pack_list**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
