; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/lpr/lpd/extr_lpd.c_mcleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/lpr/lpd/extr_lpd.c_mcleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lflag = common dso_local global i64 0, align 8
@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"exiting on signal %d\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"exiting\00", align 1
@_PATH_SOCKETNAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @mcleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcleanup(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i64, i64* @lflag, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %16

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = load i32, i32* @LOG_INFO, align 4
  %10 = load i32, i32* %2, align 4
  %11 = call i32 (i32, i8*, ...) @syslog(i32 %9, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %10)
  br label %15

12:                                               ; preds = %5
  %13 = load i32, i32* @LOG_INFO, align 4
  %14 = call i32 (i32, i8*, ...) @syslog(i32 %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %15

15:                                               ; preds = %12, %8
  br label %16

16:                                               ; preds = %15, %1
  %17 = load i32, i32* @_PATH_SOCKETNAME, align 4
  %18 = call i32 @unlink(i32 %17)
  %19 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @syslog(i32, i8*, ...) #1

declare dso_local i32 @unlink(i32) #1

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
