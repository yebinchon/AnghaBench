; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_generic.c_sys_pselect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_generic.c_sys_pselect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.pselect_args = type { i32, i32, i32, i32, i32*, i32* }
%struct.timespec = type { i32 }
%struct.timeval = type { i32 }

@NFDBITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_pselect(%struct.thread* %0, %struct.pselect_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.pselect_args*, align 8
  %6 = alloca %struct.timespec, align 4
  %7 = alloca %struct.timeval, align 4
  %8 = alloca %struct.timeval*, align 8
  %9 = alloca %struct.timespec, align 4
  %10 = alloca %struct.timespec*, align 8
  %11 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.pselect_args* %1, %struct.pselect_args** %5, align 8
  %12 = load %struct.pselect_args*, %struct.pselect_args** %5, align 8
  %13 = getelementptr inbounds %struct.pselect_args, %struct.pselect_args* %12, i32 0, i32 5
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %27

16:                                               ; preds = %2
  %17 = load %struct.pselect_args*, %struct.pselect_args** %5, align 8
  %18 = getelementptr inbounds %struct.pselect_args, %struct.pselect_args* %17, i32 0, i32 5
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @copyin(i32* %19, %struct.timespec* %6, i32 4)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %3, align 4
  br label %62

25:                                               ; preds = %16
  %26 = call i32 @TIMESPEC_TO_TIMEVAL(%struct.timeval* %7, %struct.timespec* %6)
  store %struct.timeval* %7, %struct.timeval** %8, align 8
  br label %28

27:                                               ; preds = %2
  store %struct.timeval* null, %struct.timeval** %8, align 8
  br label %28

28:                                               ; preds = %27, %25
  %29 = load %struct.pselect_args*, %struct.pselect_args** %5, align 8
  %30 = getelementptr inbounds %struct.pselect_args, %struct.pselect_args* %29, i32 0, i32 4
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %43

33:                                               ; preds = %28
  %34 = load %struct.pselect_args*, %struct.pselect_args** %5, align 8
  %35 = getelementptr inbounds %struct.pselect_args, %struct.pselect_args* %34, i32 0, i32 4
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @copyin(i32* %36, %struct.timespec* %9, i32 4)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* %11, align 4
  store i32 %41, i32* %3, align 4
  br label %62

42:                                               ; preds = %33
  store %struct.timespec* %9, %struct.timespec** %10, align 8
  br label %44

43:                                               ; preds = %28
  store %struct.timespec* null, %struct.timespec** %10, align 8
  br label %44

44:                                               ; preds = %43, %42
  %45 = load %struct.thread*, %struct.thread** %4, align 8
  %46 = load %struct.pselect_args*, %struct.pselect_args** %5, align 8
  %47 = getelementptr inbounds %struct.pselect_args, %struct.pselect_args* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.pselect_args*, %struct.pselect_args** %5, align 8
  %50 = getelementptr inbounds %struct.pselect_args, %struct.pselect_args* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.pselect_args*, %struct.pselect_args** %5, align 8
  %53 = getelementptr inbounds %struct.pselect_args, %struct.pselect_args* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.pselect_args*, %struct.pselect_args** %5, align 8
  %56 = getelementptr inbounds %struct.pselect_args, %struct.pselect_args* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.timeval*, %struct.timeval** %8, align 8
  %59 = load %struct.timespec*, %struct.timespec** %10, align 8
  %60 = load i32, i32* @NFDBITS, align 4
  %61 = call i32 @kern_pselect(%struct.thread* %45, i32 %48, i32 %51, i32 %54, i32 %57, %struct.timeval* %58, %struct.timespec* %59, i32 %60)
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %44, %40, %23
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @copyin(i32*, %struct.timespec*, i32) #1

declare dso_local i32 @TIMESPEC_TO_TIMEVAL(%struct.timeval*, %struct.timespec*) #1

declare dso_local i32 @kern_pselect(%struct.thread*, i32, i32, i32, i32, %struct.timeval*, %struct.timespec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
