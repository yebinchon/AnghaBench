; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_remote.c_add_local_to_show_info.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_remote.c_add_local_to_show_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list_item = type { %struct.branch_info*, i32 }
%struct.branch_info = type { i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.show_info = type { i32, i32, i32, %struct.ref_states* }
%struct.ref_states = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.string_list_item*, i8*)* @add_local_to_show_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_local_to_show_info(%struct.string_list_item* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.string_list_item*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.show_info*, align 8
  %7 = alloca %struct.ref_states*, align 8
  %8 = alloca %struct.branch_info*, align 8
  %9 = alloca %struct.string_list_item*, align 8
  %10 = alloca i32, align 4
  store %struct.string_list_item* %0, %struct.string_list_item** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.show_info*
  store %struct.show_info* %12, %struct.show_info** %6, align 8
  %13 = load %struct.show_info*, %struct.show_info** %6, align 8
  %14 = getelementptr inbounds %struct.show_info, %struct.show_info* %13, i32 0, i32 3
  %15 = load %struct.ref_states*, %struct.ref_states** %14, align 8
  store %struct.ref_states* %15, %struct.ref_states** %7, align 8
  %16 = load %struct.string_list_item*, %struct.string_list_item** %4, align 8
  %17 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %16, i32 0, i32 0
  %18 = load %struct.branch_info*, %struct.branch_info** %17, align 8
  store %struct.branch_info* %18, %struct.branch_info** %8, align 8
  %19 = load %struct.branch_info*, %struct.branch_info** %8, align 8
  %20 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %2
  %25 = load %struct.branch_info*, %struct.branch_info** %8, align 8
  %26 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %24
  %30 = load %struct.ref_states*, %struct.ref_states** %7, align 8
  %31 = getelementptr inbounds %struct.ref_states, %struct.ref_states* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.branch_info*, %struct.branch_info** %8, align 8
  %36 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @strcmp(i32 %34, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %29, %24, %2
  store i32 0, i32* %3, align 4
  br label %73

41:                                               ; preds = %29
  %42 = load %struct.string_list_item*, %struct.string_list_item** %4, align 8
  %43 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @strlen(i32 %44)
  store i32 %45, i32* %10, align 4
  %46 = load %struct.show_info*, %struct.show_info** %6, align 8
  %47 = getelementptr inbounds %struct.show_info, %struct.show_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp sgt i32 %45, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %41
  %51 = load i32, i32* %10, align 4
  %52 = load %struct.show_info*, %struct.show_info** %6, align 8
  %53 = getelementptr inbounds %struct.show_info, %struct.show_info* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  br label %54

54:                                               ; preds = %50, %41
  %55 = load %struct.branch_info*, %struct.branch_info** %8, align 8
  %56 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load %struct.show_info*, %struct.show_info** %6, align 8
  %61 = getelementptr inbounds %struct.show_info, %struct.show_info* %60, i32 0, i32 1
  store i32 1, i32* %61, align 4
  br label %62

62:                                               ; preds = %59, %54
  %63 = load %struct.show_info*, %struct.show_info** %6, align 8
  %64 = getelementptr inbounds %struct.show_info, %struct.show_info* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.string_list_item*, %struct.string_list_item** %4, align 8
  %67 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call %struct.string_list_item* @string_list_insert(i32 %65, i32 %68)
  store %struct.string_list_item* %69, %struct.string_list_item** %9, align 8
  %70 = load %struct.branch_info*, %struct.branch_info** %8, align 8
  %71 = load %struct.string_list_item*, %struct.string_list_item** %9, align 8
  %72 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %71, i32 0, i32 0
  store %struct.branch_info* %70, %struct.branch_info** %72, align 8
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %62, %40
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local %struct.string_list_item* @string_list_insert(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
