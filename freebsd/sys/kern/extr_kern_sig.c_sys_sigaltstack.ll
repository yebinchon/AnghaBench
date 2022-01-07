; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sig.c_sys_sigaltstack.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sig.c_sys_sigaltstack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.sigaltstack_args = type { i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_sigaltstack(%struct.thread* %0, %struct.sigaltstack_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.sigaltstack_args*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.sigaltstack_args* %1, %struct.sigaltstack_args** %5, align 8
  %9 = load %struct.sigaltstack_args*, %struct.sigaltstack_args** %5, align 8
  %10 = getelementptr inbounds %struct.sigaltstack_args, %struct.sigaltstack_args* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = load %struct.sigaltstack_args*, %struct.sigaltstack_args** %5, align 8
  %15 = getelementptr inbounds %struct.sigaltstack_args, %struct.sigaltstack_args* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @copyin(i32* %16, i32* %6, i32 4)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %3, align 4
  br label %58

22:                                               ; preds = %13
  br label %23

23:                                               ; preds = %22, %2
  %24 = load %struct.thread*, %struct.thread** %4, align 8
  %25 = load %struct.sigaltstack_args*, %struct.sigaltstack_args** %5, align 8
  %26 = getelementptr inbounds %struct.sigaltstack_args, %struct.sigaltstack_args* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %31

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %30, %29
  %32 = phi i32* [ %6, %29 ], [ null, %30 ]
  %33 = load %struct.sigaltstack_args*, %struct.sigaltstack_args** %5, align 8
  %34 = getelementptr inbounds %struct.sigaltstack_args, %struct.sigaltstack_args* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %39

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %38, %37
  %40 = phi i32* [ %7, %37 ], [ null, %38 ]
  %41 = call i32 @kern_sigaltstack(%struct.thread* %24, i32* %32, i32* %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %3, align 4
  br label %58

46:                                               ; preds = %39
  %47 = load %struct.sigaltstack_args*, %struct.sigaltstack_args** %5, align 8
  %48 = getelementptr inbounds %struct.sigaltstack_args, %struct.sigaltstack_args* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load %struct.sigaltstack_args*, %struct.sigaltstack_args** %5, align 8
  %53 = getelementptr inbounds %struct.sigaltstack_args, %struct.sigaltstack_args* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @copyout(i32* %7, i32* %54, i32 4)
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %51, %46
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %56, %44, %20
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @copyin(i32*, i32*, i32) #1

declare dso_local i32 @kern_sigaltstack(%struct.thread*, i32*, i32*) #1

declare dso_local i32 @copyout(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
