; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tip/tip/extr_cmds.c_tipabort.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tip/tip/extr_cmds.c_tipabort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIGTERM = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@tipout_pid = common dso_local global i32 0, align 4
@NOSTR = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"\0D\0A%s\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"\0D\0A[EOT]\0D\0A\00", align 1
@uucplock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipabort(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i32, i32* @SIGTERM, align 4
  %4 = load i32, i32* @SIG_IGN, align 4
  %5 = call i32 @signal(i32 %3, i32 %4)
  %6 = load i32, i32* @tipout_pid, align 4
  %7 = load i32, i32* @SIGTERM, align 4
  %8 = call i32 @kill(i32 %6, i32 %7)
  %9 = load i8*, i8** %2, align 8
  %10 = call i32 @disconnect(i8* %9)
  %11 = load i8*, i8** %2, align 8
  %12 = load i8*, i8** @NOSTR, align 8
  %13 = icmp ne i8* %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i8*, i8** %2, align 8
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %15)
  br label %17

17:                                               ; preds = %14, %1
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %19 = call i32 (...) @daemon_uid()
  %20 = load i32, i32* @uucplock, align 4
  %21 = call i32 @uu_unlock(i32 %20)
  %22 = call i32 (...) @unraw()
  %23 = call i32 (...) @unexcl()
  %24 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @kill(i32, i32) #1

declare dso_local i32 @disconnect(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @daemon_uid(...) #1

declare dso_local i32 @uu_unlock(i32) #1

declare dso_local i32 @unraw(...) #1

declare dso_local i32 @unexcl(...) #1

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
