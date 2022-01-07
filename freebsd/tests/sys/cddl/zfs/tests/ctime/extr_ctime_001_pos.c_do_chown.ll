; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/cddl/zfs/tests/ctime/extr_ctime_001_pos.c_do_chown.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/cddl/zfs/tests/ctime/extr_ctime_001_pos.c_do_chown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"chown(%s, %d, %d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_chown(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load i8*, i8** %3, align 8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %30

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = call i64 (...) @getuid()
  %11 = call i64 (...) @getgid()
  %12 = call i32 @chown(i8* %9, i64 %10, i64 %11)
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  %15 = load i32, i32* @errno, align 4
  store i32 %15, i32* %4, align 4
  br label %16

16:                                               ; preds = %14, %8
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = load i32, i32* @stderr, align 4
  %21 = load i8*, i8** %3, align 8
  %22 = call i64 (...) @getuid()
  %23 = trunc i64 %22 to i32
  %24 = call i64 (...) @getgid()
  %25 = trunc i64 %24 to i32
  %26 = call i32 @fprintf(i32 %20, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %21, i32 %23, i32 %25)
  %27 = call i32 @exit(i32 1) #3
  unreachable

28:                                               ; preds = %16
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %28, %7
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @chown(i8*, i64, i64) #1

declare dso_local i64 @getuid(...) #1

declare dso_local i64 @getgid(...) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i32, i32) #1

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
