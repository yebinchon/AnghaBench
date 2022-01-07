; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/wi/extr_if_wi_pci.c_wi_pci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/wi/extr_if_wi_pci.c_wi_pci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wi_softc = type { i64, i32*, i8*, i8*, i32, i32*, i32, i8*, i8* }

@WI_BUS_PCI_NATIVE = common dso_local global i64 0, align 8
@WI_PCI_IORES = common dso_local global i32 0, align 4
@WI_INT_EN = common dso_local global i32 0, align 4
@WI_EVENT_ACK = common dso_local global i32 0, align 4
@WI_PCI_LOCALRES = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@WI_LOCAL_INTCSR = common dso_local global i32 0, align 4
@WI_LOCAL_INTEN = common dso_local global i32 0, align 4
@WI_PCI_MEMRES = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"couldn't allocate memory\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@WI_COR_OFFSET = common dso_local global i32 0, align 4
@WI_COR_VALUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"CSM_READ_1(WI_COR_OFFSET) wanted %d, got %d\0A\00", align 1
@WI_PCI_LMEMRES = common dso_local global i32 0, align 4
@WI_PCICOR_OFF = common dso_local global i32 0, align 4
@WI_PCICOR_RESET = common dso_local global i32 0, align 4
@WI_COMMAND = common dso_local global i32 0, align 4
@WI_CMD_BUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"couldn't reset prism pci core.\0A\00", align 1
@WI_HFA384X_SWSUPPORT0_OFF = common dso_local global i32 0, align 4
@WI_PRISM2STA_MAGIC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [57 x i8] c"CSR_READ_2(WI_HFA384X_SWSUPPORT0_OFF) wanted %d, got %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @wi_pci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wi_pci_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.wi_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.wi_softc* @device_get_softc(i32 %9)
  store %struct.wi_softc* %10, %struct.wi_softc** %4, align 8
  %11 = load %struct.wi_softc*, %struct.wi_softc** %4, align 8
  %12 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @WI_BUS_PCI_NATIVE, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %140

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @WI_PCI_IORES, align 4
  %19 = call i32 @wi_alloc(i32 %17, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %2, align 4
  br label %212

24:                                               ; preds = %16
  %25 = load %struct.wi_softc*, %struct.wi_softc** %4, align 8
  %26 = load i32, i32* @WI_INT_EN, align 4
  %27 = call i32 @CSR_WRITE_2(%struct.wi_softc* %25, i32 %26, i32 0)
  %28 = load %struct.wi_softc*, %struct.wi_softc** %4, align 8
  %29 = load i32, i32* @WI_EVENT_ACK, align 4
  %30 = call i32 @CSR_WRITE_2(%struct.wi_softc* %28, i32 %29, i32 65535)
  %31 = load i32, i32* @WI_PCI_LOCALRES, align 4
  %32 = load %struct.wi_softc*, %struct.wi_softc** %4, align 8
  %33 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %32, i32 0, i32 6
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @SYS_RES_IOPORT, align 4
  %36 = load %struct.wi_softc*, %struct.wi_softc** %4, align 8
  %37 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %36, i32 0, i32 6
  %38 = load i32, i32* @RF_ACTIVE, align 4
  %39 = call i8* @bus_alloc_resource_any(i32 %34, i32 %35, i32* %37, i32 %38)
  %40 = bitcast i8* %39 to i32*
  %41 = load %struct.wi_softc*, %struct.wi_softc** %4, align 8
  %42 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %41, i32 0, i32 5
  store i32* %40, i32** %42, align 8
  %43 = load %struct.wi_softc*, %struct.wi_softc** %4, align 8
  %44 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %43, i32 0, i32 5
  %45 = load i32*, i32** %44, align 8
  %46 = call i8* @rman_get_bustag(i32* %45)
  %47 = load %struct.wi_softc*, %struct.wi_softc** %4, align 8
  %48 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %47, i32 0, i32 8
  store i8* %46, i8** %48, align 8
  %49 = load %struct.wi_softc*, %struct.wi_softc** %4, align 8
  %50 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %49, i32 0, i32 5
  %51 = load i32*, i32** %50, align 8
  %52 = call i8* @rman_get_bushandle(i32* %51)
  %53 = load %struct.wi_softc*, %struct.wi_softc** %4, align 8
  %54 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %53, i32 0, i32 7
  store i8* %52, i8** %54, align 8
  %55 = load %struct.wi_softc*, %struct.wi_softc** %4, align 8
  %56 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %55, i32 0, i32 8
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.wi_softc*, %struct.wi_softc** %4, align 8
  %59 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %58, i32 0, i32 7
  %60 = load i8*, i8** %59, align 8
  %61 = load i32, i32* @WI_LOCAL_INTCSR, align 4
  %62 = call i32 @bus_space_read_4(i8* %57, i8* %60, i32 %61)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* @WI_LOCAL_INTEN, align 4
  %64 = load i32, i32* %5, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %5, align 4
  %66 = load %struct.wi_softc*, %struct.wi_softc** %4, align 8
  %67 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %66, i32 0, i32 8
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.wi_softc*, %struct.wi_softc** %4, align 8
  %70 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %69, i32 0, i32 7
  %71 = load i8*, i8** %70, align 8
  %72 = load i32, i32* @WI_LOCAL_INTCSR, align 4
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @bus_space_write_4(i8* %68, i8* %71, i32 %72, i32 %73)
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* @SYS_RES_IOPORT, align 4
  %77 = load %struct.wi_softc*, %struct.wi_softc** %4, align 8
  %78 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.wi_softc*, %struct.wi_softc** %4, align 8
  %81 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %80, i32 0, i32 5
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @bus_release_resource(i32 %75, i32 %76, i32 %79, i32* %82)
  %84 = load %struct.wi_softc*, %struct.wi_softc** %4, align 8
  %85 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %84, i32 0, i32 5
  store i32* null, i32** %85, align 8
  %86 = load i32, i32* @WI_PCI_MEMRES, align 4
  %87 = load %struct.wi_softc*, %struct.wi_softc** %4, align 8
  %88 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %87, i32 0, i32 4
  store i32 %86, i32* %88, align 8
  %89 = load i32, i32* %3, align 4
  %90 = load i32, i32* @SYS_RES_MEMORY, align 4
  %91 = load %struct.wi_softc*, %struct.wi_softc** %4, align 8
  %92 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %91, i32 0, i32 4
  %93 = load i32, i32* @RF_ACTIVE, align 4
  %94 = call i8* @bus_alloc_resource_any(i32 %89, i32 %90, i32* %92, i32 %93)
  %95 = bitcast i8* %94 to i32*
  %96 = load %struct.wi_softc*, %struct.wi_softc** %4, align 8
  %97 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %96, i32 0, i32 1
  store i32* %95, i32** %97, align 8
  %98 = load %struct.wi_softc*, %struct.wi_softc** %4, align 8
  %99 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = icmp eq i32* %100, null
  br i1 %101, label %102, label %108

102:                                              ; preds = %24
  %103 = load i32, i32* %3, align 4
  %104 = call i32 (i32, i8*, ...) @device_printf(i32 %103, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %105 = load i32, i32* %3, align 4
  %106 = call i32 @wi_free(i32 %105)
  %107 = load i32, i32* @ENXIO, align 4
  store i32 %107, i32* %2, align 4
  br label %212

108:                                              ; preds = %24
  %109 = load %struct.wi_softc*, %struct.wi_softc** %4, align 8
  %110 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = call i8* @rman_get_bustag(i32* %111)
  %113 = load %struct.wi_softc*, %struct.wi_softc** %4, align 8
  %114 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %113, i32 0, i32 3
  store i8* %112, i8** %114, align 8
  %115 = load %struct.wi_softc*, %struct.wi_softc** %4, align 8
  %116 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = call i8* @rman_get_bushandle(i32* %117)
  %119 = load %struct.wi_softc*, %struct.wi_softc** %4, align 8
  %120 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %119, i32 0, i32 2
  store i8* %118, i8** %120, align 8
  %121 = load %struct.wi_softc*, %struct.wi_softc** %4, align 8
  %122 = load i32, i32* @WI_COR_OFFSET, align 4
  %123 = load i32, i32* @WI_COR_VALUE, align 4
  %124 = call i32 @CSM_WRITE_1(%struct.wi_softc* %121, i32 %122, i32 %123)
  %125 = load %struct.wi_softc*, %struct.wi_softc** %4, align 8
  %126 = load i32, i32* @WI_COR_OFFSET, align 4
  %127 = call i32 @CSM_READ_1(%struct.wi_softc* %125, i32 %126)
  store i32 %127, i32* %6, align 4
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* @WI_COR_VALUE, align 4
  %130 = icmp ne i32 %128, %129
  br i1 %130, label %131, label %139

131:                                              ; preds = %108
  %132 = load i32, i32* %3, align 4
  %133 = load i32, i32* @WI_COR_VALUE, align 4
  %134 = load i32, i32* %6, align 4
  %135 = call i32 (i32, i8*, ...) @device_printf(i32 %132, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %133, i32 %134)
  %136 = load i32, i32* %3, align 4
  %137 = call i32 @wi_free(i32 %136)
  %138 = load i32, i32* @ENXIO, align 4
  store i32 %138, i32* %2, align 4
  br label %212

139:                                              ; preds = %108
  br label %183

140:                                              ; preds = %1
  %141 = load i32, i32* %3, align 4
  %142 = load i32, i32* @WI_PCI_LMEMRES, align 4
  %143 = call i32 @wi_alloc(i32 %141, i32 %142)
  store i32 %143, i32* %7, align 4
  %144 = load i32, i32* %7, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %140
  %147 = load i32, i32* %7, align 4
  store i32 %147, i32* %2, align 4
  br label %212

148:                                              ; preds = %140
  %149 = load %struct.wi_softc*, %struct.wi_softc** %4, align 8
  %150 = load i32, i32* @WI_PCICOR_OFF, align 4
  %151 = load i32, i32* @WI_PCICOR_RESET, align 4
  %152 = call i32 @CSR_WRITE_2(%struct.wi_softc* %149, i32 %150, i32 %151)
  %153 = call i32 @DELAY(i32 250000)
  %154 = load %struct.wi_softc*, %struct.wi_softc** %4, align 8
  %155 = load i32, i32* @WI_PCICOR_OFF, align 4
  %156 = call i32 @CSR_WRITE_2(%struct.wi_softc* %154, i32 %155, i32 0)
  %157 = call i32 @DELAY(i32 500000)
  store i32 2000000, i32* %8, align 4
  br label %158

158:                                              ; preds = %171, %148
  %159 = load i32, i32* %8, align 4
  %160 = add nsw i32 %159, -1
  store i32 %160, i32* %8, align 4
  %161 = icmp sgt i32 %160, 0
  br i1 %161, label %162, label %169

162:                                              ; preds = %158
  %163 = load %struct.wi_softc*, %struct.wi_softc** %4, align 8
  %164 = load i32, i32* @WI_COMMAND, align 4
  %165 = call i32 @CSR_READ_2(%struct.wi_softc* %163, i32 %164)
  %166 = load i32, i32* @WI_CMD_BUSY, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br label %169

169:                                              ; preds = %162, %158
  %170 = phi i1 [ false, %158 ], [ %168, %162 ]
  br i1 %170, label %171, label %173

171:                                              ; preds = %169
  %172 = call i32 @DELAY(i32 10)
  br label %158

173:                                              ; preds = %169
  %174 = load i32, i32* %8, align 4
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %182

176:                                              ; preds = %173
  %177 = load i32, i32* %3, align 4
  %178 = call i32 (i32, i8*, ...) @device_printf(i32 %177, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %179 = load i32, i32* %3, align 4
  %180 = call i32 @wi_free(i32 %179)
  %181 = load i32, i32* @ENXIO, align 4
  store i32 %181, i32* %2, align 4
  br label %212

182:                                              ; preds = %173
  br label %183

183:                                              ; preds = %182, %139
  %184 = load %struct.wi_softc*, %struct.wi_softc** %4, align 8
  %185 = load i32, i32* @WI_HFA384X_SWSUPPORT0_OFF, align 4
  %186 = load i32, i32* @WI_PRISM2STA_MAGIC, align 4
  %187 = call i32 @CSR_WRITE_2(%struct.wi_softc* %184, i32 %185, i32 %186)
  %188 = load %struct.wi_softc*, %struct.wi_softc** %4, align 8
  %189 = load i32, i32* @WI_HFA384X_SWSUPPORT0_OFF, align 4
  %190 = call i32 @CSR_READ_2(%struct.wi_softc* %188, i32 %189)
  store i32 %190, i32* %6, align 4
  %191 = load i32, i32* %6, align 4
  %192 = load i32, i32* @WI_PRISM2STA_MAGIC, align 4
  %193 = icmp ne i32 %191, %192
  br i1 %193, label %194, label %202

194:                                              ; preds = %183
  %195 = load i32, i32* %3, align 4
  %196 = load i32, i32* @WI_PRISM2STA_MAGIC, align 4
  %197 = load i32, i32* %6, align 4
  %198 = call i32 (i32, i8*, ...) @device_printf(i32 %195, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i32 %196, i32 %197)
  %199 = load i32, i32* %3, align 4
  %200 = call i32 @wi_free(i32 %199)
  %201 = load i32, i32* @ENXIO, align 4
  store i32 %201, i32* %2, align 4
  br label %212

202:                                              ; preds = %183
  %203 = load i32, i32* %3, align 4
  %204 = call i32 @wi_attach(i32 %203)
  store i32 %204, i32* %7, align 4
  %205 = load i32, i32* %7, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %202
  %208 = load i32, i32* %3, align 4
  %209 = call i32 @wi_free(i32 %208)
  br label %210

210:                                              ; preds = %207, %202
  %211 = load i32, i32* %7, align 4
  store i32 %211, i32* %2, align 4
  br label %212

212:                                              ; preds = %210, %194, %176, %146, %131, %102, %22
  %213 = load i32, i32* %2, align 4
  ret i32 %213
}

declare dso_local %struct.wi_softc* @device_get_softc(i32) #1

declare dso_local i32 @wi_alloc(i32, i32) #1

declare dso_local i32 @CSR_WRITE_2(%struct.wi_softc*, i32, i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i8* @rman_get_bustag(i32*) #1

declare dso_local i8* @rman_get_bushandle(i32*) #1

declare dso_local i32 @bus_space_read_4(i8*, i8*, i32) #1

declare dso_local i32 @bus_space_write_4(i8*, i8*, i32, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @wi_free(i32) #1

declare dso_local i32 @CSM_WRITE_1(%struct.wi_softc*, i32, i32) #1

declare dso_local i32 @CSM_READ_1(%struct.wi_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @CSR_READ_2(%struct.wi_softc*, i32) #1

declare dso_local i32 @wi_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
