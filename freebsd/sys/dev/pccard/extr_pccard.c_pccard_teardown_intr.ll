; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pccard/extr_pccard.c_pccard_teardown_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pccard/extr_pccard.c_pccard_teardown_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.pccard_softc = type { i32 }
%struct.pccard_ivar = type { %struct.pccard_function* }
%struct.pccard_function = type { i32*, i32*, i32* }

@PCCARD_CCR_OPTION = common dso_local global i32 0, align 4
@PCCARD_CCR_OPTION_IREQ_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.resource*, i8*)* @pccard_teardown_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pccard_teardown_intr(i32 %0, i32 %1, %struct.resource* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.pccard_softc*, align 8
  %10 = alloca %struct.pccard_ivar*, align 8
  %11 = alloca %struct.pccard_function*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.resource* %2, %struct.resource** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.pccard_softc* @PCCARD_SOFTC(i32 %13)
  store %struct.pccard_softc* %14, %struct.pccard_softc** %9, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call %struct.pccard_ivar* @PCCARD_IVAR(i32 %15)
  store %struct.pccard_ivar* %16, %struct.pccard_ivar** %10, align 8
  %17 = load %struct.pccard_ivar*, %struct.pccard_ivar** %10, align 8
  %18 = getelementptr inbounds %struct.pccard_ivar, %struct.pccard_ivar* %17, i32 0, i32 0
  %19 = load %struct.pccard_function*, %struct.pccard_function** %18, align 8
  store %struct.pccard_function* %19, %struct.pccard_function** %11, align 8
  %20 = load %struct.pccard_softc*, %struct.pccard_softc** %9, align 8
  %21 = call i64 @pccard_mfc(%struct.pccard_softc* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %4
  %24 = load %struct.pccard_function*, %struct.pccard_function** %11, align 8
  %25 = load i32, i32* @PCCARD_CCR_OPTION, align 4
  %26 = load %struct.pccard_function*, %struct.pccard_function** %11, align 8
  %27 = load i32, i32* @PCCARD_CCR_OPTION, align 4
  %28 = call i32 @pccard_ccr_read(%struct.pccard_function* %26, i32 %27)
  %29 = load i32, i32* @PCCARD_CCR_OPTION_IREQ_ENABLE, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  %32 = call i32 @pccard_ccr_write(%struct.pccard_function* %24, i32 %25, i32 %31)
  br label %33

33:                                               ; preds = %23, %4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.resource*, %struct.resource** %7, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 @bus_generic_teardown_intr(i32 %34, i32 %35, %struct.resource* %36, i8* %37)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %33
  %42 = load %struct.pccard_function*, %struct.pccard_function** %11, align 8
  %43 = getelementptr inbounds %struct.pccard_function, %struct.pccard_function* %42, i32 0, i32 2
  store i32* null, i32** %43, align 8
  %44 = load %struct.pccard_function*, %struct.pccard_function** %11, align 8
  %45 = getelementptr inbounds %struct.pccard_function, %struct.pccard_function* %44, i32 0, i32 1
  store i32* null, i32** %45, align 8
  %46 = load %struct.pccard_function*, %struct.pccard_function** %11, align 8
  %47 = getelementptr inbounds %struct.pccard_function, %struct.pccard_function* %46, i32 0, i32 0
  store i32* null, i32** %47, align 8
  br label %48

48:                                               ; preds = %41, %33
  %49 = load i32, i32* %12, align 4
  ret i32 %49
}

declare dso_local %struct.pccard_softc* @PCCARD_SOFTC(i32) #1

declare dso_local %struct.pccard_ivar* @PCCARD_IVAR(i32) #1

declare dso_local i64 @pccard_mfc(%struct.pccard_softc*) #1

declare dso_local i32 @pccard_ccr_write(%struct.pccard_function*, i32, i32) #1

declare dso_local i32 @pccard_ccr_read(%struct.pccard_function*, i32) #1

declare dso_local i32 @bus_generic_teardown_intr(i32, i32, %struct.resource*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
