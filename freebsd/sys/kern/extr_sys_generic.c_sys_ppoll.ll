; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_generic.c_sys_ppoll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_generic.c_sys_ppoll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.ppoll_args = type { i32, i32, i32*, i32* }
%struct.timespec = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_ppoll(%struct.thread* %0, %struct.ppoll_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.ppoll_args*, align 8
  %6 = alloca %struct.timespec, align 4
  %7 = alloca %struct.timespec*, align 8
  %8 = alloca %struct.timespec, align 4
  %9 = alloca %struct.timespec*, align 8
  %10 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.ppoll_args* %1, %struct.ppoll_args** %5, align 8
  %11 = load %struct.ppoll_args*, %struct.ppoll_args** %5, align 8
  %12 = getelementptr inbounds %struct.ppoll_args, %struct.ppoll_args* %11, i32 0, i32 3
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %2
  %16 = load %struct.ppoll_args*, %struct.ppoll_args** %5, align 8
  %17 = getelementptr inbounds %struct.ppoll_args, %struct.ppoll_args* %16, i32 0, i32 3
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @copyin(i32* %18, %struct.timespec* %6, i32 4)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %3, align 4
  br label %53

24:                                               ; preds = %15
  store %struct.timespec* %6, %struct.timespec** %7, align 8
  br label %26

25:                                               ; preds = %2
  store %struct.timespec* null, %struct.timespec** %7, align 8
  br label %26

26:                                               ; preds = %25, %24
  %27 = load %struct.ppoll_args*, %struct.ppoll_args** %5, align 8
  %28 = getelementptr inbounds %struct.ppoll_args, %struct.ppoll_args* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %41

31:                                               ; preds = %26
  %32 = load %struct.ppoll_args*, %struct.ppoll_args** %5, align 8
  %33 = getelementptr inbounds %struct.ppoll_args, %struct.ppoll_args* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @copyin(i32* %34, %struct.timespec* %8, i32 4)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %3, align 4
  br label %53

40:                                               ; preds = %31
  store %struct.timespec* %8, %struct.timespec** %9, align 8
  br label %42

41:                                               ; preds = %26
  store %struct.timespec* null, %struct.timespec** %9, align 8
  br label %42

42:                                               ; preds = %41, %40
  %43 = load %struct.thread*, %struct.thread** %4, align 8
  %44 = load %struct.ppoll_args*, %struct.ppoll_args** %5, align 8
  %45 = getelementptr inbounds %struct.ppoll_args, %struct.ppoll_args* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ppoll_args*, %struct.ppoll_args** %5, align 8
  %48 = getelementptr inbounds %struct.ppoll_args, %struct.ppoll_args* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.timespec*, %struct.timespec** %7, align 8
  %51 = load %struct.timespec*, %struct.timespec** %9, align 8
  %52 = call i32 @kern_poll(%struct.thread* %43, i32 %46, i32 %49, %struct.timespec* %50, %struct.timespec* %51)
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %42, %38, %22
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @copyin(i32*, %struct.timespec*, i32) #1

declare dso_local i32 @kern_poll(%struct.thread*, i32, i32, %struct.timespec*, %struct.timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
