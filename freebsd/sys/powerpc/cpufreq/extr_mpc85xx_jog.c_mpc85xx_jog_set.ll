; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/cpufreq/extr_mpc85xx_jog.c_mpc85xx_jog_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/cpufreq/extr_mpc85xx_jog.c_mpc85xx_jog_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_setting = type { i64, i32* }
%struct.mpc85xx_jog_softc = type { i64 }
%struct.jog_rv_args = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@cpuid = common dso_local global i32 0, align 4
@smp_no_rendezvous_barrier = common dso_local global i32 0, align 4
@mpc85xx_jog_set_int = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cf_setting*)* @mpc85xx_jog_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc85xx_jog_set(i32 %0, %struct.cf_setting* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.cf_setting*, align 8
  %6 = alloca %struct.mpc85xx_jog_softc*, align 8
  %7 = alloca %struct.jog_rv_args, align 4
  store i32 %0, i32* %4, align 4
  store %struct.cf_setting* %1, %struct.cf_setting** %5, align 8
  %8 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %9 = icmp eq %struct.cf_setting* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  store i32 %11, i32* %3, align 4
  br label %38

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = call %struct.mpc85xx_jog_softc* @device_get_softc(i32 %13)
  store %struct.mpc85xx_jog_softc* %14, %struct.mpc85xx_jog_softc** %6, align 8
  %15 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %16 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.mpc85xx_jog_softc*, %struct.mpc85xx_jog_softc** %6, align 8
  %19 = getelementptr inbounds %struct.mpc85xx_jog_softc, %struct.mpc85xx_jog_softc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sle i64 %17, %20
  %22 = zext i1 %21 to i32
  %23 = getelementptr inbounds %struct.jog_rv_args, %struct.jog_rv_args* %7, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %25 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.jog_rv_args, %struct.jog_rv_args* %7, i32 0, i32 3
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* @cpuid, align 4
  %31 = call i32 @PCPU_GET(i32 %30)
  %32 = getelementptr inbounds %struct.jog_rv_args, %struct.jog_rv_args* %7, i32 0, i32 2
  store i32 %31, i32* %32, align 4
  %33 = getelementptr inbounds %struct.jog_rv_args, %struct.jog_rv_args* %7, i32 0, i32 1
  store i32 1, i32* %33, align 4
  %34 = load i32, i32* @smp_no_rendezvous_barrier, align 4
  %35 = load i32, i32* @mpc85xx_jog_set_int, align 4
  %36 = load i32, i32* @smp_no_rendezvous_barrier, align 4
  %37 = call i32 @smp_rendezvous(i32 %34, i32 %35, i32 %36, %struct.jog_rv_args* %7)
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %12, %10
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.mpc85xx_jog_softc* @device_get_softc(i32) #1

declare dso_local i32 @PCPU_GET(i32) #1

declare dso_local i32 @smp_rendezvous(i32, i32, i32, %struct.jog_rv_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
