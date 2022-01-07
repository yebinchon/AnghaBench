; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_interrupt_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_interrupt_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i8*, i32, i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32* }
%struct.TYPE_3__ = type { i32 }

@BXE_MSIX_CAPABLE_FLAG = common dso_local global i32 0, align 4
@BXE_MSI_CAPABLE_FLAG = common dso_local global i32 0, align 4
@DBG_LOAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"%d MSI and %d MSI-X vectors available\0A\00", align 1
@INTR_MODE_MSIX = common dso_local global i8* null, align 8
@INTR_MODE_MSI = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"Requesting %d MSI-X vectors\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"MSI-X alloc failed! (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"MSI-X allocation less than 2!\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"MSI-X vectors Requested %d and Allocated %d\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"Failed to map MSI-X[%d] (rid=%d)!\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Mapped MSI-X[%d] (rid=%d)\0A\00", align 1
@INTR_MODE_INTX = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [27 x i8] c"Requesting %d MSI vectors\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"MSI alloc failed (%d)!\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"MSI allocation is not 1!\0A\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"MSI vectors Requested %d and Allocated %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"Failed to map MSI[0] (rid=%d)!\0A\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"Mapped MSI[0] (rid=%d)\0A\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"Requesting legacy INTx interrupt\0A\00", align 1
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [30 x i8] c"Failed to map INTx (rid=%d)!\0A\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"Mapped INTx (rid=%d)\0A\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"Interrupt Allocation: FAILED!!!\0A\00", align 1
@.str.17 = private unnamed_addr constant [56 x i8] c"Interrupt Allocation: interrupt_mode=%d, num_queues=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*)* @bxe_interrupt_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxe_interrupt_alloc(%struct.bxe_softc* %0) #0 {
  %2 = alloca %struct.bxe_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %11 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %12 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = icmp ugt i8* %13, null
  br i1 %14, label %15, label %47

15:                                               ; preds = %1
  %16 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %17 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %16, i32 0, i32 5
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @BXE_MSIX_CAPABLE_FLAG, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %15
  %24 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %25 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @pci_msix_count(i32 %26)
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %23, %15
  %29 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %30 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %29, i32 0, i32 5
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @BXE_MSI_CAPABLE_FLAG, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %28
  %37 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %38 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @pci_msi_count(i32 %39)
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %36, %28
  %42 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %43 = load i32, i32* @DBG_LOAD, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* %3, align 4
  %46 = call i32 (%struct.bxe_softc*, i32, i8*, ...) @BLOGD(%struct.bxe_softc* %42, i32 %43, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %41, %1
  br label %48

48:                                               ; preds = %47
  %49 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %50 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load i8*, i8** @INTR_MODE_MSIX, align 8
  %53 = icmp ne i8* %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %217

55:                                               ; preds = %48
  %56 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %57 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %56, i32 0, i32 5
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @BXE_MSIX_CAPABLE_FLAG, align 4
  %61 = and i32 %59, %60
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %55
  %64 = load i32, i32* %3, align 4
  %65 = icmp slt i32 %64, 2
  br i1 %65, label %66, label %70

66:                                               ; preds = %63, %55
  %67 = load i8*, i8** @INTR_MODE_MSI, align 8
  %68 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %69 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %68, i32 0, i32 0
  store i8* %67, i8** %69, align 8
  br label %217

70:                                               ; preds = %63
  %71 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %72 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, 1
  %75 = load i32, i32* %3, align 4
  %76 = call i32 @min(i32 %74, i32 %75)
  store i32 %76, i32* %5, align 4
  %77 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %78 = load i32, i32* @DBG_LOAD, align 4
  %79 = load i32, i32* %5, align 4
  %80 = call i32 (%struct.bxe_softc*, i32, i8*, ...) @BLOGD(%struct.bxe_softc* %77, i32 %78, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* %5, align 4
  store i32 %81, i32* %6, align 4
  %82 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %83 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @pci_alloc_msix(i32 %84, i32* %6)
  store i32 %85, i32* %10, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %70
  %88 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %89 = load i32, i32* %10, align 4
  %90 = call i32 (%struct.bxe_softc*, i8*, ...) @BLOGE(%struct.bxe_softc* %88, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %89)
  %91 = load i8*, i8** @INTR_MODE_MSI, align 8
  %92 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %93 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %92, i32 0, i32 0
  store i8* %91, i8** %93, align 8
  br label %217

94:                                               ; preds = %70
  %95 = load i32, i32* %6, align 4
  %96 = icmp slt i32 %95, 2
  br i1 %96, label %97, label %107

97:                                               ; preds = %94
  %98 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %99 = call i32 (%struct.bxe_softc*, i8*, ...) @BLOGE(%struct.bxe_softc* %98, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %100 = load i8*, i8** @INTR_MODE_MSI, align 8
  %101 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %102 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %101, i32 0, i32 0
  store i8* %100, i8** %102, align 8
  %103 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %104 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @pci_release_msi(i32 %105)
  br label %217

107:                                              ; preds = %94
  %108 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* %6, align 4
  %111 = call i32 @BLOGI(%struct.bxe_softc* %108, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %109, i32 %110)
  %112 = load i32, i32* %6, align 4
  %113 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %114 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* %6, align 4
  %116 = sub nsw i32 %115, 1
  %117 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %118 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 8
  store i32 1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %119

119:                                              ; preds = %213, %107
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* %6, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %216

123:                                              ; preds = %119
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* %8, align 4
  %126 = add nsw i32 %124, %125
  %127 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %128 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %127, i32 0, i32 3
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = load i32, i32* %8, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  store i32 %126, i32* %133, align 8
  %134 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %135 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @SYS_RES_IRQ, align 4
  %138 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %139 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %138, i32 0, i32 3
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %139, align 8
  %141 = load i32, i32* %8, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = load i32, i32* @RF_ACTIVE, align 4
  %146 = call i8* @bus_alloc_resource_any(i32 %136, i32 %137, i32* %144, i32 %145)
  %147 = bitcast i8* %146 to i32*
  %148 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %149 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %148, i32 0, i32 3
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %149, align 8
  %151 = load i32, i32* %8, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 1
  store i32* %147, i32** %154, align 8
  %155 = icmp eq i32* %147, null
  br i1 %155, label %156, label %205

156:                                              ; preds = %123
  %157 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %158 = load i32, i32* %8, align 4
  %159 = load i32, i32* %7, align 4
  %160 = load i32, i32* %8, align 4
  %161 = add nsw i32 %159, %160
  %162 = call i32 (%struct.bxe_softc*, i8*, ...) @BLOGE(%struct.bxe_softc* %157, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %158, i32 %161)
  %163 = load i32, i32* %8, align 4
  %164 = sub nsw i32 %163, 1
  store i32 %164, i32* %9, align 4
  br label %165

165:                                              ; preds = %190, %156
  %166 = load i32, i32* %9, align 4
  %167 = icmp sge i32 %166, 0
  br i1 %167, label %168, label %193

168:                                              ; preds = %165
  %169 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %170 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %169, i32 0, i32 4
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @SYS_RES_IRQ, align 4
  %173 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %174 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %173, i32 0, i32 3
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %174, align 8
  %176 = load i32, i32* %9, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %182 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %181, i32 0, i32 3
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %182, align 8
  %184 = load i32, i32* %9, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 1
  %188 = load i32*, i32** %187, align 8
  %189 = call i32 @bus_release_resource(i32 %171, i32 %172, i32 %180, i32* %188)
  br label %190

190:                                              ; preds = %168
  %191 = load i32, i32* %9, align 4
  %192 = add nsw i32 %191, -1
  store i32 %192, i32* %9, align 4
  br label %165

193:                                              ; preds = %165
  %194 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %195 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %194, i32 0, i32 2
  store i32 0, i32* %195, align 4
  %196 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %197 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %196, i32 0, i32 1
  store i32 0, i32* %197, align 8
  %198 = load i8*, i8** @INTR_MODE_MSI, align 8
  %199 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %200 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %199, i32 0, i32 0
  store i8* %198, i8** %200, align 8
  %201 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %202 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %201, i32 0, i32 4
  %203 = load i32, i32* %202, align 8
  %204 = call i32 @pci_release_msi(i32 %203)
  br label %216

205:                                              ; preds = %123
  %206 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %207 = load i32, i32* @DBG_LOAD, align 4
  %208 = load i32, i32* %8, align 4
  %209 = load i32, i32* %7, align 4
  %210 = load i32, i32* %8, align 4
  %211 = add nsw i32 %209, %210
  %212 = call i32 (%struct.bxe_softc*, i32, i8*, ...) @BLOGD(%struct.bxe_softc* %206, i32 %207, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %208, i32 %211)
  br label %213

213:                                              ; preds = %205
  %214 = load i32, i32* %8, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %8, align 4
  br label %119

216:                                              ; preds = %193, %119
  br label %217

217:                                              ; preds = %216, %97, %87, %66, %54
  br label %218

218:                                              ; preds = %217
  %219 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %220 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %219, i32 0, i32 0
  %221 = load i8*, i8** %220, align 8
  %222 = load i8*, i8** @INTR_MODE_MSI, align 8
  %223 = icmp ne i8* %221, %222
  br i1 %223, label %224, label %225

224:                                              ; preds = %218
  br label %326

225:                                              ; preds = %218
  %226 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %227 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %226, i32 0, i32 5
  %228 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* @BXE_MSI_CAPABLE_FLAG, align 4
  %231 = and i32 %229, %230
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %236, label %233

233:                                              ; preds = %225
  %234 = load i32, i32* %4, align 4
  %235 = icmp slt i32 %234, 1
  br i1 %235, label %236, label %240

236:                                              ; preds = %233, %225
  %237 = load i8*, i8** @INTR_MODE_INTX, align 8
  %238 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %239 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %238, i32 0, i32 0
  store i8* %237, i8** %239, align 8
  br label %326

240:                                              ; preds = %233
  store i32 1, i32* %5, align 4
  %241 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %242 = load i32, i32* @DBG_LOAD, align 4
  %243 = load i32, i32* %5, align 4
  %244 = call i32 (%struct.bxe_softc*, i32, i8*, ...) @BLOGD(%struct.bxe_softc* %241, i32 %242, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %243)
  %245 = load i32, i32* %5, align 4
  store i32 %245, i32* %6, align 4
  %246 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %247 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %246, i32 0, i32 4
  %248 = load i32, i32* %247, align 8
  %249 = call i32 @pci_alloc_msi(i32 %248, i32* %6)
  store i32 %249, i32* %10, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %258

251:                                              ; preds = %240
  %252 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %253 = load i32, i32* %10, align 4
  %254 = call i32 (%struct.bxe_softc*, i8*, ...) @BLOGE(%struct.bxe_softc* %252, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 %253)
  %255 = load i8*, i8** @INTR_MODE_INTX, align 8
  %256 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %257 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %256, i32 0, i32 0
  store i8* %255, i8** %257, align 8
  br label %326

258:                                              ; preds = %240
  %259 = load i32, i32* %6, align 4
  %260 = icmp ne i32 %259, 1
  br i1 %260, label %261, label %271

261:                                              ; preds = %258
  %262 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %263 = call i32 (%struct.bxe_softc*, i8*, ...) @BLOGE(%struct.bxe_softc* %262, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  %264 = load i8*, i8** @INTR_MODE_INTX, align 8
  %265 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %266 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %265, i32 0, i32 0
  store i8* %264, i8** %266, align 8
  %267 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %268 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %267, i32 0, i32 4
  %269 = load i32, i32* %268, align 8
  %270 = call i32 @pci_release_msi(i32 %269)
  br label %326

271:                                              ; preds = %258
  %272 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %273 = load i32, i32* %5, align 4
  %274 = load i32, i32* %6, align 4
  %275 = call i32 @BLOGI(%struct.bxe_softc* %272, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0), i32 %273, i32 %274)
  %276 = load i32, i32* %6, align 4
  %277 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %278 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %277, i32 0, i32 2
  store i32 %276, i32* %278, align 4
  %279 = load i32, i32* %6, align 4
  %280 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %281 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %280, i32 0, i32 1
  store i32 %279, i32* %281, align 8
  store i32 1, i32* %7, align 4
  %282 = load i32, i32* %7, align 4
  %283 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %284 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %283, i32 0, i32 3
  %285 = load %struct.TYPE_4__*, %struct.TYPE_4__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %285, i64 0
  %287 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %286, i32 0, i32 0
  store i32 %282, i32* %287, align 8
  %288 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %289 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %288, i32 0, i32 4
  %290 = load i32, i32* %289, align 8
  %291 = load i32, i32* @SYS_RES_IRQ, align 4
  %292 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %293 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %292, i32 0, i32 3
  %294 = load %struct.TYPE_4__*, %struct.TYPE_4__** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %294, i64 0
  %296 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %295, i32 0, i32 0
  %297 = load i32, i32* @RF_ACTIVE, align 4
  %298 = call i8* @bus_alloc_resource_any(i32 %290, i32 %291, i32* %296, i32 %297)
  %299 = bitcast i8* %298 to i32*
  %300 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %301 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %300, i32 0, i32 3
  %302 = load %struct.TYPE_4__*, %struct.TYPE_4__** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %302, i64 0
  %304 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %303, i32 0, i32 1
  store i32* %299, i32** %304, align 8
  %305 = icmp eq i32* %299, null
  br i1 %305, label %306, label %321

306:                                              ; preds = %271
  %307 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %308 = load i32, i32* %7, align 4
  %309 = call i32 (%struct.bxe_softc*, i8*, ...) @BLOGE(%struct.bxe_softc* %307, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i32 %308)
  %310 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %311 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %310, i32 0, i32 2
  store i32 0, i32* %311, align 4
  %312 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %313 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %312, i32 0, i32 1
  store i32 0, i32* %313, align 8
  %314 = load i8*, i8** @INTR_MODE_INTX, align 8
  %315 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %316 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %315, i32 0, i32 0
  store i8* %314, i8** %316, align 8
  %317 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %318 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %317, i32 0, i32 4
  %319 = load i32, i32* %318, align 8
  %320 = call i32 @pci_release_msi(i32 %319)
  br label %326

321:                                              ; preds = %271
  %322 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %323 = load i32, i32* @DBG_LOAD, align 4
  %324 = load i32, i32* %7, align 4
  %325 = call i32 (%struct.bxe_softc*, i32, i8*, ...) @BLOGD(%struct.bxe_softc* %322, i32 %323, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i32 %324)
  br label %326

326:                                              ; preds = %321, %306, %261, %251, %236, %224
  br label %327

327:                                              ; preds = %326
  %328 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %329 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %328, i32 0, i32 0
  %330 = load i8*, i8** %329, align 8
  %331 = load i8*, i8** @INTR_MODE_INTX, align 8
  %332 = icmp ne i8* %330, %331
  br i1 %332, label %333, label %334

333:                                              ; preds = %327
  br label %383

334:                                              ; preds = %327
  %335 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %336 = load i32, i32* @DBG_LOAD, align 4
  %337 = call i32 (%struct.bxe_softc*, i32, i8*, ...) @BLOGD(%struct.bxe_softc* %335, i32 %336, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0))
  %338 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %339 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %338, i32 0, i32 2
  store i32 1, i32* %339, align 4
  %340 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %341 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %340, i32 0, i32 1
  store i32 1, i32* %341, align 8
  store i32 0, i32* %7, align 4
  %342 = load i32, i32* %7, align 4
  %343 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %344 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %343, i32 0, i32 3
  %345 = load %struct.TYPE_4__*, %struct.TYPE_4__** %344, align 8
  %346 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %345, i64 0
  %347 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %346, i32 0, i32 0
  store i32 %342, i32* %347, align 8
  %348 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %349 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %348, i32 0, i32 4
  %350 = load i32, i32* %349, align 8
  %351 = load i32, i32* @SYS_RES_IRQ, align 4
  %352 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %353 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %352, i32 0, i32 3
  %354 = load %struct.TYPE_4__*, %struct.TYPE_4__** %353, align 8
  %355 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %354, i64 0
  %356 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %355, i32 0, i32 0
  %357 = load i32, i32* @RF_ACTIVE, align 4
  %358 = load i32, i32* @RF_SHAREABLE, align 4
  %359 = or i32 %357, %358
  %360 = call i8* @bus_alloc_resource_any(i32 %350, i32 %351, i32* %356, i32 %359)
  %361 = bitcast i8* %360 to i32*
  %362 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %363 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %362, i32 0, i32 3
  %364 = load %struct.TYPE_4__*, %struct.TYPE_4__** %363, align 8
  %365 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %364, i64 0
  %366 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %365, i32 0, i32 1
  store i32* %361, i32** %366, align 8
  %367 = icmp eq i32* %361, null
  br i1 %367, label %368, label %378

368:                                              ; preds = %334
  %369 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %370 = load i32, i32* %7, align 4
  %371 = call i32 (%struct.bxe_softc*, i8*, ...) @BLOGE(%struct.bxe_softc* %369, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 %370)
  %372 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %373 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %372, i32 0, i32 2
  store i32 0, i32* %373, align 4
  %374 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %375 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %374, i32 0, i32 1
  store i32 0, i32* %375, align 8
  %376 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %377 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %376, i32 0, i32 0
  store i8* inttoptr (i64 -1 to i8*), i8** %377, align 8
  br label %383

378:                                              ; preds = %334
  %379 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %380 = load i32, i32* @DBG_LOAD, align 4
  %381 = load i32, i32* %7, align 4
  %382 = call i32 (%struct.bxe_softc*, i32, i8*, ...) @BLOGD(%struct.bxe_softc* %379, i32 %380, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0), i32 %381)
  br label %383

383:                                              ; preds = %378, %368, %333
  %384 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %385 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %384, i32 0, i32 0
  %386 = load i8*, i8** %385, align 8
  %387 = icmp eq i8* %386, inttoptr (i64 -1 to i8*)
  br i1 %387, label %388, label %391

388:                                              ; preds = %383
  %389 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %390 = call i32 (%struct.bxe_softc*, i8*, ...) @BLOGE(%struct.bxe_softc* %389, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i64 0, i64 0))
  store i32 1, i32* %10, align 4
  br label %401

391:                                              ; preds = %383
  %392 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %393 = load i32, i32* @DBG_LOAD, align 4
  %394 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %395 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %394, i32 0, i32 0
  %396 = load i8*, i8** %395, align 8
  %397 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %398 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %397, i32 0, i32 1
  %399 = load i32, i32* %398, align 8
  %400 = call i32 (%struct.bxe_softc*, i32, i8*, ...) @BLOGD(%struct.bxe_softc* %392, i32 %393, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.17, i64 0, i64 0), i8* %396, i32 %399)
  store i32 0, i32* %10, align 4
  br label %401

401:                                              ; preds = %391, %388
  %402 = load i32, i32* %10, align 4
  ret i32 %402
}

declare dso_local i32 @pci_msix_count(i32) #1

declare dso_local i32 @pci_msi_count(i32) #1

declare dso_local i32 @BLOGD(%struct.bxe_softc*, i32, i8*, ...) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @pci_alloc_msix(i32, i32*) #1

declare dso_local i32 @BLOGE(%struct.bxe_softc*, i8*, ...) #1

declare dso_local i32 @pci_release_msi(i32) #1

declare dso_local i32 @BLOGI(%struct.bxe_softc*, i8*, i32, i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @pci_alloc_msi(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
