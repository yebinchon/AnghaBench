; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs_soc.c_mvs_ctlr_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs_soc.c_mvs_ctlr_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvs_controller = type { i32, i32, i32, i32, i32, i32 }

@CHIP_SOC_MIM = common dso_local global i32 0, align 4
@HC_IC = common dso_local global i32 0, align 4
@CHIP_SOC_MIC = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"CCC with %dus/%dcmd enabled\0A\00", align 1
@HC_ICT = common dso_local global i32 0, align 4
@HC_ITT = common dso_local global i32 0, align 4
@IC_HC0_COAL_DONE = common dso_local global i32 0, align 4
@IC_DONE_HC0 = common dso_local global i32 0, align 4
@IC_ERR_HC0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mvs_ctlr_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvs_ctlr_setup(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mvs_controller*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.mvs_controller* @device_get_softc(i32 %7)
  store %struct.mvs_controller* %8, %struct.mvs_controller** %3, align 8
  %9 = load %struct.mvs_controller*, %struct.mvs_controller** %3, align 8
  %10 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %4, align 4
  %12 = load %struct.mvs_controller*, %struct.mvs_controller** %3, align 8
  %13 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %15 = load %struct.mvs_controller*, %struct.mvs_controller** %3, align 8
  %16 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @CHIP_SOC_MIM, align 4
  %19 = call i32 @ATA_OUTL(i32 %17, i32 %18, i32 0)
  %20 = load %struct.mvs_controller*, %struct.mvs_controller** %3, align 8
  %21 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @HC_IC, align 4
  %24 = call i32 @ATA_OUTL(i32 %22, i32 %23, i32 0)
  %25 = load %struct.mvs_controller*, %struct.mvs_controller** %3, align 8
  %26 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @CHIP_SOC_MIC, align 4
  %29 = call i32 @ATA_OUTL(i32 %27, i32 %28, i32 0)
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %1
  %33 = load i64, i64* @bootverbose, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = load i32, i32* %2, align 4
  %37 = load %struct.mvs_controller*, %struct.mvs_controller** %3, align 8
  %38 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.mvs_controller*, %struct.mvs_controller** %3, align 8
  %41 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @device_printf(i32 %36, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %42)
  br label %44

44:                                               ; preds = %35, %32, %1
  %45 = load i32, i32* %4, align 4
  %46 = mul nsw i32 %45, 150
  store i32 %46, i32* %4, align 4
  %47 = load %struct.mvs_controller*, %struct.mvs_controller** %3, align 8
  %48 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @HC_ICT, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @ATA_OUTL(i32 %49, i32 %50, i32 %51)
  %53 = load %struct.mvs_controller*, %struct.mvs_controller** %3, align 8
  %54 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @HC_ITT, align 4
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @ATA_OUTL(i32 %55, i32 %56, i32 %57)
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %44
  %62 = load i32, i32* @IC_HC0_COAL_DONE, align 4
  %63 = load i32, i32* %6, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %61, %44
  %66 = load i32, i32* %4, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = load i32, i32* @IC_HC0_COAL_DONE, align 4
  br label %77

70:                                               ; preds = %65
  %71 = load i32, i32* @IC_DONE_HC0, align 4
  %72 = load %struct.mvs_controller*, %struct.mvs_controller** %3, align 8
  %73 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @CHIP_SOC_HC0_MASK(i32 %74)
  %76 = and i32 %71, %75
  br label %77

77:                                               ; preds = %70, %68
  %78 = phi i32 [ %69, %68 ], [ %76, %70 ]
  %79 = load i32, i32* @IC_ERR_HC0, align 4
  %80 = load %struct.mvs_controller*, %struct.mvs_controller** %3, align 8
  %81 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @CHIP_SOC_HC0_MASK(i32 %82)
  %84 = and i32 %79, %83
  %85 = or i32 %78, %84
  %86 = load %struct.mvs_controller*, %struct.mvs_controller** %3, align 8
  %87 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 4
  %88 = load %struct.mvs_controller*, %struct.mvs_controller** %3, align 8
  %89 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @CHIP_SOC_MIM, align 4
  %92 = load %struct.mvs_controller*, %struct.mvs_controller** %3, align 8
  %93 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.mvs_controller*, %struct.mvs_controller** %3, align 8
  %96 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %94, %97
  %99 = call i32 @ATA_OUTL(i32 %90, i32 %91, i32 %98)
  ret i32 0
}

declare dso_local %struct.mvs_controller* @device_get_softc(i32) #1

declare dso_local i32 @ATA_OUTL(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32) #1

declare dso_local i32 @CHIP_SOC_HC0_MASK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
