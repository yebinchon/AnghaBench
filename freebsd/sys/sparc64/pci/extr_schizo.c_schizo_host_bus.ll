; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_schizo.c_schizo_host_bus.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_schizo.c_schizo_host_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.schizo_softc = type { i64, i32 }

@STX_CTRL_BUS_ERRLOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"%s: %s error %#llx\00", align 1
@SCHIZO_MODE_TOM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"JBus\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Safari\00", align 1
@FILTER_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @schizo_host_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @schizo_host_bus(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.schizo_softc*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.schizo_softc*
  store %struct.schizo_softc* %6, %struct.schizo_softc** %3, align 8
  %7 = load %struct.schizo_softc*, %struct.schizo_softc** %3, align 8
  %8 = load i32, i32* @STX_CTRL_BUS_ERRLOG, align 4
  %9 = call i64 @SCHIZO_CTRL_READ_8(%struct.schizo_softc* %7, i32 %8)
  store i64 %9, i64* %4, align 8
  %10 = load %struct.schizo_softc*, %struct.schizo_softc** %3, align 8
  %11 = getelementptr inbounds %struct.schizo_softc, %struct.schizo_softc* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @device_get_nameunit(i32 %12)
  %14 = load %struct.schizo_softc*, %struct.schizo_softc** %3, align 8
  %15 = getelementptr inbounds %struct.schizo_softc, %struct.schizo_softc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SCHIZO_MODE_TOM, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @panic(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %13, i8* %20, i64 %21)
  %23 = load i32, i32* @FILTER_HANDLED, align 4
  ret i32 %23
}

declare dso_local i64 @SCHIZO_CTRL_READ_8(%struct.schizo_softc*, i32) #1

declare dso_local i32 @panic(i8*, i32, i8*, i64) #1

declare dso_local i32 @device_get_nameunit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
