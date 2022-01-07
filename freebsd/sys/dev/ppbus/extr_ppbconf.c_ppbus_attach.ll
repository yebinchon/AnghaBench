; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_ppbconf.c_ppbus_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_ppbconf.c_ppbus_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppb_data = type { i32, i32* }

@PPC_IVAR_LOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Unable to fetch parent's lock\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@PPC_IVAR_INTR_HANDLER = common dso_local global i32 0, align 4
@ppbus_intr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Unable to set interrupt handler\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ppbus_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppbus_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ppb_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.ppb_data* @device_get_softc(i32 %7)
  store %struct.ppb_data* %8, %struct.ppb_data** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @device_get_parent(i32 %9)
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @PPC_IVAR_LOCK, align 4
  %13 = load %struct.ppb_data*, %struct.ppb_data** %4, align 8
  %14 = getelementptr inbounds %struct.ppb_data, %struct.ppb_data* %13, i32 0, i32 0
  %15 = bitcast i32* %14 to i64*
  %16 = call i32 @BUS_READ_IVAR(i32 %10, i32 %11, i32 %12, i64* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @device_printf(i32 %20, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %2, align 4
  br label %70

23:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @SYS_RES_IRQ, align 4
  %26 = load i32, i32* @RF_SHAREABLE, align 4
  %27 = call i32* @bus_alloc_resource_any(i32 %24, i32 %25, i32* %6, i32 %26)
  %28 = load %struct.ppb_data*, %struct.ppb_data** %4, align 8
  %29 = getelementptr inbounds %struct.ppb_data, %struct.ppb_data* %28, i32 0, i32 1
  store i32* %27, i32** %29, align 8
  %30 = load %struct.ppb_data*, %struct.ppb_data** %4, align 8
  %31 = getelementptr inbounds %struct.ppb_data, %struct.ppb_data* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %55

34:                                               ; preds = %23
  %35 = load %struct.ppb_data*, %struct.ppb_data** %4, align 8
  %36 = getelementptr inbounds %struct.ppb_data, %struct.ppb_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @mtx_lock(i32 %37)
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @device_get_parent(i32 %39)
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @PPC_IVAR_INTR_HANDLER, align 4
  %43 = call i32 @BUS_WRITE_IVAR(i32 %40, i32 %41, i32 %42, i64 ptrtoint (i32* @ppbus_intr to i64))
  store i32 %43, i32* %5, align 4
  %44 = load %struct.ppb_data*, %struct.ppb_data** %4, align 8
  %45 = getelementptr inbounds %struct.ppb_data, %struct.ppb_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @mtx_unlock(i32 %46)
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %34
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @device_printf(i32 %51, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* %5, align 4
  store i32 %53, i32* %2, align 4
  br label %70

54:                                               ; preds = %34
  br label %55

55:                                               ; preds = %54, %23
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @bus_generic_probe(i32 %56)
  %58 = load %struct.ppb_data*, %struct.ppb_data** %4, align 8
  %59 = getelementptr inbounds %struct.ppb_data, %struct.ppb_data* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @mtx_lock(i32 %60)
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @ppb_scan_bus(i32 %62)
  %64 = load %struct.ppb_data*, %struct.ppb_data** %4, align 8
  %65 = getelementptr inbounds %struct.ppb_data, %struct.ppb_data* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @mtx_unlock(i32 %66)
  %68 = load i32, i32* %3, align 4
  %69 = call i32 @bus_generic_attach(i32 %68)
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %55, %50, %19
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local %struct.ppb_data* @device_get_softc(i32) #1

declare dso_local i32 @BUS_READ_IVAR(i32, i32, i32, i64*) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @mtx_lock(i32) #1

declare dso_local i32 @BUS_WRITE_IVAR(i32, i32, i32, i64) #1

declare dso_local i32 @mtx_unlock(i32) #1

declare dso_local i32 @bus_generic_probe(i32) #1

declare dso_local i32 @ppb_scan_bus(i32) #1

declare dso_local i32 @bus_generic_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
