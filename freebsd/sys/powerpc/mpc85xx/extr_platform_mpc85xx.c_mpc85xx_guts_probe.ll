; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_platform_mpc85xx.c_mpc85xx_guts_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_platform_mpc85xx.c_mpc85xx_guts_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"fsl,mpc8572-guts\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"fsl,p1020-guts\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"fsl,p1021-guts\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"fsl,p1022-guts\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"fsl,p1023-guts\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"fsl,p2020-guts\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"MPC85xx Global Utilities\00", align 1
@BUS_PROBE_GENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mpc85xx_guts_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc85xx_guts_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i32 @ofw_bus_is_compatible(i32 %4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %29, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @ofw_bus_is_compatible(i32 %8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %29, label %11

11:                                               ; preds = %7
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @ofw_bus_is_compatible(i32 %12, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %29, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @ofw_bus_is_compatible(i32 %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @ofw_bus_is_compatible(i32 %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @ofw_bus_is_compatible(i32 %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @ENXIO, align 4
  store i32 %28, i32* %2, align 4
  br label %33

29:                                               ; preds = %23, %19, %15, %11, %7, %1
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @device_set_desc(i32 %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %32 = load i32, i32* @BUS_PROBE_GENERIC, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %29, %27
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @ofw_bus_is_compatible(i32, i8*) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
