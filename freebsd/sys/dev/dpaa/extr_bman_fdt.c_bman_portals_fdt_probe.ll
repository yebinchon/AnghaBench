; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_bman_fdt.c_bman_portals_fdt_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_bman_fdt.c_bman_portals_fdt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"simple-bus\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"fsl,bman-portal\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"fsl,bman-portals\00", align 1
@BMAN_PORT_DEVSTR = common dso_local global i32 0, align 4
@BUS_PROBE_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @bman_portals_fdt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bman_portals_fdt_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i64 @ofw_bus_is_compatible(i32 %5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %31

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @ofw_bus_get_node(i32 %9)
  store i64 %10, i64* %4, align 8
  %11 = load i64, i64* %4, align 8
  %12 = call i64 @OF_child(i64 %11)
  store i64 %12, i64* %4, align 8
  br label %13

13:                                               ; preds = %22, %8
  %14 = load i64, i64* %4, align 8
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %13
  %17 = load i64, i64* %4, align 8
  %18 = call i64 @ofw_bus_node_is_compatible(i64 %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %25

21:                                               ; preds = %16
  br label %22

22:                                               ; preds = %21
  %23 = load i64, i64* %4, align 8
  %24 = call i64 @OF_peer(i64 %23)
  store i64 %24, i64* %4, align 8
  br label %13

25:                                               ; preds = %20, %13
  %26 = load i64, i64* %4, align 8
  %27 = icmp sle i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32, i32* @ENXIO, align 4
  store i32 %29, i32* %2, align 4
  br label %43

30:                                               ; preds = %25
  br label %38

31:                                               ; preds = %1
  %32 = load i32, i32* %3, align 4
  %33 = call i64 @ofw_bus_is_compatible(i32 %32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* @ENXIO, align 4
  store i32 %36, i32* %2, align 4
  br label %43

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %37, %30
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @BMAN_PORT_DEVSTR, align 4
  %41 = call i32 @device_set_desc(i32 %39, i32 %40)
  %42 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %38, %35, %28
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i64 @ofw_bus_is_compatible(i32, i8*) #1

declare dso_local i64 @ofw_bus_get_node(i32) #1

declare dso_local i64 @OF_child(i64) #1

declare dso_local i64 @ofw_bus_node_is_compatible(i64, i8*) #1

declare dso_local i64 @OF_peer(i64) #1

declare dso_local i32 @device_set_desc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
