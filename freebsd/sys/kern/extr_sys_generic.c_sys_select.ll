; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_generic.c_sys_select.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_generic.c_sys_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.select_args = type { i32, i32, i32, i32, i32* }
%struct.timeval = type { i32 }

@NFDBITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_select(%struct.thread* %0, %struct.select_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.select_args*, align 8
  %6 = alloca %struct.timeval, align 4
  %7 = alloca %struct.timeval*, align 8
  %8 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.select_args* %1, %struct.select_args** %5, align 8
  %9 = load %struct.select_args*, %struct.select_args** %5, align 8
  %10 = getelementptr inbounds %struct.select_args, %struct.select_args* %9, i32 0, i32 4
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = load %struct.select_args*, %struct.select_args** %5, align 8
  %15 = getelementptr inbounds %struct.select_args, %struct.select_args* %14, i32 0, i32 4
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @copyin(i32* %16, %struct.timeval* %6, i32 4)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %3, align 4
  br label %41

22:                                               ; preds = %13
  store %struct.timeval* %6, %struct.timeval** %7, align 8
  br label %24

23:                                               ; preds = %2
  store %struct.timeval* null, %struct.timeval** %7, align 8
  br label %24

24:                                               ; preds = %23, %22
  %25 = load %struct.thread*, %struct.thread** %4, align 8
  %26 = load %struct.select_args*, %struct.select_args** %5, align 8
  %27 = getelementptr inbounds %struct.select_args, %struct.select_args* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.select_args*, %struct.select_args** %5, align 8
  %30 = getelementptr inbounds %struct.select_args, %struct.select_args* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.select_args*, %struct.select_args** %5, align 8
  %33 = getelementptr inbounds %struct.select_args, %struct.select_args* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.select_args*, %struct.select_args** %5, align 8
  %36 = getelementptr inbounds %struct.select_args, %struct.select_args* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.timeval*, %struct.timeval** %7, align 8
  %39 = load i32, i32* @NFDBITS, align 4
  %40 = call i32 @kern_select(%struct.thread* %25, i32 %28, i32 %31, i32 %34, i32 %37, %struct.timeval* %38, i32 %39)
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %24, %20
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @copyin(i32*, %struct.timeval*, i32) #1

declare dso_local i32 @kern_select(%struct.thread*, i32, i32, i32, i32, %struct.timeval*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
