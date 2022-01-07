; ModuleID = '/home/carl/AnghaBench/git/extr_attr.c_git_check_attr.c'
source_filename = "/home/carl/AnghaBench/git/extr_attr.c_git_check_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32 }
%struct.attr_check = type { i32, %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i8*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i8* }

@ATTR__UNKNOWN = common dso_local global i8* null, align 8
@ATTR__UNSET = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @git_check_attr(%struct.index_state* %0, i8* %1, %struct.attr_check* %2) #0 {
  %4 = alloca %struct.index_state*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.attr_check*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store %struct.index_state* %0, %struct.index_state** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.attr_check* %2, %struct.attr_check** %6, align 8
  %10 = load %struct.index_state*, %struct.index_state** %4, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load %struct.attr_check*, %struct.attr_check** %6, align 8
  %13 = call i32 @collect_some_attrs(%struct.index_state* %10, i8* %11, %struct.attr_check* %12)
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %52, %3
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.attr_check*, %struct.attr_check** %6, align 8
  %17 = getelementptr inbounds %struct.attr_check, %struct.attr_check* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %55

20:                                               ; preds = %14
  %21 = load %struct.attr_check*, %struct.attr_check** %6, align 8
  %22 = getelementptr inbounds %struct.attr_check, %struct.attr_check* %21, i32 0, i32 1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %8, align 8
  %31 = load %struct.attr_check*, %struct.attr_check** %6, align 8
  %32 = getelementptr inbounds %struct.attr_check, %struct.attr_check* %31, i32 0, i32 2
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load i64, i64* %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %9, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = load i8*, i8** @ATTR__UNKNOWN, align 8
  %40 = icmp eq i8* %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %20
  %42 = load i8*, i8** @ATTR__UNSET, align 8
  store i8* %42, i8** %9, align 8
  br label %43

43:                                               ; preds = %41, %20
  %44 = load i8*, i8** %9, align 8
  %45 = load %struct.attr_check*, %struct.attr_check** %6, align 8
  %46 = getelementptr inbounds %struct.attr_check, %struct.attr_check* %45, i32 0, i32 1
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  store i8* %44, i8** %51, align 8
  br label %52

52:                                               ; preds = %43
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %14

55:                                               ; preds = %14
  ret void
}

declare dso_local i32 @collect_some_attrs(%struct.index_state*, i8*, %struct.attr_check*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
