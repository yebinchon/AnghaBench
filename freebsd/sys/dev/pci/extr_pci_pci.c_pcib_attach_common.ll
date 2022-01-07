; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_pci.c_pcib_attach_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_pci.c_pcib_attach_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcib_softc = type { i32, i32, i32, i32, i64, i64, i64, i64, i32, i32, %struct.TYPE_4__, %struct.TYPE_4__, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }

@PCIR_SECBUS_1 = common dso_local global i32 0, align 4
@PCIR_SUBBUS_1 = common dso_local global i32 0, align 4
@PCIR_BRIDGECTL_1 = common dso_local global i32 0, align 4
@PCIR_PRIBUS_1 = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"domain\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"Domain number\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"pribus\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Primary bus number\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"secbus\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Secondary bus number\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"subbus\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Subordinate bus number\00", align 1
@PCIB_SUBTRACTIVE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [20 x i8] c"smbios.planar.maker\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"Compal\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"smbios.planar.product\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"08A0\00", align 1
@PCIB_DISABLE_MSI = common dso_local global i32 0, align 4
@PCIB_DISABLE_MSIX = common dso_local global i32 0, align 4
@PCIR_PROGIF = common dso_local global i32 0, align 4
@PCIP_BRIDGE_PCI_SUBTRACTIVE = common dso_local global i64 0, align 8
@bootverbose = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [24 x i8] c"  domain            %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"  secondary bus     %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"  subordinate bus   %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"  I/O decode        0x%x-0x%x\0A\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"  memory decode     0x%jx-0x%jx\0A\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"  prefetched decode 0x%jx-0x%jx\0A\00", align 1
@PCIB_BCR_ISA_ENABLE = common dso_local global i32 0, align 4
@PCIB_BCR_VGA_ENABLE = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [21 x i8] c"  special decode    \00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"ISA\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"%sVGA\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.22 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"%ssubtractive\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@PCIB_HOTPLUG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pcib_attach_common(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcib_softc*, align 8
  %4 = alloca %struct.sysctl_ctx_list*, align 8
  %5 = alloca %struct.sysctl_oid*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = call %struct.pcib_softc* @device_get_softc(i32 %9)
  store %struct.pcib_softc* %10, %struct.pcib_softc** %3, align 8
  %11 = load i32, i32* %2, align 4
  %12 = load %struct.pcib_softc*, %struct.pcib_softc** %3, align 8
  %13 = getelementptr inbounds %struct.pcib_softc, %struct.pcib_softc* %12, i32 0, i32 14
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @pci_get_domain(i32 %14)
  %16 = load %struct.pcib_softc*, %struct.pcib_softc** %3, align 8
  %17 = getelementptr inbounds %struct.pcib_softc, %struct.pcib_softc* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* @PCIR_SECBUS_1, align 4
  %20 = call i64 @pci_read_config(i32 %18, i32 %19, i32 1)
  %21 = trunc i64 %20 to i32
  %22 = load %struct.pcib_softc*, %struct.pcib_softc** %3, align 8
  %23 = getelementptr inbounds %struct.pcib_softc, %struct.pcib_softc* %22, i32 0, i32 13
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 8
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* @PCIR_SUBBUS_1, align 4
  %27 = call i64 @pci_read_config(i32 %25, i32 %26, i32 1)
  %28 = trunc i64 %27 to i32
  %29 = load %struct.pcib_softc*, %struct.pcib_softc** %3, align 8
  %30 = getelementptr inbounds %struct.pcib_softc, %struct.pcib_softc* %29, i32 0, i32 13
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 4
  %32 = load i32, i32* %2, align 4
  %33 = load i32, i32* @PCIR_BRIDGECTL_1, align 4
  %34 = call i64 @pci_read_config(i32 %32, i32 %33, i32 2)
  %35 = trunc i64 %34 to i32
  %36 = load %struct.pcib_softc*, %struct.pcib_softc** %3, align 8
  %37 = getelementptr inbounds %struct.pcib_softc, %struct.pcib_softc* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.pcib_softc*, %struct.pcib_softc** %3, align 8
  %39 = call i32 @pcib_cfg_save(%struct.pcib_softc* %38)
  %40 = load i32, i32* %2, align 4
  %41 = call i32 @pci_get_bus(i32 %40)
  %42 = load %struct.pcib_softc*, %struct.pcib_softc** %3, align 8
  %43 = getelementptr inbounds %struct.pcib_softc, %struct.pcib_softc* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* %2, align 4
  %45 = load i32, i32* @PCIR_PRIBUS_1, align 4
  %46 = load %struct.pcib_softc*, %struct.pcib_softc** %3, align 8
  %47 = getelementptr inbounds %struct.pcib_softc, %struct.pcib_softc* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @pci_write_config(i32 %44, i32 %45, i32 %48, i32 1)
  %50 = load i32, i32* %2, align 4
  %51 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %50)
  store %struct.sysctl_ctx_list* %51, %struct.sysctl_ctx_list** %4, align 8
  %52 = load i32, i32* %2, align 4
  %53 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %52)
  store %struct.sysctl_oid* %53, %struct.sysctl_oid** %5, align 8
  %54 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %55 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %56 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %55)
  %57 = load i32, i32* @OID_AUTO, align 4
  %58 = load i32, i32* @CTLFLAG_RD, align 4
  %59 = load %struct.pcib_softc*, %struct.pcib_softc** %3, align 8
  %60 = getelementptr inbounds %struct.pcib_softc, %struct.pcib_softc* %59, i32 0, i32 0
  %61 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %54, i32 %56, i32 %57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %58, i32* %60, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %62 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %63 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %64 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %63)
  %65 = load i32, i32* @OID_AUTO, align 4
  %66 = load i32, i32* @CTLFLAG_RD, align 4
  %67 = load %struct.pcib_softc*, %struct.pcib_softc** %3, align 8
  %68 = getelementptr inbounds %struct.pcib_softc, %struct.pcib_softc* %67, i32 0, i32 2
  %69 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %62, i32 %64, i32 %65, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %66, i32* %68, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %70 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %71 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %72 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %71)
  %73 = load i32, i32* @OID_AUTO, align 4
  %74 = load i32, i32* @CTLFLAG_RD, align 4
  %75 = load %struct.pcib_softc*, %struct.pcib_softc** %3, align 8
  %76 = getelementptr inbounds %struct.pcib_softc, %struct.pcib_softc* %75, i32 0, i32 13
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %70, i32 %72, i32 %73, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %74, i32* %77, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %79 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %80 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %81 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %80)
  %82 = load i32, i32* @OID_AUTO, align 4
  %83 = load i32, i32* @CTLFLAG_RD, align 4
  %84 = load %struct.pcib_softc*, %struct.pcib_softc** %3, align 8
  %85 = getelementptr inbounds %struct.pcib_softc, %struct.pcib_softc* %84, i32 0, i32 13
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  %87 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %79, i32 %81, i32 %82, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %83, i32* %86, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %88 = load i32, i32* %2, align 4
  %89 = call i32 @pci_get_devid(i32 %88)
  switch i32 %89, label %158 [
    i32 304447622, label %90
    i32 -1610475651, label %108
    i32 306937990, label %108
    i32 100996055, label %108
    i32 14487774, label %114
  ]

