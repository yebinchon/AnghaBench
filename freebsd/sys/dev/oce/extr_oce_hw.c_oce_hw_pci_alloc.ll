; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_hw.c_oce_hw_pci_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_hw.c_oce_hw_pci_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i64, i64, i64, i64, i64 }

@OCE_FLAGS_BE2 = common dso_local global i32 0, align 4
@OCE_DEV_BE2_CFG_BAR = common dso_local global i32 0, align 4
@OCE_DEV_CFG_BAR = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@OCE_INTF_REG_OFFSET = common dso_local global i32 0, align 4
@OCE_INTF_VALID_SIG = common dso_local global i64 0, align 8
@OCE_INTF_SLI_REV4 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Adapter doesnt support SLI4\0A\00", align 1
@OCE_INTF_IF_TYPE_1 = common dso_local global i64 0, align 8
@OCE_FLAGS_MBOX_ENDIAN_RQD = common dso_local global i32 0, align 4
@OCE_INTF_FUNC_RESET_REQD = common dso_local global i64 0, align 8
@OCE_FLAGS_FUNCRESET_RQD = common dso_local global i32 0, align 4
@OCE_INTF_VIRT_FUNC = common dso_local global i64 0, align 8
@OCE_FLAGS_VIRTUAL_PORT = common dso_local global i32 0, align 4
@OCE_PCI_CSR_BAR = common dso_local global i32 0, align 4
@OCE_PCI_DB_BAR = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @oce_hw_pci_alloc(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @pci_enable_busmaster(i32 %9)
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %12 = call i32 @oce_get_pci_capabilities(%struct.TYPE_11__* %11)
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @pci_get_function(i32 %15)
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 14
  store i32 %16, i32* %18, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %20 = call i64 @IS_BE(%struct.TYPE_11__* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %1
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @OCE_FLAGS_BE2, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* @OCE_DEV_BE2_CFG_BAR, align 4
  store i32 %30, i32* %5, align 4
  br label %33

31:                                               ; preds = %22, %1
  %32 = load i32, i32* @OCE_DEV_CFG_BAR, align 4
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @PCIR_BAR(i32 %34)
  store i32 %35, i32* %4, align 4
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %37 = call i64 @IS_BE(%struct.TYPE_11__* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %33
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %41 = call i64 @IS_SH(%struct.TYPE_11__* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %39, %33
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @SYS_RES_MEMORY, align 4
  %48 = load i32, i32* @RF_ACTIVE, align 4
  %49 = load i32, i32* @RF_SHAREABLE, align 4
  %50 = or i32 %48, %49
  %51 = call i8* @bus_alloc_resource_any(i32 %46, i32 %47, i32* %4, i32 %50)
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 10
  store i8* %51, i8** %53, align 8
  br label %65

54:                                               ; preds = %39
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @SYS_RES_MEMORY, align 4
  %59 = load i32, i32* @RF_ACTIVE, align 4
  %60 = load i32, i32* @RF_SHAREABLE, align 4
  %61 = or i32 %59, %60
  %62 = call i8* @bus_alloc_resource_anywhere(i32 %57, i32 %58, i32* %4, i32 32768, i32 %61)
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 10
  store i8* %62, i8** %64, align 8
  br label %65

65:                                               ; preds = %54, %43
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 10
  %68 = load i8*, i8** %67, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %65
  br label %231

71:                                               ; preds = %65
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 10
  %74 = load i8*, i8** %73, align 8
  %75 = call i8* @rman_get_bustag(i8* %74)
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 13
  store i8* %75, i8** %77, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 10
  %80 = load i8*, i8** %79, align 8
  %81 = call i8* @rman_get_bushandle(i8* %80)
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 12
  store i8* %81, i8** %83, align 8
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 10
  %86 = load i8*, i8** %85, align 8
  %87 = call i8* @rman_get_virtual(i8* %86)
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 11
  store i8* %87, i8** %89, align 8
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @OCE_INTF_REG_OFFSET, align 4
  %94 = call i32 @pci_read_config(i32 %92, i32 %93, i32 4)
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  store i32 %94, i32* %95, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @OCE_INTF_VALID_SIG, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %71
  br label %231

102:                                              ; preds = %71
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @OCE_INTF_SLI_REV4, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %113

108:                                              ; preds = %102
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @device_printf(i32 %111, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %231

113:                                              ; preds = %102
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @OCE_INTF_IF_TYPE_1, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %125

119:                                              ; preds = %113
  %120 = load i32, i32* @OCE_FLAGS_MBOX_ENDIAN_RQD, align 4
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = or i32 %123, %120
  store i32 %124, i32* %122, align 8
  br label %125

125:                                              ; preds = %119, %113
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @OCE_INTF_FUNC_RESET_REQD, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %137

131:                                              ; preds = %125
  %132 = load i32, i32* @OCE_FLAGS_FUNCRESET_RQD, align 4
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 8
  br label %137

137:                                              ; preds = %131, %125
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 4
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @OCE_INTF_VIRT_FUNC, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %149

143:                                              ; preds = %137
  %144 = load i32, i32* @OCE_FLAGS_VIRTUAL_PORT, align 4
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = or i32 %147, %144
  store i32 %148, i32* %146, align 8
  br label %149

149:                                              ; preds = %143, %137
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %151 = call i64 @IS_BE(%struct.TYPE_11__* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %157, label %153

153:                                              ; preds = %149
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %155 = call i64 @IS_SH(%struct.TYPE_11__* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %230

157:                                              ; preds = %153, %149
  %158 = load i32, i32* @OCE_PCI_CSR_BAR, align 4
  %159 = call i32 @PCIR_BAR(i32 %158)
  store i32 %159, i32* %4, align 4
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 5
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @SYS_RES_MEMORY, align 4
  %164 = load i32, i32* @RF_ACTIVE, align 4
  %165 = load i32, i32* @RF_SHAREABLE, align 4
  %166 = or i32 %164, %165
  %167 = call i8* @bus_alloc_resource_any(i32 %162, i32 %163, i32* %4, i32 %166)
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 6
  store i8* %167, i8** %169, align 8
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 6
  %172 = load i8*, i8** %171, align 8
  %173 = icmp ne i8* %172, null
  br i1 %173, label %175, label %174

174:                                              ; preds = %157
  br label %231

175:                                              ; preds = %157
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 6
  %178 = load i8*, i8** %177, align 8
  %179 = call i8* @rman_get_bustag(i8* %178)
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 9
  store i8* %179, i8** %181, align 8
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 6
  %184 = load i8*, i8** %183, align 8
  %185 = call i8* @rman_get_bushandle(i8* %184)
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 8
  store i8* %185, i8** %187, align 8
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 6
  %190 = load i8*, i8** %189, align 8
  %191 = call i8* @rman_get_virtual(i8* %190)
  %192 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 7
  store i8* %191, i8** %193, align 8
  %194 = load i32, i32* @OCE_PCI_DB_BAR, align 4
  %195 = call i32 @PCIR_BAR(i32 %194)
  store i32 %195, i32* %4, align 4
  %196 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i32 0, i32 5
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* @SYS_RES_MEMORY, align 4
  %200 = load i32, i32* @RF_ACTIVE, align 4
  %201 = load i32, i32* @RF_SHAREABLE, align 4
  %202 = or i32 %200, %201
  %203 = call i8* @bus_alloc_resource_any(i32 %198, i32 %199, i32* %4, i32 %202)
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 1
  store i8* %203, i8** %205, align 8
  %206 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 1
  %208 = load i8*, i8** %207, align 8
  %209 = icmp ne i8* %208, null
  br i1 %209, label %211, label %210

210:                                              ; preds = %175
  br label %231

211:                                              ; preds = %175
  %212 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %212, i32 0, i32 1
  %214 = load i8*, i8** %213, align 8
  %215 = call i8* @rman_get_bustag(i8* %214)
  %216 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 4
  store i8* %215, i8** %217, align 8
  %218 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 1
  %220 = load i8*, i8** %219, align 8
  %221 = call i8* @rman_get_bushandle(i8* %220)
  %222 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %222, i32 0, i32 3
  store i8* %221, i8** %223, align 8
  %224 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 1
  %226 = load i8*, i8** %225, align 8
  %227 = call i8* @rman_get_virtual(i8* %226)
  %228 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i32 0, i32 2
  store i8* %227, i8** %229, align 8
  br label %230

230:                                              ; preds = %211, %153
  store i32 0, i32* %2, align 4
  br label %235

231:                                              ; preds = %210, %174, %108, %101, %70
  %232 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %233 = call i32 @oce_hw_pci_free(%struct.TYPE_11__* %232)
  %234 = load i32, i32* @ENXIO, align 4
  store i32 %234, i32* %2, align 4
  br label %235

235:                                              ; preds = %231, %230
  %236 = load i32, i32* %2, align 4
  ret i32 %236
}

declare dso_local i32 @pci_enable_busmaster(i32) #1

declare dso_local i32 @oce_get_pci_capabilities(%struct.TYPE_11__*) #1

declare dso_local i32 @pci_get_function(i32) #1

declare dso_local i64 @IS_BE(%struct.TYPE_11__*) #1

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local i64 @IS_SH(%struct.TYPE_11__*) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i8* @bus_alloc_resource_anywhere(i32, i32, i32*, i32, i32) #1

declare dso_local i8* @rman_get_bustag(i8*) #1

declare dso_local i8* @rman_get_bushandle(i8*) #1

declare dso_local i8* @rman_get_virtual(i8*) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @oce_hw_pci_free(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
