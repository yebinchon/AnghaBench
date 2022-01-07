; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_exec_machdep.c_sys_sigreturn.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_exec_machdep.c_sys_sigreturn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.sigreturn_args = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32*, i32 }

@KTR_SIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"sigreturn: td=%p ucp=%p\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"sigreturn: efault td=%p\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@SIG_SETMASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"sigreturn: return td=%p pc=%#x sp=%#x\00", align 1
@EJUSTRETURN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_sigreturn(%struct.thread* %0, %struct.sigreturn_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.sigreturn_args*, align 8
  %6 = alloca %struct.TYPE_4__, align 8
  %7 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.sigreturn_args* %1, %struct.sigreturn_args** %5, align 8
  %8 = load i32, i32* @KTR_SIG, align 4
  %9 = load %struct.thread*, %struct.thread** %4, align 8
  %10 = load %struct.sigreturn_args*, %struct.sigreturn_args** %5, align 8
  %11 = getelementptr inbounds %struct.sigreturn_args, %struct.sigreturn_args* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @CTR2(i32 %8, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.thread* %9, i32 %12)
  %14 = load %struct.sigreturn_args*, %struct.sigreturn_args** %5, align 8
  %15 = getelementptr inbounds %struct.sigreturn_args, %struct.sigreturn_args* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @copyin(i32 %16, %struct.TYPE_4__* %6, i32 24)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load i32, i32* @KTR_SIG, align 4
  %21 = load %struct.thread*, %struct.thread** %4, align 8
  %22 = call i32 @CTR1(i32 %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), %struct.thread* %21)
  %23 = load i32, i32* @EFAULT, align 4
  store i32 %23, i32* %3, align 4
  br label %49

24:                                               ; preds = %2
  %25 = load %struct.thread*, %struct.thread** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %27 = call i32 @set_mcontext(%struct.thread* %25, %struct.TYPE_5__* %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %3, align 4
  br label %49

32:                                               ; preds = %24
  %33 = load %struct.thread*, %struct.thread** %4, align 8
  %34 = load i32, i32* @SIG_SETMASK, align 4
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %36 = call i32 @kern_sigprocmask(%struct.thread* %33, i32 %34, i32* %35, i32* null, i32 0)
  %37 = load i32, i32* @KTR_SIG, align 4
  %38 = load %struct.thread*, %struct.thread** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @CTR3(i32 %37, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), %struct.thread* %38, i32 %41, i32 %46)
  %48 = load i32, i32* @EJUSTRETURN, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %32, %30, %19
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @CTR2(i32, i8*, %struct.thread*, i32) #1

declare dso_local i64 @copyin(i32, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @CTR1(i32, i8*, %struct.thread*) #1

declare dso_local i32 @set_mcontext(%struct.thread*, %struct.TYPE_5__*) #1

declare dso_local i32 @kern_sigprocmask(%struct.thread*, i32, i32*, i32*, i32) #1

declare dso_local i32 @CTR3(i32, i8*, %struct.thread*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
