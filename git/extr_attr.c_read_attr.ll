; ModuleID = '/home/carl/AnghaBench/git/extr_attr.c_read_attr.c'
source_filename = "/home/carl/AnghaBench/git/extr_attr.c_read_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attr_stack = type { i32 }
%struct.index_state = type { i32 }

@direction = common dso_local global i64 0, align 8
@GIT_ATTR_INDEX = common dso_local global i64 0, align 8
@GIT_ATTR_CHECKOUT = common dso_local global i64 0, align 8
@GIT_ATTR_CHECKIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.attr_stack* (%struct.index_state*, i8*, i32)* @read_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.attr_stack* @read_attr(%struct.index_state* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.index_state*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.attr_stack*, align 8
  store %struct.index_state* %0, %struct.index_state** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.attr_stack* null, %struct.attr_stack** %7, align 8
  %8 = load i64, i64* @direction, align 8
  %9 = load i64, i64* @GIT_ATTR_INDEX, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load %struct.index_state*, %struct.index_state** %4, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call %struct.attr_stack* @read_attr_from_index(%struct.index_state* %12, i8* %13, i32 %14)
  store %struct.attr_stack* %15, %struct.attr_stack** %7, align 8
  br label %54

16:                                               ; preds = %3
  %17 = call i32 (...) @is_bare_repository()
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %53, label %19

19:                                               ; preds = %16
  %20 = load i64, i64* @direction, align 8
  %21 = load i64, i64* @GIT_ATTR_CHECKOUT, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %19
  %24 = load %struct.index_state*, %struct.index_state** %4, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call %struct.attr_stack* @read_attr_from_index(%struct.index_state* %24, i8* %25, i32 %26)
  store %struct.attr_stack* %27, %struct.attr_stack** %7, align 8
  %28 = load %struct.attr_stack*, %struct.attr_stack** %7, align 8
  %29 = icmp ne %struct.attr_stack* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %23
  %31 = load i8*, i8** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call %struct.attr_stack* @read_attr_from_file(i8* %31, i32 %32)
  store %struct.attr_stack* %33, %struct.attr_stack** %7, align 8
  br label %34

34:                                               ; preds = %30, %23
  br label %52

35:                                               ; preds = %19
  %36 = load i64, i64* @direction, align 8
  %37 = load i64, i64* @GIT_ATTR_CHECKIN, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %35
  %40 = load i8*, i8** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call %struct.attr_stack* @read_attr_from_file(i8* %40, i32 %41)
  store %struct.attr_stack* %42, %struct.attr_stack** %7, align 8
  %43 = load %struct.attr_stack*, %struct.attr_stack** %7, align 8
  %44 = icmp ne %struct.attr_stack* %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %39
  %46 = load %struct.index_state*, %struct.index_state** %4, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call %struct.attr_stack* @read_attr_from_index(%struct.index_state* %46, i8* %47, i32 %48)
  store %struct.attr_stack* %49, %struct.attr_stack** %7, align 8
  br label %50

50:                                               ; preds = %45, %39
  br label %51

51:                                               ; preds = %50, %35
  br label %52

52:                                               ; preds = %51, %34
  br label %53

53:                                               ; preds = %52, %16
  br label %54

54:                                               ; preds = %53, %11
  %55 = load %struct.attr_stack*, %struct.attr_stack** %7, align 8
  %56 = icmp ne %struct.attr_stack* %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %54
  %58 = call %struct.attr_stack* @xcalloc(i32 1, i32 4)
  store %struct.attr_stack* %58, %struct.attr_stack** %7, align 8
  br label %59

59:                                               ; preds = %57, %54
  %60 = load %struct.attr_stack*, %struct.attr_stack** %7, align 8
  ret %struct.attr_stack* %60
}

declare dso_local %struct.attr_stack* @read_attr_from_index(%struct.index_state*, i8*, i32) #1

declare dso_local i32 @is_bare_repository(...) #1

declare dso_local %struct.attr_stack* @read_attr_from_file(i8*, i32) #1

declare dso_local %struct.attr_stack* @xcalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
