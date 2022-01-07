; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sbni/extr_if_sbni_isa.c_sbni_probe_isa.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sbni/extr_if_sbni_isa.c_sbni_probe_isa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbni_softc = type { i32, i32 }

@sbni_ids = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@SBNI_PORTS = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"sbni: cannot allocate io ports!\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Granch SBNI12/ISA adapter\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @sbni_probe_isa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbni_probe_isa(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.sbni_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @device_get_parent(i32 %6)
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @sbni_ids, align 4
  %10 = call i32 @ISA_PNP_PROBE(i32 %7, i32 %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @ENOENT, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %2, align 4
  br label %49

19:                                               ; preds = %13, %1
  %20 = load i32, i32* %3, align 4
  %21 = call %struct.sbni_softc* @device_get_softc(i32 %20)
  store %struct.sbni_softc* %21, %struct.sbni_softc** %4, align 8
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @SYS_RES_IOPORT, align 4
  %24 = load %struct.sbni_softc*, %struct.sbni_softc** %4, align 8
  %25 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %24, i32 0, i32 1
  %26 = load i32, i32* @SBNI_PORTS, align 4
  %27 = load i32, i32* @RF_ACTIVE, align 4
  %28 = call i32 @bus_alloc_resource_anywhere(i32 %22, i32 %23, i32* %25, i32 %26, i32 %27)
  %29 = load %struct.sbni_softc*, %struct.sbni_softc** %4, align 8
  %30 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.sbni_softc*, %struct.sbni_softc** %4, align 8
  %32 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %19
  %36 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @ENOENT, align 4
  store i32 %37, i32* %2, align 4
  br label %49

38:                                               ; preds = %19
  %39 = load %struct.sbni_softc*, %struct.sbni_softc** %4, align 8
  %40 = call i64 @sbni_probe(%struct.sbni_softc* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load %struct.sbni_softc*, %struct.sbni_softc** %4, align 8
  %44 = call i32 @sbni_release_resources(%struct.sbni_softc* %43)
  %45 = load i32, i32* @ENXIO, align 4
  store i32 %45, i32* %2, align 4
  br label %49

46:                                               ; preds = %38
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @device_set_desc(i32 %47, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %46, %42, %35, %17
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @ISA_PNP_PROBE(i32, i32, i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local %struct.sbni_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_alloc_resource_anywhere(i32, i32, i32*, i32, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @sbni_probe(%struct.sbni_softc*) #1

declare dso_local i32 @sbni_release_resources(%struct.sbni_softc*) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
