; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/sesutil/extr_sesutil.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/sesutil/extr_sesutil.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.command = type { i32 (i32, i8**)*, i32 }

@.str = private unnamed_addr constant [15 x i8] c"/dev/ses[0-9]*\00", align 1
@uflag = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"u:\00", align 1
@optarg = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"Missing command\00", align 1
@nbcmds = common dso_local global i32 0, align 4
@cmds = common dso_local global %struct.command* null, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"unknown command %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.command*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.command* null, %struct.command** %8, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i8**, i8*** %5, align 8
  %11 = call i32 @xo_parse_args(i32 %9, i8** %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = call i32 @exit(i32 1) #3
  unreachable

16:                                               ; preds = %2
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** @uflag, align 8
  br label %17

17:                                               ; preds = %30, %16
  %18 = load i32, i32* %4, align 4
  %19 = load i8**, i8*** %5, align 8
  %20 = call i32 @getopt_long(i32 %18, i8** %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* null, i32* null)
  store i32 %20, i32* %7, align 4
  %21 = icmp ne i32 %20, -1
  br i1 %21, label %22, label %31

22:                                               ; preds = %17
  %23 = load i32, i32* %7, align 4
  switch i32 %23, label %27 [
    i32 117, label %24
    i32 63, label %26
  ]

24:                                               ; preds = %22
  %25 = load i8*, i8** @optarg, align 8
  store i8* %25, i8** @uflag, align 8
  br label %30

26:                                               ; preds = %22
  br label %27

27:                                               ; preds = %22, %26
  %28 = load i32, i32* @stderr, align 4
  %29 = call i32 @usage(i32 %28, i32* null)
  br label %30

30:                                               ; preds = %27, %24
  br label %17

31:                                               ; preds = %17
  %32 = load i64, i64* @optind, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = sub nsw i64 %34, %32
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %4, align 4
  %37 = load i64, i64* @optind, align 8
  %38 = load i8**, i8*** %5, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 %37
  store i8** %39, i8*** %5, align 8
  %40 = load i32, i32* %4, align 4
  %41 = icmp slt i32 %40, 1
  br i1 %41, label %42, label %46

42:                                               ; preds = %31
  %43 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i32, i32* @stderr, align 4
  %45 = call i32 @usage(i32 %44, i32* null)
  br label %46

46:                                               ; preds = %42, %31
  store i32 0, i32* %6, align 4
  br label %47

47:                                               ; preds = %69, %46
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @nbcmds, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %72

51:                                               ; preds = %47
  %52 = load i8**, i8*** %5, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 0
  %54 = load i8*, i8** %53, align 8
  %55 = load %struct.command*, %struct.command** @cmds, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.command, %struct.command* %55, i64 %57
  %59 = getelementptr inbounds %struct.command, %struct.command* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @strcmp(i8* %54, i32 %60)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %51
  %64 = load %struct.command*, %struct.command** @cmds, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.command, %struct.command* %64, i64 %66
  store %struct.command* %67, %struct.command** %8, align 8
  br label %72

68:                                               ; preds = %51
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %6, align 4
  br label %47

72:                                               ; preds = %63, %47
  %73 = load %struct.command*, %struct.command** %8, align 8
  %74 = icmp eq %struct.command* %73, null
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  %76 = load i8**, i8*** %5, align 8
  %77 = getelementptr inbounds i8*, i8** %76, i64 0
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %78)
  %80 = load i32, i32* @stderr, align 4
  %81 = call i32 @usage(i32 %80, i32* null)
  br label %82

82:                                               ; preds = %75, %72
  %83 = load %struct.command*, %struct.command** %8, align 8
  %84 = getelementptr inbounds %struct.command, %struct.command* %83, i32 0, i32 0
  %85 = load i32 (i32, i8**)*, i32 (i32, i8**)** %84, align 8
  %86 = load i32, i32* %4, align 4
  %87 = load i8**, i8*** %5, align 8
  %88 = call i32 %85(i32 %86, i8** %87)
  ret i32 %88
}

declare dso_local i32 @xo_parse_args(i32, i8**) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @getopt_long(i32, i8**, i8*, i32*, i32*) #1

declare dso_local i32 @usage(i32, i32*) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
