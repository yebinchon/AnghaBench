; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/an/extr_if_an.c_WaitBusy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/an/extr_if_an.c_WaitBusy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.an_softc* }
%struct.an_softc = type { i32 }

@AN_CMD_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32)* @WaitBusy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @WaitBusy(%struct.ifnet* %0, i32 %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.an_softc*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 65535, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %9 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %8, i32 0, i32 0
  %10 = load %struct.an_softc*, %struct.an_softc** %9, align 8
  store %struct.an_softc* %10, %struct.an_softc** %7, align 8
  br label %11

11:                                               ; preds = %43, %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @AN_CMD_BUSY, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load i32, i32* %6, align 4
  %18 = icmp sle i32 %17, 100000
  br label %19

19:                                               ; preds = %16, %11
  %20 = phi i1 [ false, %11 ], [ %18, %16 ]
  br i1 %20, label %21, label %44

21:                                               ; preds = %19
  %22 = load %struct.an_softc*, %struct.an_softc** %7, align 8
  %23 = call i32 @FLASH_DELAY(%struct.an_softc* %22, i32 10)
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, 10
  store i32 %25, i32* %6, align 4
  %26 = load %struct.an_softc*, %struct.an_softc** %7, align 8
  %27 = load %struct.an_softc*, %struct.an_softc** %7, align 8
  %28 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @AN_COMMAND(i32 %29)
  %31 = call i32 @CSR_READ_2(%struct.an_softc* %26, i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* @AN_CMD_BUSY, align 4
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %21
  %37 = load i32, i32* %6, align 4
  %38 = srem i32 %37, 200
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %42 = call i32 @unstickbusy(%struct.ifnet* %41)
  br label %43

43:                                               ; preds = %40, %36, %21
  br label %11

44:                                               ; preds = %19
  %45 = load i32, i32* @AN_CMD_BUSY, align 4
  %46 = load i32, i32* %5, align 4
  %47 = and i32 %45, %46
  %48 = icmp eq i32 0, %47
  %49 = zext i1 %48 to i32
  ret i32 %49
}

declare dso_local i32 @FLASH_DELAY(%struct.an_softc*, i32) #1

declare dso_local i32 @CSR_READ_2(%struct.an_softc*, i32) #1

declare dso_local i32 @AN_COMMAND(i32) #1

declare dso_local i32 @unstickbusy(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
