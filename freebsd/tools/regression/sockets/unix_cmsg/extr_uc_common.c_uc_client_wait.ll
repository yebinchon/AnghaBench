; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_cmsg/extr_uc_common.c_uc_client_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_cmsg/extr_uc_common.c_uc_client_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32** }

@.str = private unnamed_addr constant [19 x i8] c"waiting for client\00", align 1
@uc_cfg = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@SYNC_SERVER = common dso_local global i64 0, align 8
@SYNC_RECV = common dso_local global i64 0, align 8
@SYNC_CLIENT = common dso_local global i64 0, align 8
@SYNC_SEND = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"client_wait: close\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"client_wait: waitpid\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"client exit status is %d\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"abnormal termination of client, signal %d%s\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c" (core file generated)\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"termination of client, unknown status\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uc_client_wait() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = call i32 @uc_dbgmsg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %5 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uc_cfg, i32 0, i32 1), align 8
  %6 = load i64, i64* @SYNC_SERVER, align 8
  %7 = getelementptr inbounds i32*, i32** %5, i64 %6
  %8 = load i32*, i32** %7, align 8
  %9 = load i64, i64* @SYNC_RECV, align 8
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @close(i32 %11)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %0
  %15 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uc_cfg, i32 0, i32 1), align 8
  %16 = load i64, i64* @SYNC_CLIENT, align 8
  %17 = getelementptr inbounds i32*, i32** %15, i64 %16
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* @SYNC_SEND, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @close(i32 %21)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %14, %0
  %25 = call i32 @uc_logmsg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %67

26:                                               ; preds = %14
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uc_cfg, i32 0, i32 0), align 8
  %28 = call i64 @waitpid(i32 %27, i32* %2, i32 0)
  store i64 %28, i64* %3, align 8
  %29 = load i64, i64* %3, align 8
  %30 = icmp eq i64 %29, -1
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = call i32 @uc_logmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %67

33:                                               ; preds = %26
  %34 = load i32, i32* %2, align 4
  %35 = call i64 @WIFEXITED(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %33
  %38 = load i32, i32* %2, align 4
  %39 = call i32 @WEXITSTATUS(i32 %38)
  %40 = load i32, i32* @EXIT_SUCCESS, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load i32, i32* %2, align 4
  %44 = call i32 @WEXITSTATUS(i32 %43)
  %45 = call i32 (i8*, ...) @uc_logmsgx(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %2, align 4
  %47 = call i32 @WEXITSTATUS(i32 %46)
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %1, align 4
  br label %67

49:                                               ; preds = %37
  br label %66

50:                                               ; preds = %33
  %51 = load i32, i32* %2, align 4
  %52 = call i64 @WIFSIGNALED(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %50
  %55 = load i32, i32* %2, align 4
  %56 = call i32 @WTERMSIG(i32 %55)
  %57 = load i32, i32* %2, align 4
  %58 = call i64 @WCOREDUMP(i32 %57)
  %59 = icmp ne i64 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %62 = call i32 (i8*, ...) @uc_logmsgx(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %56, i8* %61)
  br label %65

63:                                               ; preds = %50
  %64 = call i32 (i8*, ...) @uc_logmsgx(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %54
  store i32 -1, i32* %1, align 4
  br label %67

66:                                               ; preds = %49
  store i32 0, i32* %1, align 4
  br label %67

67:                                               ; preds = %66, %65, %42, %31, %24
  %68 = load i32, i32* %1, align 4
  ret i32 %68
}

declare dso_local i32 @uc_dbgmsg(i8*) #1

declare dso_local i64 @close(i32) #1

declare dso_local i32 @uc_logmsg(i8*) #1

declare dso_local i64 @waitpid(i32, i32*, i32) #1

declare dso_local i64 @WIFEXITED(i32) #1

declare dso_local i32 @WEXITSTATUS(i32) #1

declare dso_local i32 @uc_logmsgx(i8*, ...) #1

declare dso_local i64 @WIFSIGNALED(i32) #1

declare dso_local i32 @WTERMSIG(i32) #1

declare dso_local i64 @WCOREDUMP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
