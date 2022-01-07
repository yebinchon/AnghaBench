; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/cron/crontab/extr_crontab.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/cron/crontab/extr_crontab.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Pid = common dso_local global i32 0, align 4
@ProgramName = common dso_local global i8* null, align 8
@User = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"you (%s) are not allowed to use this program\00", align 1
@RealUser = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"AUTH\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"crontab command not allowed\00", align 1
@ERROR_EXIT = common dso_local global i32 0, align 4
@OK_EXIT = common dso_local global i32 0, align 4
@Option = common dso_local global i32 0, align 4
@LC_ALL = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = call i32 (...) @getpid()
  store i32 %7, i32* @Pid, align 4
  %8 = load i8**, i8*** %5, align 8
  %9 = getelementptr inbounds i8*, i8** %8, i64 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** @ProgramName, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = call i32 @parse_args(i32 %11, i8** %12)
  %14 = call i32 (...) @set_cron_uid()
  %15 = call i32 (...) @set_cron_cwd()
  %16 = load i32, i32* @User, align 4
  %17 = call i32 @allowed(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @User, align 4
  %21 = call i32 @warnx(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @RealUser, align 4
  %23 = load i32, i32* @Pid, align 4
  %24 = call i32 @log_it(i32 %22, i32 %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %25 = load i32, i32* @ERROR_EXIT, align 4
  %26 = call i32 @exit(i32 %25) #3
  unreachable

27:                                               ; preds = %2
  %28 = load i32, i32* @OK_EXIT, align 4
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* @Option, align 4
  switch i32 %29, label %43 [
    i32 130, label %30
    i32 132, label %32
    i32 131, label %34
    i32 129, label %36
    i32 128, label %42
  ]

30:                                               ; preds = %27
  %31 = call i32 (...) @list_cmd()
  br label %43

32:                                               ; preds = %27
  %33 = call i32 (...) @delete_cmd()
  br label %43

34:                                               ; preds = %27
  %35 = call i32 (...) @edit_cmd()
  br label %43

36:                                               ; preds = %27
  %37 = call i32 (...) @replace_cmd()
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i32, i32* @ERROR_EXIT, align 4
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %39, %36
  br label %43

42:                                               ; preds = %27
  br label %43

43:                                               ; preds = %27, %42, %41, %34, %32, %30
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @exit(i32 %44) #3
  unreachable
}

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @parse_args(i32, i8**) #1

declare dso_local i32 @set_cron_uid(...) #1

declare dso_local i32 @set_cron_cwd(...) #1

declare dso_local i32 @allowed(i32) #1

declare dso_local i32 @warnx(i8*, i32) #1

declare dso_local i32 @log_it(i32, i32, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @list_cmd(...) #1

declare dso_local i32 @delete_cmd(...) #1

declare dso_local i32 @edit_cmd(...) #1

declare dso_local i32 @replace_cmd(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
