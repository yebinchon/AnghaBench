; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_xhci.c_pci_xhci_portregs_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_xhci.c_pci_xhci_portregs_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_xhci_softc = type { i32* }
%struct.xhci_trb = type { i32 }
%struct.pci_xhci_portregs = type { i32, i32, i32 }

@XHCI_PORTREGS_PORT0 = common dso_local global i32 0, align 4
@XHCI_PORTREGS_SETSZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"pci_xhci: portregs wr offset 0x%lx, port %u: 0x%lx\0D\0A\00", align 1
@XHCI_MAX_DEVS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"pci_xhci: portregs_write port %d > ndevices\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"pci_xhci: portregs_write to unattached port %d\0D\0A\00", align 1
@XHCI_PS_PR = common dso_local global i32 0, align 4
@XHCI_PS_WPR = common dso_local global i32 0, align 4
@XHCI_PS_PP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"pci_xhci: portregs_write to unpowered port %d\0D\0A\00", align 1
@XHCI_PS_PED = common dso_local global i32 0, align 4
@XHCI_PS_PLS_MASK = common dso_local global i32 0, align 4
@XHCI_PS_SPEED_MASK = common dso_local global i32 0, align 4
@XHCI_PS_PIC_MASK = common dso_local global i32 0, align 4
@XHCI_PS_CCS = common dso_local global i32 0, align 4
@XHCI_PS_OCA = common dso_local global i32 0, align 4
@XHCI_PS_LWS = common dso_local global i32 0, align 4
@XHCI_PS_DR = common dso_local global i32 0, align 4
@XHCI_PS_CSC = common dso_local global i32 0, align 4
@XHCI_PS_PEC = common dso_local global i32 0, align 4
@XHCI_PS_WRC = common dso_local global i32 0, align 4
@XHCI_PS_OCC = common dso_local global i32 0, align 4
@XHCI_PS_PRC = common dso_local global i32 0, align 4
@XHCI_PS_PLC = common dso_local global i32 0, align 4
@XHCI_PS_CEC = common dso_local global i32 0, align 4
@XHCI_PS_CAS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"Disable port %d request\0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Port new PLS: %d\0D\0A\00", align 1
@XHCI_TRB_ERROR_SUCCESS = common dso_local global i32 0, align 4
@XHCI_TRB_EVENT_PORT_STS_CHANGE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"Unhandled change port %d PLS %u\0D\0A\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"pci_xhci attempted write to PORTLI, port %d\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_xhci_softc*, i32, i32)* @pci_xhci_portregs_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_xhci_portregs_write(%struct.pci_xhci_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pci_xhci_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.xhci_trb, align 4
  %8 = alloca %struct.pci_xhci_portregs*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pci_xhci_softc* %0, %struct.pci_xhci_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %4, align 8
  %13 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %236

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @XHCI_PORTREGS_PORT0, align 4
  %20 = sub nsw i32 %18, %19
  %21 = load i32, i32* @XHCI_PORTREGS_SETSZ, align 4
  %22 = sdiv i32 %20, %21
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @XHCI_PORTREGS_PORT0, align 4
  %25 = sub nsw i32 %23, %24
  %26 = load i32, i32* @XHCI_PORTREGS_SETSZ, align 4
  %27 = srem i32 %25, %26
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i8*
  %33 = call i32 @DPRINTF(i8* %32)
  %34 = load i32, i32* %9, align 4
  %35 = icmp sge i32 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @XHCI_MAX_DEVS, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %17
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = inttoptr i64 %43 to i8*
  %45 = call i32 @DPRINTF(i8* %44)
  br label %236

46:                                               ; preds = %17
  %47 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %4, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i32* @XHCI_DEVINST_PTR(%struct.pci_xhci_softc* %47, i32 %48)
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = inttoptr i64 %53 to i8*
  %55 = call i32 @DPRINTF(i8* %54)
  br label %56

56:                                               ; preds = %51, %46
  %57 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %4, align 8
  %58 = load i32, i32* %9, align 4
  %59 = call %struct.pci_xhci_portregs* @XHCI_PORTREG_PTR(%struct.pci_xhci_softc* %57, i32 %58)
  store %struct.pci_xhci_portregs* %59, %struct.pci_xhci_portregs** %8, align 8
  %60 = load i32, i32* %5, align 4
  switch i32 %60, label %236 [
    i32 0, label %61
    i32 4, label %223
    i32 8, label %227
    i32 12, label %232
  ]

61:                                               ; preds = %56
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @XHCI_PS_PR, align 4
  %64 = load i32, i32* @XHCI_PS_WPR, align 4
  %65 = or i32 %63, %64
  %66 = and i32 %62, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %61
  %69 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %4, align 8
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @XHCI_PS_WPR, align 4
  %73 = and i32 %71, %72
  %74 = call i32 @pci_xhci_reset_port(%struct.pci_xhci_softc* %69, i32 %70, i32 %73)
  br label %236

75:                                               ; preds = %61
  %76 = load %struct.pci_xhci_portregs*, %struct.pci_xhci_portregs** %8, align 8
  %77 = getelementptr inbounds %struct.pci_xhci_portregs, %struct.pci_xhci_portregs* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @XHCI_PS_PP, align 4
  %80 = and i32 %78, %79
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %75
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = inttoptr i64 %84 to i8*
  %86 = call i32 @WPRINTF(i8* %85)
  br label %236

87:                                               ; preds = %75
  %88 = load %struct.pci_xhci_portregs*, %struct.pci_xhci_portregs** %8, align 8
  %89 = getelementptr inbounds %struct.pci_xhci_portregs, %struct.pci_xhci_portregs* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @XHCI_PS_PLS_GET(i32 %90)
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @XHCI_PS_PLS_GET(i32 %92)
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* @XHCI_PS_PED, align 4
  %95 = load i32, i32* @XHCI_PS_PLS_MASK, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @XHCI_PS_SPEED_MASK, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @XHCI_PS_PIC_MASK, align 4
  %100 = or i32 %98, %99
  %101 = load %struct.pci_xhci_portregs*, %struct.pci_xhci_portregs** %8, align 8
  %102 = getelementptr inbounds %struct.pci_xhci_portregs, %struct.pci_xhci_portregs* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = and i32 %103, %100
  store i32 %104, i32* %102, align 4
  %105 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %4, align 8
  %106 = load i32, i32* %9, align 4
  %107 = call i32* @XHCI_DEVINST_PTR(%struct.pci_xhci_softc* %105, i32 %106)
  %108 = icmp ne i32* %107, null
  br i1 %108, label %109, label %115

109:                                              ; preds = %87
  %110 = load i32, i32* @XHCI_PS_CCS, align 4
  %111 = load %struct.pci_xhci_portregs*, %struct.pci_xhci_portregs** %8, align 8
  %112 = getelementptr inbounds %struct.pci_xhci_portregs, %struct.pci_xhci_portregs* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 4
  br label %115

115:                                              ; preds = %109, %87
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* @XHCI_PS_OCA, align 4
  %118 = load i32, i32* @XHCI_PS_PR, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @XHCI_PS_PED, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* @XHCI_PS_PLS_MASK, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* @XHCI_PS_SPEED_MASK, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @XHCI_PS_PIC_MASK, align 4
  %127 = or i32 %125, %126
  %128 = load i32, i32* @XHCI_PS_LWS, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* @XHCI_PS_DR, align 4
  %131 = or i32 %129, %130
  %132 = load i32, i32* @XHCI_PS_WPR, align 4
  %133 = or i32 %131, %132
  %134 = xor i32 %133, -1
  %135 = and i32 %116, %134
  %136 = load %struct.pci_xhci_portregs*, %struct.pci_xhci_portregs** %8, align 8
  %137 = getelementptr inbounds %struct.pci_xhci_portregs, %struct.pci_xhci_portregs* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = or i32 %138, %135
  store i32 %139, i32* %137, align 4
  %140 = load i32, i32* %6, align 4
  %141 = load i32, i32* @XHCI_PS_CSC, align 4
  %142 = load i32, i32* @XHCI_PS_PEC, align 4
  %143 = or i32 %141, %142
  %144 = load i32, i32* @XHCI_PS_WRC, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* @XHCI_PS_OCC, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* @XHCI_PS_PRC, align 4
  %149 = or i32 %147, %148
  %150 = load i32, i32* @XHCI_PS_PLC, align 4
  %151 = or i32 %149, %150
  %152 = load i32, i32* @XHCI_PS_CEC, align 4
  %153 = or i32 %151, %152
  %154 = load i32, i32* @XHCI_PS_CAS, align 4
  %155 = or i32 %153, %154
  %156 = and i32 %140, %155
  %157 = xor i32 %156, -1
  %158 = load %struct.pci_xhci_portregs*, %struct.pci_xhci_portregs** %8, align 8
  %159 = getelementptr inbounds %struct.pci_xhci_portregs, %struct.pci_xhci_portregs* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = and i32 %160, %157
  store i32 %161, i32* %159, align 4
  %162 = load i32, i32* %6, align 4
  %163 = load i32, i32* @XHCI_PS_PED, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %115
  %167 = load i32, i32* %9, align 4
  %168 = sext i32 %167 to i64
  %169 = inttoptr i64 %168 to i8*
  %170 = call i32 @DPRINTF(i8* %169)
  br label %171

171:                                              ; preds = %166, %115
  %172 = load i32, i32* %6, align 4
  %173 = load i32, i32* @XHCI_PS_LWS, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %177, label %176

176:                                              ; preds = %171
  br label %236

177:                                              ; preds = %171
  %178 = load i32, i32* %11, align 4
  %179 = sext i32 %178 to i64
  %180 = inttoptr i64 %179 to i8*
  %181 = call i32 @DPRINTF(i8* %180)
  %182 = load i32, i32* %11, align 4
  switch i32 %182, label %216 [
    i32 0, label %183
    i32 3, label %183
  ]

183:                                              ; preds = %177, %177
  %184 = load i32, i32* %10, align 4
  %185 = load i32, i32* %11, align 4
  %186 = icmp ne i32 %184, %185
  br i1 %186, label %187, label %215

187:                                              ; preds = %183
  %188 = load i32, i32* @XHCI_PS_PLS_MASK, align 4
  %189 = xor i32 %188, -1
  %190 = load %struct.pci_xhci_portregs*, %struct.pci_xhci_portregs** %8, align 8
  %191 = getelementptr inbounds %struct.pci_xhci_portregs, %struct.pci_xhci_portregs* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = and i32 %192, %189
  store i32 %193, i32* %191, align 4
  %194 = load i32, i32* %11, align 4
  %195 = call i32 @XHCI_PS_PLS_SET(i32 %194)
  %196 = load i32, i32* @XHCI_PS_PLC, align 4
  %197 = or i32 %195, %196
  %198 = load %struct.pci_xhci_portregs*, %struct.pci_xhci_portregs** %8, align 8
  %199 = getelementptr inbounds %struct.pci_xhci_portregs, %struct.pci_xhci_portregs* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = or i32 %200, %197
  store i32 %201, i32* %199, align 4
  %202 = load i32, i32* %10, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %214

204:                                              ; preds = %187
  %205 = load i32, i32* %11, align 4
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %214

207:                                              ; preds = %204
  %208 = load i32, i32* %9, align 4
  %209 = load i32, i32* @XHCI_TRB_ERROR_SUCCESS, align 4
  %210 = load i32, i32* @XHCI_TRB_EVENT_PORT_STS_CHANGE, align 4
  %211 = call i32 @pci_xhci_set_evtrb(%struct.xhci_trb* %7, i32 %208, i32 %209, i32 %210)
  %212 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %4, align 8
  %213 = call i32 @pci_xhci_insert_event(%struct.pci_xhci_softc* %212, %struct.xhci_trb* %7, i32 1)
  br label %214

214:                                              ; preds = %207, %204, %187
  br label %215

215:                                              ; preds = %214, %183
  br label %222

216:                                              ; preds = %177
  %217 = load i32, i32* %9, align 4
  %218 = load i32, i32* %11, align 4
  %219 = sext i32 %218 to i64
  %220 = inttoptr i64 %219 to i8*
  %221 = call i32 @DPRINTF(i8* %220)
  br label %222

222:                                              ; preds = %216, %215
  br label %236

223:                                              ; preds = %56
  %224 = load i32, i32* %6, align 4
  %225 = load %struct.pci_xhci_portregs*, %struct.pci_xhci_portregs** %8, align 8
  %226 = getelementptr inbounds %struct.pci_xhci_portregs, %struct.pci_xhci_portregs* %225, i32 0, i32 1
  store i32 %224, i32* %226, align 4
  br label %236

227:                                              ; preds = %56
  %228 = load i32, i32* %9, align 4
  %229 = sext i32 %228 to i64
  %230 = inttoptr i64 %229 to i8*
  %231 = call i32 @DPRINTF(i8* %230)
  br label %236

232:                                              ; preds = %56
  %233 = load i32, i32* %6, align 4
  %234 = load %struct.pci_xhci_portregs*, %struct.pci_xhci_portregs** %8, align 8
  %235 = getelementptr inbounds %struct.pci_xhci_portregs, %struct.pci_xhci_portregs* %234, i32 0, i32 2
  store i32 %233, i32* %235, align 4
  br label %236

236:                                              ; preds = %16, %41, %56, %232, %227, %223, %222, %176, %82, %68
  ret void
}

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @XHCI_DEVINST_PTR(%struct.pci_xhci_softc*, i32) #1

declare dso_local %struct.pci_xhci_portregs* @XHCI_PORTREG_PTR(%struct.pci_xhci_softc*, i32) #1

declare dso_local i32 @pci_xhci_reset_port(%struct.pci_xhci_softc*, i32, i32) #1

declare dso_local i32 @WPRINTF(i8*) #1

declare dso_local i32 @XHCI_PS_PLS_GET(i32) #1

declare dso_local i32 @XHCI_PS_PLS_SET(i32) #1

declare dso_local i32 @pci_xhci_set_evtrb(%struct.xhci_trb*, i32, i32, i32) #1

declare dso_local i32 @pci_xhci_insert_event(%struct.pci_xhci_softc*, %struct.xhci_trb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
