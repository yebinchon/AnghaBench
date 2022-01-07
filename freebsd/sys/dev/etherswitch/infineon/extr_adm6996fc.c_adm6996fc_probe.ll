; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/infineon/extr_adm6996fc.c_adm6996fc_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/infineon/extr_adm6996fc.c_adm6996fc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adm6996fc_softc = type { i32 }

@ADM6996FC_CI0 = common dso_local global i32 0, align 4
@ADM6996FC_CI1 = common dso_local global i32 0, align 4
@ADM6996FC_PC_SHIFT = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"Chip Identifier Register %x %x\0A\00", align 1
@ADM6996FC_PRODUCT_CODE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Infineon ADM6996FC/M/MX MDIO switch driver\00", align 1
@BUS_PROBE_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @adm6996fc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adm6996fc_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.adm6996fc_softc*, align 8
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.adm6996fc_softc* @device_get_softc(i32 %8)
  store %struct.adm6996fc_softc* %9, %struct.adm6996fc_softc** %7, align 8
  %10 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %7, align 8
  %11 = call i32 @bzero(%struct.adm6996fc_softc* %10, i32 4)
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @device_get_parent(i32 %12)
  %14 = load i32, i32* @ADM6996FC_CI0, align 4
  %15 = call i32 @ADM6996FC_READREG(i32 %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @device_get_parent(i32 %16)
  %18 = load i32, i32* @ADM6996FC_CI1, align 4
  %19 = call i32 @ADM6996FC_READREG(i32 %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = shl i32 %20, 16
  %22 = load i32, i32* %4, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @ADM6996FC_PC_SHIFT, align 4
  %25 = ashr i32 %23, %24
  store i32 %25, i32* %6, align 4
  %26 = load i64, i64* @bootverbose, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %1
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @device_printf(i32 %29, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %28, %1
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @ADM6996FC_PRODUCT_CODE, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @ENXIO, align 4
  store i32 %38, i32* %2, align 4
  br label %43

39:                                               ; preds = %33
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @device_set_desc_copy(i32 %40, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %39, %37
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local %struct.adm6996fc_softc* @device_get_softc(i32) #1

declare dso_local i32 @bzero(%struct.adm6996fc_softc*, i32) #1

declare dso_local i32 @ADM6996FC_READREG(i32, i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32) #1

declare dso_local i32 @device_set_desc_copy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
