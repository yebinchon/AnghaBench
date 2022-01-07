; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/macio/extr_davbus.c_burgundy_set_outputs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/macio/extr_davbus.c_burgundy_set_outputs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.davbus_softc = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"Enabled outputs:\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c" SPEAKER\00", align 1
@BURGUNDY_P17M_EN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c" HEADPHONES\00", align 1
@BURGUNDY_P14L_EN = common dso_local global i32 0, align 4
@BURGUNDY_P14R_EN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@BURGUNDY_MUTE_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.davbus_softc*, i32)* @burgundy_set_outputs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @burgundy_set_outputs(%struct.davbus_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.davbus_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.davbus_softc* %0, %struct.davbus_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.davbus_softc*, %struct.davbus_softc** %3, align 8
  %8 = getelementptr inbounds %struct.davbus_softc, %struct.davbus_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %6, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %42

12:                                               ; preds = %2
  %13 = call i32 @DPRINTF(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, 1
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = call i32 @DPRINTF(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32, i32* @BURGUNDY_P17M_EN, align 4
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %17, %12
  %23 = load i32, i32* %4, align 4
  %24 = and i32 %23, 2
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = call i32 @DPRINTF(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %28 = load i32, i32* @BURGUNDY_P14L_EN, align 4
  %29 = load i32, i32* @BURGUNDY_P14R_EN, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* %5, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %26, %22
  %34 = call i32 @DPRINTF(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %35 = load %struct.davbus_softc*, %struct.davbus_softc** %3, align 8
  %36 = load i32, i32* @BURGUNDY_MUTE_REG, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @burgundy_write_locked(%struct.davbus_softc* %35, i32 %36, i32 %37)
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.davbus_softc*, %struct.davbus_softc** %3, align 8
  %41 = getelementptr inbounds %struct.davbus_softc, %struct.davbus_softc* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %33, %11
  ret void
}

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @burgundy_write_locked(%struct.davbus_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
