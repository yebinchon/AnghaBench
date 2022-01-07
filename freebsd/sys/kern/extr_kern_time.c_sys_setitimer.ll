; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_time.c_sys_setitimer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_time.c_sys_setitimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.setitimer_args = type { i32*, i32, i32* }
%struct.itimerval = type { i32 }
%struct.getitimer_args = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_setitimer(%struct.thread* %0, %struct.setitimer_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.setitimer_args*, align 8
  %6 = alloca %struct.itimerval, align 4
  %7 = alloca %struct.itimerval, align 4
  %8 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.setitimer_args* %1, %struct.setitimer_args** %5, align 8
  %9 = load %struct.setitimer_args*, %struct.setitimer_args** %5, align 8
  %10 = getelementptr inbounds %struct.setitimer_args, %struct.setitimer_args* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = load %struct.setitimer_args*, %struct.setitimer_args** %5, align 8
  %15 = getelementptr inbounds %struct.setitimer_args, %struct.setitimer_args* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.setitimer_args*, %struct.setitimer_args** %5, align 8
  %18 = getelementptr inbounds %struct.setitimer_args, %struct.setitimer_args* %17, i32 0, i32 2
  store i32* %16, i32** %18, align 8
  %19 = load %struct.thread*, %struct.thread** %4, align 8
  %20 = load %struct.setitimer_args*, %struct.setitimer_args** %5, align 8
  %21 = bitcast %struct.setitimer_args* %20 to %struct.getitimer_args*
  %22 = call i32 @sys_getitimer(%struct.thread* %19, %struct.getitimer_args* %21)
  store i32 %22, i32* %3, align 4
  br label %51

23:                                               ; preds = %2
  %24 = load %struct.setitimer_args*, %struct.setitimer_args** %5, align 8
  %25 = getelementptr inbounds %struct.setitimer_args, %struct.setitimer_args* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @copyin(i32* %26, %struct.itimerval* %6, i32 4)
  store i32 %27, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %3, align 4
  br label %51

31:                                               ; preds = %23
  %32 = load %struct.thread*, %struct.thread** %4, align 8
  %33 = load %struct.setitimer_args*, %struct.setitimer_args** %5, align 8
  %34 = getelementptr inbounds %struct.setitimer_args, %struct.setitimer_args* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @kern_setitimer(%struct.thread* %32, i32 %35, %struct.itimerval* %6, %struct.itimerval* %7)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %31
  %40 = load %struct.setitimer_args*, %struct.setitimer_args** %5, align 8
  %41 = getelementptr inbounds %struct.setitimer_args, %struct.setitimer_args* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %39, %31
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %3, align 4
  br label %51

46:                                               ; preds = %39
  %47 = load %struct.setitimer_args*, %struct.setitimer_args** %5, align 8
  %48 = getelementptr inbounds %struct.setitimer_args, %struct.setitimer_args* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @copyout(%struct.itimerval* %7, i32* %49, i32 4)
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %46, %44, %29, %13
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @sys_getitimer(%struct.thread*, %struct.getitimer_args*) #1

declare dso_local i32 @copyin(i32*, %struct.itimerval*, i32) #1

declare dso_local i32 @kern_setitimer(%struct.thread*, i32, %struct.itimerval*, %struct.itimerval*) #1

declare dso_local i32 @copyout(%struct.itimerval*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
