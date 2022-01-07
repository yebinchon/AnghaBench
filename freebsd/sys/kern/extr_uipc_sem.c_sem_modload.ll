; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_sem.c_sem_modload.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_sem.c_sem_modload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { i32 }

@ksem_count_lock = common dso_local global i32 0, align 4
@nsems = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ksem_dead = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module*, i32, i8*)* @sem_modload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sem_modload(%struct.module* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.module*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.module* %0, %struct.module** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %27 [
    i32 130, label %9
    i32 128, label %16
    i32 129, label %26
  ]

9:                                                ; preds = %3
  %10 = call i32 (...) @ksem_module_init()
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = call i32 (...) @ksem_module_destroy()
  br label %15

15:                                               ; preds = %13, %9
  br label %29

16:                                               ; preds = %3
  %17 = call i32 @mtx_lock(i32* @ksem_count_lock)
  %18 = load i32, i32* @nsems, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %21, i32* %7, align 4
  %22 = call i32 @mtx_unlock(i32* @ksem_count_lock)
  br label %29

23:                                               ; preds = %16
  store i32 1, i32* @ksem_dead, align 4
  %24 = call i32 @mtx_unlock(i32* @ksem_count_lock)
  %25 = call i32 (...) @ksem_module_destroy()
  br label %29

26:                                               ; preds = %3
  br label %29

27:                                               ; preds = %3
  %28 = load i32, i32* @EINVAL, align 4
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %27, %26, %23, %20, %15
  %30 = load i32, i32* %7, align 4
  ret i32 %30
}

declare dso_local i32 @ksem_module_init(...) #1

declare dso_local i32 @ksem_module_destroy(...) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
