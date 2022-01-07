; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/linux/extr_linux_machdep.c_linux_sigaltstack.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/linux/extr_linux_machdep.c_linux_sigaltstack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.linux_sigaltstack_args = type { i32*, i32* }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_sigaltstack(%struct.thread* %0, %struct.linux_sigaltstack_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_sigaltstack_args*, align 8
  %6 = alloca %struct.TYPE_7__, align 4
  %7 = alloca %struct.TYPE_7__, align 4
  %8 = alloca %struct.TYPE_8__, align 4
  %9 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_sigaltstack_args* %1, %struct.linux_sigaltstack_args** %5, align 8
  %10 = load %struct.linux_sigaltstack_args*, %struct.linux_sigaltstack_args** %5, align 8
  %11 = getelementptr inbounds %struct.linux_sigaltstack_args, %struct.linux_sigaltstack_args* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %34

14:                                               ; preds = %2
  %15 = load %struct.linux_sigaltstack_args*, %struct.linux_sigaltstack_args** %5, align 8
  %16 = getelementptr inbounds %struct.linux_sigaltstack_args, %struct.linux_sigaltstack_args* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @copyin(i32* %17, %struct.TYPE_8__* %8, i32 12)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %3, align 4
  br label %77

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  store i32 %25, i32* %26, align 4
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  store i32 %28, i32* %29, align 4
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @linux_to_bsd_sigaltstack(i32 %31)
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  br label %34

34:                                               ; preds = %23, %2
  %35 = load %struct.thread*, %struct.thread** %4, align 8
  %36 = load %struct.linux_sigaltstack_args*, %struct.linux_sigaltstack_args** %5, align 8
  %37 = getelementptr inbounds %struct.linux_sigaltstack_args, %struct.linux_sigaltstack_args* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %42

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41, %40
  %43 = phi %struct.TYPE_7__* [ %6, %40 ], [ null, %41 ]
  %44 = load %struct.linux_sigaltstack_args*, %struct.linux_sigaltstack_args** %5, align 8
  %45 = getelementptr inbounds %struct.linux_sigaltstack_args, %struct.linux_sigaltstack_args* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %50

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %49, %48
  %51 = phi %struct.TYPE_7__* [ %7, %48 ], [ null, %49 ]
  %52 = call i32 @kern_sigaltstack(%struct.thread* %35, %struct.TYPE_7__* %43, %struct.TYPE_7__* %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %75, label %55

55:                                               ; preds = %50
  %56 = load %struct.linux_sigaltstack_args*, %struct.linux_sigaltstack_args** %5, align 8
  %57 = getelementptr inbounds %struct.linux_sigaltstack_args, %struct.linux_sigaltstack_args* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %75

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  store i32 %62, i32* %63, align 4
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  store i32 %65, i32* %66, align 4
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @bsd_to_linux_sigaltstack(i32 %68)
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  store i32 %69, i32* %70, align 4
  %71 = load %struct.linux_sigaltstack_args*, %struct.linux_sigaltstack_args** %5, align 8
  %72 = getelementptr inbounds %struct.linux_sigaltstack_args, %struct.linux_sigaltstack_args* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @copyout(%struct.TYPE_8__* %8, i32* %73, i32 12)
  store i32 %74, i32* %9, align 4
  br label %75

75:                                               ; preds = %60, %55, %50
  %76 = load i32, i32* %9, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %75, %21
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @copyin(i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @linux_to_bsd_sigaltstack(i32) #1

declare dso_local i32 @kern_sigaltstack(%struct.thread*, %struct.TYPE_7__*, %struct.TYPE_7__*) #1

declare dso_local i32 @bsd_to_linux_sigaltstack(i32) #1

declare dso_local i32 @copyout(%struct.TYPE_8__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
