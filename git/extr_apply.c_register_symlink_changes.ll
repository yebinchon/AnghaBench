; ModuleID = '/home/carl/AnghaBench/git/extr_apply.c_register_symlink_changes.c'
source_filename = "/home/carl/AnghaBench/git/extr_apply.c_register_symlink_changes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apply_state = type { i32 }
%struct.string_list_item = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.apply_state*, i8*, i64)* @register_symlink_changes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @register_symlink_changes(%struct.apply_state* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.apply_state*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.string_list_item*, align 8
  store %struct.apply_state* %0, %struct.apply_state** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.apply_state*, %struct.apply_state** %4, align 8
  %9 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %8, i32 0, i32 0
  %10 = load i8*, i8** %5, align 8
  %11 = call %struct.string_list_item* @string_list_lookup(i32* %9, i8* %10)
  store %struct.string_list_item* %11, %struct.string_list_item** %7, align 8
  %12 = load %struct.string_list_item*, %struct.string_list_item** %7, align 8
  %13 = icmp ne %struct.string_list_item* %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %3
  %15 = load %struct.apply_state*, %struct.apply_state** %4, align 8
  %16 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %15, i32 0, i32 0
  %17 = load i8*, i8** %5, align 8
  %18 = call %struct.string_list_item* @string_list_insert(i32* %16, i8* %17)
  store %struct.string_list_item* %18, %struct.string_list_item** %7, align 8
  %19 = load %struct.string_list_item*, %struct.string_list_item** %7, align 8
  %20 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %19, i32 0, i32 0
  store i8* null, i8** %20, align 8
  br label %21

21:                                               ; preds = %14, %3
  %22 = load i64, i64* %6, align 8
  %23 = load %struct.string_list_item*, %struct.string_list_item** %7, align 8
  %24 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = ptrtoint i8* %25 to i64
  %27 = or i64 %22, %26
  %28 = inttoptr i64 %27 to i8*
  %29 = load %struct.string_list_item*, %struct.string_list_item** %7, align 8
  %30 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  %31 = load %struct.string_list_item*, %struct.string_list_item** %7, align 8
  %32 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = ptrtoint i8* %33 to i64
  ret i64 %34
}

declare dso_local %struct.string_list_item* @string_list_lookup(i32*, i8*) #1

declare dso_local %struct.string_list_item* @string_list_insert(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
