; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_shutdown.c_print_uptime.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_shutdown.c_print_uptime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"Uptime: \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%ldd\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%ldh\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%ldm\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%lds\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @print_uptime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_uptime() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.timespec, align 4
  %3 = call i32 @getnanouptime(%struct.timespec* %2)
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  %5 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp sge i32 %6, 86400
  br i1 %7, label %8, label %17

8:                                                ; preds = %0
  %9 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = sext i32 %10 to i64
  %12 = sdiv i64 %11, 86400
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %12)
  %14 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = srem i32 %15, 86400
  store i32 %16, i32* %14, align 4
  store i32 1, i32* %1, align 4
  br label %17

17:                                               ; preds = %8, %0
  %18 = load i32, i32* %1, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp sge i32 %22, 3600
  br i1 %23, label %24, label %33

24:                                               ; preds = %20, %17
  %25 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = sdiv i64 %27, 3600
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64 %28)
  %30 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = srem i32 %31, 3600
  store i32 %32, i32* %30, align 4
  store i32 1, i32* %1, align 4
  br label %33

33:                                               ; preds = %24, %20
  %34 = load i32, i32* %1, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp sge i32 %38, 60
  br i1 %39, label %40, label %49

40:                                               ; preds = %36, %33
  %41 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = sdiv i64 %43, 60
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i64 %44)
  %46 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = srem i32 %47, 60
  store i32 %48, i32* %46, align 4
  store i32 1, i32* %1, align 4
  br label %49

49:                                               ; preds = %40, %36
  %50 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i64 %52)
  ret void
}

declare dso_local i32 @getnanouptime(%struct.timespec*) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
