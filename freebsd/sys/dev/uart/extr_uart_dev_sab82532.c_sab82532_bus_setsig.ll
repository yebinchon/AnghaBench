; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_sab82532.c_sab82532_bus_setsig.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_sab82532.c_sab82532_bus_setsig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32, i32, %struct.uart_bas }
%struct.uart_bas = type { i32 }

@SER_DDTR = common dso_local global i32 0, align 4
@SER_DTR = common dso_local global i32 0, align 4
@SER_DRTS = common dso_local global i32 0, align 4
@SER_RTS = common dso_local global i32 0, align 4
@SAB_PVR = common dso_local global i32 0, align 4
@SAB_PVR_DTR_A = common dso_local global i32 0, align 4
@SAB_PVR_DTR_B = common dso_local global i32 0, align 4
@SAB_MODE = common dso_local global i32 0, align 4
@SAB_MODE_FRTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*, i32)* @sab82532_bus_setsig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sab82532_bus_setsig(%struct.uart_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uart_bas*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.uart_softc* %0, %struct.uart_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %11 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %10, i32 0, i32 2
  store %struct.uart_bas* %11, %struct.uart_bas** %5, align 8
  br label %12

12:                                               ; preds = %43, %2
  %13 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %14 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @SER_DDTR, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %12
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @SER_DTR, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @SER_DTR, align 4
  %27 = load i32, i32* @SER_DDTR, align 4
  %28 = call i32 @SIGCHG(i32 %24, i32 %25, i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %21, %12
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @SER_DRTS, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @SER_RTS, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @SER_RTS, align 4
  %40 = load i32, i32* @SER_DRTS, align 4
  %41 = call i32 @SIGCHG(i32 %37, i32 %38, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %34, %29
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %45 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %44, i32 0, i32 0
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @atomic_cmpset_32(i32* %45, i32 %46, i32 %47)
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  br i1 %50, label %12, label %51

51:                                               ; preds = %43
  %52 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %53 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @uart_lock(i32 %54)
  %56 = load %struct.uart_bas*, %struct.uart_bas** %5, align 8
  %57 = load i32, i32* @SAB_PVR, align 4
  %58 = call i32 @uart_getreg(%struct.uart_bas* %56, i32 %57)
  store i32 %58, i32* %9, align 4
  %59 = load %struct.uart_bas*, %struct.uart_bas** %5, align 8
  %60 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  switch i32 %61, label %92 [
    i32 1, label %62
    i32 2, label %77
  ]

62:                                               ; preds = %51
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @SER_DTR, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load i32, i32* @SAB_PVR_DTR_A, align 4
  %69 = xor i32 %68, -1
  %70 = load i32, i32* %9, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %9, align 4
  br label %76

72:                                               ; preds = %62
  %73 = load i32, i32* @SAB_PVR_DTR_A, align 4
  %74 = load i32, i32* %9, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %72, %67
  br label %92

77:                                               ; preds = %51
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @SER_DTR, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = load i32, i32* @SAB_PVR_DTR_B, align 4
  %84 = xor i32 %83, -1
  %85 = load i32, i32* %9, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* %9, align 4
  br label %91

87:                                               ; preds = %77
  %88 = load i32, i32* @SAB_PVR_DTR_B, align 4
  %89 = load i32, i32* %9, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %9, align 4
  br label %91

91:                                               ; preds = %87, %82
  br label %92

92:                                               ; preds = %51, %91, %76
  %93 = load %struct.uart_bas*, %struct.uart_bas** %5, align 8
  %94 = load i32, i32* @SAB_PVR, align 4
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @uart_setreg(%struct.uart_bas* %93, i32 %94, i32 %95)
  %97 = load %struct.uart_bas*, %struct.uart_bas** %5, align 8
  %98 = load i32, i32* @SAB_MODE, align 4
  %99 = call i32 @uart_getreg(%struct.uart_bas* %97, i32 %98)
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* @SER_RTS, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %92
  %105 = load i32, i32* @SAB_MODE_FRTS, align 4
  %106 = xor i32 %105, -1
  %107 = load i32, i32* %8, align 4
  %108 = and i32 %107, %106
  store i32 %108, i32* %8, align 4
  br label %113

109:                                              ; preds = %92
  %110 = load i32, i32* @SAB_MODE_FRTS, align 4
  %111 = load i32, i32* %8, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %8, align 4
  br label %113

113:                                              ; preds = %109, %104
  %114 = load %struct.uart_bas*, %struct.uart_bas** %5, align 8
  %115 = load i32, i32* @SAB_MODE, align 4
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @uart_setreg(%struct.uart_bas* %114, i32 %115, i32 %116)
  %118 = load %struct.uart_bas*, %struct.uart_bas** %5, align 8
  %119 = call i32 @uart_barrier(%struct.uart_bas* %118)
  %120 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %121 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @uart_unlock(i32 %122)
  ret i32 0
}

declare dso_local i32 @SIGCHG(i32, i32, i32, i32) #1

declare dso_local i32 @atomic_cmpset_32(i32*, i32, i32) #1

declare dso_local i32 @uart_lock(i32) #1

declare dso_local i32 @uart_getreg(%struct.uart_bas*, i32) #1

declare dso_local i32 @uart_setreg(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @uart_barrier(%struct.uart_bas*) #1

declare dso_local i32 @uart_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
