; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_rev-parse.c_is_rev_argument.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_rev-parse.c_is_rev_argument.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@is_rev_argument.rev_args = internal global [29 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [6 x i8] c"--all\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"--bisect\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"--dense\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"--branches=\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"--branches\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"--header\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"--ignore-missing\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"--max-age=\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"--max-count=\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"--min-age=\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"--no-merges\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"--min-parents=\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"--no-min-parents\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"--max-parents=\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"--no-max-parents\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"--objects\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"--objects-edge\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"--parents\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"--pretty\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"--remotes=\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"--remotes\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"--glob=\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"--sparse\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"--tags=\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"--tags\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"--topo-order\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"--date-order\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"--unpacked\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @is_rev_argument to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_rev_argument(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8** getelementptr inbounds ([29 x i8*], [29 x i8*]* @is_rev_argument.rev_args, i64 0, i64 0), i8*** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp eq i32 %9, 45
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 1
  %14 = load i8, i8* %13, align 1
  %15 = call i64 @isdigit(i8 signext %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  store i32 1, i32* %2, align 4
  br label %50

18:                                               ; preds = %11, %1
  br label %19

19:                                               ; preds = %49, %18
  %20 = load i8**, i8*** %4, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i32 1
  store i8** %21, i8*** %4, align 8
  %22 = load i8*, i8** %20, align 8
  store i8* %22, i8** %5, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %50

26:                                               ; preds = %19
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @strlen(i8* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i8*, i8** %3, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @strcmp(i8* %29, i8* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %26
  %34 = load i8*, i8** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %34, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 61
  br i1 %41, label %42, label %49

42:                                               ; preds = %33
  %43 = load i8*, i8** %3, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @strncmp(i8* %43, i8* %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %42, %26
  store i32 1, i32* %2, align 4
  br label %50

49:                                               ; preds = %42, %33
  br label %19

50:                                               ; preds = %48, %25, %17
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
