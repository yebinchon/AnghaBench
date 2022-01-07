; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dme/extr_if_dme.c_dme_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dme/extr_if_dme.c_dme_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dme_softc = type { i64, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@DME_NCR = common dso_local global i32 0, align 4
@NCR_RST = common dso_local global i32 0, align 4
@NCR_LBK_MAC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"device did not complete first reset\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"device did not complete second reset\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"dme_reset, flags %#x busy %d ready %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dme_softc*)* @dme_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dme_reset(%struct.dme_softc* %0) #0 {
  %2 = alloca %struct.dme_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.dme_softc* %0, %struct.dme_softc** %2, align 8
  %4 = load %struct.dme_softc*, %struct.dme_softc** %2, align 8
  %5 = load i32, i32* @DME_NCR, align 4
  %6 = load i32, i32* @NCR_RST, align 4
  %7 = load i32, i32* @NCR_LBK_MAC, align 4
  %8 = or i32 %6, %7
  %9 = call i32 @dme_write_reg(%struct.dme_softc* %4, i32 %5, i32 %8)
  %10 = call i32 @DELAY(i32 100)
  %11 = load %struct.dme_softc*, %struct.dme_softc** %2, align 8
  %12 = load i32, i32* @DME_NCR, align 4
  %13 = call i32 @dme_read_reg(%struct.dme_softc* %11, i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @NCR_RST, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.dme_softc*, %struct.dme_softc** %2, align 8
  %20 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @device_printf(i32 %21, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %18, %1
  %24 = load %struct.dme_softc*, %struct.dme_softc** %2, align 8
  %25 = load i32, i32* @DME_NCR, align 4
  %26 = call i32 @dme_write_reg(%struct.dme_softc* %24, i32 %25, i32 0)
  %27 = load %struct.dme_softc*, %struct.dme_softc** %2, align 8
  %28 = load i32, i32* @DME_NCR, align 4
  %29 = load i32, i32* @NCR_RST, align 4
  %30 = load i32, i32* @NCR_LBK_MAC, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @dme_write_reg(%struct.dme_softc* %27, i32 %28, i32 %31)
  %33 = call i32 @DELAY(i32 100)
  %34 = load %struct.dme_softc*, %struct.dme_softc** %2, align 8
  %35 = load i32, i32* @DME_NCR, align 4
  %36 = call i32 @dme_read_reg(%struct.dme_softc* %34, i32 %35)
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @NCR_RST, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %23
  %42 = load %struct.dme_softc*, %struct.dme_softc** %2, align 8
  %43 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @device_printf(i32 %44, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %46

46:                                               ; preds = %41, %23
  %47 = load %struct.dme_softc*, %struct.dme_softc** %2, align 8
  %48 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %47, i32 0, i32 1
  store i64 0, i64* %48, align 8
  %49 = load %struct.dme_softc*, %struct.dme_softc** %2, align 8
  %50 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  %51 = load %struct.dme_softc*, %struct.dme_softc** %2, align 8
  %52 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %51, i32 0, i32 2
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = icmp ne %struct.TYPE_2__* %53, null
  br i1 %54, label %55, label %61

55:                                               ; preds = %46
  %56 = load %struct.dme_softc*, %struct.dme_softc** %2, align 8
  %57 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %56, i32 0, i32 2
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  br label %62

61:                                               ; preds = %46
  br label %62

62:                                               ; preds = %61, %55
  %63 = phi i32 [ %60, %55 ], [ 0, %61 ]
  %64 = load %struct.dme_softc*, %struct.dme_softc** %2, align 8
  %65 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.dme_softc*, %struct.dme_softc** %2, align 8
  %68 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @DTR3(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %63, i64 %66, i64 %69)
  ret void
}

declare dso_local i32 @dme_write_reg(%struct.dme_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @dme_read_reg(%struct.dme_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @DTR3(i8*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
