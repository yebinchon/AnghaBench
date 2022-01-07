; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_xhci.c_pci_xhci_hostop_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_xhci.c_pci_xhci_hostop_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_xhci_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i8*, i8*, i32 }

@XHCI_CAPLEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"pci_xhci: hostop write offset 0x%lx: 0x%lx\0D\0A\00", align 1
@XHCI_STS_HSE = common dso_local global i32 0, align 4
@XHCI_STS_EINT = common dso_local global i32 0, align 4
@XHCI_STS_PCD = common dso_local global i32 0, align 4
@XHCI_STS_SSS = common dso_local global i32 0, align 4
@XHCI_STS_RSS = common dso_local global i32 0, align 4
@XHCI_STS_SRE = common dso_local global i32 0, align 4
@XHCI_STS_CNR = common dso_local global i32 0, align 4
@XHCI_CRCR_LO_CRR = common dso_local global i32 0, align 4
@XHCI_CRCR_LO_CS = common dso_local global i32 0, align 4
@XHCI_CRCR_LO_CA = common dso_local global i32 0, align 4
@XHCI_CRCR_LO_RCS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"pci_xhci: opregs dcbaap = 0x%lx (vaddr 0x%lx)\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_xhci_softc*, i32, i32)* @pci_xhci_hostop_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_xhci_hostop_write(%struct.pci_xhci_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pci_xhci_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pci_xhci_softc* %0, %struct.pci_xhci_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i64, i64* @XHCI_CAPLEN, align 8
  %8 = load i32, i32* %5, align 4
  %9 = sext i32 %8 to i64
  %10 = sub nsw i64 %9, %7
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 1024
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to i8*
  %19 = call i32 @DPRINTF(i8* %18)
  br label %20

20:                                               ; preds = %14, %3
  %21 = load i32, i32* %5, align 4
  switch i32 %21, label %205 [
    i32 129, label %22
    i32 128, label %30
    i32 130, label %52
    i32 131, label %53
    i32 134, label %59
    i32 135, label %102
    i32 132, label %151
    i32 133, label %163
    i32 136, label %199
  ]

22:                                               ; preds = %20
  %23 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %4, align 8
  %24 = load i32, i32* %6, align 4
  %25 = and i32 %24, 16143
  %26 = call i32 @pci_xhci_usbcmd_write(%struct.pci_xhci_softc* %23, i32 %25)
  %27 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %4, align 8
  %28 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 7
  store i32 %26, i32* %29, align 8
  br label %214

30:                                               ; preds = %20
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @XHCI_STS_HSE, align 4
  %33 = load i32, i32* @XHCI_STS_EINT, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @XHCI_STS_PCD, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @XHCI_STS_SSS, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @XHCI_STS_RSS, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @XHCI_STS_SRE, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @XHCI_STS_CNR, align 4
  %44 = or i32 %42, %43
  %45 = and i32 %31, %44
  %46 = xor i32 %45, -1
  %47 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %4, align 8
  %48 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = and i32 %50, %46
  store i32 %51, i32* %49, align 8
  br label %214

52:                                               ; preds = %20
  br label %214

53:                                               ; preds = %20
  %54 = load i32, i32* %6, align 4
  %55 = and i32 %54, 65535
  %56 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %4, align 8
  %57 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  store i32 %55, i32* %58, align 4
  br label %214

59:                                               ; preds = %20
  %60 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %4, align 8
  %61 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @XHCI_CRCR_LO_CRR, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %87

67:                                               ; preds = %59
  %68 = load i32, i32* @XHCI_CRCR_LO_CS, align 4
  %69 = load i32, i32* @XHCI_CRCR_LO_CA, align 4
  %70 = or i32 %68, %69
  %71 = xor i32 %70, -1
  %72 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %4, align 8
  %73 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = and i32 %75, %71
  store i32 %76, i32* %74, align 8
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @XHCI_CRCR_LO_CS, align 4
  %79 = load i32, i32* @XHCI_CRCR_LO_CA, align 4
  %80 = or i32 %78, %79
  %81 = and i32 %77, %80
  %82 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %4, align 8
  %83 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = or i32 %85, %81
  store i32 %86, i32* %84, align 8
  br label %101

