; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bce/extr_if_bce.c_bce_init_tx_chain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bce/extr_if_bce.c_bce_init_tx_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bce_softc = type { i32, i32*, %struct.tx_bd**, i64, i64, i32, i64, i64, i64, i64 }
%struct.tx_bd = type { i8*, i8* }

@BCE_VERBOSE_RESET = common dso_local global i32 0, align 4
@BCE_VERBOSE_SEND = common dso_local global i32 0, align 4
@BCE_VERBOSE_LOAD = common dso_local global i32 0, align 4
@USABLE_TX_BD_ALLOC = common dso_local global i32 0, align 4
@USABLE_TX_BD_PER_PAGE = common dso_local global i64 0, align 8
@BCE_INSANE_SEND = common dso_local global i32 0, align 4
@TOTAL_TX_BD_ALLOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bce_softc*)* @bce_init_tx_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bce_init_tx_chain(%struct.bce_softc* %0) #0 {
  %2 = alloca %struct.bce_softc*, align 8
  %3 = alloca %struct.tx_bd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bce_softc* %0, %struct.bce_softc** %2, align 8
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* @BCE_VERBOSE_RESET, align 4
  %8 = load i32, i32* @BCE_VERBOSE_SEND, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @BCE_VERBOSE_LOAD, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @DBENTER(i32 %11)
  %13 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %14 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %13, i32 0, i32 9
  store i64 0, i64* %14, align 8
  %15 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %16 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %15, i32 0, i32 8
  store i64 0, i64* %16, align 8
  %17 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %18 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %17, i32 0, i32 7
  store i64 0, i64* %18, align 8
  %19 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %20 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %19, i32 0, i32 6
  store i64 0, i64* %20, align 8
  %21 = load i32, i32* @USABLE_TX_BD_ALLOC, align 4
  %22 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %23 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %22, i32 0, i32 5
  store i32 %21, i32* %23, align 8
  %24 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %25 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %24, i32 0, i32 4
  store i64 0, i64* %25, align 8
  %26 = call i32 @DBRUN(i64 0)
  %27 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %28 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %27, i32 0, i32 3
  store i64 0, i64* %28, align 8
  %29 = call i32 @DBRUN(i64 0)
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %79, %1
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %33 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %82

36:                                               ; preds = %30
  %37 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %38 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %37, i32 0, i32 2
  %39 = load %struct.tx_bd**, %struct.tx_bd*** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.tx_bd*, %struct.tx_bd** %39, i64 %41
  %43 = load %struct.tx_bd*, %struct.tx_bd** %42, align 8
  %44 = load i64, i64* @USABLE_TX_BD_PER_PAGE, align 8
  %45 = getelementptr inbounds %struct.tx_bd, %struct.tx_bd* %43, i64 %44
  store %struct.tx_bd* %45, %struct.tx_bd** %3, align 8
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %48 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sub nsw i32 %49, 1
  %51 = icmp eq i32 %46, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %36
  store i32 0, i32* %6, align 4
  br label %56

53:                                               ; preds = %36
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %53, %52
  %57 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %58 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @BCE_ADDR_HI(i32 %63)
  %65 = call i8* @htole32(i32 %64)
  %66 = load %struct.tx_bd*, %struct.tx_bd** %3, align 8
  %67 = getelementptr inbounds %struct.tx_bd, %struct.tx_bd* %66, i32 0, i32 1
  store i8* %65, i8** %67, align 8
  %68 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %69 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @BCE_ADDR_LO(i32 %74)
  %76 = call i8* @htole32(i32 %75)
  %77 = load %struct.tx_bd*, %struct.tx_bd** %3, align 8
  %78 = getelementptr inbounds %struct.tx_bd, %struct.tx_bd* %77, i32 0, i32 0
  store i8* %76, i8** %78, align 8
  br label %79

79:                                               ; preds = %56
  %80 = load i32, i32* %4, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %4, align 4
  br label %30

82:                                               ; preds = %30
  %83 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %84 = call i32 @bce_init_tx_context(%struct.bce_softc* %83)
  %85 = load i32, i32* @BCE_INSANE_SEND, align 4
  %86 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %87 = load i32, i32* @TOTAL_TX_BD_ALLOC, align 4
  %88 = call i32 @bce_dump_tx_chain(%struct.bce_softc* %86, i32 0, i32 %87)
  %89 = call i32 @DBRUNMSG(i32 %85, i32 %88)
  %90 = load i32, i32* @BCE_VERBOSE_RESET, align 4
  %91 = load i32, i32* @BCE_VERBOSE_SEND, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @BCE_VERBOSE_LOAD, align 4
  %94 = or i32 %92, %93
  %95 = call i32 @DBEXIT(i32 %94)
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local i32 @DBENTER(i32) #1

declare dso_local i32 @DBRUN(i64) #1

declare dso_local i8* @htole32(i32) #1

declare dso_local i32 @BCE_ADDR_HI(i32) #1

declare dso_local i32 @BCE_ADDR_LO(i32) #1

declare dso_local i32 @bce_init_tx_context(%struct.bce_softc*) #1

declare dso_local i32 @DBRUNMSG(i32, i32) #1

declare dso_local i32 @bce_dump_tx_chain(%struct.bce_softc*, i32, i32) #1

declare dso_local i32 @DBEXIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
