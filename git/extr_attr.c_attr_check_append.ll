; ModuleID = '/home/carl/AnghaBench/git/extr_attr.c_attr_check_append.c'
source_filename = "/home/carl/AnghaBench/git/extr_attr.c_attr_check_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attr_check_item = type { %struct.git_attr* }
%struct.attr_check = type { i64, %struct.attr_check_item*, i32 }
%struct.git_attr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.attr_check_item* @attr_check_append(%struct.attr_check* %0, %struct.git_attr* %1) #0 {
  %3 = alloca %struct.attr_check*, align 8
  %4 = alloca %struct.git_attr*, align 8
  %5 = alloca %struct.attr_check_item*, align 8
  store %struct.attr_check* %0, %struct.attr_check** %3, align 8
  store %struct.git_attr* %1, %struct.git_attr** %4, align 8
  %6 = load %struct.attr_check*, %struct.attr_check** %3, align 8
  %7 = getelementptr inbounds %struct.attr_check, %struct.attr_check* %6, i32 0, i32 1
  %8 = load %struct.attr_check_item*, %struct.attr_check_item** %7, align 8
  %9 = load %struct.attr_check*, %struct.attr_check** %3, align 8
  %10 = getelementptr inbounds %struct.attr_check, %struct.attr_check* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %11, 1
  %13 = load %struct.attr_check*, %struct.attr_check** %3, align 8
  %14 = getelementptr inbounds %struct.attr_check, %struct.attr_check* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @ALLOC_GROW(%struct.attr_check_item* %8, i64 %12, i32 %15)
  %17 = load %struct.attr_check*, %struct.attr_check** %3, align 8
  %18 = getelementptr inbounds %struct.attr_check, %struct.attr_check* %17, i32 0, i32 1
  %19 = load %struct.attr_check_item*, %struct.attr_check_item** %18, align 8
  %20 = load %struct.attr_check*, %struct.attr_check** %3, align 8
  %21 = getelementptr inbounds %struct.attr_check, %struct.attr_check* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* %21, align 8
  %24 = getelementptr inbounds %struct.attr_check_item, %struct.attr_check_item* %19, i64 %22
  store %struct.attr_check_item* %24, %struct.attr_check_item** %5, align 8
  %25 = load %struct.git_attr*, %struct.git_attr** %4, align 8
  %26 = load %struct.attr_check_item*, %struct.attr_check_item** %5, align 8
  %27 = getelementptr inbounds %struct.attr_check_item, %struct.attr_check_item* %26, i32 0, i32 0
  store %struct.git_attr* %25, %struct.git_attr** %27, align 8
  %28 = load %struct.attr_check_item*, %struct.attr_check_item** %5, align 8
  ret %struct.attr_check_item* %28
}

declare dso_local i32 @ALLOC_GROW(%struct.attr_check_item*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
