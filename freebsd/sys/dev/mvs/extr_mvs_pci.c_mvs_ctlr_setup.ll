; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs_pci.c_mvs_ctlr_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs_pci.c_mvs_ctlr_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvs_controller = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@CHIP_MIM = common dso_local global i64 0, align 8
@CHIP_PCIIM = common dso_local global i64 0, align 8
@CHIP_PCIIC = common dso_local global i64 0, align 8
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"CCC with %dus/%dcmd enabled\0A\00", align 1
@MVS_Q_GENI = common dso_local global i32 0, align 4
@CHIP_ICT = common dso_local global i64 0, align 8
@CHIP_ITT = common dso_local global i64 0, align 8
@CHIP_ICC = common dso_local global i64 0, align 8
@CHIP_ICC_ALL_PORTS = common dso_local global i32 0, align 4
@IC_ALL_PORTS_COAL_DONE = common dso_local global i32 0, align 4
@HC_ICT = common dso_local global i64 0, align 8
@HC_ITT = common dso_local global i64 0, align 8
@IC_HC0_COAL_DONE = common dso_local global i32 0, align 4
@IC_HC_SHIFT = common dso_local global i32 0, align 4
@HC_IC = common dso_local global i64 0, align 8
@IC_DONE_HC0 = common dso_local global i32 0, align 4
@IC_DONE_HC1 = common dso_local global i32 0, align 4
@IC_ERR_HC0 = common dso_local global i32 0, align 4
@IC_ERR_HC1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mvs_ctlr_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvs_ctlr_setup(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mvs_controller*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call %struct.mvs_controller* @device_get_softc(i32 %8)
  store %struct.mvs_controller* %9, %struct.mvs_controller** %3, align 8
  %10 = load %struct.mvs_controller*, %struct.mvs_controller** %3, align 8
  %11 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.mvs_controller*, %struct.mvs_controller** %3, align 8
  %14 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %16 = load %struct.mvs_controller*, %struct.mvs_controller** %3, align 8
  %17 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %16, i32 0, i32 7
  %18 = load i32, i32* %17, align 4
  %19 = load i64, i64* @CHIP_MIM, align 8
  %20 = call i32 @ATA_OUTL(i32 %18, i64 %19, i32 0)
  %21 = load %struct.mvs_controller*, %struct.mvs_controller** %3, align 8
  %22 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %21, i32 0, i32 7
  %23 = load i32, i32* %22, align 4
  %24 = load i64, i64* @CHIP_PCIIM, align 8
  %25 = call i32 @ATA_OUTL(i32 %23, i64 %24, i32 0)
  %26 = load %struct.mvs_controller*, %struct.mvs_controller** %3, align 8
  %27 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %26, i32 0, i32 7
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* @CHIP_PCIIC, align 8
  %30 = call i32 @ATA_OUTL(i32 %28, i64 %29, i32 0)
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %1
  %34 = load i64, i64* @bootverbose, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %33
  %37 = load i32, i32* %2, align 4
  %38 = load %struct.mvs_controller*, %struct.mvs_controller** %3, align 8
  %39 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.mvs_controller*, %struct.mvs_controller** %3, align 8
  %42 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @device_printf(i32 %37, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %43)
  br label %45

45:                                               ; preds = %36, %33, %1
  %46 = load i32, i32* %5, align 4
  %47 = mul nsw i32 %46, 150
  store i32 %47, i32* %5, align 4
  %48 = load %struct.mvs_controller*, %struct.mvs_controller** %3, align 8
  %49 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = icmp sgt i32 %50, 4
  br i1 %51, label %52, label %86

52:                                               ; preds = %45
  %53 = load %struct.mvs_controller*, %struct.mvs_controller** %3, align 8
  %54 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @MVS_Q_GENI, align 4
  %57 = and i32 %55, %56
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %86

59:                                               ; preds = %52
  %60 = load %struct.mvs_controller*, %struct.mvs_controller** %3, align 8
  %61 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %60, i32 0, i32 7
  %62 = load i32, i32* %61, align 4
  %63 = load i64, i64* @CHIP_ICT, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @ATA_OUTL(i32 %62, i64 %63, i32 %64)
  %66 = load %struct.mvs_controller*, %struct.mvs_controller** %3, align 8
  %67 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %66, i32 0, i32 7
  %68 = load i32, i32* %67, align 4
  %69 = load i64, i64* @CHIP_ITT, align 8
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @ATA_OUTL(i32 %68, i64 %69, i32 %70)
  %72 = load %struct.mvs_controller*, %struct.mvs_controller** %3, align 8
  %73 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %72, i32 0, i32 7
  %74 = load i32, i32* %73, align 4
  %75 = load i64, i64* @CHIP_ICC, align 8
  %76 = load i32, i32* @CHIP_ICC_ALL_PORTS, align 4
  %77 = xor i32 %76, -1
  %78 = call i32 @ATA_OUTL(i32 %74, i64 %75, i32 %77)
  %79 = load i32, i32* %5, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %59
  %82 = load i32, i32* @IC_ALL_PORTS_COAL_DONE, align 4
  %83 = load i32, i32* %7, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %7, align 4
  br label %85

85:                                               ; preds = %81, %59
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %86

86:                                               ; preds = %85, %52, %45
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %132, %86
  %88 = load i32, i32* %4, align 4
  %89 = load %struct.mvs_controller*, %struct.mvs_controller** %3, align 8
  %90 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = sdiv i32 %91, 4
  %93 = icmp slt i32 %88, %92
  br i1 %93, label %94, label %135

94:                                               ; preds = %87
  %95 = load %struct.mvs_controller*, %struct.mvs_controller** %3, align 8
  %96 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %95, i32 0, i32 7
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %4, align 4
  %99 = call i64 @HC_BASE(i32 %98)
  %100 = load i64, i64* @HC_ICT, align 8
  %101 = add nsw i64 %99, %100
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @ATA_OUTL(i32 %97, i64 %101, i32 %102)
  %104 = load %struct.mvs_controller*, %struct.mvs_controller** %3, align 8
  %105 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %104, i32 0, i32 7
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %4, align 4
  %108 = call i64 @HC_BASE(i32 %107)
  %109 = load i64, i64* @HC_ITT, align 8
  %110 = add nsw i64 %108, %109
  %111 = load i32, i32* %5, align 4
  %112 = call i32 @ATA_OUTL(i32 %106, i64 %110, i32 %111)
  %113 = load i32, i32* %5, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %94
  %116 = load i32, i32* @IC_HC0_COAL_DONE, align 4
  %117 = load i32, i32* %4, align 4
  %118 = load i32, i32* @IC_HC_SHIFT, align 4
  %119 = mul nsw i32 %117, %118
  %120 = shl i32 %116, %119
  %121 = load i32, i32* %7, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %7, align 4
  br label %123

123:                                              ; preds = %115, %94
  %124 = load %struct.mvs_controller*, %struct.mvs_controller** %3, align 8
  %125 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %124, i32 0, i32 7
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %4, align 4
  %128 = call i64 @HC_BASE(i32 %127)
  %129 = load i64, i64* @HC_IC, align 8
  %130 = add nsw i64 %128, %129
  %131 = call i32 @ATA_OUTL(i32 %126, i64 %130, i32 0)
  br label %132

132:                                              ; preds = %123
  %133 = load i32, i32* %4, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %4, align 4
  br label %87

135:                                              ; preds = %87
  %136 = load i32, i32* %7, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %135
  %139 = load i32, i32* %7, align 4
  br label %144

140:                                              ; preds = %135
  %141 = load i32, i32* @IC_DONE_HC0, align 4
  %142 = load i32, i32* @IC_DONE_HC1, align 4
  %143 = or i32 %141, %142
  br label %144

144:                                              ; preds = %140, %138
  %145 = phi i32 [ %139, %138 ], [ %143, %140 ]
  %146 = load i32, i32* @IC_ERR_HC0, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* @IC_ERR_HC1, align 4
  %149 = or i32 %147, %148
  %150 = load %struct.mvs_controller*, %struct.mvs_controller** %3, align 8
  %151 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %150, i32 0, i32 4
  store i32 %149, i32* %151, align 4
  %152 = load %struct.mvs_controller*, %struct.mvs_controller** %3, align 8
  %153 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.mvs_controller*, %struct.mvs_controller** %3, align 8
  %156 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %155, i32 0, i32 6
  %157 = load i32, i32* %156, align 4
  %158 = or i32 %154, %157
  %159 = load %struct.mvs_controller*, %struct.mvs_controller** %3, align 8
  %160 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %159, i32 0, i32 5
  store i32 %158, i32* %160, align 4
  %161 = load %struct.mvs_controller*, %struct.mvs_controller** %3, align 8
  %162 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %161, i32 0, i32 7
  %163 = load i32, i32* %162, align 4
  %164 = load i64, i64* @CHIP_MIM, align 8
  %165 = load %struct.mvs_controller*, %struct.mvs_controller** %3, align 8
  %166 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %165, i32 0, i32 5
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @ATA_OUTL(i32 %163, i64 %164, i32 %167)
  %169 = load %struct.mvs_controller*, %struct.mvs_controller** %3, align 8
  %170 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %169, i32 0, i32 7
  %171 = load i32, i32* %170, align 4
  %172 = load i64, i64* @CHIP_PCIIM, align 8
  %173 = call i32 @ATA_OUTL(i32 %171, i64 %172, i32 8388607)
  ret i32 0
}

declare dso_local %struct.mvs_controller* @device_get_softc(i32) #1

declare dso_local i32 @ATA_OUTL(i32, i64, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32) #1

declare dso_local i64 @HC_BASE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
