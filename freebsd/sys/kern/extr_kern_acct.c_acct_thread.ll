; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_acct.c_acct_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_acct.c_acct_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PRI_MAX_KERN = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@acct_sx = common dso_local global i32 0, align 4
@acct_state = common dso_local global i32 0, align 4
@ACCT_RUNNING = common dso_local global i32 0, align 4
@ACCT_EXITREQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@acctchkfreq = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @acct_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acct_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i32, i32* @PRI_MAX_KERN, align 4
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* @curthread, align 4
  %6 = call i32 @thread_lock(i32 %5)
  %7 = load i32, i32* @curthread, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @sched_prio(i32 %7, i32 %8)
  %10 = load i32, i32* @curthread, align 4
  %11 = call i32 @thread_unlock(i32 %10)
  %12 = call i32 @sx_xlock(i32* @acct_sx)
  %13 = load i32, i32* @acct_state, align 4
  %14 = load i32, i32* @ACCT_RUNNING, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = call i32 @sx_xunlock(i32* @acct_sx)
  %19 = call i32 @kproc_exit(i32 0)
  br label %20

20:                                               ; preds = %17, %1
  %21 = load i32, i32* @ACCT_RUNNING, align 4
  %22 = load i32, i32* @acct_state, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* @acct_state, align 4
  br label %24

24:                                               ; preds = %41, %20
  %25 = load i32, i32* @acct_state, align 4
  %26 = load i32, i32* @ACCT_EXITREQ, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  br i1 %29, label %30, label %42

30:                                               ; preds = %24
  %31 = call i32 (...) @acctwatch()
  %32 = load i32, i32* @acct_state, align 4
  %33 = load i32, i32* @ACCT_EXITREQ, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* @acctchkfreq, align 4
  %38 = load i32, i32* @hz, align 4
  %39 = mul nsw i32 %37, %38
  %40 = call i32 @sx_sleep(i32* @acct_state, i32* @acct_sx, i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %36, %30
  br label %24

42:                                               ; preds = %24
  store i32 0, i32* @acct_state, align 4
  %43 = call i32 @sx_xunlock(i32* @acct_sx)
  %44 = call i32 @kproc_exit(i32 0)
  ret void
}

declare dso_local i32 @thread_lock(i32) #1

declare dso_local i32 @sched_prio(i32, i32) #1

declare dso_local i32 @thread_unlock(i32) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @kproc_exit(i32) #1

declare dso_local i32 @acctwatch(...) #1

declare dso_local i32 @sx_sleep(i32*, i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
