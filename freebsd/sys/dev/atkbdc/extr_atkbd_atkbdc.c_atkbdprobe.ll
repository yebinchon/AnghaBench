; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_atkbd_atkbdc.c_atkbdprobe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_atkbd_atkbdc.c_atkbdprobe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"AT Keyboard\00", align 1
@KBDC_RID_KBD = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"unable to allocate IRQ\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @atkbdprobe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atkbdprobe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.resource*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @device_set_desc(i32 %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @device_get_flags(i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* @KBDC_RID_KBD, align 4
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @SYS_RES_IRQ, align 4
  %15 = load i32, i32* @RF_ACTIVE, align 4
  %16 = call %struct.resource* @bus_alloc_resource_any(i32 %13, i32 %14, i32* %7, i32 %15)
  store %struct.resource* %16, %struct.resource** %4, align 8
  %17 = load %struct.resource*, %struct.resource** %4, align 8
  %18 = icmp eq %struct.resource* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %1
  %20 = load i64, i64* @bootverbose, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @device_printf(i32 %23, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %22, %19
  %26 = load i32, i32* @ENXIO, align 4
  store i32 %26, i32* %2, align 4
  br label %39

27:                                               ; preds = %1
  %28 = load %struct.resource*, %struct.resource** %4, align 8
  %29 = call i32 @rman_get_start(%struct.resource* %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @SYS_RES_IRQ, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.resource*, %struct.resource** %4, align 8
  %34 = call i32 @bus_release_resource(i32 %30, i32 %31, i32 %32, %struct.resource* %33)
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @atkbd_probe_unit(i32 %35, i32 %36, i32 %37)
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %27, %25
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @device_set_desc(i32, i8*) #1

declare dso_local i32 @device_get_flags(i32) #1

declare dso_local %struct.resource* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @rman_get_start(%struct.resource*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, %struct.resource*) #1

declare dso_local i32 @atkbd_probe_unit(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
