; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_clean.c_find_unique.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_clean.c_find_unique.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.menu_stuff = type { i32, i32, i64 }
%struct.menu_item = type { i8, i32 }
%struct.string_list_item = type { i32 }
%struct.string_list = type { %struct.string_list_item* }

@.str = private unnamed_addr constant [41 x i8] c"Bad type of menu_stuff when parse choice\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.menu_stuff*)* @find_unique to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_unique(i8* %0, %struct.menu_stuff* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.menu_stuff*, align 8
  %5 = alloca %struct.menu_item*, align 8
  %6 = alloca %struct.string_list_item*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.menu_stuff* %1, %struct.menu_stuff** %4, align 8
  store i32 0, i32* %9, align 4
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @strlen(i8* %10)
  store i32 %11, i32* %8, align 4
  %12 = load %struct.menu_stuff*, %struct.menu_stuff** %4, align 8
  %13 = getelementptr inbounds %struct.menu_stuff, %struct.menu_stuff* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %15 [
    i32 129, label %17
    i32 128, label %71
  ]

15:                                               ; preds = %2
  %16 = call i32 @die(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %2, %15
  %18 = load %struct.menu_stuff*, %struct.menu_stuff** %4, align 8
  %19 = getelementptr inbounds %struct.menu_stuff, %struct.menu_stuff* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.menu_item*
  store %struct.menu_item* %21, %struct.menu_item** %5, align 8
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %65, %17
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.menu_stuff*, %struct.menu_stuff** %4, align 8
  %25 = getelementptr inbounds %struct.menu_stuff, %struct.menu_stuff* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %70

28:                                               ; preds = %22
  %29 = load i32, i32* %8, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %43

31:                                               ; preds = %28
  %32 = load i8*, i8** %3, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = load %struct.menu_item*, %struct.menu_item** %5, align 8
  %36 = getelementptr inbounds %struct.menu_item, %struct.menu_item* %35, i32 0, i32 0
  %37 = load i8, i8* %36, align 4
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %34, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %9, align 4
  br label %70

43:                                               ; preds = %31, %28
  %44 = load i8*, i8** %3, align 8
  %45 = load %struct.menu_item*, %struct.menu_item** %5, align 8
  %46 = getelementptr inbounds %struct.menu_item, %struct.menu_item* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @strncasecmp(i8* %44, i32 %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %64, label %51

51:                                               ; preds = %43
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = load i32, i32* %8, align 4
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store i32 -1, i32* %9, align 4
  br label %59

58:                                               ; preds = %54
  store i32 0, i32* %9, align 4
  br label %70

59:                                               ; preds = %57
  br label %63

60:                                               ; preds = %51
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %60, %59
  br label %64

64:                                               ; preds = %63, %43
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  %68 = load %struct.menu_item*, %struct.menu_item** %5, align 8
  %69 = getelementptr inbounds %struct.menu_item, %struct.menu_item* %68, i32 1
  store %struct.menu_item* %69, %struct.menu_item** %5, align 8
  br label %22

70:                                               ; preds = %58, %40, %22
  br label %106

71:                                               ; preds = %2
  %72 = load %struct.menu_stuff*, %struct.menu_stuff** %4, align 8
  %73 = getelementptr inbounds %struct.menu_stuff, %struct.menu_stuff* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = inttoptr i64 %74 to %struct.string_list*
  %76 = getelementptr inbounds %struct.string_list, %struct.string_list* %75, i32 0, i32 0
  %77 = load %struct.string_list_item*, %struct.string_list_item** %76, align 8
  store %struct.string_list_item* %77, %struct.string_list_item** %6, align 8
  store i32 0, i32* %7, align 4
  br label %78

78:                                               ; preds = %100, %71
  %79 = load i32, i32* %7, align 4
  %80 = load %struct.menu_stuff*, %struct.menu_stuff** %4, align 8
  %81 = getelementptr inbounds %struct.menu_stuff, %struct.menu_stuff* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp slt i32 %79, %82
  br i1 %83, label %84, label %105

84:                                               ; preds = %78
  %85 = load i8*, i8** %3, align 8
  %86 = load %struct.string_list_item*, %struct.string_list_item** %6, align 8
  %87 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @strncasecmp(i8* %85, i32 %88, i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %99, label %92

92:                                               ; preds = %84
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  store i32 0, i32* %9, align 4
  br label %105

96:                                               ; preds = %92
  %97 = load i32, i32* %7, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %9, align 4
  br label %99

99:                                               ; preds = %96, %84
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %7, align 4
  %103 = load %struct.string_list_item*, %struct.string_list_item** %6, align 8
  %104 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %103, i32 1
  store %struct.string_list_item* %104, %struct.string_list_item** %6, align 8
  br label %78

105:                                              ; preds = %95, %78
  br label %106

106:                                              ; preds = %105, %70
  %107 = load i32, i32* %9, align 4
  ret i32 %107
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @die(i8*) #1

declare dso_local i32 @strncasecmp(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