90:                                               ; preds = %1
  %91 = load i32, i32* %2, align 4
  %92 = call i64 @pci_read_config(i32 %91, i32 65, i32 1)
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 255
  br i1 %95, label %96, label %107

96:                                               ; preds = %90
  %97 = load i32, i32* %7, align 4
  %98 = add nsw i32 %97, 1
  %99 = load %struct.pcib_softc*, %struct.pcib_softc** %3, align 8
  %100 = getelementptr inbounds %struct.pcib_softc, %struct.pcib_softc* %99, i32 0, i32 13
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  store i32 %98, i32* %101, align 8
  %102 = load i32, i32* %7, align 4
  %103 = add nsw i32 %102, 1
  %104 = load %struct.pcib_softc*, %struct.pcib_softc** %3, align 8
  %105 = getelementptr inbounds %struct.pcib_softc, %struct.pcib_softc* %104, i32 0, i32 13
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 1
  store i32 %103, i32* %106, align 4
  br label %107

107:                                              ; preds = %96, %90
  br label %158

108:                                              ; preds = %1, %1, %1
  %109 = load i32, i32* @PCIB_SUBTRACTIVE, align 4
  %110 = load %struct.pcib_softc*, %struct.pcib_softc** %3, align 8
  %111 = getelementptr inbounds %struct.pcib_softc, %struct.pcib_softc* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 4
  br label %158

