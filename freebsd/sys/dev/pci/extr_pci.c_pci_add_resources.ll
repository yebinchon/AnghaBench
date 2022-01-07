; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_add_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_add_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_quirk = type { i32, i64, i64 }
%struct.pci_devinfo = type { %struct.resource_list, %struct.TYPE_3__ }
%struct.resource_list = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i64, i32 }

@PCIC_STORAGE = common dso_local global i64 0, align 8
@PCIS_STORAGE_IDE = common dso_local global i64 0, align 8
@PCIP_STORAGE_IDE_MASTERDEV = common dso_local global i64 0, align 8
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@pci_quirks = common dso_local global %struct.pci_quirk* null, align 8
@PCI_QUIRK_UNMAP_REG = common dso_local global i64 0, align 8
@PCI_QUIRK_MAP_REG = common dso_local global i64 0, align 8
@pci_usb_takeover = common dso_local global i64 0, align 8
@PCIC_SERIALBUS = common dso_local global i64 0, align 8
@PCIS_SERIALBUS_USB = common dso_local global i64 0, align 8
@PCIP_SERIALBUS_USB_XHCI = common dso_local global i64 0, align 8
@PCIP_SERIALBUS_USB_EHCI = common dso_local global i64 0, align 8
@PCIP_SERIALBUS_USB_OHCI = common dso_local global i64 0, align 8
@PCIP_SERIALBUS_USB_UHCI = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pci_add_resources(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pci_devinfo*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca %struct.resource_list*, align 8
  %12 = alloca %struct.pci_quirk*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call %struct.pci_devinfo* @device_get_ivars(i32 %15)
  store %struct.pci_devinfo* %16, %struct.pci_devinfo** %9, align 8
  %17 = load %struct.pci_devinfo*, %struct.pci_devinfo** %9, align 8
  %18 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %17, i32 0, i32 1
  store %struct.TYPE_3__* %18, %struct.TYPE_3__** %10, align 8
  %19 = load %struct.pci_devinfo*, %struct.pci_devinfo** %9, align 8
  %20 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %19, i32 0, i32 0
  store %struct.resource_list* %20, %struct.resource_list** %11, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = shl i32 %23, 16
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %24, %27
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @pci_add_resources_ea(i32 %29, i32 %30, i32 0)
  %32 = load i32, i32* %6, align 4
  %33 = call i64 @pci_get_class(i32 %32)
  %34 = load i64, i64* @PCIC_STORAGE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %64

36:                                               ; preds = %4
  %37 = load i32, i32* %6, align 4
  %38 = call i64 @pci_get_subclass(i32 %37)
  %39 = load i64, i64* @PCIS_STORAGE_IDE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %64

41:                                               ; preds = %36
  %42 = load i32, i32* %6, align 4
  %43 = call i64 @pci_get_progif(i32 %42)
  %44 = load i64, i64* @PCIP_STORAGE_IDE_MASTERDEV, align 8
  %45 = and i64 %43, %44
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %57, label %47

47:                                               ; preds = %41
  %48 = load i32, i32* %6, align 4
  %49 = call i64 @PCIR_BAR(i32 0)
  %50 = call i32 @pci_read_config(i32 %48, i64 %49, i32 4)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %64, label %52

52:                                               ; preds = %47
  %53 = load i32, i32* %6, align 4
  %54 = call i64 @PCIR_BAR(i32 2)
  %55 = call i32 @pci_read_config(i32 %53, i64 %54, i32 4)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %52, %41
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.resource_list*, %struct.resource_list** %11, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @pci_ata_maps(i32 %58, i32 %59, %struct.resource_list* %60, i32 %61, i32 %62)
  br label %151

64:                                               ; preds = %52, %47, %36, %4
  store i32 0, i32* %14, align 4
  br label %65

65:                                               ; preds = %134, %131, %91, %64
  %66 = load i32, i32* %14, align 4
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %150

71:                                               ; preds = %65
  %72 = load %struct.resource_list*, %struct.resource_list** %11, align 8
  %73 = load i32, i32* @SYS_RES_MEMORY, align 4
  %74 = load i32, i32* %14, align 4
  %75 = call i64 @PCIR_BAR(i32 %74)
  %76 = call i32* @resource_list_find(%struct.resource_list* %72, i32 %73, i64 %75)
  %77 = icmp ne i32* %76, null
  br i1 %77, label %91, label %78

78:                                               ; preds = %71
  %79 = load %struct.resource_list*, %struct.resource_list** %11, align 8
  %80 = load i32, i32* @SYS_RES_IOPORT, align 4
  %81 = load i32, i32* %14, align 4
  %82 = call i64 @PCIR_BAR(i32 %81)
  %83 = call i32* @resource_list_find(%struct.resource_list* %79, i32 %80, i64 %82)
  %84 = icmp ne i32* %83, null
  br i1 %84, label %91, label %85

85:                                               ; preds = %78
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* %14, align 4
  %88 = call i64 @PCIR_BAR(i32 %87)
  %89 = call i64 @pci_ea_is_enabled(i32 %86, i64 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %85, %78, %71
  %92 = load i32, i32* %14, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %14, align 4
  br label %65

94:                                               ; preds = %85
  %95 = load %struct.pci_quirk*, %struct.pci_quirk** @pci_quirks, align 8
  %96 = getelementptr inbounds %struct.pci_quirk, %struct.pci_quirk* %95, i64 0
  store %struct.pci_quirk* %96, %struct.pci_quirk** %12, align 8
  br label %97

97:                                               ; preds = %123, %94
  %98 = load %struct.pci_quirk*, %struct.pci_quirk** %12, align 8
  %99 = getelementptr inbounds %struct.pci_quirk, %struct.pci_quirk* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %126

102:                                              ; preds = %97
  %103 = load %struct.pci_quirk*, %struct.pci_quirk** %12, align 8
  %104 = getelementptr inbounds %struct.pci_quirk, %struct.pci_quirk* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* %13, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %122

108:                                              ; preds = %102
  %109 = load %struct.pci_quirk*, %struct.pci_quirk** %12, align 8
  %110 = getelementptr inbounds %struct.pci_quirk, %struct.pci_quirk* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @PCI_QUIRK_UNMAP_REG, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %122

114:                                              ; preds = %108
  %115 = load %struct.pci_quirk*, %struct.pci_quirk** %12, align 8
  %116 = getelementptr inbounds %struct.pci_quirk, %struct.pci_quirk* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = load i32, i32* %14, align 4
  %119 = call i64 @PCIR_BAR(i32 %118)
  %120 = icmp eq i64 %117, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %114
  br label %126

122:                                              ; preds = %114, %108, %102
  br label %123

123:                                              ; preds = %122
  %124 = load %struct.pci_quirk*, %struct.pci_quirk** %12, align 8
  %125 = getelementptr inbounds %struct.pci_quirk, %struct.pci_quirk* %124, i32 1
  store %struct.pci_quirk* %125, %struct.pci_quirk** %12, align 8
  br label %97

126:                                              ; preds = %121, %97
  %127 = load %struct.pci_quirk*, %struct.pci_quirk** %12, align 8
  %128 = getelementptr inbounds %struct.pci_quirk, %struct.pci_quirk* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %126
  %132 = load i32, i32* %14, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %14, align 4
  br label %65

134:                                              ; preds = %126
  %135 = load i32, i32* %5, align 4
  %136 = load i32, i32* %6, align 4
  %137 = load i32, i32* %14, align 4
  %138 = call i64 @PCIR_BAR(i32 %137)
  %139 = load %struct.resource_list*, %struct.resource_list** %11, align 8
  %140 = load i32, i32* %7, align 4
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* %14, align 4
  %143 = shl i32 1, %142
  %144 = and i32 %141, %143
  %145 = call i64 @pci_add_map(i32 %135, i32 %136, i64 %138, %struct.resource_list* %139, i32 %140, i32 %144)
  %146 = load i32, i32* %14, align 4
  %147 = sext i32 %146 to i64
  %148 = add nsw i64 %147, %145
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %14, align 4
  br label %65

150:                                              ; preds = %65
  br label %151

151:                                              ; preds = %150, %57
  %152 = load %struct.pci_quirk*, %struct.pci_quirk** @pci_quirks, align 8
  %153 = getelementptr inbounds %struct.pci_quirk, %struct.pci_quirk* %152, i64 0
  store %struct.pci_quirk* %153, %struct.pci_quirk** %12, align 8
  br label %154

154:                                              ; preds = %181, %151
  %155 = load %struct.pci_quirk*, %struct.pci_quirk** %12, align 8
  %156 = getelementptr inbounds %struct.pci_quirk, %struct.pci_quirk* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %184

159:                                              ; preds = %154
  %160 = load %struct.pci_quirk*, %struct.pci_quirk** %12, align 8
  %161 = getelementptr inbounds %struct.pci_quirk, %struct.pci_quirk* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* %13, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %180

165:                                              ; preds = %159
  %166 = load %struct.pci_quirk*, %struct.pci_quirk** %12, align 8
  %167 = getelementptr inbounds %struct.pci_quirk, %struct.pci_quirk* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @PCI_QUIRK_MAP_REG, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %180

171:                                              ; preds = %165
  %172 = load i32, i32* %5, align 4
  %173 = load i32, i32* %6, align 4
  %174 = load %struct.pci_quirk*, %struct.pci_quirk** %12, align 8
  %175 = getelementptr inbounds %struct.pci_quirk, %struct.pci_quirk* %174, i32 0, i32 2
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.resource_list*, %struct.resource_list** %11, align 8
  %178 = load i32, i32* %7, align 4
  %179 = call i64 @pci_add_map(i32 %172, i32 %173, i64 %176, %struct.resource_list* %177, i32 %178, i32 0)
  br label %180

180:                                              ; preds = %171, %165, %159
  br label %181

181:                                              ; preds = %180
  %182 = load %struct.pci_quirk*, %struct.pci_quirk** %12, align 8
  %183 = getelementptr inbounds %struct.pci_quirk, %struct.pci_quirk* %182, i32 1
  store %struct.pci_quirk* %183, %struct.pci_quirk** %12, align 8
  br label %154

184:                                              ; preds = %154
  %185 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 3
  %187 = load i64, i64* %186, align 8
  %188 = icmp sgt i64 %187, 0
  br i1 %188, label %189, label %199

189:                                              ; preds = %184
  %190 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i32 0, i32 4
  %192 = load i32, i32* %191, align 8
  %193 = call i64 @PCI_INTERRUPT_VALID(i32 %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %199

195:                                              ; preds = %189
  %196 = load i32, i32* %5, align 4
  %197 = load i32, i32* %6, align 4
  %198 = call i32 @pci_assign_interrupt(i32 %196, i32 %197, i32 0)
  br label %199

199:                                              ; preds = %195, %189, %184
  %200 = load i64, i64* @pci_usb_takeover, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %248

202:                                              ; preds = %199
  %203 = load i32, i32* %6, align 4
  %204 = call i64 @pci_get_class(i32 %203)
  %205 = load i64, i64* @PCIC_SERIALBUS, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %207, label %248

207:                                              ; preds = %202
  %208 = load i32, i32* %6, align 4
  %209 = call i64 @pci_get_subclass(i32 %208)
  %210 = load i64, i64* @PCIS_SERIALBUS_USB, align 8
  %211 = icmp eq i64 %209, %210
  br i1 %211, label %212, label %248

212:                                              ; preds = %207
  %213 = load i32, i32* %6, align 4
  %214 = call i64 @pci_get_progif(i32 %213)
  %215 = load i64, i64* @PCIP_SERIALBUS_USB_XHCI, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %217, label %220

217:                                              ; preds = %212
  %218 = load i32, i32* %6, align 4
  %219 = call i32 @xhci_early_takeover(i32 %218)
  br label %247

220:                                              ; preds = %212
  %221 = load i32, i32* %6, align 4
  %222 = call i64 @pci_get_progif(i32 %221)
  %223 = load i64, i64* @PCIP_SERIALBUS_USB_EHCI, align 8
  %224 = icmp eq i64 %222, %223
  br i1 %224, label %225, label %228

225:                                              ; preds = %220
  %226 = load i32, i32* %6, align 4
  %227 = call i32 @ehci_early_takeover(i32 %226)
  br label %246

228:                                              ; preds = %220
  %229 = load i32, i32* %6, align 4
  %230 = call i64 @pci_get_progif(i32 %229)
  %231 = load i64, i64* @PCIP_SERIALBUS_USB_OHCI, align 8
  %232 = icmp eq i64 %230, %231
  br i1 %232, label %233, label %236

233:                                              ; preds = %228
  %234 = load i32, i32* %6, align 4
  %235 = call i32 @ohci_early_takeover(i32 %234)
  br label %245

236:                                              ; preds = %228
  %237 = load i32, i32* %6, align 4
  %238 = call i64 @pci_get_progif(i32 %237)
  %239 = load i64, i64* @PCIP_SERIALBUS_USB_UHCI, align 8
  %240 = icmp eq i64 %238, %239
  br i1 %240, label %241, label %244

241:                                              ; preds = %236
  %242 = load i32, i32* %6, align 4
  %243 = call i32 @uhci_early_takeover(i32 %242)
  br label %244

244:                                              ; preds = %241, %236
  br label %245

245:                                              ; preds = %244, %233
  br label %246

246:                                              ; preds = %245, %225
  br label %247

247:                                              ; preds = %246, %217
  br label %248

248:                                              ; preds = %247, %207, %202, %199
  ret void
}

declare dso_local %struct.pci_devinfo* @device_get_ivars(i32) #1

declare dso_local i32 @pci_add_resources_ea(i32, i32, i32) #1

declare dso_local i64 @pci_get_class(i32) #1

declare dso_local i64 @pci_get_subclass(i32) #1

declare dso_local i64 @pci_get_progif(i32) #1

declare dso_local i32 @pci_read_config(i32, i64, i32) #1

declare dso_local i64 @PCIR_BAR(i32) #1

declare dso_local i32 @pci_ata_maps(i32, i32, %struct.resource_list*, i32, i32) #1

declare dso_local i32* @resource_list_find(%struct.resource_list*, i32, i64) #1

declare dso_local i64 @pci_ea_is_enabled(i32, i64) #1

declare dso_local i64 @pci_add_map(i32, i32, i64, %struct.resource_list*, i32, i32) #1

declare dso_local i64 @PCI_INTERRUPT_VALID(i32) #1

declare dso_local i32 @pci_assign_interrupt(i32, i32, i32) #1

declare dso_local i32 @xhci_early_takeover(i32) #1

declare dso_local i32 @ehci_early_takeover(i32) #1

declare dso_local i32 @ohci_early_takeover(i32) #1

declare dso_local i32 @uhci_early_takeover(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
