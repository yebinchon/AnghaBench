; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_show-branch.c_parse_reflog_param.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_show-branch.c_parse_reflog_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@reflog = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"unrecognized reflog param '%s'\00", align 1
@DEFAULT_REFLOG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.option*, i8*, i32)* @parse_reflog_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_reflog_param(%struct.option* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.option*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  store %struct.option* %0, %struct.option** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.option*, %struct.option** %5, align 8
  %11 = getelementptr inbounds %struct.option, %struct.option* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i8**
  store i8** %13, i8*** %9, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @BUG_ON_OPT_NEG(i32 %14)
  %16 = load i8*, i8** %6, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %19

19:                                               ; preds = %18, %3
  %20 = load i8*, i8** %6, align 8
  %21 = call i64 @strtoul(i8* %20, i8** %8, i32 10)
  store i64 %21, i64* @reflog, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 44
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load i8*, i8** %8, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  %29 = load i8**, i8*** %9, align 8
  store i8* %28, i8** %29, align 8
  br label %40

30:                                               ; preds = %19
  %31 = load i8*, i8** %8, align 8
  %32 = load i8, i8* %31, align 1
  %33 = icmp ne i8 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  store i32 %36, i32* %4, align 4
  br label %46

37:                                               ; preds = %30
  %38 = load i8**, i8*** %9, align 8
  store i8* null, i8** %38, align 8
  br label %39

39:                                               ; preds = %37
  br label %40

40:                                               ; preds = %39, %26
  %41 = load i64, i64* @reflog, align 8
  %42 = icmp sle i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i64, i64* @DEFAULT_REFLOG, align 8
  store i64 %44, i64* @reflog, align 8
  br label %45

45:                                               ; preds = %43, %40
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %34
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @BUG_ON_OPT_NEG(i32) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @error(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
