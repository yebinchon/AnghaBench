; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_cpu.c_cpufreq_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_cpu.c_cpufreq_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_softc = type { i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"freq_settings\00", align 1
@CTLTYPE_STRING = common dso_local global i32 0, align 4
@CTLFLAG_RD = common dso_local global i32 0, align 4
@cpufreq_settings_sysctl = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"CPU frequency driver settings\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"cpufreq\00", align 1
@CPUFREQ_VAL_UNKNOWN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpufreq_register(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.cpufreq_softc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @device_get_sysctl_ctx(i32* %7)
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @device_get_sysctl_tree(i32* %9)
  %11 = call i32 @SYSCTL_CHILDREN(i32 %10)
  %12 = load i32, i32* @OID_AUTO, align 4
  %13 = load i32, i32* @CTLTYPE_STRING, align 4
  %14 = load i32, i32* @CTLFLAG_RD, align 4
  %15 = or i32 %13, %14
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* @cpufreq_settings_sysctl, align 4
  %18 = call i32 @SYSCTL_ADD_PROC(i32 %8, i32 %11, i32 %12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %15, i32* %16, i32 0, i32 %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %19 = load i32*, i32** %3, align 8
  %20 = call i32* @device_get_parent(i32* %19)
  store i32* %20, i32** %6, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = call i32* @device_find_child(i32* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 -1)
  store i32* %22, i32** %5, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %1
  %25 = load i32*, i32** %5, align 8
  %26 = call %struct.cpufreq_softc* @device_get_softc(i32* %25)
  store %struct.cpufreq_softc* %26, %struct.cpufreq_softc** %4, align 8
  %27 = load i32, i32* @CPUFREQ_VAL_UNKNOWN, align 4
  %28 = load %struct.cpufreq_softc*, %struct.cpufreq_softc** %4, align 8
  %29 = getelementptr inbounds %struct.cpufreq_softc, %struct.cpufreq_softc* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  store i32 0, i32* %2, align 4
  br label %42

30:                                               ; preds = %1
  %31 = load i32*, i32** %6, align 8
  %32 = call i32* @BUS_ADD_CHILD(i32* %31, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 -1)
  store i32* %32, i32** %5, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @ENOMEM, align 4
  store i32 %36, i32* %2, align 4
  br label %42

37:                                               ; preds = %30
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @device_quiet(i32* %38)
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @device_probe_and_attach(i32* %40)
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %37, %35, %24
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @SYSCTL_ADD_PROC(i32, i32, i32, i8*, i32, i32*, i32, i32, i8*, i8*) #1

declare dso_local i32 @device_get_sysctl_ctx(i32*) #1

declare dso_local i32 @SYSCTL_CHILDREN(i32) #1

declare dso_local i32 @device_get_sysctl_tree(i32*) #1

declare dso_local i32* @device_get_parent(i32*) #1

declare dso_local i32* @device_find_child(i32*, i8*, i32) #1

declare dso_local %struct.cpufreq_softc* @device_get_softc(i32*) #1

declare dso_local i32* @BUS_ADD_CHILD(i32*, i32, i8*, i32) #1

declare dso_local i32 @device_quiet(i32*) #1

declare dso_local i32 @device_probe_and_attach(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
