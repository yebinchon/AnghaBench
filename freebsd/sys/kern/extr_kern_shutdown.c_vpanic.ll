; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_shutdown.c_vpanic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_shutdown.c_vpanic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@vpanic.buf = internal global [256 x i8] zeroinitializer, align 16
@RB_AUTOBOOT = common dso_local global i32 0, align 4
@panicstr = common dso_local global i8* null, align 8
@RB_NOSYNC = common dso_local global i32 0, align 4
@RB_DUMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"panic: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"panic: \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"time = %jd\0A\00", align 1
@time_second = common dso_local global i64 0, align 8
@TDF_INPANIC = common dso_local global i32 0, align 4
@sync_on_panic = common dso_local global i32 0, align 4
@poweroff_on_panic = common dso_local global i64 0, align 8
@RB_POWEROFF = common dso_local global i32 0, align 4
@powercycle_on_panic = common dso_local global i64 0, align 8
@RB_POWERCYCLE = common dso_local global i32 0, align 4
@KDB_WHY_PANIC = common dso_local global i32 0, align 4
@all_cpus = common dso_local global i32 0, align 4
@cpuid = common dso_local global i32 0, align 4
@debugger_on_panic = common dso_local global i64 0, align 8
@kdb_active = common dso_local global i32 0, align 4
@trace_all_panics = common dso_local global i64 0, align 8
@trace_on_panic = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vpanic(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %8, %struct.thread** %5, align 8
  %9 = call i32 (...) @spinlock_enter()
  %10 = load %struct.thread*, %struct.thread** %5, align 8
  %11 = getelementptr inbounds %struct.thread, %struct.thread* %10, i32 0, i32 0
  store i32 1, i32* %11, align 4
  %12 = load i32, i32* @RB_AUTOBOOT, align 4
  store i32 %12, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %13 = load i8*, i8** @panicstr, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* @RB_NOSYNC, align 4
  %17 = load i32, i32* %6, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %6, align 4
  br label %24

19:                                               ; preds = %2
  %20 = load i32, i32* @RB_DUMP, align 4
  %21 = load i32, i32* %6, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %6, align 4
  %23 = load i8*, i8** %3, align 8
  store i8* %23, i8** @panicstr, align 8
  store i32 1, i32* %7, align 4
  br label %24

24:                                               ; preds = %19, %15
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load i8*, i8** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @vsnprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @vpanic.buf, i64 0, i64 0), i32 256, i8* %28, i32 %29)
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @vpanic.buf, i64 0, i64 0), i8** @panicstr, align 8
  %31 = call i32 (...) @cngrab()
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @vpanic.buf, i64 0, i64 0))
  br label %39

33:                                               ; preds = %24
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i8*, i8** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @vprintf(i8* %35, i32 %36)
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %39

39:                                               ; preds = %33, %27
  %40 = load i64, i64* @time_second, align 8
  %41 = trunc i64 %40 to i32
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @TDF_INPANIC, align 4
  %44 = load %struct.thread*, %struct.thread** %5, align 8
  %45 = getelementptr inbounds %struct.thread, %struct.thread* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  %48 = load i32, i32* @sync_on_panic, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %39
  %51 = load i32, i32* @RB_NOSYNC, align 4
  %52 = load i32, i32* %6, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %50, %39
  %55 = load i64, i64* @poweroff_on_panic, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i32, i32* @RB_POWEROFF, align 4
  %59 = load i32, i32* %6, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %57, %54
  %62 = load i64, i64* @powercycle_on_panic, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load i32, i32* @RB_POWERCYCLE, align 4
  %66 = load i32, i32* %6, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %64, %61
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @kern_reboot(i32 %69)
  ret void
}

declare dso_local i32 @spinlock_enter(...) #1

declare dso_local i32 @vsnprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @cngrab(...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @vprintf(i8*, i32) #1

declare dso_local i32 @kern_reboot(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
