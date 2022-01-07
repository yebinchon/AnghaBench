; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_time.c_sys_gettimeofday.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_time.c_sys_gettimeofday.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.gettimeofday_args = type { i32*, i32* }
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_gettimeofday(%struct.thread* %0, %struct.gettimeofday_args* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.gettimeofday_args*, align 8
  %5 = alloca %struct.timeval, align 8
  %6 = alloca %struct.timezone, align 8
  %7 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.gettimeofday_args* %1, %struct.gettimeofday_args** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.gettimeofday_args*, %struct.gettimeofday_args** %4, align 8
  %9 = getelementptr inbounds %struct.gettimeofday_args, %struct.gettimeofday_args* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = bitcast %struct.timeval* %5 to %struct.timezone*
  %14 = call i32 @microtime(%struct.timezone* %13)
  %15 = bitcast %struct.timeval* %5 to %struct.timezone*
  %16 = load %struct.gettimeofday_args*, %struct.gettimeofday_args** %4, align 8
  %17 = getelementptr inbounds %struct.gettimeofday_args, %struct.gettimeofday_args* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @copyout(%struct.timezone* %15, i32* %18, i32 16)
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %12, %2
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %20
  %24 = load %struct.gettimeofday_args*, %struct.gettimeofday_args** %4, align 8
  %25 = getelementptr inbounds %struct.gettimeofday_args, %struct.gettimeofday_args* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.timezone, %struct.timezone* %6, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = getelementptr inbounds %struct.timezone, %struct.timezone* %6, i32 0, i32 0
  store i64 0, i64* %30, align 8
  %31 = load %struct.gettimeofday_args*, %struct.gettimeofday_args** %4, align 8
  %32 = getelementptr inbounds %struct.gettimeofday_args, %struct.gettimeofday_args* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @copyout(%struct.timezone* %6, i32* %33, i32 16)
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %28, %23, %20
  %36 = load i32, i32* %7, align 4
  ret i32 %36
}

declare dso_local i32 @microtime(%struct.timezone*) #1

declare dso_local i32 @copyout(%struct.timezone*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
