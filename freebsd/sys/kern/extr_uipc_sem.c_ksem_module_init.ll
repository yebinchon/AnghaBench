; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_sem.c_ksem_module_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_sem.c_ksem_module_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sem_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"sem\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@ksem_count_lock = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"ksem count\00", align 1
@ksem_dict_lock = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"ksem dictionary\00", align 1
@M_KSEM = common dso_local global i32 0, align 4
@ksem_hash = common dso_local global i32 0, align 4
@ksem_dictionary = common dso_local global i32 0, align 4
@CTL_P1003_1B_SEMAPHORES = common dso_local global i32 0, align 4
@CTL_P1003_1B_SEM_NSEMS_MAX = common dso_local global i32 0, align 4
@SEM_MAX = common dso_local global i64 0, align 8
@CTL_P1003_1B_SEM_VALUE_MAX = common dso_local global i32 0, align 4
@SEM_VALUE_MAX = common dso_local global i64 0, align 8
@ksem_syscalls = common dso_local global i32 0, align 4
@SY_THR_STATIC_KLD = common dso_local global i32 0, align 4
@ksem32_syscalls = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ksem_module_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ksem_module_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @MTX_DEF, align 4
  %4 = call i32 @mtx_init(i32* @sem_lock, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* null, i32 %3)
  %5 = load i32, i32* @MTX_DEF, align 4
  %6 = call i32 @mtx_init(i32* @ksem_count_lock, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %5)
  %7 = call i32 @sx_init(i32* @ksem_dict_lock, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %8 = load i32, i32* @M_KSEM, align 4
  %9 = call i32 @hashinit(i32 1024, i32 %8, i32* @ksem_hash)
  store i32 %9, i32* @ksem_dictionary, align 4
  %10 = load i32, i32* @CTL_P1003_1B_SEMAPHORES, align 4
  %11 = call i32 @p31b_setcfg(i32 %10, i64 200112)
  %12 = load i32, i32* @CTL_P1003_1B_SEM_NSEMS_MAX, align 4
  %13 = load i64, i64* @SEM_MAX, align 8
  %14 = call i32 @p31b_setcfg(i32 %12, i64 %13)
  %15 = load i32, i32* @CTL_P1003_1B_SEM_VALUE_MAX, align 4
  %16 = load i64, i64* @SEM_VALUE_MAX, align 8
  %17 = call i32 @p31b_setcfg(i32 %15, i64 %16)
  %18 = load i32, i32* @ksem_syscalls, align 4
  %19 = load i32, i32* @SY_THR_STATIC_KLD, align 4
  %20 = call i32 @syscall_helper_register(i32 %18, i32 %19)
  store i32 %20, i32* %2, align 4
  %21 = load i32, i32* %2, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %0
  %24 = load i32, i32* %2, align 4
  store i32 %24, i32* %1, align 4
  br label %26

25:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %26

26:                                               ; preds = %25, %23
  %27 = load i32, i32* %1, align 4
  ret i32 %27
}

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @sx_init(i32*, i8*) #1

declare dso_local i32 @hashinit(i32, i32, i32*) #1

declare dso_local i32 @p31b_setcfg(i32, i64) #1

declare dso_local i32 @syscall_helper_register(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
