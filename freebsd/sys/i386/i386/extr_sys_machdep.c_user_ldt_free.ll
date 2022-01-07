; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_sys_machdep.c_user_ldt_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_sys_machdep.c_user_ldt_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mdproc }
%struct.mdproc = type { %struct.proc_ldt* }
%struct.proc_ldt = type { i32 }

@dt_lock = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.thread* null, align 8
@_default_ldt = common dso_local global i32 0, align 4
@currentldt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @user_ldt_free(%struct.thread* %0) #0 {
  %2 = alloca %struct.thread*, align 8
  %3 = alloca %struct.mdproc*, align 8
  %4 = alloca %struct.proc_ldt*, align 8
  store %struct.thread* %0, %struct.thread** %2, align 8
  %5 = load i32, i32* @MA_OWNED, align 4
  %6 = call i32 @mtx_assert(i32* @dt_lock, i32 %5)
  %7 = load %struct.thread*, %struct.thread** %2, align 8
  %8 = getelementptr inbounds %struct.thread, %struct.thread* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.mdproc* %10, %struct.mdproc** %3, align 8
  %11 = load %struct.mdproc*, %struct.mdproc** %3, align 8
  %12 = getelementptr inbounds %struct.mdproc, %struct.mdproc* %11, i32 0, i32 0
  %13 = load %struct.proc_ldt*, %struct.proc_ldt** %12, align 8
  store %struct.proc_ldt* %13, %struct.proc_ldt** %4, align 8
  %14 = icmp eq %struct.proc_ldt* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = call i32 @mtx_unlock_spin(i32* @dt_lock)
  br label %32

17:                                               ; preds = %1
  %18 = load %struct.thread*, %struct.thread** %2, align 8
  %19 = load %struct.thread*, %struct.thread** @curthread, align 8
  %20 = icmp eq %struct.thread* %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = load i32, i32* @_default_ldt, align 4
  %23 = call i32 @lldt(i32 %22)
  %24 = load i32, i32* @currentldt, align 4
  %25 = load i32, i32* @_default_ldt, align 4
  %26 = call i32 @PCPU_SET(i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %21, %17
  %28 = load %struct.mdproc*, %struct.mdproc** %3, align 8
  %29 = getelementptr inbounds %struct.mdproc, %struct.mdproc* %28, i32 0, i32 0
  store %struct.proc_ldt* null, %struct.proc_ldt** %29, align 8
  %30 = load %struct.proc_ldt*, %struct.proc_ldt** %4, align 8
  %31 = call i32 @user_ldt_deref(%struct.proc_ldt* %30)
  br label %32

32:                                               ; preds = %27, %15
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

declare dso_local i32 @lldt(i32) #1

declare dso_local i32 @PCPU_SET(i32, i32) #1

declare dso_local i32 @user_ldt_deref(%struct.proc_ldt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
