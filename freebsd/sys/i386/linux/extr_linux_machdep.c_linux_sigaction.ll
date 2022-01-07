; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/linux/extr_linux_machdep.c_linux_sigaction.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/linux/extr_linux_machdep.c_linux_sigaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.linux_sigaction_args = type { i32*, i32*, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_10__, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_sigaction(%struct.thread* %0, %struct.linux_sigaction_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_sigaction_args*, align 8
  %6 = alloca %struct.TYPE_9__, align 4
  %7 = alloca %struct.TYPE_8__, align 4
  %8 = alloca %struct.TYPE_8__, align 4
  %9 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_sigaction_args* %1, %struct.linux_sigaction_args** %5, align 8
  %10 = load %struct.linux_sigaction_args*, %struct.linux_sigaction_args** %5, align 8
  %11 = getelementptr inbounds %struct.linux_sigaction_args, %struct.linux_sigaction_args* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %41

14:                                               ; preds = %2
  %15 = load %struct.linux_sigaction_args*, %struct.linux_sigaction_args** %5, align 8
  %16 = getelementptr inbounds %struct.linux_sigaction_args, %struct.linux_sigaction_args* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @copyin(i32* %17, %struct.TYPE_9__* %6, i32 16)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %3, align 4
  br label %90

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 3
  store i32 %25, i32* %26, align 4
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 2
  store i32 %28, i32* %29, align 4
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  store i32 %31, i32* %32, align 4
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @LINUX_SIGEMPTYSET(i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %23, %2
  %42 = load %struct.thread*, %struct.thread** %4, align 8
  %43 = load %struct.linux_sigaction_args*, %struct.linux_sigaction_args** %5, align 8
  %44 = getelementptr inbounds %struct.linux_sigaction_args, %struct.linux_sigaction_args* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.linux_sigaction_args*, %struct.linux_sigaction_args** %5, align 8
  %47 = getelementptr inbounds %struct.linux_sigaction_args, %struct.linux_sigaction_args* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  br label %52

51:                                               ; preds = %41
  br label %52

52:                                               ; preds = %51, %50
  %53 = phi %struct.TYPE_8__* [ %7, %50 ], [ null, %51 ]
  %54 = load %struct.linux_sigaction_args*, %struct.linux_sigaction_args** %5, align 8
  %55 = getelementptr inbounds %struct.linux_sigaction_args, %struct.linux_sigaction_args* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %60

59:                                               ; preds = %52
  br label %60

60:                                               ; preds = %59, %58
  %61 = phi %struct.TYPE_8__* [ %8, %58 ], [ null, %59 ]
  %62 = call i32 @linux_do_sigaction(%struct.thread* %42, i32 %45, %struct.TYPE_8__* %53, %struct.TYPE_8__* %61)
  store i32 %62, i32* %9, align 4
  %63 = load %struct.linux_sigaction_args*, %struct.linux_sigaction_args** %5, align 8
  %64 = getelementptr inbounds %struct.linux_sigaction_args, %struct.linux_sigaction_args* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %88

67:                                               ; preds = %60
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %88, label %70

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 3
  store i32 %72, i32* %73, align 4
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 2
  store i32 %75, i32* %76, align 4
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  store i32 %78, i32* %79, align 4
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  store i32 %82, i32* %83, align 4
  %84 = load %struct.linux_sigaction_args*, %struct.linux_sigaction_args** %5, align 8
  %85 = getelementptr inbounds %struct.linux_sigaction_args, %struct.linux_sigaction_args* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 @copyout(%struct.TYPE_9__* %6, i32* %86, i32 16)
  store i32 %87, i32* %9, align 4
  br label %88

88:                                               ; preds = %70, %67, %60
  %89 = load i32, i32* %9, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %88, %21
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @copyin(i32*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @LINUX_SIGEMPTYSET(i32) #1

declare dso_local i32 @linux_do_sigaction(%struct.thread*, i32, %struct.TYPE_8__*, %struct.TYPE_8__*) #1

declare dso_local i32 @copyout(%struct.TYPE_9__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
