; ModuleID = '/home/carl/AnghaBench/git/extr_apply.c_parse_fragment_header.c'
source_filename = "/home/carl/AnghaBench/git/extr_apply.c_parse_fragment_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fragment = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c" +\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" @@\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.fragment*)* @parse_fragment_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_fragment_header(i8* %0, i32 %1, %struct.fragment* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fragment*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.fragment* %2, %struct.fragment** %7, align 8
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %3
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sub nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %12, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 10
  br i1 %19, label %20, label %21

20:                                               ; preds = %11, %3
  store i32 -1, i32* %4, align 4
  br label %38

21:                                               ; preds = %11
  %22 = load i8*, i8** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.fragment*, %struct.fragment** %7, align 8
  %25 = getelementptr inbounds %struct.fragment, %struct.fragment* %24, i32 0, i32 3
  %26 = load %struct.fragment*, %struct.fragment** %7, align 8
  %27 = getelementptr inbounds %struct.fragment, %struct.fragment* %26, i32 0, i32 2
  %28 = call i32 @parse_range(i8* %22, i32 %23, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %25, i32* %27)
  store i32 %28, i32* %8, align 4
  %29 = load i8*, i8** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.fragment*, %struct.fragment** %7, align 8
  %33 = getelementptr inbounds %struct.fragment, %struct.fragment* %32, i32 0, i32 1
  %34 = load %struct.fragment*, %struct.fragment** %7, align 8
  %35 = getelementptr inbounds %struct.fragment, %struct.fragment* %34, i32 0, i32 0
  %36 = call i32 @parse_range(i8* %29, i32 %30, i32 %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %33, i32* %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %21, %20
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @parse_range(i8*, i32, i32, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