87:                                               ; preds = %59
  %88 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %4, align 8
  %89 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @MASK_64_HI(i32 %91)
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @XHCI_CRCR_LO_RCS, align 4
  %95 = or i32 -64, %94
  %96 = and i32 %93, %95
  %97 = or i32 %92, %96
  %98 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %4, align 8
  %99 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 2
  store i32 %97, i32* %100, align 8
  br label %101

101:                                              ; preds = %87, %67
  br label %214

102:                                              ; preds = %20
  %103 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %4, align 8
  %104 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @XHCI_CRCR_LO_CRR, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %132, label %110

110:                                              ; preds = %102
  %111 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %4, align 8
  %112 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @MASK_64_LO(i32 %114)
  %116 = load i32, i32* %6, align 4
  %117 = shl i32 %116, 32
  %118 = or i32 %115, %117
  %119 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %4, align 8
  %120 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 2
  store i32 %118, i32* %121, align 8
  %122 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %4, align 8
  %123 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %4, align 8
  %124 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = and i32 %126, -16
  %128 = call i8* @XHCI_GADDR(%struct.pci_xhci_softc* %122, i32 %127)
  %129 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %4, align 8
  %130 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 6
  store i8* %128, i8** %131, align 8
  br label %132

132:                                              ; preds = %110, %102
  %133 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %4, align 8
  %134 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @XHCI_CRCR_LO_CS, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %132
  br label %141

141:                                              ; preds = %140, %132
  %142 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %4, align 8
  %143 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @XHCI_CRCR_LO_CA, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %141
  br label %150

150:                                              ; preds = %149, %141
  br label %214

151:                                              ; preds = %20
  %152 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %4, align 8
  %153 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @MASK_64_HI(i32 %155)
  %157 = load i32, i32* %6, align 4
  %158 = and i32 %157, -64
  %159 = or i32 %156, %158
  %160 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %4, align 8
  %161 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 3
  store i32 %159, i32* %162, align 4
  br label %214

163:                                              ; preds = %20
  %164 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %4, align 8
  %165 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @MASK_64_LO(i32 %167)
  %169 = load i32, i32* %6, align 4
  %170 = shl i32 %169, 32
  %171 = or i32 %168, %170
  %172 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %4, align 8
  %173 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 3
  store i32 %171, i32* %174, align 4
  %175 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %4, align 8
  %176 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %4, align 8
  %177 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  %180 = sext i32 %179 to i64
  %181 = and i64 %180, -64
  %182 = trunc i64 %181 to i32
  %183 = call i8* @XHCI_GADDR(%struct.pci_xhci_softc* %175, i32 %182)
  %184 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %4, align 8
  %185 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 5
  store i8* %183, i8** %186, align 8
  %187 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %4, align 8
  %188 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %4, align 8
  %192 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 5
  %194 = load i8*, i8** %193, align 8
  %195 = ptrtoint i8* %194 to i32
  %196 = sext i32 %195 to i64
  %197 = inttoptr i64 %196 to i8*
  %198 = call i32 @DPRINTF(i8* %197)
  br label %214

199:                                              ; preds = %20
  %200 = load i32, i32* %6, align 4
  %201 = and i32 %200, 1023
  %202 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %4, align 8
  %203 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i32 0, i32 4
  store i32 %201, i32* %204, align 8
  br label %214

205:                                              ; preds = %20
  %206 = load i32, i32* %5, align 4
  %207 = icmp sge i32 %206, 1024
  br i1 %207, label %208, label %213

208:                                              ; preds = %205
  %209 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %4, align 8
  %210 = load i32, i32* %5, align 4
  %211 = load i32, i32* %6, align 4
  %212 = call i32 @pci_xhci_portregs_write(%struct.pci_xhci_softc* %209, i32 %210, i32 %211)
  br label %213

213:                                              ; preds = %208, %205
  br label %214

214:                                              ; preds = %213, %199, %163, %151, %150, %101, %53, %52, %30, %22
  ret void
}

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @pci_xhci_usbcmd_write(%struct.pci_xhci_softc*, i32) #1

declare dso_local i32 @MASK_64_HI(i32) #1

declare dso_local i32 @MASK_64_LO(i32) #1

declare dso_local i8* @XHCI_GADDR(%struct.pci_xhci_softc*, i32) #1

declare dso_local i32 @pci_xhci_portregs_write(%struct.pci_xhci_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
