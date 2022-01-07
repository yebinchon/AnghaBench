; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_cpcht.c_cpcht_configure_htbridge.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_cpcht.c_cpcht_configure_htbridge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpcht_softc = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.ofw_pci_register = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@PCIR_STATUS = common dso_local global i32 0, align 4
@PCIM_STATUS_CAPPRESENT = common dso_local global i32 0, align 4
@PCIR_CAP_PTR = common dso_local global i32 0, align 4
@PCICAP_NEXTPTR = common dso_local global i32 0, align 4
@PCICAP_ID = common dso_local global i32 0, align 4
@PCIY_HT = common dso_local global i32 0, align 4
@PCIR_HT_COMMAND = common dso_local global i32 0, align 4
@PCIM_HTCMD_CAP_MASK = common dso_local global i32 0, align 4
@PCIM_HTCAP_INTERRUPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"%d HT IRQs on device %d.%d\0A\00", align 1
@HTAPIC_MASK = common dso_local global i32 0, align 4
@IRQ_HT = common dso_local global i32 0, align 4
@PCIR_DEVVENDOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @cpcht_configure_htbridge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpcht_configure_htbridge(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpcht_softc*, align 8
  %6 = alloca %struct.ofw_pci_register, align 4
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
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call %struct.cpcht_softc* @device_get_softc(i32 %17)
  store %struct.cpcht_softc* %18, %struct.cpcht_softc** %5, align 8
  %19 = load i32, i32* %4, align 4
  %20 = bitcast %struct.ofw_pci_register* %6 to i32*
  %21 = call i32 @OF_getencprop(i32 %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %20, i32 4)
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %252

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.ofw_pci_register, %struct.ofw_pci_register* %6, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @OFW_PCI_PHYS_HI_BUS(i32 %26)
  store i32 %27, i32* %14, align 4
  %28 = getelementptr inbounds %struct.ofw_pci_register, %struct.ofw_pci_register* %6, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @OFW_PCI_PHYS_HI_DEVICE(i32 %29)
  store i32 %30, i32* %16, align 4
  %31 = getelementptr inbounds %struct.ofw_pci_register, %struct.ofw_pci_register* %6, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @OFW_PCI_PHYS_HI_FUNCTION(i32 %32)
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %16, align 4
  %35 = shl i32 1, %34
  %36 = load %struct.cpcht_softc*, %struct.cpcht_softc** %5, align 8
  %37 = getelementptr inbounds %struct.cpcht_softc, %struct.cpcht_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 8
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* %14, align 4
  %42 = load i32, i32* %16, align 4
  %43 = load i32, i32* %15, align 4
  %44 = load i32, i32* @PCIR_STATUS, align 4
  %45 = call i32 @PCIB_READ_CONFIG(i32 %40, i32 %41, i32 %42, i32 %43, i32 %44, i32 2)
  %46 = load i32, i32* @PCIM_STATUS_CAPPRESENT, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %24
  br label %252

50:                                               ; preds = %24
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* %16, align 4
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* @PCIR_CAP_PTR, align 4
  %56 = call i32 @PCIB_READ_CONFIG(i32 %51, i32 %52, i32 %53, i32 %54, i32 %55, i32 1)
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %251, %95, %80, %50
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %252

60:                                               ; preds = %57
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* %16, align 4
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @PCICAP_NEXTPTR, align 4
  %68 = add nsw i32 %66, %67
  %69 = call i32 @PCIB_READ_CONFIG(i32 %62, i32 %63, i32 %64, i32 %65, i32 %68, i32 1)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %3, align 4
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* %16, align 4
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @PCICAP_ID, align 4
  %76 = add nsw i32 %74, %75
  %77 = call i32 @PCIB_READ_CONFIG(i32 %70, i32 %71, i32 %72, i32 %73, i32 %76, i32 1)
  %78 = load i32, i32* @PCIY_HT, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %60
  br label %57

81:                                               ; preds = %60
  %82 = load i32, i32* %3, align 4
  %83 = load i32, i32* %14, align 4
  %84 = load i32, i32* %16, align 4
  %85 = load i32, i32* %15, align 4
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @PCIR_HT_COMMAND, align 4
  %88 = add nsw i32 %86, %87
  %89 = call i32 @PCIB_READ_CONFIG(i32 %82, i32 %83, i32 %84, i32 %85, i32 %88, i32 2)
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* @PCIM_HTCMD_CAP_MASK, align 4
  %92 = and i32 %90, %91
  %93 = load i32, i32* @PCIM_HTCAP_INTERRUPT, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %81
  br label %57

96:                                               ; preds = %81
  %97 = load i32, i32* %3, align 4
  %98 = load i32, i32* %14, align 4
  %99 = load i32, i32* %16, align 4
  %100 = load i32, i32* %15, align 4
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* @PCIR_HT_COMMAND, align 4
  %103 = add nsw i32 %101, %102
  %104 = call i32 @PCIB_WRITE_CONFIG(i32 %97, i32 %98, i32 %99, i32 %100, i32 %103, i32 1, i32 1)
  %105 = load i32, i32* %3, align 4
  %106 = load i32, i32* %14, align 4
  %107 = load i32, i32* %16, align 4
  %108 = load i32, i32* %15, align 4
  %109 = load i32, i32* %7, align 4
  %110 = add nsw i32 %109, 4
  %111 = call i32 @PCIB_READ_CONFIG(i32 %105, i32 %106, i32 %107, i32 %108, i32 %110, i32 4)
  store i32 %111, i32* %12, align 4
  %112 = load i32, i32* %12, align 4
  %113 = ashr i32 %112, 16
  %114 = and i32 %113, 255
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %12, align 4
  %116 = load i32, i32* %3, align 4
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* %16, align 4
  %119 = load i32, i32* %15, align 4
  %120 = call i32 @device_printf(i32 %116, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %117, i32 %118, i32 %119)
  store i32 0, i32* %11, align 4
  br label %121

121:                                              ; preds = %248, %96
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* %12, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %251

125:                                              ; preds = %121
  %126 = load i32, i32* %3, align 4
  %127 = load i32, i32* %14, align 4
  %128 = load i32, i32* %16, align 4
  %129 = load i32, i32* %15, align 4
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* @PCIR_HT_COMMAND, align 4
  %132 = add nsw i32 %130, %131
  %133 = load i32, i32* %11, align 4
  %134 = shl i32 %133, 1
  %135 = add nsw i32 16, %134
  %136 = call i32 @PCIB_WRITE_CONFIG(i32 %126, i32 %127, i32 %128, i32 %129, i32 %132, i32 %135, i32 1)
  %137 = load i32, i32* %3, align 4
  %138 = load i32, i32* %14, align 4
  %139 = load i32, i32* %16, align 4
  %140 = load i32, i32* %15, align 4
  %141 = load i32, i32* %7, align 4
  %142 = add nsw i32 %141, 4
  %143 = call i32 @PCIB_READ_CONFIG(i32 %137, i32 %138, i32 %139, i32 %140, i32 %142, i32 4)
  store i32 %143, i32* %13, align 4
  %144 = load i32, i32* %3, align 4
  %145 = load i32, i32* %14, align 4
  %146 = load i32, i32* %16, align 4
  %147 = load i32, i32* %15, align 4
  %148 = load i32, i32* %7, align 4
  %149 = add nsw i32 %148, 4
  %150 = load i32, i32* %13, align 4
  %151 = load i32, i32* @HTAPIC_MASK, align 4
  %152 = or i32 %150, %151
  %153 = call i32 @PCIB_WRITE_CONFIG(i32 %144, i32 %145, i32 %146, i32 %147, i32 %149, i32 %152, i32 4)
  %154 = load i32, i32* %13, align 4
  %155 = ashr i32 %154, 16
  %156 = and i32 %155, 255
  store i32 %156, i32* %13, align 4
  %157 = load i32, i32* @IRQ_HT, align 4
  %158 = load %struct.cpcht_softc*, %struct.cpcht_softc** %5, align 8
  %159 = getelementptr inbounds %struct.cpcht_softc, %struct.cpcht_softc* %158, i32 0, i32 2
  %160 = load %struct.TYPE_2__*, %struct.TYPE_2__** %159, align 8
  %161 = load i32, i32* %13, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 4
  store i32 %157, i32* %164, align 4
  %165 = load i32, i32* %11, align 4
  %166 = load %struct.cpcht_softc*, %struct.cpcht_softc** %5, align 8
  %167 = getelementptr inbounds %struct.cpcht_softc, %struct.cpcht_softc* %166, i32 0, i32 2
  %168 = load %struct.TYPE_2__*, %struct.TYPE_2__** %167, align 8
  %169 = load i32, i32* %13, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 0
  store i32 %165, i32* %172, align 4
  %173 = load %struct.cpcht_softc*, %struct.cpcht_softc** %5, align 8
  %174 = getelementptr inbounds %struct.cpcht_softc, %struct.cpcht_softc* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %16, align 4
  %177 = and i32 %176, 31
  %178 = shl i32 %177, 3
  %179 = load i32, i32* %15, align 4
  %180 = and i32 %179, 7
  %181 = or i32 %178, %180
  %182 = shl i32 %181, 8
  %183 = load i32, i32* %7, align 4
  %184 = or i32 %182, %183
  %185 = add nsw i32 %175, %184
  %186 = load %struct.cpcht_softc*, %struct.cpcht_softc** %5, align 8
  %187 = getelementptr inbounds %struct.cpcht_softc, %struct.cpcht_softc* %186, i32 0, i32 2
  %188 = load %struct.TYPE_2__*, %struct.TYPE_2__** %187, align 8
  %189 = load i32, i32* %13, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 1
  store i32 %185, i32* %192, align 4
  %193 = load i32, i32* %3, align 4
  %194 = load i32, i32* %14, align 4
  %195 = load i32, i32* %16, align 4
  %196 = load i32, i32* %15, align 4
  %197 = load i32, i32* %7, align 4
  %198 = load i32, i32* @PCIR_HT_COMMAND, align 4
  %199 = add nsw i32 %197, %198
  %200 = load i32, i32* %11, align 4
  %201 = shl i32 %200, 1
  %202 = add nsw i32 17, %201
  %203 = call i32 @PCIB_WRITE_CONFIG(i32 %193, i32 %194, i32 %195, i32 %196, i32 %199, i32 %202, i32 1)
  %204 = load i32, i32* %3, align 4
  %205 = load i32, i32* %14, align 4
  %206 = load i32, i32* %16, align 4
  %207 = load i32, i32* %15, align 4
  %208 = load i32, i32* %7, align 4
  %209 = add nsw i32 %208, 4
  %210 = call i32 @PCIB_READ_CONFIG(i32 %204, i32 %205, i32 %206, i32 %207, i32 %209, i32 4)
  %211 = or i32 %210, -2147483648
  %212 = load %struct.cpcht_softc*, %struct.cpcht_softc** %5, align 8
  %213 = getelementptr inbounds %struct.cpcht_softc, %struct.cpcht_softc* %212, i32 0, i32 2
  %214 = load %struct.TYPE_2__*, %struct.TYPE_2__** %213, align 8
  %215 = load i32, i32* %13, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %214, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %217, i32 0, i32 2
  store i32 %211, i32* %218, align 4
  %219 = load i32, i32* %3, align 4
  %220 = load i32, i32* %14, align 4
  %221 = load i32, i32* %16, align 4
  %222 = load i32, i32* %15, align 4
  %223 = load i32, i32* @PCIR_DEVVENDOR, align 4
  %224 = call i32 @PCIB_READ_CONFIG(i32 %219, i32 %220, i32 %221, i32 %222, i32 %223, i32 4)
  store i32 %224, i32* %9, align 4
  %225 = load i32, i32* %9, align 4
  %226 = and i32 %225, 65535
  %227 = icmp eq i32 %226, 4203
  br i1 %227, label %228, label %247

228:                                              ; preds = %125
  %229 = load %struct.cpcht_softc*, %struct.cpcht_softc** %5, align 8
  %230 = getelementptr inbounds %struct.cpcht_softc, %struct.cpcht_softc* %229, i32 0, i32 2
  %231 = load %struct.TYPE_2__*, %struct.TYPE_2__** %230, align 8
  %232 = load i32, i32* %13, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %231, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* %7, align 4
  %238 = sub nsw i32 %236, %237
  %239 = add nsw i32 %238, 96
  %240 = load %struct.cpcht_softc*, %struct.cpcht_softc** %5, align 8
  %241 = getelementptr inbounds %struct.cpcht_softc, %struct.cpcht_softc* %240, i32 0, i32 2
  %242 = load %struct.TYPE_2__*, %struct.TYPE_2__** %241, align 8
  %243 = load i32, i32* %13, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %242, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %245, i32 0, i32 3
  store i32 %239, i32* %246, align 4
  br label %247

247:                                              ; preds = %228, %125
  br label %248

248:                                              ; preds = %247
  %249 = load i32, i32* %11, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %11, align 4
  br label %121

251:                                              ; preds = %121
  br label %57

252:                                              ; preds = %23, %49, %57
  ret void
}

declare dso_local %struct.cpcht_softc* @device_get_softc(i32) #1

declare dso_local i32 @OF_getencprop(i32, i8*, i32*, i32) #1

declare dso_local i32 @OFW_PCI_PHYS_HI_BUS(i32) #1

declare dso_local i32 @OFW_PCI_PHYS_HI_DEVICE(i32) #1

declare dso_local i32 @OFW_PCI_PHYS_HI_FUNCTION(i32) #1

declare dso_local i32 @PCIB_READ_CONFIG(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCIB_WRITE_CONFIG(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
