; ModuleID = '/home/carl/AnghaBench/git/extr_apply.c_prepare_fn_table.c'
source_filename = "/home/carl/AnghaBench/git/extr_apply.c_prepare_fn_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apply_state = type { i32 }
%struct.patch = type { %struct.patch*, i32, i64, i32* }
%struct.string_list_item = type { i32 }

@PATH_TO_BE_DELETED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.apply_state*, %struct.patch*)* @prepare_fn_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_fn_table(%struct.apply_state* %0, %struct.patch* %1) #0 {
  %3 = alloca %struct.apply_state*, align 8
  %4 = alloca %struct.patch*, align 8
  %5 = alloca %struct.string_list_item*, align 8
  store %struct.apply_state* %0, %struct.apply_state** %3, align 8
  store %struct.patch* %1, %struct.patch** %4, align 8
  br label %6

6:                                                ; preds = %29, %2
  %7 = load %struct.patch*, %struct.patch** %4, align 8
  %8 = icmp ne %struct.patch* %7, null
  br i1 %8, label %9, label %33

9:                                                ; preds = %6
  %10 = load %struct.patch*, %struct.patch** %4, align 8
  %11 = getelementptr inbounds %struct.patch, %struct.patch* %10, i32 0, i32 3
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %9
  %15 = load %struct.patch*, %struct.patch** %4, align 8
  %16 = getelementptr inbounds %struct.patch, %struct.patch* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %14, %9
  %20 = load %struct.apply_state*, %struct.apply_state** %3, align 8
  %21 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %20, i32 0, i32 0
  %22 = load %struct.patch*, %struct.patch** %4, align 8
  %23 = getelementptr inbounds %struct.patch, %struct.patch* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.string_list_item* @string_list_insert(i32* %21, i32 %24)
  store %struct.string_list_item* %25, %struct.string_list_item** %5, align 8
  %26 = load i32, i32* @PATH_TO_BE_DELETED, align 4
  %27 = load %struct.string_list_item*, %struct.string_list_item** %5, align 8
  %28 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  br label %29

29:                                               ; preds = %19, %14
  %30 = load %struct.patch*, %struct.patch** %4, align 8
  %31 = getelementptr inbounds %struct.patch, %struct.patch* %30, i32 0, i32 0
  %32 = load %struct.patch*, %struct.patch** %31, align 8
  store %struct.patch* %32, %struct.patch** %4, align 8
  br label %6

33:                                               ; preds = %6
  ret void
}

declare dso_local %struct.string_list_item* @string_list_insert(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
