; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_mp_machdep.c_cpu_mp_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_mp_machdep.c_cpu_mp_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ap_boot_mtx = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"ap boot\00", align 1
@MTX_SPIN = common dso_local global i32 0, align 4
@all_cpus = common dso_local global i32 0, align 4
@MAXCPU = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"cpu_mp_start: ignoring AP #%d.\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"AP #%d failed to start: %d\0A\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"AP #%d started!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_mp_start() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @MTX_SPIN, align 4
  %5 = call i32 @mtx_init(i32* @ap_boot_mtx, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* null, i32 %4)
  %6 = call i32 @CPU_ZERO(i32* @all_cpus)
  %7 = call i32 @platform_cpu_mask(i32* %3)
  br label %8

8:                                                ; preds = %42, %31, %20, %0
  %9 = call i32 @CPU_EMPTY(i32* %3)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  br i1 %11, label %12, label %45

12:                                               ; preds = %8
  %13 = call i32 @CPU_FFS(i32* %3)
  %14 = sub nsw i32 %13, 1
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @CPU_CLR(i32 %15, i32* %3)
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @MAXCPU, align 4
  %19 = icmp sge i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %12
  %21 = load i32, i32* %2, align 4
  %22 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  br label %8

23:                                               ; preds = %12
  %24 = load i32, i32* %2, align 4
  %25 = call i32 (...) @platform_processor_id()
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %23
  %28 = load i32, i32* %2, align 4
  %29 = call i32 @start_ap(i32 %28)
  store i32 %29, i32* %1, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i32, i32* %2, align 4
  %33 = load i32, i32* %1, align 4
  %34 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %32, i32 %33)
  br label %8

35:                                               ; preds = %27
  %36 = load i64, i64* @bootverbose, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* %2, align 4
  %40 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %38, %35
  br label %42

42:                                               ; preds = %41, %23
  %43 = load i32, i32* %2, align 4
  %44 = call i32 @CPU_SET(i32 %43, i32* @all_cpus)
  br label %8

45:                                               ; preds = %8
  ret void
}

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @CPU_ZERO(i32*) #1

declare dso_local i32 @platform_cpu_mask(i32*) #1

declare dso_local i32 @CPU_EMPTY(i32*) #1

declare dso_local i32 @CPU_FFS(i32*) #1

declare dso_local i32 @CPU_CLR(i32, i32*) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i32 @platform_processor_id(...) #1

declare dso_local i32 @start_ap(i32) #1

declare dso_local i32 @CPU_SET(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
