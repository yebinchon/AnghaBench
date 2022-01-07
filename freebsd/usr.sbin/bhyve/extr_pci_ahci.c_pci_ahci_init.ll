; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_ahci.c_pci_ahci_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_ahci.c_pci_ahci_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }
%struct.pci_devinst = type { i32, i32, %struct.pci_ahci_softc* }
%struct.pci_ahci_softc = type { i32, i32, i32, i32, %struct.TYPE_2__*, i32, i32, %struct.pci_devinst* }
%struct.TYPE_2__ = type { i32, i32, i32, %struct.blockif_ctxt*, i32, %struct.pci_ahci_softc* }
%struct.blockif_ctxt = type { i32 }

@MAX_PORTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"hd:\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"cd:\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c",hd:\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c",cd:\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"%d:%d:%d\00", align 1
@AHCI_PORT_IDENT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"BHYVE-%02X%02X-%02X%02X-%02X%02X\00", align 1
@DEF_PORTS = common dso_local global i32 0, align 4
@AHCI_CAP_64BIT = common dso_local global i32 0, align 4
@AHCI_CAP_SNCQ = common dso_local global i32 0, align 4
@AHCI_CAP_SSNTF = common dso_local global i32 0, align 4
@AHCI_CAP_SMPS = common dso_local global i32 0, align 4
@AHCI_CAP_SSS = common dso_local global i32 0, align 4
@AHCI_CAP_SALP = common dso_local global i32 0, align 4
@AHCI_CAP_SAL = common dso_local global i32 0, align 4
@AHCI_CAP_SCLO = common dso_local global i32 0, align 4
@AHCI_CAP_ISS_SHIFT = common dso_local global i32 0, align 4
@AHCI_CAP_PMD = common dso_local global i32 0, align 4
@AHCI_CAP_SSC = common dso_local global i32 0, align 4
@AHCI_CAP_PSC = common dso_local global i32 0, align 4
@AHCI_CAP_NCS_SHIFT = common dso_local global i32 0, align 4
@AHCI_CAP_SXS = common dso_local global i32 0, align 4
@AHCI_CAP2_APST = common dso_local global i32 0, align 4
@PCIR_DEVICE = common dso_local global i32 0, align 4
@PCIR_VENDOR = common dso_local global i32 0, align 4
@PCIR_CLASS = common dso_local global i32 0, align 4
@PCIC_STORAGE = common dso_local global i32 0, align 4
@PCIR_SUBCLASS = common dso_local global i32 0, align 4
@PCIS_STORAGE_SATA = common dso_local global i32 0, align 4
@PCIR_PROGIF = common dso_local global i32 0, align 4
@PCIP_STORAGE_SATA_AHCI_1_0 = common dso_local global i32 0, align 4
@PCIBAR_MEM32 = common dso_local global i32 0, align 4
@AHCI_OFFSET = common dso_local global i64 0, align 8
@AHCI_STEP = common dso_local global i32 0, align 4
@dbg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmctx*, %struct.pci_devinst*, i8*, i32)* @pci_ahci_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_ahci_init(%struct.vmctx* %0, %struct.pci_devinst* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.vmctx*, align 8
  %6 = alloca %struct.pci_devinst*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [9 x i8], align 1
  %10 = alloca %struct.blockif_ctxt*, align 8
  %11 = alloca %struct.pci_ahci_softc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [16 x i32], align 16
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store %struct.vmctx* %0, %struct.vmctx** %5, align 8
  store %struct.pci_devinst* %1, %struct.pci_devinst** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %12, align 4
  %19 = call %struct.pci_ahci_softc* @calloc(i32 1, i32 40)
  store %struct.pci_ahci_softc* %19, %struct.pci_ahci_softc** %11, align 8
  %20 = load %struct.pci_ahci_softc*, %struct.pci_ahci_softc** %11, align 8
  %21 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %22 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %21, i32 0, i32 2
  store %struct.pci_ahci_softc* %20, %struct.pci_ahci_softc** %22, align 8
  %23 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %24 = load %struct.pci_ahci_softc*, %struct.pci_ahci_softc** %11, align 8
  %25 = getelementptr inbounds %struct.pci_ahci_softc, %struct.pci_ahci_softc* %24, i32 0, i32 7
  store %struct.pci_devinst* %23, %struct.pci_devinst** %25, align 8
  %26 = load %struct.pci_ahci_softc*, %struct.pci_ahci_softc** %11, align 8
  %27 = getelementptr inbounds %struct.pci_ahci_softc, %struct.pci_ahci_softc* %26, i32 0, i32 6
  %28 = call i32 @pthread_mutex_init(i32* %27, i32* null)
  %29 = load %struct.pci_ahci_softc*, %struct.pci_ahci_softc** %11, align 8
  %30 = getelementptr inbounds %struct.pci_ahci_softc, %struct.pci_ahci_softc* %29, i32 0, i32 0
  store i32 0, i32* %30, align 8
  %31 = load %struct.pci_ahci_softc*, %struct.pci_ahci_softc** %11, align 8
  %32 = getelementptr inbounds %struct.pci_ahci_softc, %struct.pci_ahci_softc* %31, i32 0, i32 1
  store i32 0, i32* %32, align 4
  store i32 32, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %33

33:                                               ; preds = %204, %4
  %34 = load i32, i32* %14, align 4
  %35 = load i32, i32* @MAX_PORTS, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i8*, i8** %7, align 8
  %39 = icmp ne i8* %38, null
  br label %40

40:                                               ; preds = %37, %33
  %41 = phi i1 [ false, %33 ], [ %39, %37 ]
  br i1 %41, label %42, label %208

42:                                               ; preds = %40
  %43 = load i8*, i8** %7, align 8
  %44 = call i64 @strncmp(i8* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  store i32 0, i32* %8, align 4
  %47 = load i8*, i8** %7, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 3
  store i8* %48, i8** %7, align 8
  br label %57

49:                                               ; preds = %42
  %50 = load i8*, i8** %7, align 8
  %51 = call i64 @strncmp(i8* %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  store i32 1, i32* %8, align 4
  %54 = load i8*, i8** %7, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 3
  store i8* %55, i8** %7, align 8
  br label %56

56:                                               ; preds = %53, %49
  br label %57

57:                                               ; preds = %56, %46
  %58 = load i8*, i8** %7, align 8
  %59 = call i8* @strstr(i8* %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i8* %59, i8** %17, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = call i8* @strstr(i8* %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i8* %61, i8** %18, align 8
  %62 = load i8*, i8** %17, align 8
  %63 = icmp eq i8* %62, null
  br i1 %63, label %71, label %64

64:                                               ; preds = %57
  %65 = load i8*, i8** %18, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = load i8*, i8** %18, align 8
  %69 = load i8*, i8** %17, align 8
  %70 = icmp ult i8* %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %67, %57
  %72 = load i8*, i8** %18, align 8
  store i8* %72, i8** %17, align 8
  br label %73

73:                                               ; preds = %71, %67, %64
  %74 = load i8*, i8** %17, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %81

76:                                               ; preds = %73
  %77 = load i8*, i8** %17, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 0
  store i8 0, i8* %78, align 1
  %79 = load i8*, i8** %17, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %17, align 8
  br label %81

81:                                               ; preds = %76, %73
  %82 = load i8*, i8** %7, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 0
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  br label %204

88:                                               ; preds = %81
  %89 = getelementptr inbounds [9 x i8], [9 x i8]* %9, i64 0, i64 0
  %90 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %91 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %94 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %14, align 4
  %97 = call i32 (i8*, i32, i8*, i32, i32, i32, ...) @snprintf(i8* %89, i32 9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %92, i32 %95, i32 %96)
  %98 = load i8*, i8** %7, align 8
  %99 = getelementptr inbounds [9 x i8], [9 x i8]* %9, i64 0, i64 0
  %100 = call %struct.blockif_ctxt* @blockif_open(i8* %98, i8* %99)
  store %struct.blockif_ctxt* %100, %struct.blockif_ctxt** %10, align 8
  %101 = load %struct.blockif_ctxt*, %struct.blockif_ctxt** %10, align 8
  %102 = icmp eq %struct.blockif_ctxt* %101, null
  br i1 %102, label %103, label %107

103:                                              ; preds = %88
  %104 = load i32, i32* %14, align 4
  %105 = load %struct.pci_ahci_softc*, %struct.pci_ahci_softc** %11, align 8
  %106 = getelementptr inbounds %struct.pci_ahci_softc, %struct.pci_ahci_softc* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  store i32 1, i32* %12, align 4
  br label %317

107:                                              ; preds = %88
  %108 = load %struct.blockif_ctxt*, %struct.blockif_ctxt** %10, align 8
  %109 = load %struct.pci_ahci_softc*, %struct.pci_ahci_softc** %11, align 8
  %110 = getelementptr inbounds %struct.pci_ahci_softc, %struct.pci_ahci_softc* %109, i32 0, i32 4
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = load i32, i32* %14, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 3
  store %struct.blockif_ctxt* %108, %struct.blockif_ctxt** %115, align 8
  %116 = load %struct.pci_ahci_softc*, %struct.pci_ahci_softc** %11, align 8
  %117 = load %struct.pci_ahci_softc*, %struct.pci_ahci_softc** %11, align 8
  %118 = getelementptr inbounds %struct.pci_ahci_softc, %struct.pci_ahci_softc* %117, i32 0, i32 4
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = load i32, i32* %14, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 5
  store %struct.pci_ahci_softc* %116, %struct.pci_ahci_softc** %123, align 8
  %124 = load i32, i32* %14, align 4
  %125 = load %struct.pci_ahci_softc*, %struct.pci_ahci_softc** %11, align 8
  %126 = getelementptr inbounds %struct.pci_ahci_softc, %struct.pci_ahci_softc* %125, i32 0, i32 4
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = load i32, i32* %14, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  store i32 %124, i32* %131, align 8
  %132 = load i32, i32* %8, align 4
  %133 = load %struct.pci_ahci_softc*, %struct.pci_ahci_softc** %11, align 8
  %134 = getelementptr inbounds %struct.pci_ahci_softc, %struct.pci_ahci_softc* %133, i32 0, i32 4
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %134, align 8
  %136 = load i32, i32* %14, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 1
  store i32 %132, i32* %139, align 4
  %140 = call i32 @MD5Init(i32* %15)
  %141 = load i8*, i8** %7, align 8
  %142 = load i8*, i8** %7, align 8
  %143 = call i32 @strlen(i8* %142)
  %144 = call i32 @MD5Update(i32* %15, i8* %141, i32 %143)
  %145 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i64 0, i64 0
  %146 = call i32 @MD5Final(i32* %145, i32* %15)
  %147 = load %struct.pci_ahci_softc*, %struct.pci_ahci_softc** %11, align 8
  %148 = getelementptr inbounds %struct.pci_ahci_softc, %struct.pci_ahci_softc* %147, i32 0, i32 4
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** %148, align 8
  %150 = load i32, i32* %14, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 8
  %155 = sext i32 %154 to i64
  %156 = inttoptr i64 %155 to i8*
  %157 = load i32, i32* @AHCI_PORT_IDENT, align 4
  %158 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i64 0, i64 0
  %159 = load i32, i32* %158, align 16
  %160 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i64 0, i64 1
  %161 = load i32, i32* %160, align 4
  %162 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i64 0, i64 2
  %163 = load i32, i32* %162, align 8
  %164 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i64 0, i64 3
  %165 = load i32, i32* %164, align 4
  %166 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i64 0, i64 4
  %167 = load i32, i32* %166, align 16
  %168 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i64 0, i64 5
  %169 = load i32, i32* %168, align 4
  %170 = call i32 (i8*, i32, i8*, i32, i32, i32, ...) @snprintf(i8* %156, i32 %157, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %159, i32 %161, i32 %163, i32 %165, i32 %167, i32 %169)
  %171 = load %struct.pci_ahci_softc*, %struct.pci_ahci_softc** %11, align 8
  %172 = getelementptr inbounds %struct.pci_ahci_softc, %struct.pci_ahci_softc* %171, i32 0, i32 4
  %173 = load %struct.TYPE_2__*, %struct.TYPE_2__** %172, align 8
  %174 = load i32, i32* %14, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i64 %175
  %177 = call i32 @pci_ahci_ioreq_init(%struct.TYPE_2__* %176)
  %178 = load i32, i32* %14, align 4
  %179 = shl i32 1, %178
  %180 = load %struct.pci_ahci_softc*, %struct.pci_ahci_softc** %11, align 8
  %181 = getelementptr inbounds %struct.pci_ahci_softc, %struct.pci_ahci_softc* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = or i32 %182, %179
  store i32 %183, i32* %181, align 4
  %184 = load %struct.pci_ahci_softc*, %struct.pci_ahci_softc** %11, align 8
  %185 = getelementptr inbounds %struct.pci_ahci_softc, %struct.pci_ahci_softc* %184, i32 0, i32 4
  %186 = load %struct.TYPE_2__*, %struct.TYPE_2__** %185, align 8
  %187 = load i32, i32* %14, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* %13, align 4
  %193 = icmp slt i32 %191, %192
  br i1 %193, label %194, label %203

194:                                              ; preds = %107
  %195 = load %struct.pci_ahci_softc*, %struct.pci_ahci_softc** %11, align 8
  %196 = getelementptr inbounds %struct.pci_ahci_softc, %struct.pci_ahci_softc* %195, i32 0, i32 4
  %197 = load %struct.TYPE_2__*, %struct.TYPE_2__** %196, align 8
  %198 = load i32, i32* %14, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  store i32 %202, i32* %13, align 4
  br label %203

203:                                              ; preds = %194, %107
  br label %204

204:                                              ; preds = %203, %87
  %205 = load i32, i32* %14, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %14, align 4
  %207 = load i8*, i8** %17, align 8
  store i8* %207, i8** %7, align 8
  br label %33

208:                                              ; preds = %40
  %209 = load i32, i32* %14, align 4
  %210 = load %struct.pci_ahci_softc*, %struct.pci_ahci_softc** %11, align 8
  %211 = getelementptr inbounds %struct.pci_ahci_softc, %struct.pci_ahci_softc* %210, i32 0, i32 0
  store i32 %209, i32* %211, align 8
  %212 = load i32, i32* %13, align 4
  %213 = add nsw i32 %212, -1
  store i32 %213, i32* %13, align 4
  %214 = load %struct.pci_ahci_softc*, %struct.pci_ahci_softc** %11, align 8
  %215 = getelementptr inbounds %struct.pci_ahci_softc, %struct.pci_ahci_softc* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* @DEF_PORTS, align 4
  %218 = icmp slt i32 %216, %217
  br i1 %218, label %219, label %223

219:                                              ; preds = %208
  %220 = load i32, i32* @DEF_PORTS, align 4
  %221 = load %struct.pci_ahci_softc*, %struct.pci_ahci_softc** %11, align 8
  %222 = getelementptr inbounds %struct.pci_ahci_softc, %struct.pci_ahci_softc* %221, i32 0, i32 0
  store i32 %220, i32* %222, align 8
  br label %223

223:                                              ; preds = %219, %208
  %224 = load i32, i32* @AHCI_CAP_64BIT, align 4
  %225 = load i32, i32* @AHCI_CAP_SNCQ, align 4
  %226 = or i32 %224, %225
  %227 = load i32, i32* @AHCI_CAP_SSNTF, align 4
  %228 = or i32 %226, %227
  %229 = load i32, i32* @AHCI_CAP_SMPS, align 4
  %230 = or i32 %228, %229
  %231 = load i32, i32* @AHCI_CAP_SSS, align 4
  %232 = or i32 %230, %231
  %233 = load i32, i32* @AHCI_CAP_SALP, align 4
  %234 = or i32 %232, %233
  %235 = load i32, i32* @AHCI_CAP_SAL, align 4
  %236 = or i32 %234, %235
  %237 = load i32, i32* @AHCI_CAP_SCLO, align 4
  %238 = or i32 %236, %237
  %239 = load i32, i32* @AHCI_CAP_ISS_SHIFT, align 4
  %240 = shl i32 3, %239
  %241 = or i32 %238, %240
  %242 = load i32, i32* @AHCI_CAP_PMD, align 4
  %243 = or i32 %241, %242
  %244 = load i32, i32* @AHCI_CAP_SSC, align 4
  %245 = or i32 %243, %244
  %246 = load i32, i32* @AHCI_CAP_PSC, align 4
  %247 = or i32 %245, %246
  %248 = load i32, i32* %13, align 4
  %249 = load i32, i32* @AHCI_CAP_NCS_SHIFT, align 4
  %250 = shl i32 %248, %249
  %251 = or i32 %247, %250
  %252 = load i32, i32* @AHCI_CAP_SXS, align 4
  %253 = or i32 %251, %252
  %254 = load %struct.pci_ahci_softc*, %struct.pci_ahci_softc** %11, align 8
  %255 = getelementptr inbounds %struct.pci_ahci_softc, %struct.pci_ahci_softc* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = sub nsw i32 %256, 1
  %258 = or i32 %253, %257
  %259 = load %struct.pci_ahci_softc*, %struct.pci_ahci_softc** %11, align 8
  %260 = getelementptr inbounds %struct.pci_ahci_softc, %struct.pci_ahci_softc* %259, i32 0, i32 2
  store i32 %258, i32* %260, align 8
  %261 = load %struct.pci_ahci_softc*, %struct.pci_ahci_softc** %11, align 8
  %262 = getelementptr inbounds %struct.pci_ahci_softc, %struct.pci_ahci_softc* %261, i32 0, i32 3
  store i32 66304, i32* %262, align 4
  %263 = load i32, i32* @AHCI_CAP2_APST, align 4
  %264 = load %struct.pci_ahci_softc*, %struct.pci_ahci_softc** %11, align 8
  %265 = getelementptr inbounds %struct.pci_ahci_softc, %struct.pci_ahci_softc* %264, i32 0, i32 5
  store i32 %263, i32* %265, align 8
  %266 = load %struct.pci_ahci_softc*, %struct.pci_ahci_softc** %11, align 8
  %267 = call i32 @ahci_reset(%struct.pci_ahci_softc* %266)
  %268 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %269 = load i32, i32* @PCIR_DEVICE, align 4
  %270 = call i32 @pci_set_cfgdata16(%struct.pci_devinst* %268, i32 %269, i32 10273)
  %271 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %272 = load i32, i32* @PCIR_VENDOR, align 4
  %273 = call i32 @pci_set_cfgdata16(%struct.pci_devinst* %271, i32 %272, i32 32902)
  %274 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %275 = load i32, i32* @PCIR_CLASS, align 4
  %276 = load i32, i32* @PCIC_STORAGE, align 4
  %277 = call i32 @pci_set_cfgdata8(%struct.pci_devinst* %274, i32 %275, i32 %276)
  %278 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %279 = load i32, i32* @PCIR_SUBCLASS, align 4
  %280 = load i32, i32* @PCIS_STORAGE_SATA, align 4
  %281 = call i32 @pci_set_cfgdata8(%struct.pci_devinst* %278, i32 %279, i32 %280)
  %282 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %283 = load i32, i32* @PCIR_PROGIF, align 4
  %284 = load i32, i32* @PCIP_STORAGE_SATA_AHCI_1_0, align 4
  %285 = call i32 @pci_set_cfgdata8(%struct.pci_devinst* %282, i32 %283, i32 %284)
  %286 = load %struct.pci_ahci_softc*, %struct.pci_ahci_softc** %11, align 8
  %287 = getelementptr inbounds %struct.pci_ahci_softc, %struct.pci_ahci_softc* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = call i32 @MIN(i32 %288, i32 16)
  store i32 %289, i32* %14, align 4
  %290 = load i32, i32* %14, align 4
  %291 = call i32 @flsl(i32 %290)
  %292 = load i32, i32* %14, align 4
  %293 = load i32, i32* %14, align 4
  %294 = sub nsw i32 %293, 1
  %295 = and i32 %292, %294
  %296 = icmp ne i32 %295, 0
  %297 = zext i1 %296 to i64
  %298 = select i1 %296, i32 0, i32 1
  %299 = sub nsw i32 %291, %298
  store i32 %299, i32* %14, align 4
  %300 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %301 = load i32, i32* %14, align 4
  %302 = shl i32 1, %301
  %303 = call i32 @pci_emul_add_msicap(%struct.pci_devinst* %300, i32 %302)
  %304 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %305 = load i32, i32* @PCIBAR_MEM32, align 4
  %306 = load i64, i64* @AHCI_OFFSET, align 8
  %307 = load %struct.pci_ahci_softc*, %struct.pci_ahci_softc** %11, align 8
  %308 = getelementptr inbounds %struct.pci_ahci_softc, %struct.pci_ahci_softc* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 8
  %310 = load i32, i32* @AHCI_STEP, align 4
  %311 = mul nsw i32 %309, %310
  %312 = sext i32 %311 to i64
  %313 = add nsw i64 %306, %312
  %314 = call i32 @pci_emul_alloc_bar(%struct.pci_devinst* %304, i32 5, i32 %305, i64 %313)
  %315 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %316 = call i32 @pci_lintr_request(%struct.pci_devinst* %315)
  br label %317

317:                                              ; preds = %223, %103
  %318 = load i32, i32* %12, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %354

320:                                              ; preds = %317
  store i32 0, i32* %14, align 4
  br label %321

321:                                              ; preds = %348, %320
  %322 = load i32, i32* %14, align 4
  %323 = load %struct.pci_ahci_softc*, %struct.pci_ahci_softc** %11, align 8
  %324 = getelementptr inbounds %struct.pci_ahci_softc, %struct.pci_ahci_softc* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 8
  %326 = icmp slt i32 %322, %325
  br i1 %326, label %327, label %351

327:                                              ; preds = %321
  %328 = load %struct.pci_ahci_softc*, %struct.pci_ahci_softc** %11, align 8
  %329 = getelementptr inbounds %struct.pci_ahci_softc, %struct.pci_ahci_softc* %328, i32 0, i32 4
  %330 = load %struct.TYPE_2__*, %struct.TYPE_2__** %329, align 8
  %331 = load i32, i32* %14, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %330, i64 %332
  %334 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %333, i32 0, i32 3
  %335 = load %struct.blockif_ctxt*, %struct.blockif_ctxt** %334, align 8
  %336 = icmp ne %struct.blockif_ctxt* %335, null
  br i1 %336, label %337, label %347

337:                                              ; preds = %327
  %338 = load %struct.pci_ahci_softc*, %struct.pci_ahci_softc** %11, align 8
  %339 = getelementptr inbounds %struct.pci_ahci_softc, %struct.pci_ahci_softc* %338, i32 0, i32 4
  %340 = load %struct.TYPE_2__*, %struct.TYPE_2__** %339, align 8
  %341 = load i32, i32* %14, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %340, i64 %342
  %344 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %343, i32 0, i32 3
  %345 = load %struct.blockif_ctxt*, %struct.blockif_ctxt** %344, align 8
  %346 = call i32 @blockif_close(%struct.blockif_ctxt* %345)
  br label %347

347:                                              ; preds = %337, %327
  br label %348

348:                                              ; preds = %347
  %349 = load i32, i32* %14, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* %14, align 4
  br label %321

351:                                              ; preds = %321
  %352 = load %struct.pci_ahci_softc*, %struct.pci_ahci_softc** %11, align 8
  %353 = call i32 @free(%struct.pci_ahci_softc* %352)
  br label %354

354:                                              ; preds = %351, %317
  %355 = load i32, i32* %12, align 4
  ret i32 %355
}

declare dso_local %struct.pci_ahci_softc* @calloc(i32, i32) #1

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32, ...) #1

declare dso_local %struct.blockif_ctxt* @blockif_open(i8*, i8*) #1

declare dso_local i32 @MD5Init(i32*) #1

declare dso_local i32 @MD5Update(i32*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @MD5Final(i32*, i32*) #1

declare dso_local i32 @pci_ahci_ioreq_init(%struct.TYPE_2__*) #1

declare dso_local i32 @ahci_reset(%struct.pci_ahci_softc*) #1

declare dso_local i32 @pci_set_cfgdata16(%struct.pci_devinst*, i32, i32) #1

declare dso_local i32 @pci_set_cfgdata8(%struct.pci_devinst*, i32, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @flsl(i32) #1

declare dso_local i32 @pci_emul_add_msicap(%struct.pci_devinst*, i32) #1

declare dso_local i32 @pci_emul_alloc_bar(%struct.pci_devinst*, i32, i32, i64) #1

declare dso_local i32 @pci_lintr_request(%struct.pci_devinst*) #1

declare dso_local i32 @blockif_close(%struct.blockif_ctxt*) #1

declare dso_local i32 @free(%struct.pci_ahci_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
