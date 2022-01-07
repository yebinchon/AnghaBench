; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_shortlog.c_compare_by_list.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_shortlog.c_compare_by_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list_item = type { %struct.string_list* }
%struct.string_list = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @compare_by_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_by_list(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.string_list_item*, align 8
  %7 = alloca %struct.string_list_item*, align 8
  %8 = alloca %struct.string_list*, align 8
  %9 = alloca %struct.string_list*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.string_list_item*
  store %struct.string_list_item* %11, %struct.string_list_item** %6, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.string_list_item*
  store %struct.string_list_item* %13, %struct.string_list_item** %7, align 8
  %14 = load %struct.string_list_item*, %struct.string_list_item** %6, align 8
  %15 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %14, i32 0, i32 0
  %16 = load %struct.string_list*, %struct.string_list** %15, align 8
  store %struct.string_list* %16, %struct.string_list** %8, align 8
  %17 = load %struct.string_list_item*, %struct.string_list_item** %7, align 8
  %18 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %17, i32 0, i32 0
  %19 = load %struct.string_list*, %struct.string_list** %18, align 8
  store %struct.string_list* %19, %struct.string_list** %9, align 8
  %20 = load %struct.string_list*, %struct.string_list** %8, align 8
  %21 = getelementptr inbounds %struct.string_list, %struct.string_list* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.string_list*, %struct.string_list** %9, align 8
  %24 = getelementptr inbounds %struct.string_list, %struct.string_list* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp slt i64 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %38

28:                                               ; preds = %2
  %29 = load %struct.string_list*, %struct.string_list** %8, align 8
  %30 = getelementptr inbounds %struct.string_list, %struct.string_list* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.string_list*, %struct.string_list** %9, align 8
  %33 = getelementptr inbounds %struct.string_list, %struct.string_list* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %38

37:                                               ; preds = %28
  store i32 -1, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %36, %27
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
