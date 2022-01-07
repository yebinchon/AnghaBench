; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_log.c_fatal.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_log.c_fatal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOG_CRIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"fatal: %s\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"fatal: %s: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fatal(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = load i32, i32* @LOG_CRIT, align 4
  %7 = load i64, i64* @errno, align 8
  %8 = call i8* @strerror(i64 %7)
  %9 = call i32 (i32, i8*, i8*, ...) @logit(i32 %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %8)
  br label %24

10:                                               ; preds = %1
  %11 = load i64, i64* @errno, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = load i32, i32* @LOG_CRIT, align 4
  %15 = load i8*, i8** %2, align 8
  %16 = load i64, i64* @errno, align 8
  %17 = call i8* @strerror(i64 %16)
  %18 = call i32 (i32, i8*, i8*, ...) @logit(i32 %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %15, i8* %17)
  br label %23

19:                                               ; preds = %10
  %20 = load i32, i32* @LOG_CRIT, align 4
  %21 = load i8*, i8** %2, align 8
  %22 = call i32 (i32, i8*, i8*, ...) @logit(i32 %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %21)
  br label %23

23:                                               ; preds = %19, %13
  br label %24

24:                                               ; preds = %23, %5
  %25 = call i32 @exit(i32 1) #3
  unreachable
}

declare dso_local i32 @logit(i32, i8*, i8*, ...) #1

declare dso_local i8* @strerror(i64) #1

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
