; ModuleID = '/home/carl/AnghaBench/git/extr_apply.c_in_fn_table.c'
source_filename = "/home/carl/AnghaBench/git/extr_apply.c_in_fn_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.patch = type { i32 }
%struct.apply_state = type { i32 }
%struct.string_list_item = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.patch* (%struct.apply_state*, i8*)* @in_fn_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.patch* @in_fn_table(%struct.apply_state* %0, i8* %1) #0 {
  %3 = alloca %struct.patch*, align 8
  %4 = alloca %struct.apply_state*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.string_list_item*, align 8
  store %struct.apply_state* %0, %struct.apply_state** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store %struct.patch* null, %struct.patch** %3, align 8
  br label %23

10:                                               ; preds = %2
  %11 = load %struct.apply_state*, %struct.apply_state** %4, align 8
  %12 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %11, i32 0, i32 0
  %13 = load i8*, i8** %5, align 8
  %14 = call %struct.string_list_item* @string_list_lookup(i32* %12, i8* %13)
  store %struct.string_list_item* %14, %struct.string_list_item** %6, align 8
  %15 = load %struct.string_list_item*, %struct.string_list_item** %6, align 8
  %16 = icmp ne %struct.string_list_item* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %10
  %18 = load %struct.string_list_item*, %struct.string_list_item** %6, align 8
  %19 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.patch*
  store %struct.patch* %21, %struct.patch** %3, align 8
  br label %23

22:                                               ; preds = %10
  store %struct.patch* null, %struct.patch** %3, align 8
  br label %23

23:                                               ; preds = %22, %17, %9
  %24 = load %struct.patch*, %struct.patch** %3, align 8
  ret %struct.patch* %24
}

declare dso_local %struct.string_list_item* @string_list_lookup(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
