; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_remote.c_cmp_string_with_push.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_remote.c_cmp_string_with_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list_item = type { i32, %struct.push_info* }
%struct.push_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @cmp_string_with_push to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmp_string_with_push(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.string_list_item*, align 8
  %6 = alloca %struct.string_list_item*, align 8
  %7 = alloca %struct.push_info*, align 8
  %8 = alloca %struct.push_info*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.string_list_item*
  store %struct.string_list_item* %11, %struct.string_list_item** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.string_list_item*
  store %struct.string_list_item* %13, %struct.string_list_item** %6, align 8
  %14 = load %struct.string_list_item*, %struct.string_list_item** %5, align 8
  %15 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %14, i32 0, i32 1
  %16 = load %struct.push_info*, %struct.push_info** %15, align 8
  store %struct.push_info* %16, %struct.push_info** %7, align 8
  %17 = load %struct.string_list_item*, %struct.string_list_item** %6, align 8
  %18 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %17, i32 0, i32 1
  %19 = load %struct.push_info*, %struct.push_info** %18, align 8
  store %struct.push_info* %19, %struct.push_info** %8, align 8
  %20 = load %struct.string_list_item*, %struct.string_list_item** %5, align 8
  %21 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.string_list_item*, %struct.string_list_item** %6, align 8
  %24 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @strcmp(i32 %22, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* %9, align 4
  br label %39

31:                                               ; preds = %2
  %32 = load %struct.push_info*, %struct.push_info** %7, align 8
  %33 = getelementptr inbounds %struct.push_info, %struct.push_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.push_info*, %struct.push_info** %8, align 8
  %36 = getelementptr inbounds %struct.push_info, %struct.push_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @strcmp(i32 %34, i32 %37)
  br label %39

39:                                               ; preds = %31, %29
  %40 = phi i32 [ %30, %29 ], [ %38, %31 ]
  ret i32 %40
}

declare dso_local i32 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
