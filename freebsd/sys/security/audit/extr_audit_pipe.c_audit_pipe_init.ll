; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit_pipe.c_audit_pipe_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit_pipe.c_audit_pipe_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@audit_pipe_list = common dso_local global i32 0, align 4
@audit_pipe_cdevsw = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_WHEEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@AUDIT_PIPE_NAME = common dso_local global i32 0, align 4
@audit_pipe_dev = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"Can't initialize audit pipe subsystem\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @audit_pipe_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audit_pipe_init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = call i32 @TAILQ_INIT(i32* @audit_pipe_list)
  %4 = call i32 (...) @AUDIT_PIPE_LIST_LOCK_INIT()
  %5 = load i32, i32* @UID_ROOT, align 4
  %6 = load i32, i32* @GID_WHEEL, align 4
  %7 = load i32, i32* @AUDIT_PIPE_NAME, align 4
  %8 = call i32* @make_dev(i32* @audit_pipe_cdevsw, i32 0, i32 %5, i32 %6, i32 384, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %7)
  store i32* %8, i32** @audit_pipe_dev, align 8
  %9 = load i32*, i32** @audit_pipe_dev, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = call i32 (...) @AUDIT_PIPE_LIST_LOCK_DESTROY()
  %13 = call i32 @panic(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %14

14:                                               ; preds = %11, %1
  ret void
}

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @AUDIT_PIPE_LIST_LOCK_INIT(...) #1

declare dso_local i32* @make_dev(i32*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @AUDIT_PIPE_LIST_LOCK_DESTROY(...) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
