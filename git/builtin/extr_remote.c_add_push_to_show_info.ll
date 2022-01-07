; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_remote.c_add_push_to_show_info.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_remote.c_add_push_to_show_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list_item = type { %struct.push_info*, i32 }
%struct.push_info = type { i32 }
%struct.show_info = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.string_list_item*, i8*)* @add_push_to_show_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_push_to_show_info(%struct.string_list_item* %0, i8* %1) #0 {
  %3 = alloca %struct.string_list_item*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.show_info*, align 8
  %6 = alloca %struct.push_info*, align 8
  %7 = alloca %struct.string_list_item*, align 8
  %8 = alloca i32, align 4
  store %struct.string_list_item* %0, %struct.string_list_item** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.show_info*
  store %struct.show_info* %10, %struct.show_info** %5, align 8
  %11 = load %struct.string_list_item*, %struct.string_list_item** %3, align 8
  %12 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %11, i32 0, i32 0
  %13 = load %struct.push_info*, %struct.push_info** %12, align 8
  store %struct.push_info* %13, %struct.push_info** %6, align 8
  %14 = load %struct.string_list_item*, %struct.string_list_item** %3, align 8
  %15 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @strlen(i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.show_info*, %struct.show_info** %5, align 8
  %19 = getelementptr inbounds %struct.show_info, %struct.show_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp sgt i32 %17, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.show_info*, %struct.show_info** %5, align 8
  %25 = getelementptr inbounds %struct.show_info, %struct.show_info* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  br label %26

26:                                               ; preds = %22, %2
  %27 = load %struct.push_info*, %struct.push_info** %6, align 8
  %28 = getelementptr inbounds %struct.push_info, %struct.push_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @strlen(i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load %struct.show_info*, %struct.show_info** %5, align 8
  %32 = getelementptr inbounds %struct.show_info, %struct.show_info* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp sgt i32 %30, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %26
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.show_info*, %struct.show_info** %5, align 8
  %38 = getelementptr inbounds %struct.show_info, %struct.show_info* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  br label %39

39:                                               ; preds = %35, %26
  %40 = load %struct.show_info*, %struct.show_info** %5, align 8
  %41 = getelementptr inbounds %struct.show_info, %struct.show_info* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.string_list_item*, %struct.string_list_item** %3, align 8
  %44 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call %struct.string_list_item* @string_list_append(i32 %42, i32 %45)
  store %struct.string_list_item* %46, %struct.string_list_item** %7, align 8
  %47 = load %struct.string_list_item*, %struct.string_list_item** %3, align 8
  %48 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %47, i32 0, i32 0
  %49 = load %struct.push_info*, %struct.push_info** %48, align 8
  %50 = load %struct.string_list_item*, %struct.string_list_item** %7, align 8
  %51 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %50, i32 0, i32 0
  store %struct.push_info* %49, %struct.push_info** %51, align 8
  ret i32 0
}

declare dso_local i32 @strlen(i32) #1

declare dso_local %struct.string_list_item* @string_list_append(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
