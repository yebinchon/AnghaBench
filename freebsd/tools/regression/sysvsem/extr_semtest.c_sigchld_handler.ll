; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sysvsem/extr_semtest.c_sigchld_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sysvsem/extr_semtest.c_sigchld_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.semun = type { %struct.semid_ds* }
%struct.semid_ds = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"wait\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"receiver exited abnormally\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"receiver exited with status %d\00", align 1
@sender_semid = common dso_local global i32 0, align 4
@IPC_STAT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"semctl IPC_STAT\00", align 1
@child_count = common dso_local global i64 0, align 8
@signal_was_sigchld = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sigchld_handler(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.semun, align 8
  %4 = alloca %struct.semid_ds, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = call i32 @wait(i32* %5)
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %1
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @WIFEXITED(i32 %11)
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %10
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @WEXITSTATUS(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i32, i32* %5, align 4
  %22 = call i64 @WEXITSTATUS(i32 %21)
  %23 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %22)
  br label %24

24:                                               ; preds = %20, %16
  %25 = bitcast %union.semun* %3 to %struct.semid_ds**
  store %struct.semid_ds* %4, %struct.semid_ds** %25, align 8
  %26 = load i32, i32* @sender_semid, align 4
  %27 = load i32, i32* @IPC_STAT, align 4
  %28 = getelementptr inbounds %union.semun, %union.semun* %3, i32 0, i32 0
  %29 = load %struct.semid_ds*, %struct.semid_ds** %28, align 8
  %30 = call i32 @semctl(i32 %26, i32 0, i32 %27, %struct.semid_ds* %29)
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = call i32 @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %24
  %35 = call i32 @print_semid_ds(%struct.semid_ds* %4, i32 384)
  %36 = load i64, i64* @child_count, align 8
  %37 = add nsw i64 %36, -1
  store i64 %37, i64* @child_count, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 1, i32* @signal_was_sigchld, align 4
  ret void

40:                                               ; preds = %34
  %41 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @wait(i32*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @WIFEXITED(i32) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i64 @WEXITSTATUS(i32) #1

declare dso_local i32 @semctl(i32, i32, i32, %struct.semid_ds*) #1

declare dso_local i32 @print_semid_ds(%struct.semid_ds*, i32) #1

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
