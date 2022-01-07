; ModuleID = '/home/carl/AnghaBench/git/extr_apply.c_add_to_fn_table.c'
source_filename = "/home/carl/AnghaBench/git/extr_apply.c_add_to_fn_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.patch = type { i32*, i64, i32* }
%struct.apply_state = type { i32 }
%struct.string_list_item = type { %struct.patch* }

@PATH_WAS_DELETED = common dso_local global %struct.patch* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.apply_state*, %struct.patch*)* @add_to_fn_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_to_fn_table(%struct.apply_state* %0, %struct.patch* %1) #0 {
  %3 = alloca %struct.apply_state*, align 8
  %4 = alloca %struct.patch*, align 8
  %5 = alloca %struct.string_list_item*, align 8
  store %struct.apply_state* %0, %struct.apply_state** %3, align 8
  store %struct.patch* %1, %struct.patch** %4, align 8
  %6 = load %struct.patch*, %struct.patch** %4, align 8
  %7 = getelementptr inbounds %struct.patch, %struct.patch* %6, i32 0, i32 2
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %20

10:                                               ; preds = %2
  %11 = load %struct.apply_state*, %struct.apply_state** %3, align 8
  %12 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %11, i32 0, i32 0
  %13 = load %struct.patch*, %struct.patch** %4, align 8
  %14 = getelementptr inbounds %struct.patch, %struct.patch* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = call %struct.string_list_item* @string_list_insert(i32* %12, i32* %15)
  store %struct.string_list_item* %16, %struct.string_list_item** %5, align 8
  %17 = load %struct.patch*, %struct.patch** %4, align 8
  %18 = load %struct.string_list_item*, %struct.string_list_item** %5, align 8
  %19 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %18, i32 0, i32 0
  store %struct.patch* %17, %struct.patch** %19, align 8
  br label %20

20:                                               ; preds = %10, %2
  %21 = load %struct.patch*, %struct.patch** %4, align 8
  %22 = getelementptr inbounds %struct.patch, %struct.patch* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load %struct.patch*, %struct.patch** %4, align 8
  %27 = getelementptr inbounds %struct.patch, %struct.patch* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %25, %20
  %31 = load %struct.apply_state*, %struct.apply_state** %3, align 8
  %32 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %31, i32 0, i32 0
  %33 = load %struct.patch*, %struct.patch** %4, align 8
  %34 = getelementptr inbounds %struct.patch, %struct.patch* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = call %struct.string_list_item* @string_list_insert(i32* %32, i32* %35)
  store %struct.string_list_item* %36, %struct.string_list_item** %5, align 8
  %37 = load %struct.patch*, %struct.patch** @PATH_WAS_DELETED, align 8
  %38 = load %struct.string_list_item*, %struct.string_list_item** %5, align 8
  %39 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %38, i32 0, i32 0
  store %struct.patch* %37, %struct.patch** %39, align 8
  br label %40

40:                                               ; preds = %30, %25
  ret void
}

declare dso_local %struct.string_list_item* @string_list_insert(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
