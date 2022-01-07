; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/script/extr_script.c_doshell.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/script/extr_script.c_doshell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"SHELL\00", align 1
@_PATH_BSHELL = common dso_local global i8* null, align 8
@master = common dso_local global i32 0, align 4
@fscript = common dso_local global i32 0, align 4
@fmfname = common dso_local global i32 0, align 4
@slave = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"SCRIPT\00", align 1
@fname = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-i\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**)* @doshell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @doshell(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca i8*, align 8
  store i8** %0, i8*** %2, align 8
  %4 = call i8* @getenv(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i8* %4, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i8*, i8** @_PATH_BSHELL, align 8
  store i8* %8, i8** %3, align 8
  br label %9

9:                                                ; preds = %7, %1
  %10 = load i32, i32* @master, align 4
  %11 = call i32 @close(i32 %10)
  %12 = load i32, i32* @fscript, align 4
  %13 = call i32 @fclose(i32 %12)
  %14 = load i32, i32* @fmfname, align 4
  %15 = call i32 @free(i32 %14)
  %16 = load i32, i32* @slave, align 4
  %17 = call i32 @login_tty(i32 %16)
  %18 = load i32, i32* @fname, align 4
  %19 = call i32 @setenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %18, i32 1)
  %20 = load i8**, i8*** %2, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 0
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %34

24:                                               ; preds = %9
  %25 = load i8**, i8*** %2, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 0
  %27 = load i8*, i8** %26, align 8
  %28 = load i8**, i8*** %2, align 8
  %29 = call i32 @execvp(i8* %27, i8** %28)
  %30 = load i8**, i8*** %2, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %32)
  br label %40

34:                                               ; preds = %9
  %35 = load i8*, i8** %3, align 8
  %36 = load i8*, i8** %3, align 8
  %37 = call i32 @execl(i8* %35, i8* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* null)
  %38 = load i8*, i8** %3, align 8
  %39 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %38)
  br label %40

40:                                               ; preds = %34, %24
  %41 = call i32 @exit(i32 1) #3
  unreachable
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @fclose(i32) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @login_tty(i32) #1

declare dso_local i32 @setenv(i8*, i32, i32) #1

declare dso_local i32 @execvp(i8*, i8**) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i32 @execl(i8*, i8*, i8*, i8*) #1

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
