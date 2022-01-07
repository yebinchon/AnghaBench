; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pwm/extr_pwmc.c_pwmc_setup_label.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pwm/extr_pwmc.c_pwmc_setup_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwmc_softc = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"pwm/%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pwmc_softc*)* @pwmc_setup_label to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pwmc_setup_label(%struct.pwmc_softc* %0) #0 {
  %2 = alloca %struct.pwmc_softc*, align 8
  %3 = alloca i8*, align 8
  store %struct.pwmc_softc* %0, %struct.pwmc_softc** %2, align 8
  %4 = load %struct.pwmc_softc*, %struct.pwmc_softc** %2, align 8
  %5 = getelementptr inbounds %struct.pwmc_softc, %struct.pwmc_softc* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @device_get_name(i32 %6)
  %8 = load %struct.pwmc_softc*, %struct.pwmc_softc** %2, align 8
  %9 = getelementptr inbounds %struct.pwmc_softc, %struct.pwmc_softc* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @device_get_unit(i32 %10)
  %12 = call i64 @resource_string_value(i32 %7, i32 %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %3)
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.pwmc_softc*, %struct.pwmc_softc** %2, align 8
  %16 = getelementptr inbounds %struct.pwmc_softc, %struct.pwmc_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 @make_dev_alias(i32 %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  br label %20

20:                                               ; preds = %14, %1
  ret void
}

declare dso_local i64 @resource_string_value(i32, i32, i8*, i8**) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @make_dev_alias(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
