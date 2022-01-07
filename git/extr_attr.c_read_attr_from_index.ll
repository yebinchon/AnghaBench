; ModuleID = '/home/carl/AnghaBench/git/extr_attr.c_read_attr_from_index.c'
source_filename = "/home/carl/AnghaBench/git/extr_attr.c_read_attr_from_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attr_stack = type { i32 }
%struct.index_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.attr_stack* (%struct.index_state*, i8*, i32)* @read_attr_from_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.attr_stack* @read_attr_from_index(%struct.index_state* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.attr_stack*, align 8
  %5 = alloca %struct.index_state*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.attr_stack*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.index_state* %0, %struct.index_state** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %14 = load %struct.index_state*, %struct.index_state** %5, align 8
  %15 = icmp ne %struct.index_state* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store %struct.attr_stack* null, %struct.attr_stack** %4, align 8
  br label %55

17:                                               ; preds = %3
  %18 = load %struct.index_state*, %struct.index_state** %5, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i8* @read_blob_data_from_index(%struct.index_state* %18, i8* %19, i32* null)
  store i8* %20, i8** %9, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  store %struct.attr_stack* null, %struct.attr_stack** %4, align 8
  br label %55

24:                                               ; preds = %17
  %25 = call %struct.attr_stack* @xcalloc(i32 1, i32 4)
  store %struct.attr_stack* %25, %struct.attr_stack** %8, align 8
  %26 = load i8*, i8** %9, align 8
  store i8* %26, i8** %10, align 8
  br label %27

27:                                               ; preds = %31, %24
  %28 = load i8*, i8** %10, align 8
  %29 = load i8, i8* %28, align 1
  %30 = icmp ne i8 %29, 0
  br i1 %30, label %31, label %51

31:                                               ; preds = %27
  %32 = load i8*, i8** %10, align 8
  %33 = call i8* @strchrnul(i8* %32, i8 signext 10)
  store i8* %33, i8** %12, align 8
  %34 = load i8*, i8** %12, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 10
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %13, align 4
  %39 = load i8*, i8** %12, align 8
  store i8 0, i8* %39, align 1
  %40 = load %struct.attr_stack*, %struct.attr_stack** %8, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load i32, i32* %11, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @handle_attr_line(%struct.attr_stack* %40, i8* %41, i8* %42, i32 %44, i32 %45)
  %47 = load i8*, i8** %12, align 8
  %48 = load i32, i32* %13, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  store i8* %50, i8** %10, align 8
  br label %27

51:                                               ; preds = %27
  %52 = load i8*, i8** %9, align 8
  %53 = call i32 @free(i8* %52)
  %54 = load %struct.attr_stack*, %struct.attr_stack** %8, align 8
  store %struct.attr_stack* %54, %struct.attr_stack** %4, align 8
  br label %55

55:                                               ; preds = %51, %23, %16
  %56 = load %struct.attr_stack*, %struct.attr_stack** %4, align 8
  ret %struct.attr_stack* %56
}

declare dso_local i8* @read_blob_data_from_index(%struct.index_state*, i8*, i32*) #1

declare dso_local %struct.attr_stack* @xcalloc(i32, i32) #1

declare dso_local i8* @strchrnul(i8*, i8 signext) #1

declare dso_local i32 @handle_attr_line(%struct.attr_stack*, i8*, i8*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
