; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/le/extr_lance.c_lance_init_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/le/extr_lance.c_lance_init_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lance_softc = type { i32, i32, i32 (%struct.lance_softc*, i32)*, i32 (%struct.lance_softc*)*, i32 (%struct.lance_softc*)*, i32, i64, i32 (%struct.lance_softc*, i32, i32)*, i32 (%struct.lance_softc*)*, i32, i32 (%struct.lance_softc*)*, i32 (%struct.lance_softc*)*, %struct.ifnet* }
%struct.ifnet = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@LE_CSR0 = common dso_local global i32 0, align 4
@LE_C0_STOP = common dso_local global i32 0, align 4
@LE_CSR3 = common dso_local global i32 0, align 4
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@LE_CSR1 = common dso_local global i32 0, align 4
@LE_CSR2 = common dso_local global i32 0, align 4
@LE_C0_INIT = common dso_local global i32 0, align 4
@LE_C0_IDON = common dso_local global i32 0, align 4
@LE_C0_INEA = common dso_local global i32 0, align 4
@LE_C0_STRT = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@lance_watchdog = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"controller failed to initialize\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lance_init_locked(%struct.lance_softc* %0) #0 {
  %2 = alloca %struct.lance_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.lance_softc* %0, %struct.lance_softc** %2, align 8
  %6 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %7 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %6, i32 0, i32 12
  %8 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  store %struct.ifnet* %8, %struct.ifnet** %3, align 8
  %9 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %10 = load i32, i32* @MA_OWNED, align 4
  %11 = call i32 @LE_LOCK_ASSERT(%struct.lance_softc* %9, i32 %10)
  %12 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %13 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %12, i32 0, i32 7
  %14 = load i32 (%struct.lance_softc*, i32, i32)*, i32 (%struct.lance_softc*, i32, i32)** %13, align 8
  %15 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %16 = load i32, i32* @LE_CSR0, align 4
  %17 = load i32, i32* @LE_C0_STOP, align 4
  %18 = call i32 %14(%struct.lance_softc* %15, i32 %16, i32 %17)
  %19 = call i32 @DELAY(i32 100)
  %20 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %21 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %20, i32 0, i32 11
  %22 = load i32 (%struct.lance_softc*)*, i32 (%struct.lance_softc*)** %21, align 8
  %23 = icmp ne i32 (%struct.lance_softc*)* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %1
  %25 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %26 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %25, i32 0, i32 11
  %27 = load i32 (%struct.lance_softc*)*, i32 (%struct.lance_softc*)** %26, align 8
  %28 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %29 = call i32 %27(%struct.lance_softc* %28)
  br label %30

30:                                               ; preds = %24, %1
  %31 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %32 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %31, i32 0, i32 7
  %33 = load i32 (%struct.lance_softc*, i32, i32)*, i32 (%struct.lance_softc*, i32, i32)** %32, align 8
  %34 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %35 = load i32, i32* @LE_CSR3, align 4
  %36 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %37 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 %33(%struct.lance_softc* %34, i32 %35, i32 %38)
  %40 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %41 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %40, i32 0, i32 10
  %42 = load i32 (%struct.lance_softc*)*, i32 (%struct.lance_softc*)** %41, align 8
  %43 = icmp ne i32 (%struct.lance_softc*)* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %30
  %45 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %46 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %45, i32 0, i32 10
  %47 = load i32 (%struct.lance_softc*)*, i32 (%struct.lance_softc*)** %46, align 8
  %48 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %49 = call i32 %47(%struct.lance_softc* %48)
  br label %50

50:                                               ; preds = %44, %30
  %51 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %52 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %51, i32 0, i32 9
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %55 = call i32 @IF_LLADDR(%struct.ifnet* %54)
  %56 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %57 = call i32 @memcpy(i32 %53, i32 %55, i32 %56)
  %58 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %59 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %58, i32 0, i32 8
  %60 = load i32 (%struct.lance_softc*)*, i32 (%struct.lance_softc*)** %59, align 8
  %61 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %62 = call i32 %60(%struct.lance_softc* %61)
  %63 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %64 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %67 = call i32 @LE_INITADDR(%struct.lance_softc* %66)
  %68 = add nsw i32 %65, %67
  store i32 %68, i32* %4, align 4
  %69 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %70 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %69, i32 0, i32 7
  %71 = load i32 (%struct.lance_softc*, i32, i32)*, i32 (%struct.lance_softc*, i32, i32)** %70, align 8
  %72 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %73 = load i32, i32* @LE_CSR1, align 4
  %74 = load i32, i32* %4, align 4
  %75 = and i32 %74, 65535
  %76 = call i32 %71(%struct.lance_softc* %72, i32 %73, i32 %75)
  %77 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %78 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %77, i32 0, i32 7
  %79 = load i32 (%struct.lance_softc*, i32, i32)*, i32 (%struct.lance_softc*, i32, i32)** %78, align 8
  %80 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %81 = load i32, i32* @LE_CSR2, align 4
  %82 = load i32, i32* %4, align 4
  %83 = ashr i32 %82, 16
  %84 = call i32 %79(%struct.lance_softc* %80, i32 %81, i32 %83)
  %85 = call i32 @DELAY(i32 100)
  %86 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %87 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %86, i32 0, i32 7
  %88 = load i32 (%struct.lance_softc*, i32, i32)*, i32 (%struct.lance_softc*, i32, i32)** %87, align 8
  %89 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %90 = load i32, i32* @LE_CSR0, align 4
  %91 = load i32, i32* @LE_C0_INIT, align 4
  %92 = call i32 %88(%struct.lance_softc* %89, i32 %90, i32 %91)
  store i32 100000, i32* %5, align 4
  br label %93

