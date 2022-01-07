; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sbni/extr_if_sbni.c_handle_channel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sbni/extr_if_sbni.c_handle_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbni_softc = type { i32, i64, i32, i32 }

@CSR0 = common dso_local global i32 0, align 4
@EN_INT = common dso_local global i32 0, align 4
@TR_REQ = common dso_local global i32 0, align 4
@CHANGE_LEVEL_START_TICKS = common dso_local global i32 0, align 4
@RC_RDY = common dso_local global i32 0, align 4
@TR_RDY = common dso_local global i32 0, align 4
@FL_PREV_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"internal error!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sbni_softc*)* @handle_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_channel(%struct.sbni_softc* %0) #0 {
  %2 = alloca %struct.sbni_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.sbni_softc* %0, %struct.sbni_softc** %2, align 8
  %5 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %6 = load i32, i32* @CSR0, align 4
  %7 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %8 = load i32, i32* @CSR0, align 4
  %9 = call i32 @sbni_inb(%struct.sbni_softc* %7, i32 %8)
  %10 = load i32, i32* @EN_INT, align 4
  %11 = xor i32 %10, -1
  %12 = and i32 %9, %11
  %13 = load i32, i32* @TR_REQ, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @sbni_outb(%struct.sbni_softc* %5, i32 %6, i32 %14)
  %16 = load i32, i32* @CHANGE_LEVEL_START_TICKS, align 4
  %17 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %18 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 4
  br label %19

19:                                               ; preds = %85, %1
  %20 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %21 = load i32, i32* @CSR0, align 4
  %22 = call i32 @sbni_inb(%struct.sbni_softc* %20, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @RC_RDY, align 4
  %25 = load i32, i32* @TR_RDY, align 4
  %26 = or i32 %24, %25
  %27 = and i32 %23, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  br label %86

30:                                               ; preds = %19
  %31 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %32 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @FL_PREV_OK, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @RC_RDY, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %30
  %44 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %45 = call i32 @recv_frame(%struct.sbni_softc* %44)
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %43, %30
  %47 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %48 = load i32, i32* @CSR0, align 4
  %49 = call i32 @sbni_inb(%struct.sbni_softc* %47, i32 %48)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @TR_RDY, align 4
  %52 = and i32 %50, %51
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %46
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @RC_RDY, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54, %46
  %60 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %61 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @if_printf(i32 %62, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %64

64:                                               ; preds = %59, %54
  %65 = load i32, i32* %3, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %64
  %68 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %69 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67, %64
  %73 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %74 = call i32 @send_frame(%struct.sbni_softc* %73)
  br label %85

75:                                               ; preds = %67
  %76 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %77 = load i32, i32* @CSR0, align 4
  %78 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %79 = load i32, i32* @CSR0, align 4
  %80 = call i32 @sbni_inb(%struct.sbni_softc* %78, i32 %79)
  %81 = load i32, i32* @TR_REQ, align 4
  %82 = xor i32 %81, -1
  %83 = and i32 %80, %82
  %84 = call i32 @sbni_outb(%struct.sbni_softc* %76, i32 %77, i32 %83)
  br label %85

85:                                               ; preds = %75, %72
  br label %19

86:                                               ; preds = %29
  %87 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %88 = load i32, i32* @CSR0, align 4
  %89 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %90 = load i32, i32* @CSR0, align 4
  %91 = call i32 @sbni_inb(%struct.sbni_softc* %89, i32 %90)
  %92 = load i32, i32* @EN_INT, align 4
  %93 = or i32 %91, %92
  %94 = call i32 @sbni_outb(%struct.sbni_softc* %87, i32 %88, i32 %93)
  ret void
}

declare dso_local i32 @sbni_outb(%struct.sbni_softc*, i32, i32) #1

declare dso_local i32 @sbni_inb(%struct.sbni_softc*, i32) #1

declare dso_local i32 @recv_frame(%struct.sbni_softc*) #1

declare dso_local i32 @if_printf(i32, i8*) #1

declare dso_local i32 @send_frame(%struct.sbni_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
