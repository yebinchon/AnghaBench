; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_xhci.c_pci_xhci_rtsregs_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_xhci.c_pci_xhci_rtsregs_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_xhci_softc = type { %struct.pci_xhci_rtsregs, i64 }
%struct.pci_xhci_rtsregs = type { i8*, i8*, %struct.TYPE_4__*, %struct.TYPE_3__, i32, i8* }
%struct.TYPE_4__ = type { i32, i8* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"pci_xhci attempted write to MFINDEX\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"pci_xhci: runtime regs write offset 0x%lx: 0x%lx\0D\0A\00", align 1
@XHCI_IMAN_INTR_PEND = common dso_local global i32 0, align 4
@XHCI_IMAN_INTR_ENA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"pci_xhci: wr erstba erst (%p) ptr 0x%lx, sz %u\0D\0A\00", align 1
@XHCI_ERDP_LO_BUSY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"pci_xhci: erdp 0x%lx, events cnt %u\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"pci_xhci attempted write to RTS offset 0x%lx\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_xhci_softc*, i32, i32)* @pci_xhci_rtsregs_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_xhci_rtsregs_write(%struct.pci_xhci_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pci_xhci_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_xhci_rtsregs*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.pci_xhci_softc* %0, %struct.pci_xhci_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %4, align 8
  %11 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = sub nsw i64 %14, %12
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = call i32 @DPRINTF(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %270

21:                                               ; preds = %3
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i8*
  %26 = call i32 @DPRINTF(i8* %25)
  %27 = load i32, i32* %5, align 4
  %28 = sub nsw i32 %27, 32
  store i32 %28, i32* %5, align 4
  %29 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %4, align 8
  %30 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %29, i32 0, i32 0
  store %struct.pci_xhci_rtsregs* %30, %struct.pci_xhci_rtsregs** %7, align 8
  %31 = load i32, i32* %5, align 4
  switch i32 %31, label %265 [
    i32 0, label %32
    i32 4, label %67
    i32 8, label %72
    i32 16, label %78
    i32 20, label %91
    i32 24, label %148
    i32 28, label %192
  ]

32:                                               ; preds = %21
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @XHCI_IMAN_INTR_PEND, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load i32, i32* @XHCI_IMAN_INTR_PEND, align 4
  %39 = xor i32 %38, -1
  %40 = load %struct.pci_xhci_rtsregs*, %struct.pci_xhci_rtsregs** %7, align 8
  %41 = getelementptr inbounds %struct.pci_xhci_rtsregs, %struct.pci_xhci_rtsregs* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = and i32 %43, %39
  store i32 %44, i32* %42, align 8
  br label %45

45:                                               ; preds = %37, %32
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @XHCI_IMAN_INTR_ENA, align 4
  %48 = and i32 %46, %47
  %49 = load %struct.pci_xhci_rtsregs*, %struct.pci_xhci_rtsregs** %7, align 8
  %50 = getelementptr inbounds %struct.pci_xhci_rtsregs, %struct.pci_xhci_rtsregs* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @XHCI_IMAN_INTR_PEND, align 4
  %54 = and i32 %52, %53
  %55 = or i32 %48, %54
  %56 = load %struct.pci_xhci_rtsregs*, %struct.pci_xhci_rtsregs** %7, align 8
  %57 = getelementptr inbounds %struct.pci_xhci_rtsregs, %struct.pci_xhci_rtsregs* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @XHCI_IMAN_INTR_ENA, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %45
  %64 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %4, align 8
  %65 = call i32 @pci_xhci_deassert_interrupt(%struct.pci_xhci_softc* %64)
  br label %66

66:                                               ; preds = %63, %45
  br label %270

67:                                               ; preds = %21
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.pci_xhci_rtsregs*, %struct.pci_xhci_rtsregs** %7, align 8
  %70 = getelementptr inbounds %struct.pci_xhci_rtsregs, %struct.pci_xhci_rtsregs* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  store i32 %68, i32* %71, align 4
  br label %270

72:                                               ; preds = %21
  %73 = load i32, i32* %6, align 4
  %74 = and i32 %73, 65535
  %75 = load %struct.pci_xhci_rtsregs*, %struct.pci_xhci_rtsregs** %7, align 8
  %76 = getelementptr inbounds %struct.pci_xhci_rtsregs, %struct.pci_xhci_rtsregs* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 2
  store i32 %74, i32* %77, align 8
  br label %270

78:                                               ; preds = %21
  %79 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %4, align 8
  %80 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.pci_xhci_rtsregs, %struct.pci_xhci_rtsregs* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @MASK_64_HI(i32 %83)
  %85 = load i32, i32* %6, align 4
  %86 = and i32 %85, -64
  %87 = or i32 %84, %86
  %88 = load %struct.pci_xhci_rtsregs*, %struct.pci_xhci_rtsregs** %7, align 8
  %89 = getelementptr inbounds %struct.pci_xhci_rtsregs, %struct.pci_xhci_rtsregs* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 3
  store i32 %87, i32* %90, align 4
  br label %270

91:                                               ; preds = %21
  %92 = load i32, i32* %6, align 4
  %93 = shl i32 %92, 32
  %94 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %4, align 8
  %95 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.pci_xhci_rtsregs, %struct.pci_xhci_rtsregs* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @MASK_64_LO(i32 %98)
  %100 = or i32 %93, %99
  %101 = load %struct.pci_xhci_rtsregs*, %struct.pci_xhci_rtsregs** %7, align 8
  %102 = getelementptr inbounds %struct.pci_xhci_rtsregs, %struct.pci_xhci_rtsregs* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 3
  store i32 %100, i32* %103, align 4
  %104 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %4, align 8
  %105 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %4, align 8
  %106 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.pci_xhci_rtsregs, %struct.pci_xhci_rtsregs* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = sext i32 %109 to i64
  %111 = and i64 %110, -64
  %112 = trunc i64 %111 to i32
  %113 = call i8* @XHCI_GADDR(%struct.pci_xhci_softc* %104, i32 %112)
  %114 = bitcast i8* %113 to %struct.TYPE_4__*
  %115 = load %struct.pci_xhci_rtsregs*, %struct.pci_xhci_rtsregs** %7, align 8
  %116 = getelementptr inbounds %struct.pci_xhci_rtsregs, %struct.pci_xhci_rtsregs* %115, i32 0, i32 2
  store %struct.TYPE_4__* %114, %struct.TYPE_4__** %116, align 8
  %117 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %4, align 8
  %118 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %4, align 8
  %119 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.pci_xhci_rtsregs, %struct.pci_xhci_rtsregs* %119, i32 0, i32 2
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = sext i32 %123 to i64
  %125 = and i64 %124, -64
  %126 = trunc i64 %125 to i32
  %127 = call i8* @XHCI_GADDR(%struct.pci_xhci_softc* %117, i32 %126)
  %128 = load %struct.pci_xhci_rtsregs*, %struct.pci_xhci_rtsregs** %7, align 8
  %129 = getelementptr inbounds %struct.pci_xhci_rtsregs, %struct.pci_xhci_rtsregs* %128, i32 0, i32 5
  store i8* %127, i8** %129, align 8
  %130 = load %struct.pci_xhci_rtsregs*, %struct.pci_xhci_rtsregs** %7, align 8
  %131 = getelementptr inbounds %struct.pci_xhci_rtsregs, %struct.pci_xhci_rtsregs* %130, i32 0, i32 0
  store i8* null, i8** %131, align 8
  %132 = load %struct.pci_xhci_rtsregs*, %struct.pci_xhci_rtsregs** %7, align 8
  %133 = getelementptr inbounds %struct.pci_xhci_rtsregs, %struct.pci_xhci_rtsregs* %132, i32 0, i32 1
  store i8* null, i8** %133, align 8
  %134 = load %struct.pci_xhci_rtsregs*, %struct.pci_xhci_rtsregs** %7, align 8
  %135 = getelementptr inbounds %struct.pci_xhci_rtsregs, %struct.pci_xhci_rtsregs* %134, i32 0, i32 2
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = load %struct.pci_xhci_rtsregs*, %struct.pci_xhci_rtsregs** %7, align 8
  %138 = getelementptr inbounds %struct.pci_xhci_rtsregs, %struct.pci_xhci_rtsregs* %137, i32 0, i32 2
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.pci_xhci_rtsregs*, %struct.pci_xhci_rtsregs** %7, align 8
  %143 = getelementptr inbounds %struct.pci_xhci_rtsregs, %struct.pci_xhci_rtsregs* %142, i32 0, i32 2
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 1
  %146 = load i8*, i8** %145, align 8
  %147 = call i32 @DPRINTF(i8* %146)
  br label %270

148:                                              ; preds = %21
  %149 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %4, align 8
  %150 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.pci_xhci_rtsregs, %struct.pci_xhci_rtsregs* %150, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @MASK_64_HI(i32 %153)
  %155 = load %struct.pci_xhci_rtsregs*, %struct.pci_xhci_rtsregs** %7, align 8
  %156 = getelementptr inbounds %struct.pci_xhci_rtsregs, %struct.pci_xhci_rtsregs* %155, i32 0, i32 3
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @XHCI_ERDP_LO_BUSY, align 4
  %160 = and i32 %158, %159
  %161 = or i32 %154, %160
  %162 = load i32, i32* %6, align 4
  %163 = and i32 %162, -16
  %164 = or i32 %161, %163
  %165 = load %struct.pci_xhci_rtsregs*, %struct.pci_xhci_rtsregs** %7, align 8
  %166 = getelementptr inbounds %struct.pci_xhci_rtsregs, %struct.pci_xhci_rtsregs* %165, i32 0, i32 3
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 4
  store i32 %164, i32* %167, align 8
  %168 = load i32, i32* %6, align 4
  %169 = load i32, i32* @XHCI_ERDP_LO_BUSY, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %187

172:                                              ; preds = %148
  %173 = load i32, i32* @XHCI_ERDP_LO_BUSY, align 4
  %174 = xor i32 %173, -1
  %175 = load %struct.pci_xhci_rtsregs*, %struct.pci_xhci_rtsregs** %7, align 8
  %176 = getelementptr inbounds %struct.pci_xhci_rtsregs, %struct.pci_xhci_rtsregs* %175, i32 0, i32 3
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 8
  %179 = and i32 %178, %174
  store i32 %179, i32* %177, align 8
  %180 = load i32, i32* @XHCI_IMAN_INTR_PEND, align 4
  %181 = xor i32 %180, -1
  %182 = load %struct.pci_xhci_rtsregs*, %struct.pci_xhci_rtsregs** %7, align 8
  %183 = getelementptr inbounds %struct.pci_xhci_rtsregs, %struct.pci_xhci_rtsregs* %182, i32 0, i32 3
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = and i32 %185, %181
  store i32 %186, i32* %184, align 8
  br label %187

187:                                              ; preds = %172, %148
  %188 = load i32, i32* %6, align 4
  %189 = call i32 @XHCI_ERDP_LO_SINDEX(i32 %188)
  %190 = load %struct.pci_xhci_rtsregs*, %struct.pci_xhci_rtsregs** %7, align 8
  %191 = getelementptr inbounds %struct.pci_xhci_rtsregs, %struct.pci_xhci_rtsregs* %190, i32 0, i32 4
  store i32 %189, i32* %191, align 4
  br label %270

192:                                              ; preds = %21
  %193 = load i32, i32* %6, align 4
  %194 = shl i32 %193, 32
  %195 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %4, align 8
  %196 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.pci_xhci_rtsregs, %struct.pci_xhci_rtsregs* %196, i32 0, i32 3
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 4
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @MASK_64_LO(i32 %199)
  %201 = or i32 %194, %200
  %202 = load %struct.pci_xhci_rtsregs*, %struct.pci_xhci_rtsregs** %7, align 8
  %203 = getelementptr inbounds %struct.pci_xhci_rtsregs, %struct.pci_xhci_rtsregs* %202, i32 0, i32 3
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 4
  store i32 %201, i32* %204, align 8
  %205 = load %struct.pci_xhci_rtsregs*, %struct.pci_xhci_rtsregs** %7, align 8
  %206 = getelementptr inbounds %struct.pci_xhci_rtsregs, %struct.pci_xhci_rtsregs* %205, i32 0, i32 1
  %207 = load i8*, i8** %206, align 8
  %208 = icmp ugt i8* %207, null
  br i1 %208, label %209, label %264

209:                                              ; preds = %192
  %210 = load %struct.pci_xhci_rtsregs*, %struct.pci_xhci_rtsregs** %7, align 8
  %211 = getelementptr inbounds %struct.pci_xhci_rtsregs, %struct.pci_xhci_rtsregs* %210, i32 0, i32 3
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %211, i32 0, i32 4
  %213 = load i32, i32* %212, align 8
  %214 = and i32 %213, -16
  store i32 %214, i32* %8, align 4
  %215 = load i32, i32* %8, align 4
  %216 = load %struct.pci_xhci_rtsregs*, %struct.pci_xhci_rtsregs** %7, align 8
  %217 = getelementptr inbounds %struct.pci_xhci_rtsregs, %struct.pci_xhci_rtsregs* %216, i32 0, i32 2
  %218 = load %struct.TYPE_4__*, %struct.TYPE_4__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = sub nsw i32 %215, %220
  %222 = sext i32 %221 to i64
  %223 = udiv i64 %222, 4
  %224 = inttoptr i64 %223 to i8*
  store i8* %224, i8** %9, align 8
  %225 = load i8*, i8** %9, align 8
  %226 = load %struct.pci_xhci_rtsregs*, %struct.pci_xhci_rtsregs** %7, align 8
  %227 = getelementptr inbounds %struct.pci_xhci_rtsregs, %struct.pci_xhci_rtsregs* %226, i32 0, i32 0
  %228 = load i8*, i8** %227, align 8
  %229 = icmp ule i8* %225, %228
  br i1 %229, label %230, label %241

230:                                              ; preds = %209
  %231 = load %struct.pci_xhci_rtsregs*, %struct.pci_xhci_rtsregs** %7, align 8
  %232 = getelementptr inbounds %struct.pci_xhci_rtsregs, %struct.pci_xhci_rtsregs* %231, i32 0, i32 0
  %233 = load i8*, i8** %232, align 8
  %234 = load i8*, i8** %9, align 8
  %235 = ptrtoint i8* %233 to i64
  %236 = ptrtoint i8* %234 to i64
  %237 = sub i64 %235, %236
  %238 = inttoptr i64 %237 to i8*
  %239 = load %struct.pci_xhci_rtsregs*, %struct.pci_xhci_rtsregs** %7, align 8
  %240 = getelementptr inbounds %struct.pci_xhci_rtsregs, %struct.pci_xhci_rtsregs* %239, i32 0, i32 1
  store i8* %238, i8** %240, align 8
  br label %258

241:                                              ; preds = %209
  %242 = load %struct.pci_xhci_rtsregs*, %struct.pci_xhci_rtsregs** %7, align 8
  %243 = getelementptr inbounds %struct.pci_xhci_rtsregs, %struct.pci_xhci_rtsregs* %242, i32 0, i32 2
  %244 = load %struct.TYPE_4__*, %struct.TYPE_4__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %244, i32 0, i32 1
  %246 = load i8*, i8** %245, align 8
  %247 = load i8*, i8** %9, align 8
  %248 = load %struct.pci_xhci_rtsregs*, %struct.pci_xhci_rtsregs** %7, align 8
  %249 = getelementptr inbounds %struct.pci_xhci_rtsregs, %struct.pci_xhci_rtsregs* %248, i32 0, i32 0
  %250 = load i8*, i8** %249, align 8
  %251 = ptrtoint i8* %247 to i64
  %252 = ptrtoint i8* %250 to i64
  %253 = sub i64 %251, %252
  %254 = sub i64 0, %253
  %255 = getelementptr i8, i8* %246, i64 %254
  %256 = load %struct.pci_xhci_rtsregs*, %struct.pci_xhci_rtsregs** %7, align 8
  %257 = getelementptr inbounds %struct.pci_xhci_rtsregs, %struct.pci_xhci_rtsregs* %256, i32 0, i32 1
  store i8* %255, i8** %257, align 8
  br label %258

258:                                              ; preds = %241, %230
  %259 = load i32, i32* %8, align 4
  %260 = load %struct.pci_xhci_rtsregs*, %struct.pci_xhci_rtsregs** %7, align 8
  %261 = getelementptr inbounds %struct.pci_xhci_rtsregs, %struct.pci_xhci_rtsregs* %260, i32 0, i32 1
  %262 = load i8*, i8** %261, align 8
  %263 = call i32 @DPRINTF(i8* %262)
  br label %264

264:                                              ; preds = %258, %192
  br label %270

265:                                              ; preds = %21
  %266 = load i32, i32* %5, align 4
  %267 = sext i32 %266 to i64
  %268 = inttoptr i64 %267 to i8*
  %269 = call i32 @DPRINTF(i8* %268)
  br label %270

270:                                              ; preds = %19, %265, %264, %187, %91, %78, %72, %67, %66
  ret void
}

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @pci_xhci_deassert_interrupt(%struct.pci_xhci_softc*) #1

declare dso_local i32 @MASK_64_HI(i32) #1

declare dso_local i32 @MASK_64_LO(i32) #1

declare dso_local i8* @XHCI_GADDR(%struct.pci_xhci_softc*, i32) #1

declare dso_local i32 @XHCI_ERDP_LO_SINDEX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
