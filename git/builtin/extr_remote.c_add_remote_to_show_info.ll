; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_remote.c_add_remote_to_show_info.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_remote.c_add_remote_to_show_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list_item = type { i32 }
%struct.show_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.string_list_item*, i8*)* @add_remote_to_show_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_remote_to_show_info(%struct.string_list_item* %0, i8* %1) #0 {
  %3 = alloca %struct.string_list_item*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.show_info*, align 8
  %6 = alloca i32, align 4
  store %struct.string_list_item* %0, %struct.string_list_item** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.show_info*
  store %struct.show_info* %8, %struct.show_info** %5, align 8
  %9 = load %struct.string_list_item*, %struct.string_list_item** %3, align 8
  %10 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @strlen(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.show_info*, %struct.show_info** %5, align 8
  %15 = getelementptr inbounds %struct.show_info, %struct.show_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp sgt i32 %13, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.show_info*, %struct.show_info** %5, align 8
  %21 = getelementptr inbounds %struct.show_info, %struct.show_info* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  br label %22

22:                                               ; preds = %18, %2
  %23 = load %struct.show_info*, %struct.show_info** %5, align 8
  %24 = getelementptr inbounds %struct.show_info, %struct.show_info* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.string_list_item*, %struct.string_list_item** %3, align 8
  %27 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @string_list_insert(i32 %25, i32 %28)
  ret i32 0
}

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @string_list_insert(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
