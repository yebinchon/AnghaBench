; ModuleID = '/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_prot_impl.c_nlm_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_prot_impl.c_nlm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nlm_global_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"nlm_global_lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@nlm_waiting_locks = common dso_local global i32 0, align 4
@nlm_hosts = common dso_local global i32 0, align 4
@nlm_syscalls = common dso_local global i32 0, align 4
@SY_THR_STATIC_KLD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Can't register NLM syscall\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @nlm_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nlm_init() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @MTX_DEF, align 4
  %3 = call i32 @mtx_init(i32* @nlm_global_lock, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* null, i32 %2)
  %4 = call i32 @TAILQ_INIT(i32* @nlm_waiting_locks)
  %5 = call i32 @TAILQ_INIT(i32* @nlm_hosts)
  %6 = load i32, i32* @nlm_syscalls, align 4
  %7 = load i32, i32* @SY_THR_STATIC_KLD, align 4
  %8 = call i32 @syscall_helper_register(i32 %6, i32 %7)
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %1, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %0
  %12 = call i32 @NLM_ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %0
  %14 = load i32, i32* %1, align 4
  ret i32 %14
}

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @syscall_helper_register(i32, i32) #1

declare dso_local i32 @NLM_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
