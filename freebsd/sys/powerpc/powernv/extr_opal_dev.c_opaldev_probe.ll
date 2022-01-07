; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powernv/extr_opal_dev.c_opaldev_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powernv/extr_opal_dev.c_opaldev_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"ibm,opal-v3\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"OPAL Abstraction Firmware\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"opal-interrupts\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"/interrupt-controller@0\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@BUS_PROBE_SPECIFIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @opaldev_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opaldev_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @ofw_bus_is_compatible(i32 %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENXIO, align 4
  store i32 %12, i32* %2, align 4
  br label %75

13:                                               ; preds = %1
  %14 = call i64 (...) @opal_check()
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load i32, i32* @ENXIO, align 4
  store i32 %17, i32* %2, align 4
  br label %75

18:                                               ; preds = %13
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @device_set_desc(i32 %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @ofw_bus_get_node(i32 %21)
  %23 = call i64 @OF_hasprop(i32 %22, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %73

25:                                               ; preds = %18
  %26 = call i32 @OF_finddevice(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @OF_xref_from_node(i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @ofw_bus_get_node(i32 %29)
  %31 = call i32 @OF_getproplen(i32 %30, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %32 = sext i32 %31 to i64
  %33 = udiv i64 %32, 4
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 4
  %38 = trunc i64 %37 to i32
  %39 = load i32, i32* @M_DEVBUF, align 4
  %40 = load i32, i32* @M_WAITOK, align 4
  %41 = call i32* @malloc(i32 %38, i32 %39, i32 %40)
  store i32* %41, i32** %5, align 8
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @ofw_bus_get_node(i32 %42)
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = mul i64 %46, 4
  %48 = trunc i64 %47 to i32
  %49 = call i32 @OF_getencprop(i32 %43, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32* %44, i32 %48)
  store i32 0, i32* %6, align 4
  br label %50

50:                                               ; preds = %66, %25
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %69

54:                                               ; preds = %50
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* @SYS_RES_IRQ, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* %4, align 4
  %60 = load i32*, i32** %5, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = call i32 @ofw_bus_map_intr(i32 %58, i32 %59, i32 1, i32* %63)
  %65 = call i32 @bus_set_resource(i32 %55, i32 %56, i32 %57, i32 %64, i32 1)
  br label %66

66:                                               ; preds = %54
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %6, align 4
  br label %50

69:                                               ; preds = %50
  %70 = load i32*, i32** %5, align 8
  %71 = load i32, i32* @M_DEVBUF, align 4
  %72 = call i32 @free(i32* %70, i32 %71)
  br label %73

73:                                               ; preds = %69, %18
  %74 = load i32, i32* @BUS_PROBE_SPECIFIC, align 4
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %73, %16, %11
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @ofw_bus_is_compatible(i32, i8*) #1

declare dso_local i64 @opal_check(...) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

declare dso_local i64 @OF_hasprop(i32, i8*) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @OF_finddevice(i8*) #1

declare dso_local i32 @OF_xref_from_node(i32) #1

declare dso_local i32 @OF_getproplen(i32, i8*) #1

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @OF_getencprop(i32, i8*, i32*, i32) #1

declare dso_local i32 @bus_set_resource(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ofw_bus_map_intr(i32, i32, i32, i32*) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
