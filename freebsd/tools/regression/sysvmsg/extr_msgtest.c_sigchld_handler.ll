; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sysvmsg/extr_msgtest.c_sigchld_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sysvmsg/extr_msgtest.c_sigchld_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msqid_ds = type { i32 }

@child_pid = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"waitpid\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"receiver exited abnormally\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"receiver exited with status %d\00", align 1
@sender_msqid = common dso_local global i32 0, align 4
@IPC_STAT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"msgctl IPC_STAT\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sigchld_handler(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.msqid_ds, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i64, i64* @child_pid, align 8
  %6 = call i64 @waitpid(i64 %5, i32* %4, i32 0)
  %7 = load i64, i64* @child_pid, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %1
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @WIFEXITED(i32 %12)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %11
  %18 = load i32, i32* %4, align 4
  %19 = call i64 @WEXITSTATUS(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i32, i32* %4, align 4
  %23 = call i64 @WEXITSTATUS(i32 %22)
  %24 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %23)
  br label %25

25:                                               ; preds = %21, %17
  %26 = load i32, i32* @sender_msqid, align 4
  %27 = load i32, i32* @IPC_STAT, align 4
  %28 = call i32 @msgctl(i32 %26, i32 %27, %struct.msqid_ds* %3)
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = call i32 @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %25
  %33 = call i32 @print_msqid_ds(%struct.msqid_ds* %3, i32 384)
  %34 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i64 @waitpid(i64, i32*, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @WIFEXITED(i32) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i64 @WEXITSTATUS(i32) #1

declare dso_local i32 @msgctl(i32, i32, %struct.msqid_ds*) #1

declare dso_local i32 @print_msqid_ds(%struct.msqid_ds*, i32) #1

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
