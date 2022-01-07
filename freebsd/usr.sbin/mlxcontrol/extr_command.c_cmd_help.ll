; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mlxcontrol/extr_command.c_cmd_help.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mlxcontrol/extr_command.c_cmd_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8*, i8* }

@commands = common dso_local global %struct.TYPE_2__* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Unknown command '%s'.\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Valid commands are:\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"  %-20s %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @cmd_help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_help(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp sgt i32 %7, 1
  br i1 %8, label %9, label %46

9:                                                ; preds = %2
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %42, %9
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @commands, align 8
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %45

18:                                               ; preds = %10
  %19 = load i8**, i8*** %5, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 1
  %21 = load i8*, i8** %20, align 8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @commands, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @strcmp(i8* %21, i8* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %41, label %30

30:                                               ; preds = %18
  %31 = load i32, i32* @stderr, align 4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @commands, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 (i32, i8*, ...) @fprintf(i32 %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %37)
  %39 = load i32, i32* @stderr, align 4
  %40 = call i32 @fflush(i32 %39)
  store i32 0, i32* %3, align 4
  br label %87

41:                                               ; preds = %18
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %10

45:                                               ; preds = %10
  br label %46

46:                                               ; preds = %45, %2
  %47 = load i8**, i8*** %5, align 8
  %48 = icmp ne i8** %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load i32, i32* @stderr, align 4
  %51 = load i8**, i8*** %5, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 1
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 (i32, i8*, ...) @fprintf(i32 %50, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %53)
  br label %55

55:                                               ; preds = %49, %46
  %56 = load i32, i32* @stderr, align 4
  %57 = call i32 (i32, i8*, ...) @fprintf(i32 %56, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %81, %55
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @commands, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %84

66:                                               ; preds = %58
  %67 = load i32, i32* @stderr, align 4
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** @commands, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** @commands, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 2
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 (i32, i8*, ...) @fprintf(i32 %67, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %73, i8* %79)
  br label %81

81:                                               ; preds = %66
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %6, align 4
  br label %58

84:                                               ; preds = %58
  %85 = load i32, i32* @stderr, align 4
  %86 = call i32 @fflush(i32 %85)
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %84, %30
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
