; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_bhyverun.c_vmexit_suspend.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_bhyverun.c_vmexit_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }
%struct.vm_exit = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@BSP = common dso_local global i32 0, align 4
@resetcpu_mtx = common dso_local global i32 0, align 4
@resetcpu_cond = common dso_local global i32 0, align 4
@cpumask = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"vmexit_suspend: invalid reason %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmctx*, %struct.vm_exit*, i32*)* @vmexit_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmexit_suspend(%struct.vmctx* %0, %struct.vm_exit* %1, i32* %2) #0 {
  %4 = alloca %struct.vmctx*, align 8
  %5 = alloca %struct.vm_exit*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.vmctx* %0, %struct.vmctx** %4, align 8
  store %struct.vm_exit* %1, %struct.vm_exit** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.vm_exit*, %struct.vm_exit** %5, align 8
  %9 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = load %struct.vmctx*, %struct.vmctx** %4, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @fbsdrun_deletecpu(%struct.vmctx* %13, i32 %15)
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @BSP, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = call i32 @pthread_mutex_lock(i32* @resetcpu_mtx)
  %23 = call i32 @pthread_cond_signal(i32* @resetcpu_cond)
  %24 = call i32 @pthread_mutex_unlock(i32* @resetcpu_mtx)
  %25 = call i32 @pthread_exit(i32* null)
  br label %26

26:                                               ; preds = %21, %3
  %27 = call i32 @pthread_mutex_lock(i32* @resetcpu_mtx)
  br label %28

28:                                               ; preds = %32, %26
  %29 = call i32 @CPU_EMPTY(i32* @cpumask)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = call i32 @pthread_cond_wait(i32* @resetcpu_cond, i32* @resetcpu_mtx)
  br label %28

34:                                               ; preds = %28
  %35 = call i32 @pthread_mutex_unlock(i32* @resetcpu_mtx)
  %36 = load i32, i32* %7, align 4
  switch i32 %36, label %45 [
    i32 129, label %37
    i32 130, label %39
    i32 131, label %41
    i32 128, label %43
  ]

37:                                               ; preds = %34
  %38 = call i32 @exit(i32 0) #3
  unreachable

39:                                               ; preds = %34
  %40 = call i32 @exit(i32 1) #3
  unreachable

41:                                               ; preds = %34
  %42 = call i32 @exit(i32 2) #3
  unreachable

43:                                               ; preds = %34
  %44 = call i32 @exit(i32 3) #3
  unreachable

45:                                               ; preds = %34
  %46 = load i32, i32* @stderr, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @fprintf(i32 %46, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = call i32 @exit(i32 100) #3
  unreachable
}

declare dso_local i32 @fbsdrun_deletecpu(%struct.vmctx*, i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_cond_signal(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @pthread_exit(i32*) #1

declare dso_local i32 @CPU_EMPTY(i32*) #1

declare dso_local i32 @pthread_cond_wait(i32*, i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @fprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
