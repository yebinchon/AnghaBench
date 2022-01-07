; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_ns8250.c_ns8250_bus_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_ns8250.c_ns8250_bus_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32, %struct.uart_bas }
%struct.uart_bas = type { i32 }

@REG_LCR = common dso_local global i32 0, align 4
@LCR_SBREAK = common dso_local global i32 0, align 4
@REG_EFR = common dso_local global i32 0, align 4
@EFR_RTS = common dso_local global i32 0, align 4
@EFR_CTS = common dso_local global i32 0, align 4
@LCR_DLAB = common dso_local global i32 0, align 4
@REG_DLL = common dso_local global i32 0, align 4
@REG_DLH = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ns8250_bus_ioctl(%struct.uart_softc* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.uart_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.uart_bas*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.uart_softc* %0, %struct.uart_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %13 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %14 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %13, i32 0, i32 1
  store %struct.uart_bas* %14, %struct.uart_bas** %7, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %16 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @uart_lock(i32 %17)
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %167 [
    i32 130, label %20
    i32 129, label %42
    i32 128, label %80
    i32 131, label %118
  ]

20:                                               ; preds = %3
  %21 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %22 = load i32, i32* @REG_LCR, align 4
  %23 = call i32 @uart_getreg(%struct.uart_bas* %21, i32 %22)
  store i32 %23, i32* %12, align 4
  %24 = load i64, i64* %6, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load i32, i32* @LCR_SBREAK, align 4
  %28 = load i32, i32* %12, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %12, align 4
  br label %35

30:                                               ; preds = %20
  %31 = load i32, i32* @LCR_SBREAK, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %12, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %12, align 4
  br label %35

35:                                               ; preds = %30, %26
  %36 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %37 = load i32, i32* @REG_LCR, align 4
  %38 = load i32, i32* %12, align 4
  %39 = call i32 @uart_setreg(%struct.uart_bas* %36, i32 %37, i32 %38)
  %40 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %41 = call i32 @uart_barrier(%struct.uart_bas* %40)
  br label %169

42:                                               ; preds = %3
  %43 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %44 = load i32, i32* @REG_LCR, align 4
  %45 = call i32 @uart_getreg(%struct.uart_bas* %43, i32 %44)
  store i32 %45, i32* %12, align 4
  %46 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %47 = call i32 @uart_barrier(%struct.uart_bas* %46)
  %48 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %49 = load i32, i32* @REG_LCR, align 4
  %50 = call i32 @uart_setreg(%struct.uart_bas* %48, i32 %49, i32 191)
  %51 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %52 = call i32 @uart_barrier(%struct.uart_bas* %51)
  %53 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %54 = load i32, i32* @REG_EFR, align 4
  %55 = call i32 @uart_getreg(%struct.uart_bas* %53, i32 %54)
  store i32 %55, i32* %11, align 4
  %56 = load i64, i64* %6, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %42
  %59 = load i32, i32* @EFR_RTS, align 4
  %60 = load i32, i32* %11, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %11, align 4
  br label %67

62:                                               ; preds = %42
  %63 = load i32, i32* @EFR_RTS, align 4
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %11, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %11, align 4
  br label %67

67:                                               ; preds = %62, %58
  %68 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %69 = load i32, i32* @REG_EFR, align 4
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @uart_setreg(%struct.uart_bas* %68, i32 %69, i32 %70)
  %72 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %73 = call i32 @uart_barrier(%struct.uart_bas* %72)
  %74 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %75 = load i32, i32* @REG_LCR, align 4
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @uart_setreg(%struct.uart_bas* %74, i32 %75, i32 %76)
  %78 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %79 = call i32 @uart_barrier(%struct.uart_bas* %78)
  br label %169

80:                                               ; preds = %3
  %81 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %82 = load i32, i32* @REG_LCR, align 4
  %83 = call i32 @uart_getreg(%struct.uart_bas* %81, i32 %82)
  store i32 %83, i32* %12, align 4
  %84 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %85 = call i32 @uart_barrier(%struct.uart_bas* %84)
  %86 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %87 = load i32, i32* @REG_LCR, align 4
  %88 = call i32 @uart_setreg(%struct.uart_bas* %86, i32 %87, i32 191)
  %89 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %90 = call i32 @uart_barrier(%struct.uart_bas* %89)
  %91 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %92 = load i32, i32* @REG_EFR, align 4
  %93 = call i32 @uart_getreg(%struct.uart_bas* %91, i32 %92)
  store i32 %93, i32* %11, align 4
  %94 = load i64, i64* %6, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %80
  %97 = load i32, i32* @EFR_CTS, align 4
  %98 = load i32, i32* %11, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %11, align 4
  br label %105

100:                                              ; preds = %80
  %101 = load i32, i32* @EFR_CTS, align 4
  %102 = xor i32 %101, -1
  %103 = load i32, i32* %11, align 4
  %104 = and i32 %103, %102
  store i32 %104, i32* %11, align 4
  br label %105

105:                                              ; preds = %100, %96
  %106 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %107 = load i32, i32* @REG_EFR, align 4
  %108 = load i32, i32* %11, align 4
  %109 = call i32 @uart_setreg(%struct.uart_bas* %106, i32 %107, i32 %108)
  %110 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %111 = call i32 @uart_barrier(%struct.uart_bas* %110)
  %112 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %113 = load i32, i32* @REG_LCR, align 4
  %114 = load i32, i32* %12, align 4
  %115 = call i32 @uart_setreg(%struct.uart_bas* %112, i32 %113, i32 %114)
  %116 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %117 = call i32 @uart_barrier(%struct.uart_bas* %116)
  br label %169

118:                                              ; preds = %3
  %119 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %120 = load i32, i32* @REG_LCR, align 4
  %121 = call i32 @uart_getreg(%struct.uart_bas* %119, i32 %120)
  store i32 %121, i32* %12, align 4
  %122 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %123 = load i32, i32* @REG_LCR, align 4
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* @LCR_DLAB, align 4
  %126 = or i32 %124, %125
  %127 = call i32 @uart_setreg(%struct.uart_bas* %122, i32 %123, i32 %126)
  %128 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %129 = call i32 @uart_barrier(%struct.uart_bas* %128)
  %130 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %131 = load i32, i32* @REG_DLL, align 4
  %132 = call i32 @uart_getreg(%struct.uart_bas* %130, i32 %131)
  %133 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %134 = load i32, i32* @REG_DLH, align 4
  %135 = call i32 @uart_getreg(%struct.uart_bas* %133, i32 %134)
  %136 = shl i32 %135, 8
  %137 = or i32 %132, %136
  store i32 %137, i32* %9, align 4
  %138 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %139 = call i32 @uart_barrier(%struct.uart_bas* %138)
  %140 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %141 = load i32, i32* @REG_LCR, align 4
  %142 = load i32, i32* %12, align 4
  %143 = call i32 @uart_setreg(%struct.uart_bas* %140, i32 %141, i32 %142)
  %144 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %145 = call i32 @uart_barrier(%struct.uart_bas* %144)
  %146 = load i32, i32* %9, align 4
  %147 = icmp sgt i32 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %118
  %149 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %150 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %9, align 4
  %153 = sdiv i32 %151, %152
  %154 = sdiv i32 %153, 16
  br label %156

155:                                              ; preds = %118
  br label %156

156:                                              ; preds = %155, %148
  %157 = phi i32 [ %154, %148 ], [ 0, %155 ]
  store i32 %157, i32* %8, align 4
  %158 = load i32, i32* %8, align 4
  %159 = icmp sgt i32 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %156
  %161 = load i32, i32* %8, align 4
  %162 = load i64, i64* %6, align 8
  %163 = inttoptr i64 %162 to i32*
  store i32 %161, i32* %163, align 4
  br label %166

164:                                              ; preds = %156
  %165 = load i32, i32* @ENXIO, align 4
  store i32 %165, i32* %10, align 4
  br label %166

166:                                              ; preds = %164, %160
  br label %169

167:                                              ; preds = %3
  %168 = load i32, i32* @EINVAL, align 4
  store i32 %168, i32* %10, align 4
  br label %169

169:                                              ; preds = %167, %166, %105, %67, %35
  %170 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %171 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @uart_unlock(i32 %172)
  %174 = load i32, i32* %10, align 4
  ret i32 %174
}

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
