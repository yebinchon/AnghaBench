; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/xen/extr_xen_nexus.c_nexus_xen_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/xen/extr_xen_nexus.c_nexus_xen_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@acpi_cpu_disabled = common dso_local global i32 0, align 4
@acpi_hpet_disabled = common dso_local global i32 0, align 4
@acpi_timer_disabled = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"acpi\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Unable to add ACPI bus to Xen Dom0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @nexus_xen_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nexus_xen_attach(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  store i32* null, i32** %4, align 8
  %5 = call i32 (...) @nexus_init_resources()
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 @bus_generic_probe(i32* %6)
  %8 = call i64 (...) @xen_initial_domain()
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  store i32 1, i32* @acpi_cpu_disabled, align 4
  store i32 1, i32* @acpi_hpet_disabled, align 4
  store i32 1, i32* @acpi_timer_disabled, align 4
  %11 = load i32*, i32** %2, align 8
  %12 = call i32* @BUS_ADD_CHILD(i32* %11, i32 10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32* %12, i32** %4, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = call i32 @panic(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %10
  br label %18

18:                                               ; preds = %17, %1
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @bus_generic_attach(i32* %19)
  store i32 %20, i32* %3, align 4
  %21 = call i64 (...) @xen_initial_domain()
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load i32, i32* %3, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @device_get_softc(i32* %27)
  %29 = call i32 @acpi_install_wakeup_handler(i32 %28)
  br label %30

30:                                               ; preds = %26, %23, %18
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @nexus_init_resources(...) #1

declare dso_local i32 @bus_generic_probe(i32*) #1

declare dso_local i64 @xen_initial_domain(...) #1

declare dso_local i32* @BUS_ADD_CHILD(i32*, i32, i8*, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @bus_generic_attach(i32*) #1

declare dso_local i32 @acpi_install_wakeup_handler(i32) #1

declare dso_local i32 @device_get_softc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
