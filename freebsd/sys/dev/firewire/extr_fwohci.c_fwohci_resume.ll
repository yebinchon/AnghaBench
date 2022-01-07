; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwohci.c_fwohci_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwohci.c_fwohci_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwohci_softc = type { %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*, i32)*, i32 }
%struct.TYPE_4__ = type { %struct.fw_xferq }
%struct.fw_xferq = type { i32, i32, i32 }
%struct.fw_bulkxfer = type { i32 }

@FWXFERQ_RUNNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"resume iso receive ch: %d\0A\00", align 1
@link = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fwohci_resume(%struct.fwohci_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.fwohci_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.fw_xferq*, align 8
  %7 = alloca %struct.fw_bulkxfer*, align 8
  store %struct.fwohci_softc* %0, %struct.fwohci_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @fwohci_reset(%struct.fwohci_softc* %8, i32 %9)
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %70, %2
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %14 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %12, %16
  br i1 %17, label %18, label %73

18:                                               ; preds = %11
  %19 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %20 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store %struct.fw_xferq* %25, %struct.fw_xferq** %6, align 8
  %26 = load %struct.fw_xferq*, %struct.fw_xferq** %6, align 8
  %27 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @FWXFERQ_RUNNING, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %69

32:                                               ; preds = %18
  %33 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %34 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @device_printf(i32 %36, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @FWXFERQ_RUNNING, align 4
  %40 = xor i32 %39, -1
  %41 = load %struct.fw_xferq*, %struct.fw_xferq** %6, align 8
  %42 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, %40
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %50, %32
  %46 = load %struct.fw_xferq*, %struct.fw_xferq** %6, align 8
  %47 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %46, i32 0, i32 2
  %48 = call %struct.fw_bulkxfer* @STAILQ_FIRST(i32* %47)
  store %struct.fw_bulkxfer* %48, %struct.fw_bulkxfer** %7, align 8
  %49 = icmp ne %struct.fw_bulkxfer* %48, null
  br i1 %49, label %50, label %60

50:                                               ; preds = %45
  %51 = load %struct.fw_xferq*, %struct.fw_xferq** %6, align 8
  %52 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %51, i32 0, i32 2
  %53 = load i32, i32* @link, align 4
  %54 = call i32 @STAILQ_REMOVE_HEAD(i32* %52, i32 %53)
  %55 = load %struct.fw_xferq*, %struct.fw_xferq** %6, align 8
  %56 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %55, i32 0, i32 1
  %57 = load %struct.fw_bulkxfer*, %struct.fw_bulkxfer** %7, align 8
  %58 = load i32, i32* @link, align 4
  %59 = call i32 @STAILQ_INSERT_TAIL(i32* %56, %struct.fw_bulkxfer* %57, i32 %58)
  br label %45

60:                                               ; preds = %45
  %61 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %62 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 2
  %64 = load i32 (%struct.TYPE_5__*, i32)*, i32 (%struct.TYPE_5__*, i32)** %63, align 8
  %65 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %66 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %65, i32 0, i32 0
  %67 = load i32, i32* %5, align 4
  %68 = call i32 %64(%struct.TYPE_5__* %66, i32 %67)
  br label %69

69:                                               ; preds = %60, %18
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %5, align 4
  br label %11

73:                                               ; preds = %11
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @bus_generic_resume(i32 %74)
  %76 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %77 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %78, align 8
  %80 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %81 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %80, i32 0, i32 0
  %82 = call i32 %79(%struct.TYPE_5__* %81)
  ret i32 0
}

declare dso_local i32 @fwohci_reset(%struct.fwohci_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local %struct.fw_bulkxfer* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.fw_bulkxfer*, i32) #1

declare dso_local i32 @bus_generic_resume(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
