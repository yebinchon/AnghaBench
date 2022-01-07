; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_es137x.c_es1371_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_es137x.c_es1371_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.es_info = type { i32, i32, i32, i64, i32 }

@CTRL_JYSTK_EN = common dso_local global i32 0, align 4
@CT4730_PCI_ID = common dso_local global i32 0, align 4
@ES1370_REG_CONTROL = common dso_local global i32 0, align 4
@ES1370_REG_SERIAL_CONTROL = common dso_local global i32 0, align 4
@ES1371_REG_LEGACY = common dso_local global i32 0, align 4
@ES1371_PCI_ID = common dso_local global i32 0, align 4
@ES1371REV_ES1373_8 = common dso_local global i32 0, align 4
@ES1371REV_CT5880_A = common dso_local global i32 0, align 4
@CT5880_PCI_ID = common dso_local global i32 0, align 4
@CT5880REV_CT5880_C = common dso_local global i32 0, align 4
@CT5880REV_CT5880_D = common dso_local global i32 0, align 4
@CT5880REV_CT5880_E = common dso_local global i32 0, align 4
@ES1370_REG_STATUS = common dso_local global i32 0, align 4
@ES1371_SYNC_RES = common dso_local global i32 0, align 4
@ES1371_REG_SMPRATE = common dso_local global i32 0, align 4
@ES1371_DIS_SRC = common dso_local global i32 0, align 4
@ES_SMPREG_DAC1 = common dso_local global i32 0, align 4
@ES_SMPREG_TRUNC_N = common dso_local global i32 0, align 4
@ES_SMPREG_INT_REGS = common dso_local global i32 0, align 4
@ES_SMPREG_DAC2 = common dso_local global i32 0, align 4
@ES_SMPREG_VOL_ADC = common dso_local global i32 0, align 4
@ES_SMPREG_VOL_DAC1 = common dso_local global i32 0, align 4
@ES_SMPREG_VOL_DAC2 = common dso_local global i32 0, align 4
@ES_ADC = common dso_local global i32 0, align 4
@ES_DAC1 = common dso_local global i32 0, align 4
@ES_DAC2 = common dso_local global i32 0, align 4
@ES1371_REG_CODEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @es1371_init(%struct.es_info* %0) #0 {
  %2 = alloca %struct.es_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.es_info* %0, %struct.es_info** %2, align 8
  %8 = load %struct.es_info*, %struct.es_info** %2, align 8
  %9 = call i32 @ES_LOCK(%struct.es_info* %8)
  %10 = load %struct.es_info*, %struct.es_info** %2, align 8
  %11 = getelementptr inbounds %struct.es_info, %struct.es_info* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @ES_SET_IS_ES1370(i32 %12, i32 0)
  %14 = load %struct.es_info*, %struct.es_info** %2, align 8
  %15 = getelementptr inbounds %struct.es_info, %struct.es_info* %14, i32 0, i32 4
  store i32 %13, i32* %15, align 8
  %16 = load %struct.es_info*, %struct.es_info** %2, align 8
  %17 = getelementptr inbounds %struct.es_info, %struct.es_info* %16, i32 0, i32 3
  store i64 0, i64* %17, align 8
  %18 = load %struct.es_info*, %struct.es_info** %2, align 8
  %19 = getelementptr inbounds %struct.es_info, %struct.es_info* %18, i32 0, i32 0
  store i32 0, i32* %19, align 8
  store i32 0, i32* %3, align 4
  %20 = load %struct.es_info*, %struct.es_info** %2, align 8
  %21 = getelementptr inbounds %struct.es_info, %struct.es_info* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @pci_get_devid(i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load %struct.es_info*, %struct.es_info** %2, align 8
  %25 = getelementptr inbounds %struct.es_info, %struct.es_info* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @pci_get_revid(i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load %struct.es_info*, %struct.es_info** %2, align 8
  %29 = getelementptr inbounds %struct.es_info, %struct.es_info* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @pci_get_subdevice(i32 %30)
  %32 = shl i32 %31, 16
  %33 = load %struct.es_info*, %struct.es_info** %2, align 8
  %34 = getelementptr inbounds %struct.es_info, %struct.es_info* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @pci_get_subvendor(i32 %35)
  %37 = or i32 %32, %36
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  switch i32 %38, label %42 [
    i32 536875636, label %39
  ]

39:                                               ; preds = %1
  %40 = load %struct.es_info*, %struct.es_info** %2, align 8
  %41 = getelementptr inbounds %struct.es_info, %struct.es_info* %40, i32 0, i32 1
  store i32 0, i32* %41, align 4
  br label %46

42:                                               ; preds = %1
  %43 = load i32, i32* @CTRL_JYSTK_EN, align 4
  %44 = load %struct.es_info*, %struct.es_info** %2, align 8
  %45 = getelementptr inbounds %struct.es_info, %struct.es_info* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %42, %39
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @CT4730_PCI_ID, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = load %struct.es_info*, %struct.es_info** %2, align 8
  %52 = getelementptr inbounds %struct.es_info, %struct.es_info* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, 65536
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %50, %46
  %56 = load %struct.es_info*, %struct.es_info** %2, align 8
  %57 = load i32, i32* @ES1370_REG_CONTROL, align 4
  %58 = load %struct.es_info*, %struct.es_info** %2, align 8
  %59 = getelementptr inbounds %struct.es_info, %struct.es_info* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @es_wr(%struct.es_info* %56, i32 %57, i32 %60, i32 4)
  %62 = load %struct.es_info*, %struct.es_info** %2, align 8
  %63 = load i32, i32* @ES1370_REG_SERIAL_CONTROL, align 4
  %64 = load %struct.es_info*, %struct.es_info** %2, align 8
  %65 = getelementptr inbounds %struct.es_info, %struct.es_info* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @es_wr(%struct.es_info* %62, i32 %63, i32 %66, i32 4)
  %68 = load %struct.es_info*, %struct.es_info** %2, align 8
  %69 = load i32, i32* @ES1371_REG_LEGACY, align 4
  %70 = call i32 @es_wr(%struct.es_info* %68, i32 %69, i32 0, i32 4)
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @ES1371_PCI_ID, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %55
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @ES1371REV_ES1373_8, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %110, label %78

78:                                               ; preds = %74, %55
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @ES1371_PCI_ID, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %78
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* @ES1371REV_CT5880_A, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %110, label %86

86:                                               ; preds = %82, %78
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* @CT5880_PCI_ID, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %86
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @CT5880REV_CT5880_C, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %110, label %94

94:                                               ; preds = %90, %86
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* @CT5880_PCI_ID, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %94
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* @CT5880REV_CT5880_D, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %110, label %102

102:                                              ; preds = %98, %94
  %103 = load i32, i32* %4, align 4
  %104 = load i32, i32* @CT5880_PCI_ID, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %116

106:                                              ; preds = %102
  %107 = load i32, i32* %5, align 4
  %108 = load i32, i32* @CT5880REV_CT5880_E, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %116

110:                                              ; preds = %106, %98, %90, %82, %74
  store i32 536870912, i32* %3, align 4
  %111 = load %struct.es_info*, %struct.es_info** %2, align 8
  %112 = load i32, i32* @ES1370_REG_STATUS, align 4
  %113 = load i32, i32* %3, align 4
  %114 = call i32 @es_wr(%struct.es_info* %111, i32 %112, i32 %113, i32 4)
  %115 = call i32 @DELAY(i32 20000)
  br label %116

116:                                              ; preds = %110, %106, %102
  %117 = load %struct.es_info*, %struct.es_info** %2, align 8
  %118 = load i32, i32* @ES1370_REG_CONTROL, align 4
  %119 = load %struct.es_info*, %struct.es_info** %2, align 8
  %120 = getelementptr inbounds %struct.es_info, %struct.es_info* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @es_wr(%struct.es_info* %117, i32 %118, i32 %121, i32 4)
  %123 = load %struct.es_info*, %struct.es_info** %2, align 8
  %124 = load i32, i32* @ES1371_REG_LEGACY, align 4
  %125 = load i32, i32* @ES1371_SYNC_RES, align 4
  %126 = call i32 @es_wr(%struct.es_info* %123, i32 %124, i32 %125, i32 4)
  %127 = call i32 @DELAY(i32 2000)
  %128 = load %struct.es_info*, %struct.es_info** %2, align 8
  %129 = load i32, i32* @ES1370_REG_CONTROL, align 4
  %130 = load %struct.es_info*, %struct.es_info** %2, align 8
  %131 = getelementptr inbounds %struct.es_info, %struct.es_info* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @es_wr(%struct.es_info* %128, i32 %129, i32 %132, i32 4)
  %134 = load %struct.es_info*, %struct.es_info** %2, align 8
  %135 = call i32 @es1371_wait_src_ready(%struct.es_info* %134)
  %136 = load %struct.es_info*, %struct.es_info** %2, align 8
  %137 = load i32, i32* @ES1371_REG_SMPRATE, align 4
  %138 = load i32, i32* @ES1371_DIS_SRC, align 4
  %139 = call i32 @es_wr(%struct.es_info* %136, i32 %137, i32 %138, i32 4)
  store i32 0, i32* %7, align 4
  br label %140

140:                                              ; preds = %147, %116
  %141 = load i32, i32* %7, align 4
  %142 = icmp slt i32 %141, 128
  br i1 %142, label %143, label %150

143:                                              ; preds = %140
  %144 = load %struct.es_info*, %struct.es_info** %2, align 8
  %145 = load i32, i32* %7, align 4
  %146 = call i32 @es1371_src_write(%struct.es_info* %144, i32 %145, i32 0)
  br label %147

147:                                              ; preds = %143
  %148 = load i32, i32* %7, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %7, align 4
  br label %140

150:                                              ; preds = %140
  %151 = load %struct.es_info*, %struct.es_info** %2, align 8
  %152 = load i32, i32* @ES_SMPREG_DAC1, align 4
  %153 = load i32, i32* @ES_SMPREG_TRUNC_N, align 4
  %154 = add nsw i32 %152, %153
  %155 = call i32 @es1371_src_write(%struct.es_info* %151, i32 %154, i32 256)
  %156 = load %struct.es_info*, %struct.es_info** %2, align 8
  %157 = load i32, i32* @ES_SMPREG_DAC1, align 4
  %158 = load i32, i32* @ES_SMPREG_INT_REGS, align 4
  %159 = add nsw i32 %157, %158
  %160 = call i32 @es1371_src_write(%struct.es_info* %156, i32 %159, i32 16384)
  %161 = load %struct.es_info*, %struct.es_info** %2, align 8
  %162 = load i32, i32* @ES_SMPREG_DAC2, align 4
  %163 = load i32, i32* @ES_SMPREG_TRUNC_N, align 4
  %164 = add nsw i32 %162, %163
  %165 = call i32 @es1371_src_write(%struct.es_info* %161, i32 %164, i32 256)
  %166 = load %struct.es_info*, %struct.es_info** %2, align 8
  %167 = load i32, i32* @ES_SMPREG_DAC2, align 4
  %168 = load i32, i32* @ES_SMPREG_INT_REGS, align 4
  %169 = add nsw i32 %167, %168
  %170 = call i32 @es1371_src_write(%struct.es_info* %166, i32 %169, i32 16384)
  %171 = load %struct.es_info*, %struct.es_info** %2, align 8
  %172 = load i32, i32* @ES_SMPREG_VOL_ADC, align 4
  %173 = call i32 @es1371_src_write(%struct.es_info* %171, i32 %172, i32 4096)
  %174 = load %struct.es_info*, %struct.es_info** %2, align 8
  %175 = load i32, i32* @ES_SMPREG_VOL_ADC, align 4
  %176 = add nsw i32 %175, 1
  %177 = call i32 @es1371_src_write(%struct.es_info* %174, i32 %176, i32 4096)
  %178 = load %struct.es_info*, %struct.es_info** %2, align 8
  %179 = load i32, i32* @ES_SMPREG_VOL_DAC1, align 4
  %180 = call i32 @es1371_src_write(%struct.es_info* %178, i32 %179, i32 4096)
  %181 = load %struct.es_info*, %struct.es_info** %2, align 8
  %182 = load i32, i32* @ES_SMPREG_VOL_DAC1, align 4
  %183 = add nsw i32 %182, 1
  %184 = call i32 @es1371_src_write(%struct.es_info* %181, i32 %183, i32 4096)
  %185 = load %struct.es_info*, %struct.es_info** %2, align 8
  %186 = load i32, i32* @ES_SMPREG_VOL_DAC2, align 4
  %187 = call i32 @es1371_src_write(%struct.es_info* %185, i32 %186, i32 4096)
  %188 = load %struct.es_info*, %struct.es_info** %2, align 8
  %189 = load i32, i32* @ES_SMPREG_VOL_DAC2, align 4
  %190 = add nsw i32 %189, 1
  %191 = call i32 @es1371_src_write(%struct.es_info* %188, i32 %190, i32 4096)
  %192 = load %struct.es_info*, %struct.es_info** %2, align 8
  %193 = load i32, i32* @ES_ADC, align 4
  %194 = call i32 @es1371_adc_rate(%struct.es_info* %192, i32 22050, i32 %193)
  %195 = load %struct.es_info*, %struct.es_info** %2, align 8
  %196 = load i32, i32* @ES_DAC1, align 4
  %197 = call i32 @es1371_dac_rate(%struct.es_info* %195, i32 22050, i32 %196)
  %198 = load %struct.es_info*, %struct.es_info** %2, align 8
  %199 = load i32, i32* @ES_DAC2, align 4
  %200 = call i32 @es1371_dac_rate(%struct.es_info* %198, i32 22050, i32 %199)
  %201 = load %struct.es_info*, %struct.es_info** %2, align 8
  %202 = call i32 @es1371_wait_src_ready(%struct.es_info* %201)
  %203 = load %struct.es_info*, %struct.es_info** %2, align 8
  %204 = load i32, i32* @ES1371_REG_SMPRATE, align 4
  %205 = call i32 @es_wr(%struct.es_info* %203, i32 %204, i32 0, i32 4)
  %206 = load %struct.es_info*, %struct.es_info** %2, align 8
  %207 = load i32, i32* @ES1371_REG_CODEC, align 4
  %208 = call i32 @es_wr(%struct.es_info* %206, i32 %207, i32 0, i32 4)
  %209 = load %struct.es_info*, %struct.es_info** %2, align 8
  %210 = load i32, i32* @ES1370_REG_STATUS, align 4
  %211 = load i32, i32* %3, align 4
  %212 = call i32 @es_wr(%struct.es_info* %209, i32 %210, i32 %211, i32 4)
  %213 = load %struct.es_info*, %struct.es_info** %2, align 8
  %214 = call i32 @ES_UNLOCK(%struct.es_info* %213)
  ret i32 0
}

declare dso_local i32 @ES_LOCK(%struct.es_info*) #1

declare dso_local i32 @ES_SET_IS_ES1370(i32, i32) #1

declare dso_local i32 @pci_get_devid(i32) #1

declare dso_local i32 @pci_get_revid(i32) #1

declare dso_local i32 @pci_get_subdevice(i32) #1

declare dso_local i32 @pci_get_subvendor(i32) #1

declare dso_local i32 @es_wr(%struct.es_info*, i32, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @es1371_wait_src_ready(%struct.es_info*) #1

declare dso_local i32 @es1371_src_write(%struct.es_info*, i32, i32) #1

declare dso_local i32 @es1371_adc_rate(%struct.es_info*, i32, i32) #1

declare dso_local i32 @es1371_dac_rate(%struct.es_info*, i32, i32) #1

declare dso_local i32 @ES_UNLOCK(%struct.es_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
