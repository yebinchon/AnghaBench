; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_read_cap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_read_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32, i32, %struct.TYPE_19__, i32, i32, i32, i32, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_19__ = type { i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i8*, i8*, i32 }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }

@PCIM_HDRTYPE = common dso_local global i32 0, align 4
@PCIR_CAP_PTR = common dso_local global i32 0, align 4
@PCIR_CAP_PTR_2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"illegal PCI extended capability offset %d\0A\00", align 1
@PCICAP_NEXTPTR = common dso_local global i32 0, align 4
@PCICAP_ID = common dso_local global i32 0, align 4
@PCIR_POWER_CAP = common dso_local global i32 0, align 4
@PCIR_POWER_STATUS = common dso_local global i32 0, align 4
@PCIR_POWER_BSE = common dso_local global i32 0, align 4
@PCIR_POWER_DATA = common dso_local global i32 0, align 4
@PCIR_HT_COMMAND = common dso_local global i32 0, align 4
@PCIM_HTCAP_SLAVE = common dso_local global i32 0, align 4
@PCIM_HTCMD_CAP_MASK = common dso_local global i32 0, align 4
@PCIM_HTCMD_MSI_FIXED = common dso_local global i32 0, align 4
@PCIR_HTMSI_ADDRESS_HI = common dso_local global i32 0, align 4
@PCIR_HTMSI_ADDRESS_LO = common dso_local global i32 0, align 4
@MSI_INTEL_ADDR_BASE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"HT device at pci%d:%d:%d:%d has non-default MSI window 0x%llx\0A\00", align 1
@PCIR_MSI_CTRL = common dso_local global i32 0, align 4
@PCIM_MSICTRL_MMC_MASK = common dso_local global i32 0, align 4
@PCIR_MSIX_CTRL = common dso_local global i32 0, align 4
@PCIM_MSIXCTRL_TABLE_SIZE = common dso_local global i32 0, align 4
@PCIR_MSIX_TABLE = common dso_local global i32 0, align 4
@PCIM_MSIX_BIR_MASK = common dso_local global i32 0, align 4
@PCIR_MSIX_PBA = common dso_local global i32 0, align 4
@PCIR_SUBVENDCAP_ID = common dso_local global i32 0, align 4
@pcix_chipset = common dso_local global i32 0, align 4
@pcie_chipset = common dso_local global i32 0, align 4
@PCIER_FLAGS = common dso_local global i32 0, align 4
@PCIEM_FLAGS_TYPE = common dso_local global i32 0, align 4
@PCIM_HTCMD_MSI_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_20__*)* @pci_read_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_read_cap(i32 %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %4, align 8
  %10 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @PCIM_HDRTYPE, align 4
  %14 = and i32 %12, %13
  switch i32 %14, label %19 [
    i32 138, label %15
    i32 140, label %15
    i32 139, label %17
  ]

15:                                               ; preds = %2, %2
  %16 = load i32, i32* @PCIR_CAP_PTR, align 4
  store i32 %16, i32* %9, align 4
  br label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @PCIR_CAP_PTR_2, align 4
  store i32 %18, i32* %9, align 4
  br label %20

19:                                               ; preds = %2
  br label %430

20:                                               ; preds = %17, %15
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 (i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @PCIB_READ_CONFIG to i32 (i32, i32, i32, i32, i32, i32, ...)*)(i32 %21, i32 %24, i32 %27, i32 %30, i32 %31, i32 1)
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %429, %20
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %430

36:                                               ; preds = %33
  %37 = load i32, i32* %8, align 4
  %38 = icmp sgt i32 %37, 255
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %430

42:                                               ; preds = %36
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %3, align 4
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @PCICAP_NEXTPTR, align 4
  %56 = add nsw i32 %54, %55
  %57 = call i32 (i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @PCIB_READ_CONFIG to i32 (i32, i32, i32, i32, i32, i32, ...)*)(i32 %44, i32 %47, i32 %50, i32 %53, i32 %56, i32 1)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %3, align 4
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @PCICAP_ID, align 4
  %70 = add nsw i32 %68, %69
  %71 = call i32 (i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @PCIB_READ_CONFIG to i32 (i32, i32, i32, i32, i32, i32, ...)*)(i32 %58, i32 %61, i32 %64, i32 %67, i32 %70, i32 1)
  switch i32 %71, label %428 [
    i32 130, label %72
    i32 134, label %122
    i32 133, label %225
    i32 132, label %258
    i32 128, label %346
    i32 129, label %351
    i32 131, label %382
    i32 135, label %395
    i32 136, label %420
  ]

72:                                               ; preds = %42
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 14
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %121

78:                                               ; preds = %72
  %79 = load i32, i32* %3, align 4
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 6
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* @PCIR_POWER_CAP, align 4
  %91 = add nsw i32 %89, %90
  %92 = call i32 (i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @PCIB_READ_CONFIG to i32 (i32, i32, i32, i32, i32, i32, ...)*)(i32 %79, i32 %82, i32 %85, i32 %88, i32 %91, i32 2)
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 14
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  store i32 %92, i32* %95, align 4
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* @PCIR_POWER_STATUS, align 4
  %98 = add nsw i32 %96, %97
  %99 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 14
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 3
  store i32 %98, i32* %101, align 4
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @PCIR_POWER_BSE, align 4
  %104 = add nsw i32 %102, %103
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 14
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 2
  store i32 %104, i32* %107, align 4
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* %7, align 4
  %110 = sub nsw i32 %108, %109
  %111 = load i32, i32* @PCIR_POWER_DATA, align 4
  %112 = icmp sgt i32 %110, %111
  br i1 %112, label %113, label %120

113:                                              ; preds = %78
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* @PCIR_POWER_DATA, align 4
  %116 = add nsw i32 %114, %115
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %117, i32 0, i32 14
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 1
  store i32 %116, i32* %119, align 4
  br label %120

120:                                              ; preds = %113, %78
  br label %121

121:                                              ; preds = %120, %72
  br label %429

122:                                              ; preds = %42
  %123 = load i32, i32* %3, align 4
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 6
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* @PCIR_HT_COMMAND, align 4
  %135 = add nsw i32 %133, %134
  %136 = call i32 (i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @PCIB_READ_CONFIG to i32 (i32, i32, i32, i32, i32, i32, ...)*)(i32 %123, i32 %126, i32 %129, i32 %132, i32 %135, i32 2)
  store i32 %136, i32* %6, align 4
  %137 = load i32, i32* %6, align 4
  %138 = and i32 %137, 57344
  %139 = load i32, i32* @PCIM_HTCAP_SLAVE, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %146

141:                                              ; preds = %122
  %142 = load i32, i32* %7, align 4
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 3
  %145 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %144, i32 0, i32 0
  store i32 %142, i32* %145, align 4
  br label %146

146:                                              ; preds = %141, %122
  %147 = load i32, i32* %6, align 4
  %148 = load i32, i32* @PCIM_HTCMD_CAP_MASK, align 4
  %149 = and i32 %147, %148
  switch i32 %149, label %224 [
    i32 137, label %150
  ]

150:                                              ; preds = %146
  %151 = load i32, i32* %6, align 4
  %152 = load i32, i32* @PCIM_HTCMD_MSI_FIXED, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %209, label %155

155:                                              ; preds = %150
  %156 = load i32, i32* %3, align 4
  %157 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %157, i32 0, i32 6
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %160, i32 0, i32 5
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %163, i32 0, i32 4
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* %7, align 4
  %167 = load i32, i32* @PCIR_HTMSI_ADDRESS_HI, align 4
  %168 = add nsw i32 %166, %167
  %169 = call i32 (i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @PCIB_READ_CONFIG to i32 (i32, i32, i32, i32, i32, i32, ...)*)(i32 %156, i32 %159, i32 %162, i32 %165, i32 %168, i32 4)
  store i32 %169, i32* %5, align 4
  %170 = load i32, i32* %5, align 4
  %171 = shl i32 %170, 32
  store i32 %171, i32* %5, align 4
  %172 = load i32, i32* %3, align 4
  %173 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %173, i32 0, i32 6
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %176, i32 0, i32 5
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %179, i32 0, i32 4
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* %7, align 4
  %183 = load i32, i32* @PCIR_HTMSI_ADDRESS_LO, align 4
  %184 = add nsw i32 %182, %183
  %185 = call i32 (i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @PCIB_READ_CONFIG to i32 (i32, i32, i32, i32, i32, i32, ...)*)(i32 %172, i32 %175, i32 %178, i32 %181, i32 %184, i32 4)
  %186 = load i32, i32* %5, align 4
  %187 = or i32 %186, %185
  store i32 %187, i32* %5, align 4
  %188 = load i32, i32* %5, align 4
  %189 = load i32, i32* @MSI_INTEL_ADDR_BASE, align 4
  %190 = icmp ne i32 %188, %189
  br i1 %190, label %191, label %208

191:                                              ; preds = %155
  %192 = load i32, i32* %3, align 4
  %193 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %193, i32 0, i32 7
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %196, i32 0, i32 6
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %199, i32 0, i32 5
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %202, i32 0, i32 4
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* %5, align 4
  %206 = sext i32 %205 to i64
  %207 = call i32 (i32, i8*, i32, i32, i32, i32, ...) @device_printf(i32 %192, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %195, i32 %198, i32 %201, i32 %204, i64 %206)
  br label %208

208:                                              ; preds = %191, %155
  br label %211

209:                                              ; preds = %150
  %210 = load i32, i32* @MSI_INTEL_ADDR_BASE, align 4
  store i32 %210, i32* %5, align 4
  br label %211

211:                                              ; preds = %209, %208
  %212 = load i32, i32* %7, align 4
  %213 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %213, i32 0, i32 3
  %215 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %214, i32 0, i32 1
  store i32 %212, i32* %215, align 4
  %216 = load i32, i32* %6, align 4
  %217 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %217, i32 0, i32 3
  %219 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %218, i32 0, i32 2
  store i32 %216, i32* %219, align 4
  %220 = load i32, i32* %5, align 4
  %221 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %221, i32 0, i32 3
  %223 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %222, i32 0, i32 3
  store i32 %220, i32* %223, align 4
  br label %224

224:                                              ; preds = %146, %211
  br label %429

225:                                              ; preds = %42
  %226 = load i32, i32* %7, align 4
  %227 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %227, i32 0, i32 13
  %229 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %228, i32 0, i32 0
  store i32 %226, i32* %229, align 8
  %230 = load i32, i32* %3, align 4
  %231 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %231, i32 0, i32 6
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %234, i32 0, i32 5
  %236 = load i32, i32* %235, align 8
  %237 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %237, i32 0, i32 4
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* %7, align 4
  %241 = load i32, i32* @PCIR_MSI_CTRL, align 4
  %242 = add nsw i32 %240, %241
  %243 = call i32 (i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @PCIB_READ_CONFIG to i32 (i32, i32, i32, i32, i32, i32, ...)*)(i32 %230, i32 %233, i32 %236, i32 %239, i32 %242, i32 2)
  %244 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %245 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %244, i32 0, i32 13
  %246 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %245, i32 0, i32 1
  store i32 %243, i32* %246, align 4
  %247 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %248 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %247, i32 0, i32 13
  %249 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* @PCIM_MSICTRL_MMC_MASK, align 4
  %252 = and i32 %250, %251
  %253 = ashr i32 %252, 1
  %254 = shl i32 1, %253
  %255 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %256 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %255, i32 0, i32 13
  %257 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %256, i32 0, i32 2
  store i32 %254, i32* %257, align 8
  br label %429

258:                                              ; preds = %42
  %259 = load i32, i32* %7, align 4
  %260 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %261 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %260, i32 0, i32 12
  %262 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %261, i32 0, i32 0
  store i32 %259, i32* %262, align 8
  %263 = load i32, i32* %3, align 4
  %264 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %265 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %264, i32 0, i32 6
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %268 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %267, i32 0, i32 5
  %269 = load i32, i32* %268, align 8
  %270 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %271 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %270, i32 0, i32 4
  %272 = load i32, i32* %271, align 4
  %273 = load i32, i32* %7, align 4
  %274 = load i32, i32* @PCIR_MSIX_CTRL, align 4
  %275 = add nsw i32 %273, %274
  %276 = call i32 (i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @PCIB_READ_CONFIG to i32 (i32, i32, i32, i32, i32, i32, ...)*)(i32 %263, i32 %266, i32 %269, i32 %272, i32 %275, i32 2)
  %277 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %278 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %277, i32 0, i32 12
  %279 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %278, i32 0, i32 1
  store i32 %276, i32* %279, align 4
  %280 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %281 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %280, i32 0, i32 12
  %282 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 4
  %284 = load i32, i32* @PCIM_MSIXCTRL_TABLE_SIZE, align 4
  %285 = and i32 %283, %284
  %286 = add nsw i32 %285, 1
  %287 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %288 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %287, i32 0, i32 12
  %289 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %288, i32 0, i32 6
  store i32 %286, i32* %289, align 8
  %290 = load i32, i32* %3, align 4
  %291 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %292 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %291, i32 0, i32 6
  %293 = load i32, i32* %292, align 4
  %294 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %295 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %294, i32 0, i32 5
  %296 = load i32, i32* %295, align 8
  %297 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %298 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %297, i32 0, i32 4
  %299 = load i32, i32* %298, align 4
  %300 = load i32, i32* %7, align 4
  %301 = load i32, i32* @PCIR_MSIX_TABLE, align 4
  %302 = add nsw i32 %300, %301
  %303 = call i32 (i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @PCIB_READ_CONFIG to i32 (i32, i32, i32, i32, i32, i32, ...)*)(i32 %290, i32 %293, i32 %296, i32 %299, i32 %302, i32 4)
  store i32 %303, i32* %6, align 4
  %304 = load i32, i32* %6, align 4
  %305 = load i32, i32* @PCIM_MSIX_BIR_MASK, align 4
  %306 = and i32 %304, %305
  %307 = call i8* @PCIR_BAR(i32 %306)
  %308 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %309 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %308, i32 0, i32 12
  %310 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %309, i32 0, i32 5
  store i8* %307, i8** %310, align 8
  %311 = load i32, i32* %6, align 4
  %312 = load i32, i32* @PCIM_MSIX_BIR_MASK, align 4
  %313 = xor i32 %312, -1
  %314 = and i32 %311, %313
  %315 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %316 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %315, i32 0, i32 12
  %317 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %316, i32 0, i32 2
  store i32 %314, i32* %317, align 8
  %318 = load i32, i32* %3, align 4
  %319 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %320 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %319, i32 0, i32 6
  %321 = load i32, i32* %320, align 4
  %322 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %323 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %322, i32 0, i32 5
  %324 = load i32, i32* %323, align 8
  %325 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %326 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %325, i32 0, i32 4
  %327 = load i32, i32* %326, align 4
  %328 = load i32, i32* %7, align 4
  %329 = load i32, i32* @PCIR_MSIX_PBA, align 4
  %330 = add nsw i32 %328, %329
  %331 = call i32 (i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @PCIB_READ_CONFIG to i32 (i32, i32, i32, i32, i32, i32, ...)*)(i32 %318, i32 %321, i32 %324, i32 %327, i32 %330, i32 4)
  store i32 %331, i32* %6, align 4
  %332 = load i32, i32* %6, align 4
  %333 = load i32, i32* @PCIM_MSIX_BIR_MASK, align 4
  %334 = and i32 %332, %333
  %335 = call i8* @PCIR_BAR(i32 %334)
  %336 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %337 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %336, i32 0, i32 12
  %338 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %337, i32 0, i32 4
  store i8* %335, i8** %338, align 8
  %339 = load i32, i32* %6, align 4
  %340 = load i32, i32* @PCIM_MSIX_BIR_MASK, align 4
  %341 = xor i32 %340, -1
  %342 = and i32 %339, %341
  %343 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %344 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %343, i32 0, i32 12
  %345 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %344, i32 0, i32 3
  store i32 %342, i32* %345, align 4
  br label %429

346:                                              ; preds = %42
  %347 = load i32, i32* %7, align 4
  %348 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %349 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %348, i32 0, i32 11
  %350 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %349, i32 0, i32 0
  store i32 %347, i32* %350, align 4
  br label %429

351:                                              ; preds = %42
  %352 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %353 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = load i32, i32* @PCIM_HDRTYPE, align 4
  %356 = and i32 %354, %355
  %357 = icmp eq i32 %356, 140
  br i1 %357, label %358, label %381

358:                                              ; preds = %351
  %359 = load i32, i32* %3, align 4
  %360 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %361 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %360, i32 0, i32 6
  %362 = load i32, i32* %361, align 4
  %363 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %364 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %363, i32 0, i32 5
  %365 = load i32, i32* %364, align 8
  %366 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %367 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %366, i32 0, i32 4
  %368 = load i32, i32* %367, align 4
  %369 = load i32, i32* %7, align 4
  %370 = load i32, i32* @PCIR_SUBVENDCAP_ID, align 4
  %371 = add nsw i32 %369, %370
  %372 = call i32 (i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @PCIB_READ_CONFIG to i32 (i32, i32, i32, i32, i32, i32, ...)*)(i32 %359, i32 %362, i32 %365, i32 %368, i32 %371, i32 4)
  store i32 %372, i32* %6, align 4
  %373 = load i32, i32* %6, align 4
  %374 = and i32 %373, 65535
  %375 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %376 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %375, i32 0, i32 1
  store i32 %374, i32* %376, align 4
  %377 = load i32, i32* %6, align 4
  %378 = ashr i32 %377, 16
  %379 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %380 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %379, i32 0, i32 2
  store i32 %378, i32* %380, align 8
  br label %381

381:                                              ; preds = %358, %351
  br label %429

382:                                              ; preds = %42
  %383 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %384 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 8
  %386 = load i32, i32* @PCIM_HDRTYPE, align 4
  %387 = and i32 %385, %386
  %388 = icmp eq i32 %387, 140
  br i1 %388, label %389, label %390

389:                                              ; preds = %382
  store i32 1, i32* @pcix_chipset, align 4
  br label %390

390:                                              ; preds = %389, %382
  %391 = load i32, i32* %7, align 4
  %392 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %393 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %392, i32 0, i32 10
  %394 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %393, i32 0, i32 0
  store i32 %391, i32* %394, align 8
  br label %429

395:                                              ; preds = %42
  store i32 1, i32* @pcie_chipset, align 4
  %396 = load i32, i32* %7, align 4
  %397 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %398 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %397, i32 0, i32 9
  %399 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %398, i32 0, i32 0
  store i32 %396, i32* %399, align 8
  %400 = load i32, i32* %3, align 4
  %401 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %402 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %401, i32 0, i32 6
  %403 = load i32, i32* %402, align 4
  %404 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %405 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %404, i32 0, i32 5
  %406 = load i32, i32* %405, align 8
  %407 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %408 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %407, i32 0, i32 4
  %409 = load i32, i32* %408, align 4
  %410 = load i32, i32* %7, align 4
  %411 = load i32, i32* @PCIER_FLAGS, align 4
  %412 = add nsw i32 %410, %411
  %413 = call i32 (i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @PCIB_READ_CONFIG to i32 (i32, i32, i32, i32, i32, i32, ...)*)(i32 %400, i32 %403, i32 %406, i32 %409, i32 %412, i32 2)
  store i32 %413, i32* %6, align 4
  %414 = load i32, i32* %6, align 4
  %415 = load i32, i32* @PCIEM_FLAGS_TYPE, align 4
  %416 = and i32 %414, %415
  %417 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %418 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %417, i32 0, i32 9
  %419 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %418, i32 0, i32 1
  store i32 %416, i32* %419, align 4
  br label %429

420:                                              ; preds = %42
  %421 = load i32, i32* %7, align 4
  %422 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %423 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %422, i32 0, i32 8
  %424 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %423, i32 0, i32 0
  store i32 %421, i32* %424, align 4
  %425 = load i32, i32* %3, align 4
  %426 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %427 = call i32 @pci_ea_fill_info(i32 %425, %struct.TYPE_20__* %426)
  br label %429

428:                                              ; preds = %42
  br label %429

429:                                              ; preds = %428, %420, %395, %390, %381, %346, %258, %225, %224, %121
  br label %33

430:                                              ; preds = %19, %39, %33
  ret void
}

declare dso_local i32 @PCIB_READ_CONFIG(...) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32, i32, i32, ...) #1

declare dso_local i8* @PCIR_BAR(i32) #1

declare dso_local i32 @pci_ea_fill_info(i32, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
