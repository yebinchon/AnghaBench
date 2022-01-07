; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pmcstudy/extr_eval_expr.c_pmc_name_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pmcstudy/extr_eval_expr.c_pmc_name_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expression = type { i8* }

@valid_pmc_cnt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"Unknown PMC %s -- largest we have is $%d -- can't run your expression\0A\00", align 1
@valid_pmcs = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [68 x i8] c"PMC %s does not exist on this machine -- can't run your expression\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.expression*)* @pmc_name_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmc_name_set(%struct.expression* %0) #0 {
  %2 = alloca %struct.expression*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.expression* %0, %struct.expression** %2, align 8
  %6 = load %struct.expression*, %struct.expression** %2, align 8
  %7 = getelementptr inbounds %struct.expression, %struct.expression* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 37
  br i1 %12, label %13, label %39

13:                                               ; preds = %1
  %14 = load %struct.expression*, %struct.expression** %2, align 8
  %15 = getelementptr inbounds %struct.expression, %struct.expression* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 1
  %18 = call i32 @strtol(i8* %17, i32* null, i32 0)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @valid_pmc_cnt, align 4
  %21 = icmp sge i32 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %13
  %23 = load %struct.expression*, %struct.expression** %2, align 8
  %24 = getelementptr inbounds %struct.expression, %struct.expression* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load i32, i32* @valid_pmc_cnt, align 4
  %27 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i8* %25, i32 %26)
  %28 = call i32 @exit(i32 -1) #3
  unreachable

29:                                               ; preds = %13
  %30 = load %struct.expression*, %struct.expression** %2, align 8
  %31 = getelementptr inbounds %struct.expression, %struct.expression* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load i32*, i32** @valid_pmcs, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @strcpy(i8* %32, i32 %37)
  br label %70

39:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %57, %39
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @valid_pmc_cnt, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %60

44:                                               ; preds = %40
  %45 = load i32*, i32** @valid_pmcs, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.expression*, %struct.expression** %2, align 8
  %51 = getelementptr inbounds %struct.expression, %struct.expression* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i64 @strcmp(i32 %49, i8* %52)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %44
  store i32 1, i32* %5, align 4
  br label %60

56:                                               ; preds = %44
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %3, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %3, align 4
  br label %40

60:                                               ; preds = %55, %40
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %60
  %64 = load %struct.expression*, %struct.expression** %2, align 8
  %65 = getelementptr inbounds %struct.expression, %struct.expression* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i8* %66)
  %68 = call i32 @exit(i32 -1) #3
  unreachable

69:                                               ; preds = %60
  br label %70

70:                                               ; preds = %69, %29
  ret void
}

declare dso_local i32 @strtol(i8*, i32*, i32) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
