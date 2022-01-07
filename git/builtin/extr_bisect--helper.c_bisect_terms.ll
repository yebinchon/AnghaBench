; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_bisect--helper.c_bisect_terms.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_bisect--helper.c_bisect_terms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bisect_terms = type { i8*, i8* }

@.str = private unnamed_addr constant [17 x i8] c"no terms defined\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"Your current terms are %s for the old state\0Aand %s for the new state.\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"--term-good\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"--term-old\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"--term-bad\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"--term-new\00", align 1
@.str.7 = private unnamed_addr constant [117 x i8] c"invalid argument %s for 'git bisect terms'.\0ASupported options are: --term-good|--term-old and --term-bad|--term-new.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bisect_terms*, i8*)* @bisect_terms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bisect_terms(%struct.bisect_terms* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bisect_terms*, align 8
  %5 = alloca i8*, align 8
  store %struct.bisect_terms* %0, %struct.bisect_terms** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.bisect_terms*, %struct.bisect_terms** %4, align 8
  %7 = call i64 @get_terms(%struct.bisect_terms* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = call i8* @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 (i8*, ...) @error(i8* %10)
  store i32 %11, i32* %3, align 4
  br label %48

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %12
  %16 = call i8* @_(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0))
  %17 = load %struct.bisect_terms*, %struct.bisect_terms** %4, align 8
  %18 = getelementptr inbounds %struct.bisect_terms, %struct.bisect_terms* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = load %struct.bisect_terms*, %struct.bisect_terms** %4, align 8
  %21 = getelementptr inbounds %struct.bisect_terms, %struct.bisect_terms* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 (i8*, i8*, ...) @printf(i8* %16, i8* %19, i8* %22)
  store i32 0, i32* %3, align 4
  br label %48

24:                                               ; preds = %12
  %25 = load i8*, i8** %5, align 8
  %26 = call i64 @one_of(i8* %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32* null)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load %struct.bisect_terms*, %struct.bisect_terms** %4, align 8
  %30 = getelementptr inbounds %struct.bisect_terms, %struct.bisect_terms* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %31)
  br label %47

33:                                               ; preds = %24
  %34 = load i8*, i8** %5, align 8
  %35 = call i64 @one_of(i8* %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32* null)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load %struct.bisect_terms*, %struct.bisect_terms** %4, align 8
  %39 = getelementptr inbounds %struct.bisect_terms, %struct.bisect_terms* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %40)
  br label %46

42:                                               ; preds = %33
  %43 = call i8* @_(i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.7, i64 0, i64 0))
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 (i8*, ...) @error(i8* %43, i8* %44)
  store i32 %45, i32* %3, align 4
  br label %48

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %46, %28
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %42, %15, %9
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i64 @get_terms(%struct.bisect_terms*) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i64 @one_of(i8*, i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
