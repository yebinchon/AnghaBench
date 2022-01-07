; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/sesutil/extr_sesutil.c_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/sesutil/extr_sesutil.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8*, i8* }

@.str = private unnamed_addr constant [48 x i8] c"Usage: %s [-u /dev/ses<N>] <command> [options]\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Commands supported:\0A\00", align 1
@nbcmds = common dso_local global i32 0, align 4
@cmds = common dso_local global %struct.TYPE_2__* null, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"Usage: %s %s [-u /dev/ses<N>] %s\0A\09%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"    %-12s%s\0A\09\09%s\0A\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load i32*, i32** %3, align 8
  %10 = call i8* (...) @getprogname()
  %11 = call i32 (i32*, i8*, ...) @fprintf(i32* %9, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* %10)
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 (i32*, i8*, ...) @fprintf(i32* %12, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %14

14:                                               ; preds = %8, %2
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %71, %14
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @nbcmds, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %74

19:                                               ; preds = %15
  %20 = load i8*, i8** %4, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %50

22:                                               ; preds = %19
  %23 = load i8*, i8** %4, align 8
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cmds, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i64 @strcmp(i8* %23, i8* %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %22
  %33 = load i32*, i32** %3, align 8
  %34 = call i8* (...) @getprogname()
  %35 = load i8*, i8** %4, align 8
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cmds, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cmds, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 (i32*, i8*, ...) @fprintf(i32* %33, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* %34, i8* %35, i8* %41, i8* %47)
  br label %74

49:                                               ; preds = %22
  br label %71

50:                                               ; preds = %19
  %51 = load i32*, i32** %3, align 8
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cmds, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cmds, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cmds, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 2
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 (i32*, i8*, ...) @fprintf(i32* %51, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %57, i8* %63, i8* %69)
  br label %71

71:                                               ; preds = %50, %49
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %5, align 4
  br label %15

74:                                               ; preds = %32, %15
  %75 = load i32, i32* @EXIT_FAILURE, align 4
  %76 = call i32 @exit(i32 %75) #3
  unreachable
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i8* @getprogname(...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
