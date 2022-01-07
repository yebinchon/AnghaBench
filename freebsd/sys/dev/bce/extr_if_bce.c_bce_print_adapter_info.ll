; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bce/extr_if_bce.c_bce_print_adapter_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bce/extr_if_bce.c_bce_print_adapter_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bce_softc = type { i32, i32, i32, i32, i8*, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@BCE_VERBOSE_LOAD = common dso_local global i32 0, align 4
@bce_verbose = common dso_local global i64 0, align 8
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"ASIC (0x%08X); \00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Rev (%c%d); \00", align 1
@BCE_PCIE_FLAG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"Bus (PCIe x%d, \00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"2.5Gbps); \00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"5Gbps); \00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Unknown link speed); \00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Bus (PCI%s, %s, %dMHz); \00", align 1
@BCE_PCIX_FLAG = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [3 x i8] c"-X\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@BCE_PCI_32BIT_FLAG = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"32-bit\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"64-bit\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"B/C (%s); Bufs (RX:%d;TX:%d;PG:%d); Flags (\00", align 1
@bce_hdr_split = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [5 x i8] c"SPLT\00", align 1
@BCE_USING_MSI_FLAG = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"MSI\00", align 1
@BCE_USING_MSIX_FLAG = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [6 x i8] c"MSI-X\00", align 1
@BCE_PHY_2_5G_CAPABLE_FLAG = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [5 x i8] c"2.5G\00", align 1
@BCE_PHY_REMOTE_CAP_FLAG = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [15 x i8] c"Remote PHY(%s)\00", align 1
@BCE_PHY_REMOTE_PORT_FIBER_FLAG = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [6 x i8] c"FIBER\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"TP\00", align 1
@BCE_MFW_ENABLE_FLAG = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [16 x i8] c"MFW); MFW (%s)\0A\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.22 = private unnamed_addr constant [39 x i8] c"Coal (RX:%d,%d,%d,%d; TX:%d,%d,%d,%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bce_softc*)* @bce_print_adapter_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bce_print_adapter_info(%struct.bce_softc* %0) #0 {
  %2 = alloca %struct.bce_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.bce_softc* %0, %struct.bce_softc** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* @BCE_VERBOSE_LOAD, align 4
  %5 = call i32 @DBENTER(i32 %4)
  %6 = load i64, i64* @bce_verbose, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i64, i64* @bootverbose, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %213

11:                                               ; preds = %8, %1
  %12 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %13 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %12, i32 0, i32 18
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @BCE_PRINTF(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %17 = call i32 @BCE_CHIP_ID(%struct.bce_softc* %16)
  %18 = and i32 %17, 61440
  %19 = ashr i32 %18, 12
  %20 = add nsw i32 %19, 65
  %21 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %22 = call i32 @BCE_CHIP_ID(%struct.bce_softc* %21)
  %23 = and i32 %22, 4080
  %24 = ashr i32 %23, 4
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %20, i32 %24)
  %26 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %27 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @BCE_PCIE_FLAG, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %11
  %33 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %34 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  %37 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %38 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  switch i32 %39, label %44 [
    i32 1, label %40
    i32 2, label %42
  ]

40:                                               ; preds = %32
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %46

42:                                               ; preds = %32
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  br label %46

44:                                               ; preds = %32
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %42, %40
  br label %68

47:                                               ; preds = %11
  %48 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %49 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @BCE_PCIX_FLAG, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)
  %56 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %57 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @BCE_PCI_32BIT_FLAG, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)
  %64 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %65 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i8* %55, i8* %63, i32 %66)
  br label %68

68:                                               ; preds = %47, %46
  %69 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %70 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %69, i32 0, i32 4
  %71 = load i8*, i8** %70, align 8
  %72 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %73 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %76 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 4
  %78 = load i64, i64* @bce_hdr_split, align 8
  %79 = load i64, i64* @TRUE, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %68
  %82 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %83 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %82, i32 0, i32 7
  %84 = load i32, i32* %83, align 8
  br label %86

85:                                               ; preds = %68
  br label %86

86:                                               ; preds = %85, %81
  %87 = phi i32 [ %84, %81 ], [ 0, %85 ]
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i64 0, i64 0), i8* %71, i32 %74, i32 %77, i32 %87)
  %89 = load i64, i64* @bce_hdr_split, align 8
  %90 = load i64, i64* @TRUE, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %86
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %94 = load i32, i32* %3, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %92, %86
  %97 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %98 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @BCE_USING_MSI_FLAG, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %96
  %104 = load i32, i32* %3, align 4
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %103
  %107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  br label %108

108:                                              ; preds = %106, %103
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0))
  %110 = load i32, i32* %3, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %108, %96
  %113 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %114 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @BCE_USING_MSIX_FLAG, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %112
  %120 = load i32, i32* %3, align 4
  %121 = icmp sgt i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %119
  %123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  br label %124

124:                                              ; preds = %122, %119
  %125 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  %126 = load i32, i32* %3, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %3, align 4
  br label %128

128:                                              ; preds = %124, %112
  %129 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %130 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %129, i32 0, i32 8
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @BCE_PHY_2_5G_CAPABLE_FLAG, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %144

135:                                              ; preds = %128
  %136 = load i32, i32* %3, align 4
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %135
  %139 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  br label %140

140:                                              ; preds = %138, %135
  %141 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  %142 = load i32, i32* %3, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %3, align 4
  br label %144

144:                                              ; preds = %140, %128
  %145 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %146 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %145, i32 0, i32 8
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @BCE_PHY_REMOTE_CAP_FLAG, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %168

151:                                              ; preds = %144
  %152 = load i32, i32* %3, align 4
  %153 = icmp sgt i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %151
  %155 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  br label %156

156:                                              ; preds = %154, %151
  %157 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %158 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %157, i32 0, i32 8
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @BCE_PHY_REMOTE_PORT_FIBER_FLAG, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  %163 = zext i1 %162 to i64
  %164 = select i1 %162, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0)
  %165 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), i8* %164)
  %166 = load i32, i32* %3, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %3, align 4
  br label %168

168:                                              ; preds = %156, %144
  %169 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %170 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @BCE_MFW_ENABLE_FLAG, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %185

175:                                              ; preds = %168
  %176 = load i32, i32* %3, align 4
  %177 = icmp sgt i32 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %175
  %179 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  br label %180

180:                                              ; preds = %178, %175
  %181 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %182 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %181, i32 0, i32 9
  %183 = load i8*, i8** %182, align 8
  %184 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), i8* %183)
  br label %187

185:                                              ; preds = %168
  %186 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0))
  br label %187

187:                                              ; preds = %185, %180
  %188 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %189 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %188, i32 0, i32 10
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %192 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %191, i32 0, i32 11
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %195 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %194, i32 0, i32 12
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %198 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %197, i32 0, i32 13
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %201 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %200, i32 0, i32 14
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %204 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %203, i32 0, i32 15
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %207 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %206, i32 0, i32 16
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %210 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %209, i32 0, i32 17
  %211 = load i32, i32* %210, align 4
  %212 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22, i64 0, i64 0), i32 %190, i32 %193, i32 %196, i32 %199, i32 %202, i32 %205, i32 %208, i32 %211)
  br label %213

213:                                              ; preds = %187, %8
  %214 = load i32, i32* @BCE_VERBOSE_LOAD, align 4
  %215 = call i32 @DBEXIT(i32 %214)
  ret void
}

declare dso_local i32 @DBENTER(i32) #1

declare dso_local i32 @BCE_PRINTF(i8*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @BCE_CHIP_ID(%struct.bce_softc*) #1

declare dso_local i32 @DBEXIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
