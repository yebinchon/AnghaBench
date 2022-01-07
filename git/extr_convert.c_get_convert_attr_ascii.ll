; ModuleID = '/home/carl/AnghaBench/git/extr_convert.c_get_convert_attr_ascii.c'
source_filename = "/home/carl/AnghaBench/git/extr_convert.c_get_convert_attr_ascii.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32 }
%struct.conv_attrs = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"-text\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"text eol=lf\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"text eol=crlf\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"text=auto\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"text=auto eol=crlf\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"text=auto eol=lf\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_convert_attr_ascii(%struct.index_state* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.index_state*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.conv_attrs, align 4
  store %struct.index_state* %0, %struct.index_state** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.index_state*, %struct.index_state** %4, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i32 @convert_attrs(%struct.index_state* %7, %struct.conv_attrs* %6, i8* %8)
  %10 = getelementptr inbounds %struct.conv_attrs, %struct.conv_attrs* %6, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %20 [
    i32 128, label %12
    i32 132, label %13
    i32 131, label %14
    i32 129, label %15
    i32 130, label %16
    i32 135, label %17
    i32 134, label %18
    i32 133, label %19
  ]

12:                                               ; preds = %2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %21

13:                                               ; preds = %2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %21

14:                                               ; preds = %2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %21

15:                                               ; preds = %2
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %21

16:                                               ; preds = %2
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  br label %21

17:                                               ; preds = %2
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  br label %21

18:                                               ; preds = %2
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8** %3, align 8
  br label %21

19:                                               ; preds = %2
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i8** %3, align 8
  br label %21

20:                                               ; preds = %2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %21

21:                                               ; preds = %20, %19, %18, %17, %16, %15, %14, %13, %12
  %22 = load i8*, i8** %3, align 8
  ret i8* %22
}

declare dso_local i32 @convert_attrs(%struct.index_state*, %struct.conv_attrs*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
