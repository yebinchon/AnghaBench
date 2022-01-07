; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_timeout.c_callout_callwheel_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_timeout.c_callout_callwheel_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.callout_cpu = type { i32 }

@curcpu = common dso_local global i32 0, align 4
@maxproc = common dso_local global i64 0, align 8
@maxfiles = common dso_local global i64 0, align 8
@ncallout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"kern.ncallout\00", align 1
@callwheelsize = common dso_local global i32 0, align 4
@callwheelmask = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"kern.pin_default_swi\00", align 1
@pin_default_swi = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"kern.pin_pcpu_swi\00", align 1
@pin_pcpu_swi = common dso_local global i32 0, align 4
@cpuid = common dso_local global i32 0, align 4
@timeout_cpu = common dso_local global i32 0, align 4
@M_CALLOUT = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @callout_callwheel_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @callout_callwheel_init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.callout_cpu*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i32, i32* @curcpu, align 4
  %5 = call %struct.callout_cpu* @CC_CPU(i32 %4)
  %6 = call i32 @memset(%struct.callout_cpu* %5, i32 0, i32 4)
  %7 = load i64, i64* @maxproc, align 8
  %8 = add nsw i64 16, %7
  %9 = load i64, i64* @maxfiles, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @imin(i64 %10, i32 18508)
  store i32 %11, i32* @ncallout, align 4
  %12 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* @ncallout)
  %13 = load i32, i32* @ncallout, align 4
  %14 = call i32 @fls(i32 %13)
  %15 = shl i32 1, %14
  store i32 %15, i32* @callwheelsize, align 4
  %16 = load i32, i32* @callwheelsize, align 4
  %17 = sub nsw i32 %16, 1
  store i32 %17, i32* @callwheelmask, align 4
  %18 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32* @pin_default_swi)
  %19 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32* @pin_pcpu_swi)
  %20 = load i32, i32* @cpuid, align 4
  %21 = call i32 @PCPU_GET(i32 %20)
  store i32 %21, i32* @timeout_cpu, align 4
  %22 = load i32, i32* @timeout_cpu, align 4
  %23 = call %struct.callout_cpu* @CC_CPU(i32 %22)
  store %struct.callout_cpu* %23, %struct.callout_cpu** %3, align 8
  %24 = load i32, i32* @ncallout, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 4
  %27 = trunc i64 %26 to i32
  %28 = load i32, i32* @M_CALLOUT, align 4
  %29 = load i32, i32* @M_WAITOK, align 4
  %30 = call i32 @malloc(i32 %27, i32 %28, i32 %29)
  %31 = load %struct.callout_cpu*, %struct.callout_cpu** %3, align 8
  %32 = getelementptr inbounds %struct.callout_cpu, %struct.callout_cpu* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.callout_cpu*, %struct.callout_cpu** %3, align 8
  %34 = load i32, i32* @timeout_cpu, align 4
  %35 = call i32 @callout_cpu_init(%struct.callout_cpu* %33, i32 %34)
  ret void
}

declare dso_local i32 @memset(%struct.callout_cpu*, i32, i32) #1

declare dso_local %struct.callout_cpu* @CC_CPU(i32) #1

declare dso_local i32 @imin(i64, i32) #1

declare dso_local i32 @TUNABLE_INT_FETCH(i8*, i32*) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @PCPU_GET(i32) #1

declare dso_local i32 @malloc(i32, i32, i32) #1

declare dso_local i32 @callout_cpu_init(%struct.callout_cpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
