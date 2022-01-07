; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_shutdown.c_shutdown_panic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_shutdown.c_shutdown_panic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RB_DUMP = common dso_local global i32 0, align 4
@panic_reboot_wait_time = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"Automatic reboot in %d seconds - press a key on the console to abort\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"--> Press a key on the console to reboot,\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"--> or switch off the system now.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @shutdown_panic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shutdown_panic(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @RB_DUMP, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %44

10:                                               ; preds = %2
  %11 = load i32, i32* @panic_reboot_wait_time, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %39

13:                                               ; preds = %10
  %14 = load i32, i32* @panic_reboot_wait_time, align 4
  %15 = icmp ne i32 %14, -1
  br i1 %15, label %16, label %38

16:                                               ; preds = %13
  %17 = load i32, i32* @panic_reboot_wait_time, align 4
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @panic_reboot_wait_time, align 4
  %20 = mul nsw i32 %19, 10
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %30, %16
  %22 = load i32, i32* %5, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = call i32 @DELAY(i32 100000)
  %26 = call i32 (...) @cncheckc()
  %27 = icmp ne i32 %26, -1
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %33

29:                                               ; preds = %24
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %5, align 4
  br label %21

33:                                               ; preds = %28, %21
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  br label %44

37:                                               ; preds = %33
  br label %38

38:                                               ; preds = %37, %13
  br label %40

39:                                               ; preds = %10
  br label %44

40:                                               ; preds = %38
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %43 = call i32 (...) @cngetc()
  br label %44

44:                                               ; preds = %36, %39, %40, %2
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @cncheckc(...) #1

declare dso_local i32 @cngetc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