93:                                               ; preds = %108, %50
  %94 = load i32, i32* %5, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %111

96:                                               ; preds = %93
  %97 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %98 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %97, i32 0, i32 2
  %99 = load i32 (%struct.lance_softc*, i32)*, i32 (%struct.lance_softc*, i32)** %98, align 8
  %100 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %101 = load i32, i32* @LE_CSR0, align 4
  %102 = call i32 %99(%struct.lance_softc* %100, i32 %101)
  %103 = load i32, i32* @LE_C0_IDON, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %96
  br label %111

107:                                              ; preds = %96
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %5, align 4
  %110 = add nsw i32 %109, -1
  store i32 %110, i32* %5, align 4
  br label %93

111:                                              ; preds = %106, %93
  %112 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %113 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %112, i32 0, i32 2
  %114 = load i32 (%struct.lance_softc*, i32)*, i32 (%struct.lance_softc*, i32)** %113, align 8
  %115 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %116 = load i32, i32* @LE_CSR0, align 4
  %117 = call i32 %114(%struct.lance_softc* %115, i32 %116)
  %118 = load i32, i32* @LE_C0_IDON, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %155

121:                                              ; preds = %111
  %122 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %123 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %122, i32 0, i32 7
  %124 = load i32 (%struct.lance_softc*, i32, i32)*, i32 (%struct.lance_softc*, i32, i32)** %123, align 8
  %125 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %126 = load i32, i32* @LE_CSR0, align 4
  %127 = load i32, i32* @LE_C0_INEA, align 4
  %128 = load i32, i32* @LE_C0_STRT, align 4
  %129 = or i32 %127, %128
  %130 = call i32 %124(%struct.lance_softc* %125, i32 %126, i32 %129)
  %131 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %132 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %133 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = or i32 %134, %131
  store i32 %135, i32* %133, align 4
  %136 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %137 = xor i32 %136, -1
  %138 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %139 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = and i32 %140, %137
  store i32 %141, i32* %139, align 4
  %142 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %143 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %142, i32 0, i32 6
  store i64 0, i64* %143, align 8
  %144 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %145 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %144, i32 0, i32 5
  %146 = load i32, i32* @hz, align 4
  %147 = load i32, i32* @lance_watchdog, align 4
  %148 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %149 = call i32 @callout_reset(i32* %145, i32 %146, i32 %147, %struct.lance_softc* %148)
  %150 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %151 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %150, i32 0, i32 4
  %152 = load i32 (%struct.lance_softc*)*, i32 (%struct.lance_softc*)** %151, align 8
  %153 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %154 = call i32 %152(%struct.lance_softc* %153)
  br label %158

155:                                              ; preds = %111
  %156 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %157 = call i32 @if_printf(%struct.ifnet* %156, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %158

158:                                              ; preds = %155, %121
  %159 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %160 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %159, i32 0, i32 3
  %161 = load i32 (%struct.lance_softc*)*, i32 (%struct.lance_softc*)** %160, align 8
  %162 = icmp ne i32 (%struct.lance_softc*)* %161, null
  br i1 %162, label %163, label %169

163:                                              ; preds = %158
  %164 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %165 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %164, i32 0, i32 3
  %166 = load i32 (%struct.lance_softc*)*, i32 (%struct.lance_softc*)** %165, align 8
  %167 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %168 = call i32 %166(%struct.lance_softc* %167)
  br label %169

169:                                              ; preds = %163, %158
  ret void
}

declare dso_local i32 @LE_LOCK_ASSERT(%struct.lance_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @IF_LLADDR(%struct.ifnet*) #1

declare dso_local i32 @LE_INITADDR(%struct.lance_softc*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.lance_softc*) #1

declare dso_local i32 @if_printf(%struct.ifnet*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
