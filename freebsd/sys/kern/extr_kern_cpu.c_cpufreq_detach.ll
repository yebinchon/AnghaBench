; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_cpu.c_cpufreq_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_cpu.c_cpufreq_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_softc = type { %struct.cf_saved_freq*, i32, i32 }
%struct.cf_saved_freq = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"shutdown %s\0A\00", align 1
@link = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@cpufreq_dc = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"final shutdown for %s\0A\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cpufreq_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpufreq_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpufreq_softc*, align 8
  %4 = alloca %struct.cf_saved_freq*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @device_get_nameunit(i32 %6)
  %8 = call i32 @CF_DEBUG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load i32, i32* %2, align 4
  %10 = call %struct.cpufreq_softc* @device_get_softc(i32 %9)
  store %struct.cpufreq_softc* %10, %struct.cpufreq_softc** %3, align 8
  %11 = load %struct.cpufreq_softc*, %struct.cpufreq_softc** %3, align 8
  %12 = getelementptr inbounds %struct.cpufreq_softc, %struct.cpufreq_softc* %11, i32 0, i32 2
  %13 = call i32 @sysctl_ctx_free(i32* %12)
  br label %14

14:                                               ; preds = %19, %1
  %15 = load %struct.cpufreq_softc*, %struct.cpufreq_softc** %3, align 8
  %16 = getelementptr inbounds %struct.cpufreq_softc, %struct.cpufreq_softc* %15, i32 0, i32 1
  %17 = call %struct.cf_saved_freq* @SLIST_FIRST(i32* %16)
  store %struct.cf_saved_freq* %17, %struct.cf_saved_freq** %4, align 8
  %18 = icmp ne %struct.cf_saved_freq* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = load %struct.cpufreq_softc*, %struct.cpufreq_softc** %3, align 8
  %21 = getelementptr inbounds %struct.cpufreq_softc, %struct.cpufreq_softc* %20, i32 0, i32 1
  %22 = load i32, i32* @link, align 4
  %23 = call i32 @SLIST_REMOVE_HEAD(i32* %21, i32 %22)
  %24 = load %struct.cf_saved_freq*, %struct.cf_saved_freq** %4, align 8
  %25 = load i32, i32* @M_TEMP, align 4
  %26 = call i32 @free(%struct.cf_saved_freq* %24, i32 %25)
  br label %14

27:                                               ; preds = %14
  %28 = load i32, i32* @cpufreq_dc, align 4
  %29 = call i32 @devclass_get_count(i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = load i32, i32* %2, align 4
  %34 = call i32 @device_get_nameunit(i32 %33)
  %35 = call i32 @CF_DEBUG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load %struct.cpufreq_softc*, %struct.cpufreq_softc** %3, align 8
  %37 = getelementptr inbounds %struct.cpufreq_softc, %struct.cpufreq_softc* %36, i32 0, i32 0
  %38 = load %struct.cf_saved_freq*, %struct.cf_saved_freq** %37, align 8
  %39 = load i32, i32* @M_DEVBUF, align 4
  %40 = call i32 @free(%struct.cf_saved_freq* %38, i32 %39)
  br label %41

41:                                               ; preds = %32, %27
  ret i32 0
}

declare dso_local i32 @CF_DEBUG(i8*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local %struct.cpufreq_softc* @device_get_softc(i32) #1

declare dso_local i32 @sysctl_ctx_free(i32*) #1

declare dso_local %struct.cf_saved_freq* @SLIST_FIRST(i32*) #1

declare dso_local i32 @SLIST_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @free(%struct.cf_saved_freq*, i32) #1

declare dso_local i32 @devclass_get_count(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
