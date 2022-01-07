; ModuleID = '/home/carl/AnghaBench/git/extr_convert.c_git_path_check_encoding.c'
source_filename = "/home/carl/AnghaBench/git/extr_convert.c_git_path_check_encoding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attr_check_item = type { i8* }

@.str = private unnamed_addr constant [47 x i8] c"true/false are no valid working-tree-encodings\00", align 1
@default_encoding = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.attr_check_item*)* @git_path_check_encoding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @git_path_check_encoding(%struct.attr_check_item* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.attr_check_item*, align 8
  %4 = alloca i8*, align 8
  store %struct.attr_check_item* %0, %struct.attr_check_item** %3, align 8
  %5 = load %struct.attr_check_item*, %struct.attr_check_item** %3, align 8
  %6 = getelementptr inbounds %struct.attr_check_item, %struct.attr_check_item* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  store i8* %7, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i64 @ATTR_UNSET(i8* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @strlen(i8* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11, %1
  store i8* null, i8** %2, align 8
  br label %35

16:                                               ; preds = %11
  %17 = load i8*, i8** %4, align 8
  %18 = call i64 @ATTR_TRUE(i8* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i8*, i8** %4, align 8
  %22 = call i64 @ATTR_FALSE(i8* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20, %16
  %25 = call i32 @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %26 = call i32 @die(i32 %25)
  br label %27

27:                                               ; preds = %24, %20
  %28 = load i8*, i8** %4, align 8
  %29 = load i32, i32* @default_encoding, align 4
  %30 = call i64 @same_encoding(i8* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i8* null, i8** %2, align 8
  br label %35

33:                                               ; preds = %27
  %34 = load i8*, i8** %4, align 8
  store i8* %34, i8** %2, align 8
  br label %35

35:                                               ; preds = %33, %32, %15
  %36 = load i8*, i8** %2, align 8
  ret i8* %36
}

declare dso_local i64 @ATTR_UNSET(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @ATTR_TRUE(i8*) #1

declare dso_local i64 @ATTR_FALSE(i8*) #1

declare dso_local i32 @die(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @same_encoding(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
