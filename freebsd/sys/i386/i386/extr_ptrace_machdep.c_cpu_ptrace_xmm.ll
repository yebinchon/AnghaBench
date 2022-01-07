; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_ptrace_machdep.c_cpu_ptrace_xmm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_ptrace_machdep.c_cpu_ptrace_xmm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.savexmm = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.savexmm }

@cpu_fxsr = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@cpu_mxcsr_mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, i32, i8*, i32)* @cpu_ptrace_xmm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpu_ptrace_xmm(%struct.thread* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.thread*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.savexmm*, align 8
  %11 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @cpu_fxsr, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %5, align 4
  br label %49

16:                                               ; preds = %4
  %17 = load %struct.thread*, %struct.thread** %6, align 8
  %18 = call %struct.TYPE_4__* @get_pcb_user_save_td(%struct.thread* %17)
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store %struct.savexmm* %19, %struct.savexmm** %10, align 8
  %20 = load i32, i32* %7, align 4
  switch i32 %20, label %45 [
    i32 134, label %21
    i32 130, label %27
    i32 131, label %39
    i32 128, label %39
    i32 132, label %39
    i32 133, label %39
    i32 129, label %39
  ]

21:                                               ; preds = %16
  %22 = load %struct.thread*, %struct.thread** %6, align 8
  %23 = call i32 @npxgetregs(%struct.thread* %22)
  %24 = load %struct.savexmm*, %struct.savexmm** %10, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @copyout(%struct.savexmm* %24, i8* %25, i32 4)
  store i32 %26, i32* %11, align 4
  br label %47

27:                                               ; preds = %16
  %28 = load %struct.thread*, %struct.thread** %6, align 8
  %29 = call i32 @npxgetregs(%struct.thread* %28)
  %30 = load i8*, i8** %8, align 8
  %31 = load %struct.savexmm*, %struct.savexmm** %10, align 8
  %32 = call i32 @copyin(i8* %30, %struct.savexmm* %31, i32 4)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* @cpu_mxcsr_mask, align 4
  %34 = load %struct.savexmm*, %struct.savexmm** %10, align 8
  %35 = getelementptr inbounds %struct.savexmm, %struct.savexmm* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, %33
  store i32 %38, i32* %36, align 4
  br label %47

39:                                               ; preds = %16, %16, %16, %16, %16
  %40 = load %struct.thread*, %struct.thread** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i8*, i8** %8, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @cpu_ptrace_xstate(%struct.thread* %40, i32 %41, i8* %42, i32 %43)
  store i32 %44, i32* %11, align 4
  br label %47

45:                                               ; preds = %16
  %46 = load i32, i32* @EINVAL, align 4
  store i32 %46, i32* %5, align 4
  br label %49

47:                                               ; preds = %39, %27, %21
  %48 = load i32, i32* %11, align 4
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %47, %45, %14
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local %struct.TYPE_4__* @get_pcb_user_save_td(%struct.thread*) #1

declare dso_local i32 @npxgetregs(%struct.thread*) #1

declare dso_local i32 @copyout(%struct.savexmm*, i8*, i32) #1

declare dso_local i32 @copyin(i8*, %struct.savexmm*, i32) #1

declare dso_local i32 @cpu_ptrace_xstate(%struct.thread*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
