; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/script/extr_script.c_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/script/extr_script.c_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ttyflg = common dso_local global i64 0, align 8
@STDIN_FILENO = common dso_local global i32 0, align 4
@TCSAFLUSH = common dso_local global i32 0, align 4
@tt = common dso_local global i32 0, align 4
@rawout = common dso_local global i64 0, align 8
@fscript = common dso_local global i32 0, align 4
@qflg = common dso_local global i32 0, align 4
@showexit = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"\0ACommand exit status: %d\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"\0AScript done on %s\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"\0AScript done, output file is %s\0A\00", align 1
@fname = common dso_local global i8* null, align 8
@fflg = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"Filemon done, output file is %s\0A\00", align 1
@fmfname = common dso_local global i8* null, align 8
@master = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @done(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i64, i64* @ttyflg, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load i32, i32* @STDIN_FILENO, align 4
  %8 = load i32, i32* @TCSAFLUSH, align 4
  %9 = call i32 @tcsetattr(i32 %7, i32 %8, i32* @tt)
  br label %10

10:                                               ; preds = %6, %1
  %11 = call i32 @time(i32* null)
  store i32 %11, i32* %3, align 4
  %12 = load i64, i64* @rawout, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load i32, i32* @fscript, align 4
  %16 = call i32 @record(i32 %15, i32* null, i32 0, i8 signext 101)
  br label %17

17:                                               ; preds = %14, %10
  %18 = load i32, i32* @qflg, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %43, label %20

20:                                               ; preds = %17
  %21 = load i64, i64* @rawout, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %20
  %24 = load i64, i64* @showexit, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i32, i32* @fscript, align 4
  %28 = load i32, i32* %2, align 4
  %29 = call i32 (i32, i8*, ...) @fprintf(i32 %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %26, %23
  %31 = load i32, i32* @fscript, align 4
  %32 = call i8* @ctime(i32* %3)
  %33 = call i32 (i32, i8*, ...) @fprintf(i32 %31, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  br label %34

34:                                               ; preds = %30, %20
  %35 = load i8*, i8** @fname, align 8
  %36 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %35)
  %37 = load i64, i64* @fflg, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i8*, i8** @fmfname, align 8
  %41 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %40)
  br label %42

42:                                               ; preds = %39, %34
  br label %43

43:                                               ; preds = %42, %17
  %44 = load i32, i32* @fscript, align 4
  %45 = call i32 @fclose(i32 %44)
  %46 = load i32, i32* @master, align 4
  %47 = call i32 @close(i32 %46)
  %48 = load i32, i32* %2, align 4
  %49 = call i32 @exit(i32 %48) #3
  unreachable
}

declare dso_local i32 @tcsetattr(i32, i32, i32*) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @record(i32, i32*, i32, i8 signext) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @ctime(i32*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @fclose(i32) #1

declare dso_local i32 @close(i32) #1

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
