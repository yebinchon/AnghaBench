; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/flash/extr_cqspi.c_cqspi_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/flash/extr_cqspi.c_cqspi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cqspi_softc = type { i32, i8*, i8*, i32 }

@.str = private unnamed_addr constant [14 x i8] c"Module ID %x\0A\00", align 1
@CQSPI_MODULEID = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"cdns,fifo-depth\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"cdns,fifo-width\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"cdns,trigger-address\00", align 1
@CQSPI_CFG = common dso_local global i32 0, align 4
@CFG_EN = common dso_local global i32 0, align 4
@CQSPI_DEVSZ = common dso_local global i32 0, align 4
@DEVSZ_NUMADDRBYTES_M = common dso_local global i32 0, align 4
@DEVSZ_NUMADDRBYTES_S = common dso_local global i32 0, align 4
@CQSPI_SRAMPART = common dso_local global i32 0, align 4
@CFG_BAUD_M = common dso_local global i32 0, align 4
@CFG_BAUD12 = common dso_local global i32 0, align 4
@CFG_ENDMA = common dso_local global i32 0, align 4
@DELAY_NSS_S = common dso_local global i32 0, align 4
@DELAY_BTWN_S = common dso_local global i32 0, align 4
@DELAY_AFTER_S = common dso_local global i32 0, align 4
@DELAY_INIT_S = common dso_local global i32 0, align 4
@CQSPI_DELAY = common dso_local global i32 0, align 4
@CQSPI_RDDATACAP = common dso_local global i32 0, align 4
@RDDATACAP_DELAY_M = common dso_local global i32 0, align 4
@RDDATACAP_DELAY_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cqspi_softc*)* @cqspi_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cqspi_init(%struct.cqspi_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cqspi_softc*, align 8
  %4 = alloca [1 x i8*], align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cqspi_softc* %0, %struct.cqspi_softc** %3, align 8
  %8 = load %struct.cqspi_softc*, %struct.cqspi_softc** %3, align 8
  %9 = getelementptr inbounds %struct.cqspi_softc, %struct.cqspi_softc* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.cqspi_softc*, %struct.cqspi_softc** %3, align 8
  %12 = load i32, i32* @CQSPI_MODULEID, align 4
  %13 = call i32 @READ4(%struct.cqspi_softc* %11, i32 %12)
  %14 = call i32 @device_printf(i32 %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.cqspi_softc*, %struct.cqspi_softc** %3, align 8
  %16 = getelementptr inbounds %struct.cqspi_softc, %struct.cqspi_softc* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @ofw_bus_get_node(i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* @ENXIO, align 4
  store i32 %21, i32* %2, align 4
  br label %159

22:                                               ; preds = %1
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @OF_getproplen(i32 %23, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i32 %24, i32* %7, align 4
  %25 = icmp sle i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @ENXIO, align 4
  store i32 %27, i32* %2, align 4
  br label %159

28:                                               ; preds = %22
  %29 = load i32, i32* %5, align 4
  %30 = getelementptr inbounds [1 x i8*], [1 x i8*]* %4, i64 0, i64 0
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @OF_getencprop(i32 %29, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8** %30, i32 %31)
  %33 = getelementptr inbounds [1 x i8*], [1 x i8*]* %4, i64 0, i64 0
  %34 = load i8*, i8** %33, align 8
  %35 = ptrtoint i8* %34 to i32
  %36 = load %struct.cqspi_softc*, %struct.cqspi_softc** %3, align 8
  %37 = getelementptr inbounds %struct.cqspi_softc, %struct.cqspi_softc* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @OF_getproplen(i32 %38, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  store i32 %39, i32* %7, align 4
  %40 = icmp sle i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %28
  %42 = load i32, i32* @ENXIO, align 4
  store i32 %42, i32* %2, align 4
  br label %159

43:                                               ; preds = %28
  %44 = load i32, i32* %5, align 4
  %45 = getelementptr inbounds [1 x i8*], [1 x i8*]* %4, i64 0, i64 0
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @OF_getencprop(i32 %44, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8** %45, i32 %46)
  %48 = getelementptr inbounds [1 x i8*], [1 x i8*]* %4, i64 0, i64 0
  %49 = load i8*, i8** %48, align 8
  %50 = load %struct.cqspi_softc*, %struct.cqspi_softc** %3, align 8
  %51 = getelementptr inbounds %struct.cqspi_softc, %struct.cqspi_softc* %50, i32 0, i32 2
  store i8* %49, i8** %51, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @OF_getproplen(i32 %52, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  store i32 %53, i32* %7, align 4
  %54 = icmp sle i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %43
  %56 = load i32, i32* @ENXIO, align 4
  store i32 %56, i32* %2, align 4
  br label %159

57:                                               ; preds = %43
  %58 = load i32, i32* %5, align 4
  %59 = getelementptr inbounds [1 x i8*], [1 x i8*]* %4, i64 0, i64 0
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @OF_getencprop(i32 %58, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8** %59, i32 %60)
  %62 = getelementptr inbounds [1 x i8*], [1 x i8*]* %4, i64 0, i64 0
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.cqspi_softc*, %struct.cqspi_softc** %3, align 8
  %65 = getelementptr inbounds %struct.cqspi_softc, %struct.cqspi_softc* %64, i32 0, i32 1
  store i8* %63, i8** %65, align 8
  %66 = load %struct.cqspi_softc*, %struct.cqspi_softc** %3, align 8
  %67 = load i32, i32* @CQSPI_CFG, align 4
  %68 = call i32 @READ4(%struct.cqspi_softc* %66, i32 %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* @CFG_EN, align 4
  %70 = xor i32 %69, -1
  %71 = load i32, i32* %6, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %6, align 4
  %73 = load %struct.cqspi_softc*, %struct.cqspi_softc** %3, align 8
  %74 = load i32, i32* @CQSPI_CFG, align 4
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @WRITE4(%struct.cqspi_softc* %73, i32 %74, i32 %75)
  %77 = load %struct.cqspi_softc*, %struct.cqspi_softc** %3, align 8
  %78 = load i32, i32* @CQSPI_DEVSZ, align 4
  %79 = call i32 @READ4(%struct.cqspi_softc* %77, i32 %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* @DEVSZ_NUMADDRBYTES_M, align 4
  %81 = xor i32 %80, -1
  %82 = load i32, i32* %6, align 4
  %83 = and i32 %82, %81
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* @DEVSZ_NUMADDRBYTES_S, align 4
  %85 = sub nsw i32 3, %84
  %86 = load i32, i32* %6, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %6, align 4
  %88 = load %struct.cqspi_softc*, %struct.cqspi_softc** %3, align 8
  %89 = load i32, i32* @CQSPI_DEVSZ, align 4
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @WRITE4(%struct.cqspi_softc* %88, i32 %89, i32 %90)
  %92 = load %struct.cqspi_softc*, %struct.cqspi_softc** %3, align 8
  %93 = load i32, i32* @CQSPI_SRAMPART, align 4
  %94 = load %struct.cqspi_softc*, %struct.cqspi_softc** %3, align 8
  %95 = getelementptr inbounds %struct.cqspi_softc, %struct.cqspi_softc* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = sdiv i32 %96, 2
  %98 = call i32 @WRITE4(%struct.cqspi_softc* %92, i32 %93, i32 %97)
  %99 = load %struct.cqspi_softc*, %struct.cqspi_softc** %3, align 8
  %100 = load i32, i32* @CQSPI_CFG, align 4
  %101 = call i32 @READ4(%struct.cqspi_softc* %99, i32 %100)
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* @CFG_BAUD_M, align 4
  %103 = xor i32 %102, -1
  %104 = load i32, i32* %6, align 4
  %105 = and i32 %104, %103
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* @CFG_BAUD12, align 4
  %107 = load i32, i32* %6, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %6, align 4
  %109 = load i32, i32* @CFG_ENDMA, align 4
  %110 = load i32, i32* %6, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %6, align 4
  %112 = load %struct.cqspi_softc*, %struct.cqspi_softc** %3, align 8
  %113 = load i32, i32* @CQSPI_CFG, align 4
  %114 = load i32, i32* %6, align 4
  %115 = call i32 @WRITE4(%struct.cqspi_softc* %112, i32 %113, i32 %114)
  %116 = load i32, i32* @DELAY_NSS_S, align 4
  %117 = shl i32 3, %116
  store i32 %117, i32* %6, align 4
  %118 = load i32, i32* @DELAY_BTWN_S, align 4
  %119 = shl i32 3, %118
  %120 = load i32, i32* %6, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %6, align 4
  %122 = load i32, i32* @DELAY_AFTER_S, align 4
  %123 = shl i32 1, %122
  %124 = load i32, i32* %6, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %6, align 4
  %126 = load i32, i32* @DELAY_INIT_S, align 4
  %127 = shl i32 1, %126
  %128 = load i32, i32* %6, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %6, align 4
  %130 = load %struct.cqspi_softc*, %struct.cqspi_softc** %3, align 8
  %131 = load i32, i32* @CQSPI_DELAY, align 4
  %132 = load i32, i32* %6, align 4
  %133 = call i32 @WRITE4(%struct.cqspi_softc* %130, i32 %131, i32 %132)
  %134 = load %struct.cqspi_softc*, %struct.cqspi_softc** %3, align 8
  %135 = load i32, i32* @CQSPI_RDDATACAP, align 4
  %136 = call i32 @READ4(%struct.cqspi_softc* %134, i32 %135)
  %137 = load i32, i32* @RDDATACAP_DELAY_M, align 4
  %138 = xor i32 %137, -1
  %139 = load i32, i32* %6, align 4
  %140 = and i32 %139, %138
  store i32 %140, i32* %6, align 4
  %141 = load i32, i32* @RDDATACAP_DELAY_S, align 4
  %142 = shl i32 1, %141
  %143 = load i32, i32* %6, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %6, align 4
  %145 = load %struct.cqspi_softc*, %struct.cqspi_softc** %3, align 8
  %146 = load i32, i32* @CQSPI_RDDATACAP, align 4
  %147 = load i32, i32* %6, align 4
  %148 = call i32 @WRITE4(%struct.cqspi_softc* %145, i32 %146, i32 %147)
  %149 = load %struct.cqspi_softc*, %struct.cqspi_softc** %3, align 8
  %150 = load i32, i32* @CQSPI_CFG, align 4
  %151 = call i32 @READ4(%struct.cqspi_softc* %149, i32 %150)
  store i32 %151, i32* %6, align 4
  %152 = load i32, i32* @CFG_EN, align 4
  %153 = load i32, i32* %6, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %6, align 4
  %155 = load %struct.cqspi_softc*, %struct.cqspi_softc** %3, align 8
  %156 = load i32, i32* @CQSPI_CFG, align 4
  %157 = load i32, i32* %6, align 4
  %158 = call i32 @WRITE4(%struct.cqspi_softc* %155, i32 %156, i32 %157)
  store i32 0, i32* %2, align 4
  br label %159

159:                                              ; preds = %57, %55, %41, %26, %20
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @READ4(%struct.cqspi_softc*, i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @OF_getproplen(i32, i8*) #1

declare dso_local i32 @OF_getencprop(i32, i8*, i8**, i32) #1

declare dso_local i32 @WRITE4(%struct.cqspi_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
