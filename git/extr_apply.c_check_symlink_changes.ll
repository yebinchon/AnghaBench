; ModuleID = '/home/carl/AnghaBench/git/extr_apply.c_check_symlink_changes.c'
source_filename = "/home/carl/AnghaBench/git/extr_apply.c_check_symlink_changes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apply_state = type { i32 }
%struct.string_list_item = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.apply_state*, i8*)* @check_symlink_changes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @check_symlink_changes(%struct.apply_state* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.apply_state*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.string_list_item*, align 8
  store %struct.apply_state* %0, %struct.apply_state** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.apply_state*, %struct.apply_state** %4, align 8
  %8 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %7, i32 0, i32 0
  %9 = load i8*, i8** %5, align 8
  %10 = call %struct.string_list_item* @string_list_lookup(i32* %8, i8* %9)
  store %struct.string_list_item* %10, %struct.string_list_item** %6, align 8
  %11 = load %struct.string_list_item*, %struct.string_list_item** %6, align 8
  %12 = icmp ne %struct.string_list_item* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %19

14:                                               ; preds = %2
  %15 = load %struct.string_list_item*, %struct.string_list_item** %6, align 8
  %16 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %3, align 8
  br label %19

19:                                               ; preds = %14, %13
  %20 = load i64, i64* %3, align 8
  ret i64 %20
}

declare dso_local %struct.string_list_item* @string_list_lookup(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
