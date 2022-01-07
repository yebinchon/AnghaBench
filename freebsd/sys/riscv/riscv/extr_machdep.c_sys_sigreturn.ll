; ModuleID = '/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_machdep.c_sys_sigreturn.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_machdep.c_sys_sigreturn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.sigreturn_args = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@SSTATUS_SPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SIG_SETMASK = common dso_local global i32 0, align 4
@EJUSTRETURN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_sigreturn(%struct.thread* %0, %struct.sigreturn_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.sigreturn_args*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__, align 4
  %8 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.sigreturn_args* %1, %struct.sigreturn_args** %5, align 8
  %9 = load %struct.sigreturn_args*, %struct.sigreturn_args** %5, align 8
  %10 = icmp eq %struct.sigreturn_args* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @EFAULT, align 4
  store i32 %12, i32* %3, align 4
  br label %49

13:                                               ; preds = %2
  %14 = load %struct.sigreturn_args*, %struct.sigreturn_args** %5, align 8
  %15 = getelementptr inbounds %struct.sigreturn_args, %struct.sigreturn_args* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @copyin(i32 %16, %struct.TYPE_7__* %7, i32 8)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i32, i32* @EFAULT, align 4
  store i32 %20, i32* %3, align 4
  br label %49

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @SSTATUS_SPP, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = load i32, i32* @EINVAL, align 4
  store i32 %31, i32* %3, align 4
  br label %49

32:                                               ; preds = %21
  %33 = load %struct.thread*, %struct.thread** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %35 = call i32 @set_mcontext(%struct.thread* %33, %struct.TYPE_8__* %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %3, align 4
  br label %49

40:                                               ; preds = %32
  %41 = load %struct.thread*, %struct.thread** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %43 = call i32 @set_fpcontext(%struct.thread* %41, %struct.TYPE_8__* %42)
  %44 = load %struct.thread*, %struct.thread** %4, align 8
  %45 = load i32, i32* @SIG_SETMASK, align 4
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %47 = call i32 @kern_sigprocmask(%struct.thread* %44, i32 %45, i32* %46, i32* null, i32 0)
  %48 = load i32, i32* @EJUSTRETURN, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %40, %38, %30, %19, %11
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i64 @copyin(i32, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @set_mcontext(%struct.thread*, %struct.TYPE_8__*) #1

declare dso_local i32 @set_fpcontext(%struct.thread*, %struct.TYPE_8__*) #1

declare dso_local i32 @kern_sigprocmask(%struct.thread*, i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
