; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sysctl.c_sys___sysctlbyname.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sysctl.c_sys___sysctlbyname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.__sysctlbyname_args = type { i32*, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys___sysctlbyname(%struct.thread* %0, %struct.__sysctlbyname_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.__sysctlbyname_args*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.__sysctlbyname_args* %1, %struct.__sysctlbyname_args** %5, align 8
  %8 = load %struct.thread*, %struct.thread** %4, align 8
  %9 = load %struct.__sysctlbyname_args*, %struct.__sysctlbyname_args** %5, align 8
  %10 = getelementptr inbounds %struct.__sysctlbyname_args, %struct.__sysctlbyname_args* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.__sysctlbyname_args*, %struct.__sysctlbyname_args** %5, align 8
  %13 = getelementptr inbounds %struct.__sysctlbyname_args, %struct.__sysctlbyname_args* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.__sysctlbyname_args*, %struct.__sysctlbyname_args** %5, align 8
  %16 = getelementptr inbounds %struct.__sysctlbyname_args, %struct.__sysctlbyname_args* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.__sysctlbyname_args*, %struct.__sysctlbyname_args** %5, align 8
  %19 = getelementptr inbounds %struct.__sysctlbyname_args, %struct.__sysctlbyname_args* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.__sysctlbyname_args*, %struct.__sysctlbyname_args** %5, align 8
  %22 = getelementptr inbounds %struct.__sysctlbyname_args, %struct.__sysctlbyname_args* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.__sysctlbyname_args*, %struct.__sysctlbyname_args** %5, align 8
  %25 = getelementptr inbounds %struct.__sysctlbyname_args, %struct.__sysctlbyname_args* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @kern___sysctlbyname(%struct.thread* %8, i32 %11, i32 %14, i32 %17, i32* %20, i32 %23, i32 %26, i64* %6, i32 0, i32 0)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %3, align 4
  br label %44

32:                                               ; preds = %2
  %33 = load %struct.__sysctlbyname_args*, %struct.__sysctlbyname_args** %5, align 8
  %34 = getelementptr inbounds %struct.__sysctlbyname_args, %struct.__sysctlbyname_args* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.__sysctlbyname_args*, %struct.__sysctlbyname_args** %5, align 8
  %39 = getelementptr inbounds %struct.__sysctlbyname_args, %struct.__sysctlbyname_args* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @copyout(i64* %6, i32* %40, i32 8)
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %37, %32
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %42, %30
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @kern___sysctlbyname(%struct.thread*, i32, i32, i32, i32*, i32, i32, i64*, i32, i32) #1

declare dso_local i32 @copyout(i64*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