114:                                              ; preds = %1
  %115 = call i8* @kern_getenv(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  store i8* %115, i8** %8, align 8
  %116 = icmp eq i8* %115, null
  br i1 %116, label %117, label %118

117:                                              ; preds = %114
  br label %158

118:                                              ; preds = %114
  %119 = load i8*, i8** %8, align 8
  %120 = call i32 @strncmp(i8* %119, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 6)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %118
  %123 = load i8*, i8** %8, align 8
  %124 = call i32 @freeenv(i8* %123)
  br label %158

125:                                              ; preds = %118
  %126 = load i8*, i8** %8, align 8
  %127 = call i32 @freeenv(i8* %126)
  %128 = call i8* @kern_getenv(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  store i8* %128, i8** %8, align 8
  %129 = icmp eq i8* %128, null
  br i1 %129, label %130, label %131

130:                                              ; preds = %125
  br label %158

131:                                              ; preds = %125
  %132 = load i8*, i8** %8, align 8
  %133 = call i32 @strncmp(i8* %132, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 4)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %131
  %136 = load i8*, i8** %8, align 8
  %137 = call i32 @freeenv(i8* %136)
  br label %158

138:                                              ; preds = %131
  %139 = load i8*, i8** %8, align 8
  %140 = call i32 @freeenv(i8* %139)
  %141 = load %struct.pcib_softc*, %struct.pcib_softc** %3, align 8
  %142 = getelementptr inbounds %struct.pcib_softc, %struct.pcib_softc* %141, i32 0, i32 13
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = icmp slt i32 %144, 10
  br i1 %145, label %146, label %157

146:                                              ; preds = %138
  %147 = load i32, i32* %2, align 4
  %148 = load i32, i32* @PCIR_SUBBUS_1, align 4
  %149 = call i32 @pci_write_config(i32 %147, i32 %148, i32 10, i32 1)
  %150 = load i32, i32* %2, align 4
  %151 = load i32, i32* @PCIR_SUBBUS_1, align 4
  %152 = call i64 @pci_read_config(i32 %150, i32 %151, i32 1)
  %153 = trunc i64 %152 to i32
  %154 = load %struct.pcib_softc*, %struct.pcib_softc** %3, align 8
  %155 = getelementptr inbounds %struct.pcib_softc, %struct.pcib_softc* %154, i32 0, i32 13
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 1
  store i32 %153, i32* %156, align 4
  br label %157

157:                                              ; preds = %146, %138
  br label %158

158:                                              ; preds = %1, %157, %135, %130, %122, %117, %108, %107
  %159 = load i32, i32* %2, align 4
  %160 = call i64 @pci_msi_device_blacklisted(i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %158
  %163 = load i32, i32* @PCIB_DISABLE_MSI, align 4
  %164 = load %struct.pcib_softc*, %struct.pcib_softc** %3, align 8
  %165 = getelementptr inbounds %struct.pcib_softc, %struct.pcib_softc* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = or i32 %166, %163
  store i32 %167, i32* %165, align 4
  br label %168

168:                                              ; preds = %162, %158
  %169 = load i32, i32* %2, align 4
  %170 = call i64 @pci_msix_device_blacklisted(i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %178

172:                                              ; preds = %168
  %173 = load i32, i32* @PCIB_DISABLE_MSIX, align 4
  %174 = load %struct.pcib_softc*, %struct.pcib_softc** %3, align 8
  %175 = getelementptr inbounds %struct.pcib_softc, %struct.pcib_softc* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 4
  %177 = or i32 %176, %173
  store i32 %177, i32* %175, align 4
  br label %178

178:                                              ; preds = %172, %168
  %179 = load i32, i32* %2, align 4
  %180 = call i32 @pci_get_devid(i32 %179)
  %181 = and i32 %180, -16711681
  %182 = icmp eq i32 %181, 604012678
  br i1 %182, label %189, label %183

183:                                              ; preds = %178
  %184 = load i32, i32* %2, align 4
  %185 = load i32, i32* @PCIR_PROGIF, align 4
  %186 = call i64 @pci_read_config(i32 %184, i32 %185, i32 1)
  %187 = load i64, i64* @PCIP_BRIDGE_PCI_SUBTRACTIVE, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %195

189:                                              ; preds = %183, %178
  %190 = load i32, i32* @PCIB_SUBTRACTIVE, align 4
  %191 = load %struct.pcib_softc*, %struct.pcib_softc** %3, align 8
  %192 = getelementptr inbounds %struct.pcib_softc, %struct.pcib_softc* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 4
  %194 = or i32 %193, %190
  store i32 %194, i32* %192, align 4
  br label %195

195:                                              ; preds = %189, %183
  %196 = load i64, i64* @bootverbose, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %314

198:                                              ; preds = %195
  %199 = load i32, i32* %2, align 4
  %200 = load %struct.pcib_softc*, %struct.pcib_softc** %3, align 8
  %201 = getelementptr inbounds %struct.pcib_softc, %struct.pcib_softc* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = call i32 (i32, i8*, ...) @device_printf(i32 %199, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i32 %202)
  %204 = load i32, i32* %2, align 4
  %205 = load %struct.pcib_softc*, %struct.pcib_softc** %3, align 8
  %206 = getelementptr inbounds %struct.pcib_softc, %struct.pcib_softc* %205, i32 0, i32 13
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = call i32 (i32, i8*, ...) @device_printf(i32 %204, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i32 %208)
  %210 = load i32, i32* %2, align 4
  %211 = load %struct.pcib_softc*, %struct.pcib_softc** %3, align 8
  %212 = getelementptr inbounds %struct.pcib_softc, %struct.pcib_softc* %211, i32 0, i32 13
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = call i32 (i32, i8*, ...) @device_printf(i32 %210, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 %214)
  %216 = load %struct.pcib_softc*, %struct.pcib_softc** %3, align 8
  %217 = call i64 @pcib_is_io_open(%struct.pcib_softc* %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %228

219:                                              ; preds = %198
  %220 = load i32, i32* %2, align 4
  %221 = load %struct.pcib_softc*, %struct.pcib_softc** %3, align 8
  %222 = getelementptr inbounds %struct.pcib_softc, %struct.pcib_softc* %221, i32 0, i32 9
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.pcib_softc*, %struct.pcib_softc** %3, align 8
  %225 = getelementptr inbounds %struct.pcib_softc, %struct.pcib_softc* %224, i32 0, i32 8
  %226 = load i32, i32* %225, align 8
  %227 = call i32 (i32, i8*, ...) @device_printf(i32 %220, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i64 0, i64 0), i32 %223, i32 %226)
  br label %228

228:                                              ; preds = %219, %198
  %229 = load %struct.pcib_softc*, %struct.pcib_softc** %3, align 8
  %230 = call i64 @pcib_is_nonprefetch_open(%struct.pcib_softc* %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %243

232:                                              ; preds = %228
  %233 = load i32, i32* %2, align 4
  %234 = load %struct.pcib_softc*, %struct.pcib_softc** %3, align 8
  %235 = getelementptr inbounds %struct.pcib_softc, %struct.pcib_softc* %234, i32 0, i32 7
  %236 = load i64, i64* %235, align 8
  %237 = trunc i64 %236 to i32
  %238 = load %struct.pcib_softc*, %struct.pcib_softc** %3, align 8
  %239 = getelementptr inbounds %struct.pcib_softc, %struct.pcib_softc* %238, i32 0, i32 6
  %240 = load i64, i64* %239, align 8
  %241 = trunc i64 %240 to i32
  %242 = call i32 (i32, i8*, ...) @device_printf(i32 %233, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i64 0, i64 0), i32 %237, i32 %241)
  br label %243

243:                                              ; preds = %232, %228
  %244 = load %struct.pcib_softc*, %struct.pcib_softc** %3, align 8
  %245 = call i64 @pcib_is_prefetch_open(%struct.pcib_softc* %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %258

247:                                              ; preds = %243
  %248 = load i32, i32* %2, align 4
  %249 = load %struct.pcib_softc*, %struct.pcib_softc** %3, align 8
  %250 = getelementptr inbounds %struct.pcib_softc, %struct.pcib_softc* %249, i32 0, i32 5
  %251 = load i64, i64* %250, align 8
  %252 = trunc i64 %251 to i32
  %253 = load %struct.pcib_softc*, %struct.pcib_softc** %3, align 8
  %254 = getelementptr inbounds %struct.pcib_softc, %struct.pcib_softc* %253, i32 0, i32 4
  %255 = load i64, i64* %254, align 8
  %256 = trunc i64 %255 to i32
  %257 = call i32 (i32, i8*, ...) @device_printf(i32 %248, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i64 0, i64 0), i32 %252, i32 %256)
  br label %258

258:                                              ; preds = %247, %243
  %259 = load %struct.pcib_softc*, %struct.pcib_softc** %3, align 8
  %260 = getelementptr inbounds %struct.pcib_softc, %struct.pcib_softc* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = load i32, i32* @PCIB_BCR_ISA_ENABLE, align 4
  %263 = load i32, i32* @PCIB_BCR_VGA_ENABLE, align 4
  %264 = or i32 %262, %263
  %265 = and i32 %261, %264
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %274, label %267

267:                                              ; preds = %258
  %268 = load %struct.pcib_softc*, %struct.pcib_softc** %3, align 8
  %269 = getelementptr inbounds %struct.pcib_softc, %struct.pcib_softc* %268, i32 0, i32 3
  %270 = load i32, i32* %269, align 4
  %271 = load i32, i32* @PCIB_SUBTRACTIVE, align 4
  %272 = and i32 %270, %271
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %313

274:                                              ; preds = %267, %258
  %275 = load i32, i32* %2, align 4
  %276 = call i32 (i32, i8*, ...) @device_printf(i32 %275, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  %277 = load %struct.pcib_softc*, %struct.pcib_softc** %3, align 8
  %278 = getelementptr inbounds %struct.pcib_softc, %struct.pcib_softc* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = load i32, i32* @PCIB_BCR_ISA_ENABLE, align 4
  %281 = and i32 %279, %280
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %285

283:                                              ; preds = %274
  %284 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %285

285:                                              ; preds = %283, %274
  %286 = load %struct.pcib_softc*, %struct.pcib_softc** %3, align 8
  %287 = getelementptr inbounds %struct.pcib_softc, %struct.pcib_softc* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* @PCIB_BCR_VGA_ENABLE, align 4
  %290 = and i32 %288, %289
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %298

292:                                              ; preds = %285
  %293 = load i32, i32* %6, align 4
  %294 = icmp ne i32 %293, 0
  %295 = zext i1 %294 to i64
  %296 = select i1 %294, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.22, i64 0, i64 0)
  %297 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0), i8* %296)
  store i32 1, i32* %6, align 4
  br label %298

298:                                              ; preds = %292, %285
  %299 = load %struct.pcib_softc*, %struct.pcib_softc** %3, align 8
  %300 = getelementptr inbounds %struct.pcib_softc, %struct.pcib_softc* %299, i32 0, i32 3
  %301 = load i32, i32* %300, align 4
  %302 = load i32, i32* @PCIB_SUBTRACTIVE, align 4
  %303 = and i32 %301, %302
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %311

305:                                              ; preds = %298
  %306 = load i32, i32* %6, align 4
  %307 = icmp ne i32 %306, 0
  %308 = zext i1 %307 to i64
  %309 = select i1 %307, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.22, i64 0, i64 0)
  %310 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i64 0, i64 0), i8* %309)
  br label %311

311:                                              ; preds = %305, %298
  %312 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0))
  br label %313

313:                                              ; preds = %311, %267
  br label %314

314:                                              ; preds = %313, %195
  %315 = load i32, i32* %2, align 4
  %316 = call i32 @pci_enable_busmaster(i32 %315)
  ret void
}

declare dso_local %struct.pcib_softc* @device_get_softc(i32) #1

declare dso_local i32 @pci_get_domain(i32) #1

declare dso_local i64 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @pcib_cfg_save(%struct.pcib_softc*) #1

declare dso_local i32 @pci_get_bus(i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i32 @pci_get_devid(i32) #1

declare dso_local i8* @kern_getenv(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @freeenv(i8*) #1

declare dso_local i64 @pci_msi_device_blacklisted(i32) #1

declare dso_local i64 @pci_msix_device_blacklisted(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i64 @pcib_is_io_open(%struct.pcib_softc*) #1

declare dso_local i64 @pcib_is_nonprefetch_open(%struct.pcib_softc*) #1

declare dso_local i64 @pcib_is_prefetch_open(%struct.pcib_softc*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @pci_enable_busmaster(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
