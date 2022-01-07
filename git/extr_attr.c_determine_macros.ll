; ModuleID = '/home/carl/AnghaBench/git/extr_attr.c_determine_macros.c'
source_filename = "/home/carl/AnghaBench/git/extr_attr.c_determine_macros.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.all_attrs_item = type { %struct.match_attr* }
%struct.match_attr = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.attr_stack = type { i32, %struct.match_attr**, %struct.attr_stack* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.all_attrs_item*, %struct.attr_stack*)* @determine_macros to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @determine_macros(%struct.all_attrs_item* %0, %struct.attr_stack* %1) #0 {
  %3 = alloca %struct.all_attrs_item*, align 8
  %4 = alloca %struct.attr_stack*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.match_attr*, align 8
  %7 = alloca i32, align 4
  store %struct.all_attrs_item* %0, %struct.all_attrs_item** %3, align 8
  store %struct.attr_stack* %1, %struct.attr_stack** %4, align 8
  br label %8

8:                                                ; preds = %58, %2
  %9 = load %struct.attr_stack*, %struct.attr_stack** %4, align 8
  %10 = icmp ne %struct.attr_stack* %9, null
  br i1 %10, label %11, label %62

11:                                               ; preds = %8
  %12 = load %struct.attr_stack*, %struct.attr_stack** %4, align 8
  %13 = getelementptr inbounds %struct.attr_stack, %struct.attr_stack* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sub nsw i32 %14, 1
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %54, %11
  %17 = load i32, i32* %5, align 4
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %57

19:                                               ; preds = %16
  %20 = load %struct.attr_stack*, %struct.attr_stack** %4, align 8
  %21 = getelementptr inbounds %struct.attr_stack, %struct.attr_stack* %20, i32 0, i32 1
  %22 = load %struct.match_attr**, %struct.match_attr*** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.match_attr*, %struct.match_attr** %22, i64 %24
  %26 = load %struct.match_attr*, %struct.match_attr** %25, align 8
  store %struct.match_attr* %26, %struct.match_attr** %6, align 8
  %27 = load %struct.match_attr*, %struct.match_attr** %6, align 8
  %28 = getelementptr inbounds %struct.match_attr, %struct.match_attr* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %53

31:                                               ; preds = %19
  %32 = load %struct.match_attr*, %struct.match_attr** %6, align 8
  %33 = getelementptr inbounds %struct.match_attr, %struct.match_attr* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %7, align 4
  %38 = load %struct.all_attrs_item*, %struct.all_attrs_item** %3, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.all_attrs_item, %struct.all_attrs_item* %38, i64 %40
  %42 = getelementptr inbounds %struct.all_attrs_item, %struct.all_attrs_item* %41, i32 0, i32 0
  %43 = load %struct.match_attr*, %struct.match_attr** %42, align 8
  %44 = icmp ne %struct.match_attr* %43, null
  br i1 %44, label %52, label %45

45:                                               ; preds = %31
  %46 = load %struct.match_attr*, %struct.match_attr** %6, align 8
  %47 = load %struct.all_attrs_item*, %struct.all_attrs_item** %3, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.all_attrs_item, %struct.all_attrs_item* %47, i64 %49
  %51 = getelementptr inbounds %struct.all_attrs_item, %struct.all_attrs_item* %50, i32 0, i32 0
  store %struct.match_attr* %46, %struct.match_attr** %51, align 8
  br label %52

52:                                               ; preds = %45, %31
  br label %53

53:                                               ; preds = %52, %19
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %5, align 4
  br label %16

57:                                               ; preds = %16
  br label %58

58:                                               ; preds = %57
  %59 = load %struct.attr_stack*, %struct.attr_stack** %4, align 8
  %60 = getelementptr inbounds %struct.attr_stack, %struct.attr_stack* %59, i32 0, i32 2
  %61 = load %struct.attr_stack*, %struct.attr_stack** %60, align 8
  store %struct.attr_stack* %61, %struct.attr_stack** %4, align 8
  br label %8

62:                                               ; preds = %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
