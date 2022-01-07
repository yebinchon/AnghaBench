; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cy/extr_cy_isa.c_cy_isa_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cy/extr_cy_isa.c_cy_isa_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"ioport resource allocation failed\0A\00", align 1
@CY16_RESET = common dso_local global i32 0, align 4
@CY_CLEAR_INTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cy_isa_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cy_isa_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.resource*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i64 @isa_get_logicalid(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @ENXIO, align 4
  store i32 %12, i32* %2, align 4
  br label %49

13:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @SYS_RES_MEMORY, align 4
  %16 = load i32, i32* @RF_ACTIVE, align 4
  %17 = call %struct.resource* @bus_alloc_resource_any(i32 %14, i32 %15, i32* %7, i32 %16)
  store %struct.resource* %17, %struct.resource** %4, align 8
  %18 = load %struct.resource*, %struct.resource** %4, align 8
  %19 = icmp eq %struct.resource* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @device_printf(i32 %21, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ENXIO, align 4
  store i32 %23, i32* %2, align 4
  br label %49

24:                                               ; preds = %13
  %25 = load %struct.resource*, %struct.resource** %4, align 8
  %26 = call i32 @rman_get_virtual(%struct.resource* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @CY16_RESET, align 4
  %29 = call i32 @cy_inb(i32 %27, i32 %28, i32 0)
  %30 = call i32 @DELAY(i32 500)
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @CY_CLEAR_INTR, align 4
  %33 = call i32 @cy_outb(i32 %31, i32 %32, i32 0, i32 0)
  %34 = call i32 @DELAY(i32 500)
  %35 = load i32, i32* %5, align 4
  %36 = call i64 @cy_units(i32 %35, i32 0)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %24
  %39 = load i32, i32* @ENXIO, align 4
  br label %41

40:                                               ; preds = %24
  br label %41

41:                                               ; preds = %40, %38
  %42 = phi i32 [ %39, %38 ], [ 0, %40 ]
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @SYS_RES_MEMORY, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.resource*, %struct.resource** %4, align 8
  %47 = call i32 @bus_release_resource(i32 %43, i32 %44, i32 %45, %struct.resource* %46)
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %41, %20, %11
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i64 @isa_get_logicalid(i32) #1

declare dso_local %struct.resource* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @rman_get_virtual(%struct.resource*) #1

declare dso_local i32 @cy_inb(i32, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @cy_outb(i32, i32, i32, i32) #1

declare dso_local i64 @cy_units(i32, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, %struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
