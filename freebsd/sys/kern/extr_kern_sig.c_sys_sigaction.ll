; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sig.c_sys_sigaction.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sig.c_sys_sigaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.sigaction_args = type { i32*, i32, i32* }
%struct.sigaction = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_sigaction(%struct.thread* %0, %struct.sigaction_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.sigaction_args*, align 8
  %6 = alloca %struct.sigaction, align 4
  %7 = alloca %struct.sigaction, align 4
  %8 = alloca %struct.sigaction*, align 8
  %9 = alloca %struct.sigaction*, align 8
  %10 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.sigaction_args* %1, %struct.sigaction_args** %5, align 8
  %11 = load %struct.sigaction_args*, %struct.sigaction_args** %5, align 8
  %12 = getelementptr inbounds %struct.sigaction_args, %struct.sigaction_args* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %17

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %16, %15
  %18 = phi %struct.sigaction* [ %6, %15 ], [ null, %16 ]
  store %struct.sigaction* %18, %struct.sigaction** %8, align 8
  %19 = load %struct.sigaction_args*, %struct.sigaction_args** %5, align 8
  %20 = getelementptr inbounds %struct.sigaction_args, %struct.sigaction_args* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %25

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %24, %23
  %26 = phi %struct.sigaction* [ %7, %23 ], [ null, %24 ]
  store %struct.sigaction* %26, %struct.sigaction** %9, align 8
  %27 = load %struct.sigaction*, %struct.sigaction** %8, align 8
  %28 = icmp ne %struct.sigaction* %27, null
  br i1 %28, label %29, label %40

29:                                               ; preds = %25
  %30 = load %struct.sigaction_args*, %struct.sigaction_args** %5, align 8
  %31 = getelementptr inbounds %struct.sigaction_args, %struct.sigaction_args* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.sigaction*, %struct.sigaction** %8, align 8
  %34 = call i32 @copyin(i32* %32, %struct.sigaction* %33, i32 4)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %3, align 4
  br label %61

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %39, %25
  %41 = load %struct.thread*, %struct.thread** %4, align 8
  %42 = load %struct.sigaction_args*, %struct.sigaction_args** %5, align 8
  %43 = getelementptr inbounds %struct.sigaction_args, %struct.sigaction_args* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.sigaction*, %struct.sigaction** %8, align 8
  %46 = load %struct.sigaction*, %struct.sigaction** %9, align 8
  %47 = call i32 @kern_sigaction(%struct.thread* %41, i32 %44, %struct.sigaction* %45, %struct.sigaction* %46, i32 0)
  store i32 %47, i32* %10, align 4
  %48 = load %struct.sigaction*, %struct.sigaction** %9, align 8
  %49 = icmp ne %struct.sigaction* %48, null
  br i1 %49, label %50, label %59

50:                                               ; preds = %40
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %50
  %54 = load %struct.sigaction*, %struct.sigaction** %9, align 8
  %55 = load %struct.sigaction_args*, %struct.sigaction_args** %5, align 8
  %56 = getelementptr inbounds %struct.sigaction_args, %struct.sigaction_args* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @copyout(%struct.sigaction* %54, i32* %57, i32 4)
  store i32 %58, i32* %10, align 4
  br label %59

59:                                               ; preds = %53, %50, %40
  %60 = load i32, i32* %10, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %59, %37
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @copyin(i32*, %struct.sigaction*, i32) #1

declare dso_local i32 @kern_sigaction(%struct.thread*, i32, %struct.sigaction*, %struct.sigaction*, i32) #1

declare dso_local i32 @copyout(%struct.sigaction*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
