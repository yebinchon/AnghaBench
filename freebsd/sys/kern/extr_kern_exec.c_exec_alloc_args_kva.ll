; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_exec.c_exec_alloc_args_kva.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_exec.c_exec_alloc_args_kva.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exec_args_kva = type { i32 }

@exec_args_kva = common dso_local global i32 0, align 4
@exec_args_kva_mtx = common dso_local global i32 0, align 4
@exec_args_kva_freelist = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"execkva\00", align 1
@next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**)* @exec_alloc_args_kva to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_alloc_args_kva(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca %struct.exec_args_kva*, align 8
  store i8** %0, i8*** %2, align 8
  %4 = load i32, i32* @exec_args_kva, align 4
  %5 = call i64 @DPCPU_PTR(i32 %4)
  %6 = inttoptr i64 %5 to i64*
  %7 = call i64 @atomic_readandclear_ptr(i64* %6)
  %8 = inttoptr i64 %7 to i8*
  %9 = bitcast i8* %8 to %struct.exec_args_kva*
  store %struct.exec_args_kva* %9, %struct.exec_args_kva** %3, align 8
  %10 = load %struct.exec_args_kva*, %struct.exec_args_kva** %3, align 8
  %11 = icmp eq %struct.exec_args_kva* %10, null
  br i1 %11, label %12, label %23

12:                                               ; preds = %1
  %13 = call i32 @mtx_lock(i32* @exec_args_kva_mtx)
  br label %14

14:                                               ; preds = %17, %12
  %15 = call %struct.exec_args_kva* @SLIST_FIRST(i32* @exec_args_kva_freelist)
  store %struct.exec_args_kva* %15, %struct.exec_args_kva** %3, align 8
  %16 = icmp eq %struct.exec_args_kva* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = call i32 @mtx_sleep(i32* @exec_args_kva_freelist, i32* @exec_args_kva_mtx, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %14

19:                                               ; preds = %14
  %20 = load i32, i32* @next, align 4
  %21 = call i32 @SLIST_REMOVE_HEAD(i32* @exec_args_kva_freelist, i32 %20)
  %22 = call i32 @mtx_unlock(i32* @exec_args_kva_mtx)
  br label %23

23:                                               ; preds = %19, %1
  %24 = load %struct.exec_args_kva*, %struct.exec_args_kva** %3, align 8
  %25 = load i8**, i8*** %2, align 8
  %26 = bitcast i8** %25 to %struct.exec_args_kva**
  store %struct.exec_args_kva* %24, %struct.exec_args_kva** %26, align 8
  %27 = load %struct.exec_args_kva*, %struct.exec_args_kva** %3, align 8
  %28 = getelementptr inbounds %struct.exec_args_kva, %struct.exec_args_kva* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  ret i32 %29
}

declare dso_local i64 @atomic_readandclear_ptr(i64*) #1

declare dso_local i64 @DPCPU_PTR(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.exec_args_kva* @SLIST_FIRST(i32*) #1

declare dso_local i32 @mtx_sleep(i32*, i32*, i32, i8*, i32) #1

declare dso_local i32 @SLIST_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
