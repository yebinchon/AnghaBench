; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/ofw/extr_openpic_ofw.c_openpic_ofw_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/ofw/extr_openpic_ofw.c_openpic_ofw_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.openpic_softc = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"phandle\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"ibm,phandle\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"linux,phandle\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"fsl,mpic\00", align 1
@OPENPIC_QUIRK_SINGLE_BIND = common dso_local global i32 0, align 4
@OPENPIC_QUIRK_HIDDEN_IRQS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @openpic_ofw_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @openpic_ofw_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.openpic_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @ofw_bus_get_node(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call %struct.openpic_softc* @device_get_softc(i32 %8)
  store %struct.openpic_softc* %9, %struct.openpic_softc** %3, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @OF_getencprop(i32 %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %4, i32 4)
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %23

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @OF_getencprop(i32 %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* %4, i32 4)
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @OF_getencprop(i32 %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32* %4, i32 4)
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %21, %17, %13, %1
  %24 = load i32, i32* %2, align 4
  %25 = call i64 @ofw_bus_is_compatible(i32 %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %23
  %28 = load i32, i32* @OPENPIC_QUIRK_SINGLE_BIND, align 4
  %29 = load %struct.openpic_softc*, %struct.openpic_softc** %3, align 8
  %30 = getelementptr inbounds %struct.openpic_softc, %struct.openpic_softc* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @OPENPIC_QUIRK_HIDDEN_IRQS, align 4
  %32 = load %struct.openpic_softc*, %struct.openpic_softc** %3, align 8
  %33 = getelementptr inbounds %struct.openpic_softc, %struct.openpic_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %27, %23
  %37 = load i32, i32* %2, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @openpic_common_attach(i32 %37, i32 %38)
  ret i32 %39
}

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local %struct.openpic_softc* @device_get_softc(i32) #1

declare dso_local i32 @OF_getencprop(i32, i8*, i32*, i32) #1

declare dso_local i64 @ofw_bus_is_compatible(i32, i8*) #1

declare dso_local i32 @openpic_common_attach(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
