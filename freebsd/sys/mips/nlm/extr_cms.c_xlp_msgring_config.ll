; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/extr_cms.c_xlp_msgring_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/extr_cms.c_xlp_msgring_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@polled = common dso_local global i32 0, align 4
@xlp_msg_threads_per_core = common dso_local global i32 0, align 4
@msgmap_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"msgring\00", align 1
@MTX_SPIN = common dso_local global i32 0, align 4
@xlp_threads_per_core = common dso_local global i32 0, align 4
@XLP_MAX_CORES = common dso_local global i32 0, align 4
@XLP_MAX_THREADS = common dso_local global i32 0, align 4
@xlp_hw_thread_mask = common dso_local global i32 0, align 4
@xlp_msg_thread_mask = common dso_local global i32 0, align 4
@CMS_DEFAULT_CREDIT = common dso_local global i32 0, align 4
@msgring_process_fast_intr = common dso_local global i32 0, align 4
@IRQ_MSGRING = common dso_local global i32 0, align 4
@INTR_TYPE_NET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @xlp_msgring_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlp_msgring_config(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = call i64 (...) @nlm_is_xlp8xx_ax()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 1, i32* @polled, align 4
  br label %10

10:                                               ; preds = %9, %1
  %11 = load i32, i32* @polled, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i32, i32* @xlp_msg_threads_per_core, align 4
  %15 = sub nsw i32 %14, 1
  store i32 %15, i32* @xlp_msg_threads_per_core, align 4
  br label %16

16:                                               ; preds = %13, %10
  %17 = load i32, i32* @MTX_SPIN, align 4
  %18 = call i32 @mtx_init(i32* @msgmap_lock, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* null, i32 %17)
  %19 = load i32, i32* @xlp_threads_per_core, align 4
  %20 = load i32, i32* @xlp_msg_threads_per_core, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* @xlp_threads_per_core, align 4
  store i32 %23, i32* @xlp_msg_threads_per_core, align 4
  br label %24

24:                                               ; preds = %22, %16
  %25 = load i32, i32* @xlp_msg_threads_per_core, align 4
  %26 = shl i32 1, %25
  %27 = sub nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %39, %24
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @XLP_MAX_CORES, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %28
  %33 = load i32, i32* @XLP_MAX_THREADS, align 4
  %34 = load i32, i32* %5, align 4
  %35 = shl i32 %34, %33
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %5, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %32
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %28

42:                                               ; preds = %28
  %43 = load i32, i32* @xlp_hw_thread_mask, align 4
  %44 = load i32, i32* %5, align 4
  %45 = and i32 %43, %44
  store i32 %45, i32* @xlp_msg_thread_mask, align 4
  %46 = load i32, i32* @CMS_DEFAULT_CREDIT, align 4
  %47 = call i32 @xlp_cms_credit_setup(i32 %46)
  %48 = call i32 @create_msgring_thread(i32 0)
  %49 = load i32, i32* @msgring_process_fast_intr, align 4
  %50 = load i32, i32* @IRQ_MSGRING, align 4
  %51 = load i32, i32* @INTR_TYPE_NET, align 4
  %52 = call i32 @cpu_establish_hardintr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %49, i32* null, i32* null, i32 %50, i32 %51, i8** %3)
  ret void
}

declare dso_local i64 @nlm_is_xlp8xx_ax(...) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @xlp_cms_credit_setup(i32) #1

declare dso_local i32 @create_msgring_thread(i32) #1

declare dso_local i32 @cpu_establish_hardintr(i8*, i32, i32*, i32*, i32, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
