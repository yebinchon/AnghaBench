; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_grep.c_context_callback.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_grep.c_context_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i32, %struct.grep_opt* }
%struct.grep_opt = type { i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"switch `%c' expects a numerical value\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.option*, i8*, i32)* @context_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @context_callback(%struct.option* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.option*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.grep_opt*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.option* %0, %struct.option** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.option*, %struct.option** %5, align 8
  %12 = getelementptr inbounds %struct.option, %struct.option* %11, i32 0, i32 1
  %13 = load %struct.grep_opt*, %struct.grep_opt** %12, align 8
  store %struct.grep_opt* %13, %struct.grep_opt** %8, align 8
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load %struct.grep_opt*, %struct.grep_opt** %8, align 8
  %18 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %17, i32 0, i32 1
  store i32 0, i32* %18, align 4
  %19 = load %struct.grep_opt*, %struct.grep_opt** %8, align 8
  %20 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %19, i32 0, i32 0
  store i32 0, i32* %20, align 4
  store i32 0, i32* %4, align 4
  br label %39

21:                                               ; preds = %3
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @strtol(i8* %22, i8** %10, i32 10)
  store i32 %23, i32* %9, align 4
  %24 = load i8*, i8** %10, align 8
  %25 = load i8, i8* %24, align 1
  %26 = icmp ne i8 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.option*, %struct.option** %5, align 8
  %30 = getelementptr inbounds %struct.option, %struct.option* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @error(i32 %28, i32 %31)
  store i32 %32, i32* %4, align 4
  br label %39

33:                                               ; preds = %21
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.grep_opt*, %struct.grep_opt** %8, align 8
  %36 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.grep_opt*, %struct.grep_opt** %8, align 8
  %38 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %37, i32 0, i32 0
  store i32 %34, i32* %38, align 4
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %33, %27, %16
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @error(i32, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
