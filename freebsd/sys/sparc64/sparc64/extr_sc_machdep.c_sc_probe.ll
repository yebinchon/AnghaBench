; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_sc_machdep.c_sc_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_sc_machdep.c_sc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SC_DRIVER_NAME = common dso_local global i32 0, align 4
@SC_MD_MAX = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"System console\00", align 1
@SC_MD_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @sc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sc_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @device_get_unit(i32 %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @ofw_bus_get_name(i32 %7)
  %9 = load i32, i32* @SC_DRIVER_NAME, align 4
  %10 = call i64 @strcmp(i32 %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @SC_MD_MAX, align 4
  %15 = icmp sge i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %12, %1
  %17 = load i32, i32* @ENXIO, align 4
  store i32 %17, i32* %2, align 4
  br label %27

18:                                               ; preds = %12
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @device_set_desc(i32 %19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @device_get_flags(i32 %22)
  %24 = load i32, i32* @SC_MD_FLAGS, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @sc_probe_unit(i32 %21, i32 %25)
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %18, %16
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @ofw_bus_get_name(i32) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

declare dso_local i32 @sc_probe_unit(i32, i32) #1

declare dso_local i32 @device_get_flags(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
