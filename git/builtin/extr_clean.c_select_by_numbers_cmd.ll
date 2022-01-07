; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_clean.c_select_by_numbers_cmd.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_clean.c_select_by_numbers_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.string_list_item* }
%struct.string_list_item = type { i8* }
%struct.menu_opts = type { i64, i32, i32* }
%struct.menu_stuff = type { i32, %struct.TYPE_3__*, i32 }

@.str = private unnamed_addr constant [23 x i8] c"Select items to delete\00", align 1
@MENU_STUFF_TYPE_STRING_LIST = common dso_local global i32 0, align 4
@del_list = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @select_by_numbers_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @select_by_numbers_cmd() #0 {
  %1 = alloca %struct.menu_opts, align 8
  %2 = alloca %struct.menu_stuff, align 8
  %3 = alloca %struct.string_list_item*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.menu_opts, %struct.menu_opts* %1, i32 0, i32 2
  store i32* null, i32** %7, align 8
  %8 = call i32 @N_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %9 = getelementptr inbounds %struct.menu_opts, %struct.menu_opts* %1, i32 0, i32 1
  store i32 %8, i32* %9, align 8
  %10 = getelementptr inbounds %struct.menu_opts, %struct.menu_opts* %1, i32 0, i32 0
  store i64 0, i64* %10, align 8
  %11 = load i32, i32* @MENU_STUFF_TYPE_STRING_LIST, align 4
  %12 = getelementptr inbounds %struct.menu_stuff, %struct.menu_stuff* %2, i32 0, i32 2
  store i32 %11, i32* %12, align 8
  %13 = getelementptr inbounds %struct.menu_stuff, %struct.menu_stuff* %2, i32 0, i32 1
  store %struct.TYPE_3__* @del_list, %struct.TYPE_3__** %13, align 8
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @del_list, i32 0, i32 0), align 8
  %15 = getelementptr inbounds %struct.menu_stuff, %struct.menu_stuff* %2, i32 0, i32 0
  store i32 %14, i32* %15, align 8
  %16 = call i32* @list_and_choose(%struct.menu_opts* %1, %struct.menu_stuff* %2)
  store i32* %16, i32** %4, align 8
  %17 = load %struct.string_list_item*, %struct.string_list_item** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @del_list, i32 0, i32 1), align 8
  store %struct.string_list_item* %17, %struct.string_list_item** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %57, %0
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @del_list, i32 0, i32 0), align 8
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %60

22:                                               ; preds = %18
  %23 = load i32, i32* %5, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %23, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %22
  %31 = load %struct.string_list_item*, %struct.string_list_item** %3, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %31, i64 %33
  %35 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  store i8 0, i8* %36, align 1
  br label %56

37:                                               ; preds = %22
  %38 = load i32, i32* %5, align 4
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %38, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %57

48:                                               ; preds = %37
  %49 = load %struct.string_list_item*, %struct.string_list_item** %3, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %49, i64 %51
  %53 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  store i8 0, i8* %54, align 1
  br label %55

55:                                               ; preds = %48
  br label %56

56:                                               ; preds = %55, %30
  br label %57

57:                                               ; preds = %56, %45
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %18

60:                                               ; preds = %18
  %61 = call i32 @string_list_remove_empty_items(%struct.TYPE_3__* @del_list, i32 0)
  %62 = load i32*, i32** %4, align 8
  %63 = call i32 @free(i32* %62)
  ret i32 0
}

declare dso_local i32 @N_(i8*) #1

declare dso_local i32* @list_and_choose(%struct.menu_opts*, %struct.menu_stuff*) #1

declare dso_local i32 @string_list_remove_empty_items(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
