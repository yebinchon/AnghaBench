; ModuleID = '/home/carl/AnghaBench/git/extr_attr.c_git_all_attrs.c'
source_filename = "/home/carl/AnghaBench/git/extr_attr.c_git_all_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32 }
%struct.attr_check = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8* }
%struct.attr_check_item = type { i8* }

@ATTR__UNSET = common dso_local global i8* null, align 8
@ATTR__UNKNOWN = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @git_all_attrs(%struct.index_state* %0, i8* %1, %struct.attr_check* %2) #0 {
  %4 = alloca %struct.index_state*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.attr_check*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.attr_check_item*, align 8
  store %struct.index_state* %0, %struct.index_state** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.attr_check* %2, %struct.attr_check** %6, align 8
  %11 = load %struct.attr_check*, %struct.attr_check** %6, align 8
  %12 = call i32 @attr_check_reset(%struct.attr_check* %11)
  %13 = load %struct.index_state*, %struct.index_state** %4, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = load %struct.attr_check*, %struct.attr_check** %6, align 8
  %16 = call i32 @collect_some_attrs(%struct.index_state* %13, i8* %14, %struct.attr_check* %15)
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %58, %3
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.attr_check*, %struct.attr_check** %6, align 8
  %20 = getelementptr inbounds %struct.attr_check, %struct.attr_check* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %61

23:                                               ; preds = %17
  %24 = load %struct.attr_check*, %struct.attr_check** %6, align 8
  %25 = getelementptr inbounds %struct.attr_check, %struct.attr_check* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %8, align 8
  %34 = load %struct.attr_check*, %struct.attr_check** %6, align 8
  %35 = getelementptr inbounds %struct.attr_check, %struct.attr_check* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %9, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = load i8*, i8** @ATTR__UNSET, align 8
  %44 = icmp eq i8* %42, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %23
  %46 = load i8*, i8** %9, align 8
  %47 = load i8*, i8** @ATTR__UNKNOWN, align 8
  %48 = icmp eq i8* %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45, %23
  br label %58

50:                                               ; preds = %45
  %51 = load %struct.attr_check*, %struct.attr_check** %6, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = call i32 @git_attr(i8* %52)
  %54 = call %struct.attr_check_item* @attr_check_append(%struct.attr_check* %51, i32 %53)
  store %struct.attr_check_item* %54, %struct.attr_check_item** %10, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = load %struct.attr_check_item*, %struct.attr_check_item** %10, align 8
  %57 = getelementptr inbounds %struct.attr_check_item, %struct.attr_check_item* %56, i32 0, i32 0
  store i8* %55, i8** %57, align 8
  br label %58

58:                                               ; preds = %50, %49
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %17

61:                                               ; preds = %17
  ret void
}

declare dso_local i32 @attr_check_reset(%struct.attr_check*) #1

declare dso_local i32 @collect_some_attrs(%struct.index_state*, i8*, %struct.attr_check*) #1

declare dso_local %struct.attr_check_item* @attr_check_append(%struct.attr_check*, i32) #1

declare dso_local i32 @git_attr(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
