; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_octopci.c_octopci_init_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_octopci.c_octopci_init_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@PCIR_HDRTYPE = common dso_local global i32 0, align 4
@PCIR_COMMAND = common dso_local global i32 0, align 4
@PCIM_CMD_MEMEN = common dso_local global i32 0, align 4
@PCIM_CMD_PORTEN = common dso_local global i32 0, align 4
@PCIM_HDRTYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"%02x.%02x:%02x: invalid header type %#x\0A\00", align 1
@PCIM_CMD_BUSMASTEREN = common dso_local global i32 0, align 4
@PCIR_CACHELNSZ = common dso_local global i32 0, align 4
@PCIR_LATTIMER = common dso_local global i32 0, align 4
@PCIR_CLASS = common dso_local global i32 0, align 4
@PCIC_BRIDGE = common dso_local global i32 0, align 4
@PCIR_SUBCLASS = common dso_local global i32 0, align 4
@PCIS_BRIDGE_PCI = common dso_local global i32 0, align 4
@PCIR_BRIDGECTL_1 = common dso_local global i32 0, align 4
@PCIB_BCR_PERR_ENABLE = common dso_local global i32 0, align 4
@PCIB_BCR_SERR_ENABLE = common dso_local global i32 0, align 4
@PCIB_BCR_SECBUS_RESET = common dso_local global i32 0, align 4
@PCIR_MEMBASE_1 = common dso_local global i32 0, align 4
@CVMX_OCT_PCI_MEM1_BASE = common dso_local global i32 0, align 4
@PCIR_MEMLIMIT_1 = common dso_local global i32 0, align 4
@CVMX_OCT_PCI_MEM1_SIZE = common dso_local global i32 0, align 4
@PCIR_IOBASEL_1 = common dso_local global i32 0, align 4
@CVMX_OCT_PCI_IO_BASE = common dso_local global i32 0, align 4
@PCIR_IOBASEH_1 = common dso_local global i32 0, align 4
@PCIR_IOLIMITL_1 = common dso_local global i32 0, align 4
@CVMX_OCT_PCI_IO_SIZE = common dso_local global i32 0, align 4
@PCIR_IOLIMITH_1 = common dso_local global i32 0, align 4
@PCIR_PRIBUS_1 = common dso_local global i32 0, align 4
@PCIR_SECBUS_1 = common dso_local global i32 0, align 4
@PCIR_SUBBUS_1 = common dso_local global i32 0, align 4
@CVMX_OCT_DID_PCI = common dso_local global i32 0, align 4
@CVMX_OCT_SUBDID_PCI_MEM1 = common dso_local global i32 0, align 4
@PCIM_BAR_MEM_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32)* @octopci_init_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octopci_init_device(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @PCIR_HDRTYPE, align 4
  %24 = call i32 @octopci_read_config(i32 %19, i32 %20, i32 %21, i32 %22, i32 %23, i32 1)
  store i32 %24, i32* %18, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @PCIR_COMMAND, align 4
  %30 = call i32 @octopci_read_config(i32 %25, i32 %26, i32 %27, i32 %28, i32 %29, i32 1)
  store i32 %30, i32* %17, align 4
  %31 = load i32, i32* @PCIM_CMD_MEMEN, align 4
  %32 = load i32, i32* @PCIM_CMD_PORTEN, align 4
  %33 = or i32 %31, %32
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %17, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %17, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @PCIR_COMMAND, align 4
  %42 = load i32, i32* %17, align 4
  %43 = call i32 @octopci_write_config(i32 %37, i32 %38, i32 %39, i32 %40, i32 %41, i32 %42, i32 1)
  %44 = call i32 @DELAY(i32 10000)
  %45 = load i32, i32* %18, align 4
  %46 = load i32, i32* @PCIM_HDRTYPE, align 4
  %47 = and i32 %45, %46
  switch i32 %47, label %51 [
    i32 128, label %48
    i32 130, label %49
    i32 129, label %50
  ]

48:                                               ; preds = %5
  store i32 6, i32* %13, align 4
  br label %59

49:                                               ; preds = %5
  store i32 2, i32* %13, align 4
  br label %59

50:                                               ; preds = %5
  store i32 0, i32* %13, align 4
  br label %59

51:                                               ; preds = %5
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %18, align 4
  %57 = call i32 @device_printf(i32 %52, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %54, i32 %55, i32 %56)
  %58 = load i32, i32* %11, align 4
  store i32 %58, i32* %6, align 4
  br label %282

59:                                               ; preds = %50, %49, %48
  store i32 0, i32* %12, align 4
  br label %60

60:                                               ; preds = %64, %59
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %13, align 4
  %63 = icmp ult i32 %61, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %60
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @octopci_init_bar(i32 %65, i32 %66, i32 %67, i32 %68, i32 %69, i32* %17)
  store i32 %70, i32* %12, align 4
  br label %60

71:                                               ; preds = %60
  %72 = load i32, i32* @PCIM_CMD_BUSMASTEREN, align 4
  %73 = load i32, i32* %17, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %17, align 4
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @PCIR_COMMAND, align 4
  %80 = load i32, i32* %17, align 4
  %81 = call i32 @octopci_write_config(i32 %75, i32 %76, i32 %77, i32 %78, i32 %79, i32 %80, i32 1)
  %82 = call i32 @DELAY(i32 10000)
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* @PCIR_CACHELNSZ, align 4
  %88 = call i32 @octopci_write_config(i32 %83, i32 %84, i32 %85, i32 %86, i32 %87, i32 16, i32 1)
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* @PCIR_LATTIMER, align 4
  %94 = call i32 @octopci_write_config(i32 %89, i32 %90, i32 %91, i32 %92, i32 %93, i32 48, i32 1)
  %95 = call %struct.TYPE_2__* (...) @cvmx_sysinfo_get()
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  switch i32 %97, label %98 [
  ]

98:                                               ; preds = %71
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* @PCIR_CLASS, align 4
  %105 = call i32 @octopci_read_config(i32 %100, i32 %101, i32 %102, i32 %103, i32 %104, i32 1)
  store i32 %105, i32* %15, align 4
  %106 = load i32, i32* %15, align 4
  %107 = load i32, i32* @PCIC_BRIDGE, align 4
  %108 = icmp ne i32 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %99
  %110 = load i32, i32* %11, align 4
  store i32 %110, i32* %6, align 4
  br label %282

111:                                              ; preds = %99
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* @PCIR_SUBCLASS, align 4
  %117 = call i32 @octopci_read_config(i32 %112, i32 %113, i32 %114, i32 %115, i32 %116, i32 1)
  store i32 %117, i32* %16, align 4
  %118 = load i32, i32* %16, align 4
  %119 = load i32, i32* @PCIS_BRIDGE_PCI, align 4
  %120 = icmp ne i32 %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %111
  %122 = load i32, i32* %11, align 4
  store i32 %122, i32* %6, align 4
  br label %282

123:                                              ; preds = %111
  %124 = load i32, i32* @PCIM_CMD_MEMEN, align 4
  %125 = load i32, i32* @PCIM_CMD_PORTEN, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* %17, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %17, align 4
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* %9, align 4
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* @PCIR_COMMAND, align 4
  %134 = load i32, i32* %17, align 4
  %135 = call i32 @octopci_write_config(i32 %129, i32 %130, i32 %131, i32 %132, i32 %133, i32 %134, i32 1)
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* %10, align 4
  %140 = load i32, i32* @PCIR_BRIDGECTL_1, align 4
  %141 = call i32 @octopci_read_config(i32 %136, i32 %137, i32 %138, i32 %139, i32 %140, i32 1)
  store i32 %141, i32* %14, align 4
  %142 = load i32, i32* @PCIB_BCR_PERR_ENABLE, align 4
  %143 = load i32, i32* @PCIB_BCR_SERR_ENABLE, align 4
  %144 = or i32 %142, %143
  %145 = load i32, i32* %14, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %14, align 4
  %147 = load i32, i32* @PCIB_BCR_SECBUS_RESET, align 4
  %148 = load i32, i32* %14, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %14, align 4
  %150 = load i32, i32* %7, align 4
  %151 = load i32, i32* %8, align 4
  %152 = load i32, i32* %9, align 4
  %153 = load i32, i32* %10, align 4
  %154 = load i32, i32* @PCIR_BRIDGECTL_1, align 4
  %155 = load i32, i32* %14, align 4
  %156 = call i32 @octopci_write_config(i32 %150, i32 %151, i32 %152, i32 %153, i32 %154, i32 %155, i32 1)
  %157 = call i32 @DELAY(i32 100000)
  %158 = load i32, i32* @PCIB_BCR_SECBUS_RESET, align 4
  %159 = xor i32 %158, -1
  %160 = load i32, i32* %14, align 4
  %161 = and i32 %160, %159
  store i32 %161, i32* %14, align 4
  %162 = load i32, i32* %7, align 4
  %163 = load i32, i32* %8, align 4
  %164 = load i32, i32* %9, align 4
  %165 = load i32, i32* %10, align 4
  %166 = load i32, i32* @PCIR_BRIDGECTL_1, align 4
  %167 = load i32, i32* %14, align 4
  %168 = call i32 @octopci_write_config(i32 %162, i32 %163, i32 %164, i32 %165, i32 %166, i32 %167, i32 1)
  %169 = load i32, i32* %11, align 4
  %170 = add i32 %169, 1
  store i32 %170, i32* %11, align 4
  %171 = load i32, i32* %7, align 4
  %172 = load i32, i32* %8, align 4
  %173 = load i32, i32* %9, align 4
  %174 = load i32, i32* %10, align 4
  %175 = load i32, i32* @PCIR_MEMBASE_1, align 4
  %176 = load i32, i32* @CVMX_OCT_PCI_MEM1_BASE, align 4
  %177 = ashr i32 %176, 16
  %178 = call i32 @octopci_write_config(i32 %171, i32 %172, i32 %173, i32 %174, i32 %175, i32 %177, i32 2)
  %179 = load i32, i32* %7, align 4
  %180 = load i32, i32* %8, align 4
  %181 = load i32, i32* %9, align 4
  %182 = load i32, i32* %10, align 4
  %183 = load i32, i32* @PCIR_MEMLIMIT_1, align 4
  %184 = load i32, i32* @CVMX_OCT_PCI_MEM1_BASE, align 4
  %185 = load i32, i32* @CVMX_OCT_PCI_MEM1_SIZE, align 4
  %186 = add nsw i32 %184, %185
  %187 = sub nsw i32 %186, 1
  %188 = ashr i32 %187, 16
  %189 = call i32 @octopci_write_config(i32 %179, i32 %180, i32 %181, i32 %182, i32 %183, i32 %188, i32 2)
  %190 = load i32, i32* %7, align 4
  %191 = load i32, i32* %8, align 4
  %192 = load i32, i32* %9, align 4
  %193 = load i32, i32* %10, align 4
  %194 = load i32, i32* @PCIR_IOBASEL_1, align 4
  %195 = load i32, i32* @CVMX_OCT_PCI_IO_BASE, align 4
  %196 = ashr i32 %195, 8
  %197 = call i32 @octopci_write_config(i32 %190, i32 %191, i32 %192, i32 %193, i32 %194, i32 %196, i32 1)
  %198 = load i32, i32* %7, align 4
  %199 = load i32, i32* %8, align 4
  %200 = load i32, i32* %9, align 4
  %201 = load i32, i32* %10, align 4
  %202 = load i32, i32* @PCIR_IOBASEH_1, align 4
  %203 = load i32, i32* @CVMX_OCT_PCI_IO_BASE, align 4
  %204 = ashr i32 %203, 16
  %205 = call i32 @octopci_write_config(i32 %198, i32 %199, i32 %200, i32 %201, i32 %202, i32 %204, i32 2)
  %206 = load i32, i32* %7, align 4
  %207 = load i32, i32* %8, align 4
  %208 = load i32, i32* %9, align 4
  %209 = load i32, i32* %10, align 4
  %210 = load i32, i32* @PCIR_IOLIMITL_1, align 4
  %211 = load i32, i32* @CVMX_OCT_PCI_IO_BASE, align 4
  %212 = load i32, i32* @CVMX_OCT_PCI_IO_SIZE, align 4
  %213 = add nsw i32 %211, %212
  %214 = sub nsw i32 %213, 1
  %215 = ashr i32 %214, 8
  %216 = call i32 @octopci_write_config(i32 %206, i32 %207, i32 %208, i32 %209, i32 %210, i32 %215, i32 1)
  %217 = load i32, i32* %7, align 4
  %218 = load i32, i32* %8, align 4
  %219 = load i32, i32* %9, align 4
  %220 = load i32, i32* %10, align 4
  %221 = load i32, i32* @PCIR_IOLIMITH_1, align 4
  %222 = load i32, i32* @CVMX_OCT_PCI_IO_BASE, align 4
  %223 = load i32, i32* @CVMX_OCT_PCI_IO_SIZE, align 4
  %224 = add nsw i32 %222, %223
  %225 = sub nsw i32 %224, 1
  %226 = ashr i32 %225, 16
  %227 = call i32 @octopci_write_config(i32 %217, i32 %218, i32 %219, i32 %220, i32 %221, i32 %226, i32 2)
  %228 = load i32, i32* %7, align 4
  %229 = load i32, i32* %8, align 4
  %230 = load i32, i32* %9, align 4
  %231 = load i32, i32* %10, align 4
  %232 = load i32, i32* @PCIR_PRIBUS_1, align 4
  %233 = load i32, i32* %8, align 4
  %234 = call i32 @octopci_write_config(i32 %228, i32 %229, i32 %230, i32 %231, i32 %232, i32 %233, i32 1)
  %235 = load i32, i32* %7, align 4
  %236 = load i32, i32* %8, align 4
  %237 = load i32, i32* %9, align 4
  %238 = load i32, i32* %10, align 4
  %239 = load i32, i32* @PCIR_SECBUS_1, align 4
  %240 = load i32, i32* %11, align 4
  %241 = call i32 @octopci_write_config(i32 %235, i32 %236, i32 %237, i32 %238, i32 %239, i32 %240, i32 1)
  %242 = load i32, i32* %7, align 4
  %243 = load i32, i32* %8, align 4
  %244 = load i32, i32* %9, align 4
  %245 = load i32, i32* %10, align 4
  %246 = load i32, i32* @PCIR_SUBBUS_1, align 4
  %247 = call i32 @octopci_write_config(i32 %242, i32 %243, i32 %244, i32 %245, i32 %246, i32 255, i32 1)
  %248 = load i32, i32* @PCIB_BCR_SECBUS_RESET, align 4
  %249 = load i32, i32* %14, align 4
  %250 = or i32 %249, %248
  store i32 %250, i32* %14, align 4
  %251 = load i32, i32* %7, align 4
  %252 = load i32, i32* %8, align 4
  %253 = load i32, i32* %9, align 4
  %254 = load i32, i32* %10, align 4
  %255 = load i32, i32* @PCIR_BRIDGECTL_1, align 4
  %256 = load i32, i32* %14, align 4
  %257 = call i32 @octopci_write_config(i32 %251, i32 %252, i32 %253, i32 %254, i32 %255, i32 %256, i32 1)
  %258 = call i32 @DELAY(i32 100000)
  %259 = load i32, i32* @PCIB_BCR_SECBUS_RESET, align 4
  %260 = xor i32 %259, -1
  %261 = load i32, i32* %14, align 4
  %262 = and i32 %261, %260
  store i32 %262, i32* %14, align 4
  %263 = load i32, i32* %7, align 4
  %264 = load i32, i32* %8, align 4
  %265 = load i32, i32* %9, align 4
  %266 = load i32, i32* %10, align 4
  %267 = load i32, i32* @PCIR_BRIDGECTL_1, align 4
  %268 = load i32, i32* %14, align 4
  %269 = call i32 @octopci_write_config(i32 %263, i32 %264, i32 %265, i32 %266, i32 %267, i32 %268, i32 1)
  %270 = call i32 @DELAY(i32 100000)
  %271 = load i32, i32* %7, align 4
  %272 = load i32, i32* %11, align 4
  %273 = call i32 @octopci_init_bus(i32 %271, i32 %272)
  store i32 %273, i32* %11, align 4
  %274 = load i32, i32* %7, align 4
  %275 = load i32, i32* %8, align 4
  %276 = load i32, i32* %9, align 4
  %277 = load i32, i32* %10, align 4
  %278 = load i32, i32* @PCIR_SUBBUS_1, align 4
  %279 = load i32, i32* %11, align 4
  %280 = call i32 @octopci_write_config(i32 %274, i32 %275, i32 %276, i32 %277, i32 %278, i32 %279, i32 1)
  %281 = load i32, i32* %11, align 4
  store i32 %281, i32* %6, align 4
  br label %282

282:                                              ; preds = %123, %121, %109, %51
  %283 = load i32, i32* %6, align 4
  ret i32 %283
}

declare dso_local i32 @octopci_read_config(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @octopci_write_config(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @octopci_init_bar(i32, i32, i32, i32, i32, i32*) #1

declare dso_local %struct.TYPE_2__* @cvmx_sysinfo_get(...) #1

declare dso_local i32 @octopci_init_bus(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
