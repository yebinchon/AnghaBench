; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/exca/extr_exca.c_exca_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/exca/extr_exca.c_exca_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exca_softc = type { i32, i32, i32 }

@EXCA_PWRCTL = common dso_local global i32 0, align 4
@EXCA_PWRCTL_OE = common dso_local global i32 0, align 4
@EXCA_INTR = common dso_local global i32 0, align 4
@EXCA_INTR_ENABLE = common dso_local global i32 0, align 4
@EXCA_INTR_RESET = common dso_local global i32 0, align 4
@EXCA_ADDRWIN_ENABLE = common dso_local global i32 0, align 4
@EXCA_INTR_CARDTYPE_IO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"card type is io\0A\00", align 1
@EXCA_MEM_WINS = common dso_local global i32 0, align 4
@EXCA_IO_WINS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @exca_reset(%struct.exca_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.exca_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.exca_softc* %0, %struct.exca_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.exca_softc*, %struct.exca_softc** %3, align 8
  %7 = load i32, i32* @EXCA_PWRCTL, align 4
  %8 = load i32, i32* @EXCA_PWRCTL_OE, align 4
  %9 = call i32 @exca_setb(%struct.exca_softc* %6, i32 %7, i32 %8)
  %10 = load %struct.exca_softc*, %struct.exca_softc** %3, align 8
  %11 = load i32, i32* @EXCA_INTR, align 4
  %12 = load i32, i32* @EXCA_INTR_ENABLE, align 4
  %13 = call i32 @exca_putb(%struct.exca_softc* %10, i32 %11, i32 %12)
  %14 = call i32 @DELAY(i32 30000)
  %15 = load %struct.exca_softc*, %struct.exca_softc** %3, align 8
  %16 = load i32, i32* @EXCA_INTR, align 4
  %17 = load i32, i32* @EXCA_INTR_RESET, align 4
  %18 = call i32 @exca_setb(%struct.exca_softc* %15, i32 %16, i32 %17)
  %19 = call i32 @DELAY(i32 20000)
  %20 = load %struct.exca_softc*, %struct.exca_softc** %3, align 8
  %21 = call i32 @exca_wait_ready(%struct.exca_softc* %20)
  %22 = load %struct.exca_softc*, %struct.exca_softc** %3, align 8
  %23 = load i32, i32* @EXCA_ADDRWIN_ENABLE, align 4
  %24 = call i32 @exca_putb(%struct.exca_softc* %22, i32 %23, i32 0)
  %25 = load %struct.exca_softc*, %struct.exca_softc** %3, align 8
  %26 = load i32, i32* @EXCA_INTR, align 4
  %27 = load i32, i32* @EXCA_INTR_CARDTYPE_IO, align 4
  %28 = call i32 @exca_setb(%struct.exca_softc* %25, i32 %26, i32 %27)
  %29 = load %struct.exca_softc*, %struct.exca_softc** %3, align 8
  %30 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @DEVPRINTF(i32 %31, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %50, %2
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @EXCA_MEM_WINS, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %53

37:                                               ; preds = %33
  %38 = load %struct.exca_softc*, %struct.exca_softc** %3, align 8
  %39 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %5, align 4
  %42 = shl i32 1, %41
  %43 = and i32 %40, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %37
  %46 = load %struct.exca_softc*, %struct.exca_softc** %3, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @exca_do_mem_map(%struct.exca_softc* %46, i32 %47)
  br label %49

49:                                               ; preds = %45, %37
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %33

53:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %54

54:                                               ; preds = %71, %53
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @EXCA_IO_WINS, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %74

58:                                               ; preds = %54
  %59 = load %struct.exca_softc*, %struct.exca_softc** %3, align 8
  %60 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %5, align 4
  %63 = shl i32 1, %62
  %64 = and i32 %61, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %58
  %67 = load %struct.exca_softc*, %struct.exca_softc** %3, align 8
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @exca_do_io_map(%struct.exca_softc* %67, i32 %68)
  br label %70

70:                                               ; preds = %66, %58
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %5, align 4
  br label %54

74:                                               ; preds = %54
  ret void
}

declare dso_local i32 @exca_setb(%struct.exca_softc*, i32, i32) #1

declare dso_local i32 @exca_putb(%struct.exca_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @exca_wait_ready(%struct.exca_softc*) #1

declare dso_local i32 @DEVPRINTF(i32, i8*) #1

declare dso_local i32 @exca_do_mem_map(%struct.exca_softc*, i32) #1

declare dso_local i32 @exca_do_io_map(%struct.exca_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
