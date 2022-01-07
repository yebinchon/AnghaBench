; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c_sym_prepare_setting.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c_sym_prepare_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i64, %struct.TYPE_16__*, i32, i32 }
%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i64, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.sym_nvram = type { i32 }

@FE_WIDE = common dso_local global i32 0, align 4
@FE_QUAD = common dso_local global i32 0, align 4
@FE_DBLR = common dso_local global i32 0, align 4
@FE_CLK80 = common dso_local global i32 0, align 4
@SYM_CONF_MIN_ASYNC = common dso_local global i64 0, align 8
@div_10M = common dso_local global i64* null, align 8
@FE_C10 = common dso_local global i32 0, align 4
@FE_ULTRA = common dso_local global i32 0, align 4
@FE_ULTRA2 = common dso_local global i32 0, align 4
@FE_ULTRA3 = common dso_local global i32 0, align 4
@FE_DAC = common dso_local global i32 0, align 4
@XTIMOD = common dso_local global i32 0, align 4
@EXTIBMV = common dso_local global i32 0, align 4
@FE_NOPM = common dso_local global i32 0, align 4
@ENPMJ = common dso_local global i32 0, align 4
@PCI_ID_LSI53C1010 = common dso_local global i64 0, align 8
@DILS = common dso_local global i32 0, align 4
@SYM_SETUP_BURST_ORDER = common dso_local global i32 0, align 4
@PCI_ID_SYM53C810 = common dso_local global i64 0, align 8
@PCI_ID_SYM53C860 = common dso_local global i64 0, align 8
@FE_WRIE = common dso_local global i32 0, align 4
@FE_ERL = common dso_local global i32 0, align 4
@FE_ERMP = common dso_local global i32 0, align 4
@ERL = common dso_local global i32 0, align 4
@FE_BOF = common dso_local global i32 0, align 4
@BOF = common dso_local global i32 0, align 4
@ERMP = common dso_local global i32 0, align 4
@FE_PFEN = common dso_local global i32 0, align 4
@PFEN = common dso_local global i32 0, align 4
@FE_CLSE = common dso_local global i32 0, align 4
@CLSE = common dso_local global i32 0, align 4
@WRIE = common dso_local global i32 0, align 4
@FE_DFS = common dso_local global i32 0, align 4
@DFS = common dso_local global i32 0, align 4
@SYM_SETUP_PCI_PARITY = common dso_local global i64 0, align 8
@MPEE = common dso_local global i32 0, align 4
@SYM_SETUP_SCSI_PARITY = common dso_local global i64 0, align 8
@nc_scid = common dso_local global i32 0, align 4
@SYM_SETUP_HOST_ID = common dso_local global i32 0, align 4
@SMODE_SE = common dso_local global i32 0, align 4
@SMODE = common dso_local global i32 0, align 4
@FE_DIFF = common dso_local global i32 0, align 4
@SYM_SETUP_SCSI_DIFF = common dso_local global i32 0, align 4
@SMODE_HVD = common dso_local global i8* null, align 8
@SYM_SYMBIOS_NVRAM = common dso_local global i32 0, align 4
@nc_gpreg = common dso_local global i32 0, align 4
@SYM_SETUP_SCSI_LED = common dso_local global i64 0, align 8
@SYM_TEKRAM_NVRAM = common dso_local global i32 0, align 4
@PCI_ID_SYM53C895 = common dso_local global i64 0, align 8
@FE_LEDC = common dso_local global i32 0, align 4
@FE_LED0 = common dso_local global i32 0, align 4
@SYM_SETUP_IRQ_MODE = common dso_local global i32 0, align 4
@IRQM = common dso_local global i32 0, align 4
@SYM_CONF_MAX_TARGET = common dso_local global i32 0, align 4
@BUS_16_BIT = common dso_local global i64 0, align 8
@BUS_8_BIT = common dso_local global i64 0, align 8
@SYM_DISC_ENABLED = common dso_local global i32 0, align 4
@SYM_TAGS_ENABLED = common dso_local global i32 0, align 4
@SYM_SETUP_MAX_TAG = common dso_local global i32 0, align 4
@PPR_OPT_DT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"%s: %s NVRAM, ID %d, Fast-%d, %s, %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Symbios\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Tekram\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"No\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"parity checking\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"NO parity\00", align 1
@sym_verbose = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"%s: %s IRQ line driver%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"totem pole\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"open drain\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c", using on-chip SRAM\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"%s: using %s firmware.\0A\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"%s: handling phase mismatch from SCRIPTS.\0A\00", align 1
@.str.13 = private unnamed_addr constant [81 x i8] c"%s: initial SCNTL3/DMODE/DCNTL/CTEST3/4/5 = (hex) %02x/%02x/%02x/%02x/%02x/%02x\0A\00", align 1
@.str.14 = private unnamed_addr constant [81 x i8] c"%s: final   SCNTL3/DMODE/DCNTL/CTEST3/4/5 = (hex) %02x/%02x/%02x/%02x/%02x/%02x\0A\00", align 1
@SYM_SCAN_BOOT_DISABLED = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [13 x i8] c"SCAN AT BOOT\00", align 1
@SYM_SCAN_LUNS_DISABLED = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [14 x i8] c"SCAN FOR LUNS\00", align 1
@DDAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.sym_nvram*)* @sym_prepare_setting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sym_prepare_setting(%struct.TYPE_17__* %0, %struct.sym_nvram* %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.sym_nvram*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store %struct.sym_nvram* %1, %struct.sym_nvram** %4, align 8
  %9 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @FE_WIDE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 1, i32 0
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @FE_QUAD, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 2
  store i32 4, i32* %27, align 8
  br label %42

28:                                               ; preds = %2
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @FE_DBLR, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 2
  store i32 2, i32* %37, align 8
  br label %41

38:                                               ; preds = %28
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 2
  store i32 1, i32* %40, align 8
  br label %41

41:                                               ; preds = %38, %35
  br label %42

42:                                               ; preds = %41, %25
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @FE_CLK80, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 80000, i32 40000
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 4
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = mul nsw i32 %58, %55
  store i32 %59, i32* %57, align 4
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 40000
  br i1 %63, label %64, label %70

64:                                               ; preds = %42
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @sym_getclock(%struct.TYPE_17__* %65, i32 %68)
  br label %70

70:                                               ; preds = %64, %42
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = sub nsw i32 %73, 1
  store i32 %74, i32* %7, align 4
  br label %75

75:                                               ; preds = %96, %70
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %7, align 4
  %78 = icmp sge i32 %77, 0
  br i1 %78, label %79, label %97

79:                                               ; preds = %75
  %80 = load i64, i64* @SYM_CONF_MIN_ASYNC, align 8
  %81 = mul i64 10, %80
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = mul i64 %81, %85
  %87 = load i64*, i64** @div_10M, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %87, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = icmp ugt i64 %86, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %79
  %94 = load i32, i32* %7, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %7, align 4
  br label %97

96:                                               ; preds = %79
  br label %75

97:                                               ; preds = %93, %75
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 %98, 1
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 5
  store i32 %99, i32* %101, align 4
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @FE_C10, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %97
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 5
  store i32 0, i32* %110, align 4
  br label %111

111:                                              ; preds = %108, %97
  %112 = load i64*, i64** @div_10M, align 8
  %113 = getelementptr inbounds i64, i64* %112, i64 0
  %114 = load i64, i64* %113, align 8
  %115 = mul i64 4, %114
  %116 = trunc i64 %115 to i32
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = call i8* @howmany(i32 %116, i32 %119)
  %121 = ptrtoint i8* %120 to i32
  store i32 %121, i32* %6, align 4
  %122 = load i32, i32* %6, align 4
  %123 = icmp sle i32 %122, 250
  br i1 %123, label %124, label %127

124:                                              ; preds = %111
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 6
  store i32 10, i32* %126, align 8
  br label %147

127:                                              ; preds = %111
  %128 = load i32, i32* %6, align 4
  %129 = icmp sle i32 %128, 303
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 6
  store i32 11, i32* %132, align 8
  br label %146

133:                                              ; preds = %127
  %134 = load i32, i32* %6, align 4
  %135 = icmp sle i32 %134, 500
  br i1 %135, label %136, label %139

136:                                              ; preds = %133
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 6
  store i32 12, i32* %138, align 8
  br label %145

139:                                              ; preds = %133
  %140 = load i32, i32* %6, align 4
  %141 = call i8* @howmany(i32 %140, i32 40)
  %142 = ptrtoint i8* %141 to i32
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 6
  store i32 %142, i32* %144, align 8
  br label %145

145:                                              ; preds = %139, %136
  br label %146

146:                                              ; preds = %145, %130
  br label %147

147:                                              ; preds = %146, %124
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 6
  %150 = load i32, i32* %149, align 8
  %151 = icmp slt i32 %150, 25
  br i1 %151, label %152, label %166

152:                                              ; preds = %147
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @FE_ULTRA, align 4
  %157 = load i32, i32* @FE_ULTRA2, align 4
  %158 = or i32 %156, %157
  %159 = load i32, i32* @FE_ULTRA3, align 4
  %160 = or i32 %158, %159
  %161 = and i32 %155, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %166, label %163

163:                                              ; preds = %152
  %164 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %164, i32 0, i32 6
  store i32 25, i32* %165, align 8
  br label %184

166:                                              ; preds = %152, %147
  %167 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %167, i32 0, i32 6
  %169 = load i32, i32* %168, align 8
  %170 = icmp slt i32 %169, 12
  br i1 %170, label %171, label %183

171:                                              ; preds = %166
  %172 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @FE_ULTRA2, align 4
  %176 = load i32, i32* @FE_ULTRA3, align 4
  %177 = or i32 %175, %176
  %178 = and i32 %174, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %183, label %180

180:                                              ; preds = %171
  %181 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %181, i32 0, i32 6
  store i32 12, i32* %182, align 8
  br label %183

183:                                              ; preds = %180, %171, %166
  br label %184

184:                                              ; preds = %183, %163
  %185 = load i64*, i64** @div_10M, align 8
  %186 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 8
  %189 = sub nsw i32 %188, 1
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i64, i64* %185, i64 %190
  %192 = load i64, i64* %191, align 8
  %193 = mul i64 11, %192
  %194 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 4
  %197 = mul nsw i32 4, %196
  %198 = sext i32 %197 to i64
  %199 = udiv i64 %193, %198
  %200 = trunc i64 %199 to i32
  store i32 %200, i32* %6, align 4
  %201 = load i32, i32* %6, align 4
  %202 = icmp sgt i32 %201, 2540
  br i1 %202, label %203, label %204

203:                                              ; preds = %184
  br label %207

204:                                              ; preds = %184
  %205 = load i32, i32* %6, align 4
  %206 = sdiv i32 %205, 10
  br label %207

207:                                              ; preds = %204, %203
  %208 = phi i32 [ 254, %203 ], [ %206, %204 ]
  %209 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %209, i32 0, i32 7
  store i32 %208, i32* %210, align 4
  %211 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @FE_C10, align 4
  %215 = load i32, i32* @FE_ULTRA3, align 4
  %216 = or i32 %214, %215
  %217 = and i32 %213, %216
  %218 = load i32, i32* @FE_C10, align 4
  %219 = load i32, i32* @FE_ULTRA3, align 4
  %220 = or i32 %218, %219
  %221 = icmp eq i32 %217, %220
  br i1 %221, label %222, label %235

222:                                              ; preds = %207
  %223 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %224 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 4
  %226 = icmp eq i32 %225, 160000
  br i1 %226, label %227, label %234

227:                                              ; preds = %222
  %228 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %229 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %228, i32 0, i32 8
  store i32 9, i32* %229, align 8
  %230 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %230, i32 0, i32 9
  store i32 50, i32* %231, align 4
  %232 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %233 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %232, i32 0, i32 10
  store i32 62, i32* %233, align 8
  br label %234

234:                                              ; preds = %227, %222
  br label %235

235:                                              ; preds = %234, %207
  %236 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %237 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* @FE_DAC, align 4
  %240 = and i32 %238, %239
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %250

242:                                              ; preds = %235
  %243 = load i32, i32* @XTIMOD, align 4
  %244 = load i32, i32* @EXTIBMV, align 4
  %245 = or i32 %243, %244
  %246 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %247 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %246, i32 0, i32 11
  %248 = load i32, i32* %247, align 4
  %249 = or i32 %248, %245
  store i32 %249, i32* %247, align 4
  br label %250

250:                                              ; preds = %242, %235
  %251 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %252 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* @FE_NOPM, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %263

257:                                              ; preds = %250
  %258 = load i32, i32* @ENPMJ, align 4
  %259 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %260 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %259, i32 0, i32 38
  %261 = load i32, i32* %260, align 4
  %262 = or i32 %261, %258
  store i32 %262, i32* %260, align 4
  br label %263

263:                                              ; preds = %257, %250
  %264 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %265 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %264, i32 0, i32 12
  %266 = load i64, i64* %265, align 8
  %267 = load i64, i64* @PCI_ID_LSI53C1010, align 8
  %268 = icmp eq i64 %266, %267
  br i1 %268, label %269, label %280

269:                                              ; preds = %263
  %270 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %271 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %270, i32 0, i32 13
  %272 = load i32, i32* %271, align 8
  %273 = icmp slt i32 %272, 2
  br i1 %273, label %274, label %280

274:                                              ; preds = %269
  %275 = load i32, i32* @DILS, align 4
  %276 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %277 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %276, i32 0, i32 38
  %278 = load i32, i32* %277, align 4
  %279 = or i32 %278, %275
  store i32 %279, i32* %277, align 4
  br label %280

280:                                              ; preds = %274, %269, %263
  %281 = load i32, i32* @SYM_SETUP_BURST_ORDER, align 4
  store i32 %281, i32* %5, align 4
  %282 = load i32, i32* %5, align 4
  %283 = icmp eq i32 %282, 255
  br i1 %283, label %284, label %295

284:                                              ; preds = %280
  %285 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %286 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %285, i32 0, i32 14
  %287 = load i32, i32* %286, align 4
  %288 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %289 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %288, i32 0, i32 15
  %290 = load i32, i32* %289, align 8
  %291 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %292 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %291, i32 0, i32 16
  %293 = load i32, i32* %292, align 4
  %294 = call i32 @burst_code(i32 %287, i32 %290, i32 %293)
  store i32 %294, i32* %5, align 4
  br label %295

295:                                              ; preds = %284, %280
  %296 = load i32, i32* %5, align 4
  %297 = icmp sgt i32 %296, 7
  br i1 %297, label %298, label %299

298:                                              ; preds = %295
  store i32 7, i32* %5, align 4
  br label %299

299:                                              ; preds = %298, %295
  %300 = load i32, i32* %5, align 4
  %301 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %302 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %301, i32 0, i32 17
  %303 = load i32, i32* %302, align 8
  %304 = icmp sgt i32 %300, %303
  br i1 %304, label %305, label %309

305:                                              ; preds = %299
  %306 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %307 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %306, i32 0, i32 17
  %308 = load i32, i32* %307, align 8
  store i32 %308, i32* %5, align 4
  br label %309

309:                                              ; preds = %305, %299
  %310 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %311 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %310, i32 0, i32 12
  %312 = load i64, i64* %311, align 8
  %313 = load i64, i64* @PCI_ID_SYM53C810, align 8
  %314 = icmp eq i64 %312, %313
  br i1 %314, label %315, label %325

315:                                              ; preds = %309
  %316 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %317 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %316, i32 0, i32 13
  %318 = load i32, i32* %317, align 8
  %319 = icmp sge i32 %318, 16
  br i1 %319, label %320, label %325

320:                                              ; preds = %315
  %321 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %322 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %321, i32 0, i32 13
  %323 = load i32, i32* %322, align 8
  %324 = icmp sle i32 %323, 17
  br i1 %324, label %336, label %325

325:                                              ; preds = %320, %315, %309
  %326 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %327 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %326, i32 0, i32 12
  %328 = load i64, i64* %327, align 8
  %329 = load i64, i64* @PCI_ID_SYM53C860, align 8
  %330 = icmp eq i64 %328, %329
  br i1 %330, label %331, label %347

331:                                              ; preds = %325
  %332 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %333 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %332, i32 0, i32 13
  %334 = load i32, i32* %333, align 8
  %335 = icmp sle i32 %334, 1
  br i1 %335, label %336, label %347

336:                                              ; preds = %331, %320
  %337 = load i32, i32* @FE_WRIE, align 4
  %338 = load i32, i32* @FE_ERL, align 4
  %339 = or i32 %337, %338
  %340 = load i32, i32* @FE_ERMP, align 4
  %341 = or i32 %339, %340
  %342 = xor i32 %341, -1
  %343 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %344 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %343, i32 0, i32 1
  %345 = load i32, i32* %344, align 4
  %346 = and i32 %345, %342
  store i32 %346, i32* %344, align 4
  br label %347

347:                                              ; preds = %336, %331, %325
  %348 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %349 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %348, i32 0, i32 1
  %350 = load i32, i32* %349, align 4
  %351 = load i32, i32* @FE_ERL, align 4
  %352 = and i32 %350, %351
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %360

354:                                              ; preds = %347
  %355 = load i32, i32* @ERL, align 4
  %356 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %357 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %356, i32 0, i32 18
  %358 = load i32, i32* %357, align 4
  %359 = or i32 %358, %355
  store i32 %359, i32* %357, align 4
  br label %360

360:                                              ; preds = %354, %347
  %361 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %362 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %361, i32 0, i32 1
  %363 = load i32, i32* %362, align 4
  %364 = load i32, i32* @FE_BOF, align 4
  %365 = and i32 %363, %364
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %373

367:                                              ; preds = %360
  %368 = load i32, i32* @BOF, align 4
  %369 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %370 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %369, i32 0, i32 18
  %371 = load i32, i32* %370, align 4
  %372 = or i32 %371, %368
  store i32 %372, i32* %370, align 4
  br label %373

373:                                              ; preds = %367, %360
  %374 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %375 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %374, i32 0, i32 1
  %376 = load i32, i32* %375, align 4
  %377 = load i32, i32* @FE_ERMP, align 4
  %378 = and i32 %376, %377
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %386

380:                                              ; preds = %373
  %381 = load i32, i32* @ERMP, align 4
  %382 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %383 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %382, i32 0, i32 18
  %384 = load i32, i32* %383, align 4
  %385 = or i32 %384, %381
  store i32 %385, i32* %383, align 4
  br label %386

386:                                              ; preds = %380, %373
  %387 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %388 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %387, i32 0, i32 1
  %389 = load i32, i32* %388, align 4
  %390 = load i32, i32* @FE_PFEN, align 4
  %391 = and i32 %389, %390
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %404

393:                                              ; preds = %386
  %394 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %395 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %394, i32 0, i32 35
  %396 = load i64, i64* %395, align 8
  %397 = icmp ne i64 %396, 0
  br i1 %397, label %404, label %398

398:                                              ; preds = %393
  %399 = load i32, i32* @PFEN, align 4
  %400 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %401 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %400, i32 0, i32 19
  %402 = load i32, i32* %401, align 8
  %403 = or i32 %402, %399
  store i32 %403, i32* %401, align 8
  br label %404

404:                                              ; preds = %398, %393, %386
  %405 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %406 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %405, i32 0, i32 1
  %407 = load i32, i32* %406, align 4
  %408 = load i32, i32* @FE_CLSE, align 4
  %409 = and i32 %407, %408
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %411, label %417

411:                                              ; preds = %404
  %412 = load i32, i32* @CLSE, align 4
  %413 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %414 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %413, i32 0, i32 19
  %415 = load i32, i32* %414, align 8
  %416 = or i32 %415, %412
  store i32 %416, i32* %414, align 8
  br label %417

417:                                              ; preds = %411, %404
  %418 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %419 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %418, i32 0, i32 1
  %420 = load i32, i32* %419, align 4
  %421 = load i32, i32* @FE_WRIE, align 4
  %422 = and i32 %420, %421
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %424, label %430

424:                                              ; preds = %417
  %425 = load i32, i32* @WRIE, align 4
  %426 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %427 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %426, i32 0, i32 20
  %428 = load i32, i32* %427, align 4
  %429 = or i32 %428, %425
  store i32 %429, i32* %427, align 4
  br label %430

430:                                              ; preds = %424, %417
  %431 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %432 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %431, i32 0, i32 1
  %433 = load i32, i32* %432, align 4
  %434 = load i32, i32* @FE_DFS, align 4
  %435 = and i32 %433, %434
  %436 = icmp ne i32 %435, 0
  br i1 %436, label %437, label %443

437:                                              ; preds = %430
  %438 = load i32, i32* @DFS, align 4
  %439 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %440 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %439, i32 0, i32 21
  %441 = load i32, i32* %440, align 8
  %442 = or i32 %441, %438
  store i32 %442, i32* %440, align 8
  br label %443

443:                                              ; preds = %437, %430
  %444 = load i64, i64* @SYM_SETUP_PCI_PARITY, align 8
  %445 = icmp ne i64 %444, 0
  br i1 %445, label %446, label %452

446:                                              ; preds = %443
  %447 = load i32, i32* @MPEE, align 4
  %448 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %449 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %448, i32 0, i32 22
  %450 = load i32, i32* %449, align 4
  %451 = or i32 %450, %447
  store i32 %451, i32* %449, align 4
  br label %452

452:                                              ; preds = %446, %443
  %453 = load i64, i64* @SYM_SETUP_SCSI_PARITY, align 8
  %454 = icmp ne i64 %453, 0
  br i1 %454, label %455, label %460

455:                                              ; preds = %452
  %456 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %457 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %456, i32 0, i32 23
  %458 = load i32, i32* %457, align 8
  %459 = or i32 %458, 10
  store i32 %459, i32* %457, align 8
  br label %460

460:                                              ; preds = %455, %452
  %461 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %462 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %461, i32 0, i32 24
  store i32 255, i32* %462, align 4
  %463 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %464 = load %struct.sym_nvram*, %struct.sym_nvram** %4, align 8
  %465 = call i32 @sym_nvram_setup_host(%struct.TYPE_17__* %463, %struct.sym_nvram* %464)
  %466 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %467 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %466, i32 0, i32 24
  %468 = load i32, i32* %467, align 4
  %469 = icmp eq i32 %468, 255
  br i1 %469, label %470, label %485

470:                                              ; preds = %460
  %471 = load i32, i32* @nc_scid, align 4
  %472 = call i32 @INB(i32 %471)
  %473 = and i32 %472, 7
  %474 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %475 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %474, i32 0, i32 24
  store i32 %473, i32* %475, align 4
  %476 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %477 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %476, i32 0, i32 24
  %478 = load i32, i32* %477, align 4
  %479 = icmp ne i32 %478, 0
  br i1 %479, label %484, label %480

480:                                              ; preds = %470
  %481 = load i32, i32* @SYM_SETUP_HOST_ID, align 4
  %482 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %483 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %482, i32 0, i32 24
  store i32 %481, i32* %483, align 4
  br label %484

484:                                              ; preds = %480, %470
  br label %485

485:                                              ; preds = %484, %460
  %486 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %487 = load i32, i32* %5, align 4
  %488 = call i32 @sym_init_burst(%struct.TYPE_17__* %486, i32 %487)
  %489 = load i32, i32* @SMODE_SE, align 4
  %490 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %491 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %490, i32 0, i32 25
  store i32 %489, i32* %491, align 8
  %492 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %493 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %492, i32 0, i32 1
  %494 = load i32, i32* %493, align 4
  %495 = load i32, i32* @FE_ULTRA2, align 4
  %496 = load i32, i32* @FE_ULTRA3, align 4
  %497 = or i32 %495, %496
  %498 = and i32 %494, %497
  %499 = icmp ne i32 %498, 0
  br i1 %499, label %500, label %508

500:                                              ; preds = %485
  %501 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %502 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %501, i32 0, i32 26
  %503 = load i32, i32* %502, align 4
  %504 = load i32, i32* @SMODE, align 4
  %505 = and i32 %503, %504
  %506 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %507 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %506, i32 0, i32 25
  store i32 %505, i32* %507, align 8
  br label %565

508:                                              ; preds = %485
  %509 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %510 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %509, i32 0, i32 1
  %511 = load i32, i32* %510, align 4
  %512 = load i32, i32* @FE_DIFF, align 4
  %513 = and i32 %511, %512
  %514 = icmp ne i32 %513, 0
  br i1 %514, label %515, label %564

515:                                              ; preds = %508
  %516 = load i32, i32* @SYM_SETUP_SCSI_DIFF, align 4
  %517 = icmp eq i32 %516, 1
  br i1 %517, label %518, label %554

518:                                              ; preds = %515
  %519 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %520 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %519, i32 0, i32 27
  %521 = load i32, i32* %520, align 8
  %522 = icmp ne i32 %521, 0
  br i1 %522, label %523, label %535

523:                                              ; preds = %518
  %524 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %525 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %524, i32 0, i32 28
  %526 = load i32, i32* %525, align 4
  %527 = and i32 %526, 32
  %528 = icmp ne i32 %527, 0
  br i1 %528, label %529, label %534

529:                                              ; preds = %523
  %530 = load i8*, i8** @SMODE_HVD, align 8
  %531 = ptrtoint i8* %530 to i32
  %532 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %533 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %532, i32 0, i32 25
  store i32 %531, i32* %533, align 8
  br label %534

534:                                              ; preds = %529, %523
  br label %553

535:                                              ; preds = %518
  %536 = load %struct.sym_nvram*, %struct.sym_nvram** %4, align 8
  %537 = getelementptr inbounds %struct.sym_nvram, %struct.sym_nvram* %536, i32 0, i32 0
  %538 = load i32, i32* %537, align 4
  %539 = load i32, i32* @SYM_SYMBIOS_NVRAM, align 4
  %540 = icmp eq i32 %538, %539
  br i1 %540, label %541, label %552

541:                                              ; preds = %535
  %542 = load i32, i32* @nc_gpreg, align 4
  %543 = call i32 @INB(i32 %542)
  %544 = and i32 %543, 8
  %545 = icmp ne i32 %544, 0
  br i1 %545, label %551, label %546

546:                                              ; preds = %541
  %547 = load i8*, i8** @SMODE_HVD, align 8
  %548 = ptrtoint i8* %547 to i32
  %549 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %550 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %549, i32 0, i32 25
  store i32 %548, i32* %550, align 8
  br label %551

551:                                              ; preds = %546, %541
  br label %552

552:                                              ; preds = %551, %535
  br label %553

553:                                              ; preds = %552, %534
  br label %563

554:                                              ; preds = %515
  %555 = load i32, i32* @SYM_SETUP_SCSI_DIFF, align 4
  %556 = icmp eq i32 %555, 2
  br i1 %556, label %557, label %562

557:                                              ; preds = %554
  %558 = load i8*, i8** @SMODE_HVD, align 8
  %559 = ptrtoint i8* %558 to i32
  %560 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %561 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %560, i32 0, i32 25
  store i32 %559, i32* %561, align 8
  br label %562

562:                                              ; preds = %557, %554
  br label %563

563:                                              ; preds = %562, %553
  br label %564

564:                                              ; preds = %563, %508
  br label %565

565:                                              ; preds = %564, %500
  %566 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %567 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %566, i32 0, i32 25
  %568 = load i32, i32* %567, align 8
  %569 = sext i32 %568 to i64
  %570 = inttoptr i64 %569 to i8*
  %571 = load i8*, i8** @SMODE_HVD, align 8
  %572 = icmp eq i8* %570, %571
  br i1 %572, label %573, label %578

573:                                              ; preds = %565
  %574 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %575 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %574, i32 0, i32 29
  %576 = load i32, i32* %575, align 8
  %577 = or i32 %576, 32
  store i32 %577, i32* %575, align 8
  br label %578

578:                                              ; preds = %573, %565
  %579 = load i64, i64* @SYM_SETUP_SCSI_LED, align 8
  %580 = icmp ne i64 %579, 0
  br i1 %580, label %599, label %581

581:                                              ; preds = %578
  %582 = load %struct.sym_nvram*, %struct.sym_nvram** %4, align 8
  %583 = getelementptr inbounds %struct.sym_nvram, %struct.sym_nvram* %582, i32 0, i32 0
  %584 = load i32, i32* %583, align 4
  %585 = load i32, i32* @SYM_SYMBIOS_NVRAM, align 4
  %586 = icmp eq i32 %584, %585
  br i1 %586, label %599, label %587

587:                                              ; preds = %581
  %588 = load %struct.sym_nvram*, %struct.sym_nvram** %4, align 8
  %589 = getelementptr inbounds %struct.sym_nvram, %struct.sym_nvram* %588, i32 0, i32 0
  %590 = load i32, i32* %589, align 4
  %591 = load i32, i32* @SYM_TEKRAM_NVRAM, align 4
  %592 = icmp eq i32 %590, %591
  br i1 %592, label %593, label %618

593:                                              ; preds = %587
  %594 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %595 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %594, i32 0, i32 12
  %596 = load i64, i64* %595, align 8
  %597 = load i64, i64* @PCI_ID_SYM53C895, align 8
  %598 = icmp eq i64 %596, %597
  br i1 %598, label %599, label %618

599:                                              ; preds = %593, %581, %578
  %600 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %601 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %600, i32 0, i32 1
  %602 = load i32, i32* %601, align 4
  %603 = load i32, i32* @FE_LEDC, align 4
  %604 = and i32 %602, %603
  %605 = icmp ne i32 %604, 0
  br i1 %605, label %618, label %606

606:                                              ; preds = %599
  %607 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %608 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %607, i32 0, i32 30
  %609 = load i32, i32* %608, align 4
  %610 = and i32 %609, 1
  %611 = icmp ne i32 %610, 0
  br i1 %611, label %618, label %612

612:                                              ; preds = %606
  %613 = load i32, i32* @FE_LED0, align 4
  %614 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %615 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %614, i32 0, i32 1
  %616 = load i32, i32* %615, align 4
  %617 = or i32 %616, %613
  store i32 %617, i32* %615, align 4
  br label %618

618:                                              ; preds = %612, %606, %599, %593, %587
  %619 = load i32, i32* @SYM_SETUP_IRQ_MODE, align 4
  %620 = and i32 %619, 3
  switch i32 %620, label %637 [
    i32 2, label %621
    i32 1, label %627
  ]

621:                                              ; preds = %618
  %622 = load i32, i32* @IRQM, align 4
  %623 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %624 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %623, i32 0, i32 19
  %625 = load i32, i32* %624, align 8
  %626 = or i32 %625, %622
  store i32 %626, i32* %624, align 8
  br label %638

627:                                              ; preds = %618
  %628 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %629 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %628, i32 0, i32 31
  %630 = load i32, i32* %629, align 8
  %631 = load i32, i32* @IRQM, align 4
  %632 = and i32 %630, %631
  %633 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %634 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %633, i32 0, i32 19
  %635 = load i32, i32* %634, align 8
  %636 = or i32 %635, %632
  store i32 %636, i32* %634, align 8
  br label %638

637:                                              ; preds = %618
  br label %638

638:                                              ; preds = %637, %627, %621
  store i32 0, i32* %7, align 4
  br label %639

639:                                              ; preds = %777, %638
  %640 = load i32, i32* %7, align 4
  %641 = load i32, i32* @SYM_CONF_MAX_TARGET, align 4
  %642 = icmp slt i32 %640, %641
  br i1 %642, label %643, label %780

643:                                              ; preds = %639
  %644 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %645 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %644, i32 0, i32 36
  %646 = load %struct.TYPE_16__*, %struct.TYPE_16__** %645, align 8
  %647 = load i32, i32* %7, align 4
  %648 = sext i32 %647 to i64
  %649 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %646, i64 %648
  store %struct.TYPE_16__* %649, %struct.TYPE_16__** %8, align 8
  %650 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %651 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %650, i32 0, i32 2
  %652 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %651, i32 0, i32 1
  %653 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %652, i32 0, i32 0
  store i32 2, i32* %653, align 8
  %654 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %655 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %654, i32 0, i32 2
  %656 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %655, i32 0, i32 0
  %657 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %656, i32 0, i32 0
  store i32 2, i32* %657, align 8
  %658 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %659 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %658, i32 0, i32 2
  %660 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %659, i32 0, i32 1
  %661 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %660, i32 0, i32 1
  store i32 2, i32* %661, align 4
  %662 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %663 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %662, i32 0, i32 2
  %664 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %663, i32 0, i32 0
  %665 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %664, i32 0, i32 1
  store i32 2, i32* %665, align 4
  %666 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %667 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %666, i32 0, i32 6
  %668 = load i32, i32* %667, align 8
  %669 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %670 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %669, i32 0, i32 2
  %671 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %670, i32 0, i32 0
  %672 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %671, i32 0, i32 2
  store i32 %668, i32* %672, align 8
  %673 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %674 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %673, i32 0, i32 1
  %675 = load i32, i32* %674, align 4
  %676 = load i32, i32* @FE_ULTRA3, align 4
  %677 = and i32 %675, %676
  %678 = icmp ne i32 %677, 0
  br i1 %678, label %679, label %687

679:                                              ; preds = %643
  %680 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %681 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %680, i32 0, i32 8
  %682 = load i32, i32* %681, align 8
  %683 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %684 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %683, i32 0, i32 2
  %685 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %684, i32 0, i32 0
  %686 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %685, i32 0, i32 2
  store i32 %682, i32* %686, align 8
  br label %687

687:                                              ; preds = %679, %643
  %688 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %689 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %688, i32 0, i32 32
  %690 = load i32, i32* %689, align 4
  %691 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %692 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %691, i32 0, i32 2
  %693 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %692, i32 0, i32 0
  %694 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %693, i32 0, i32 3
  store i32 %690, i32* %694, align 4
  %695 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %696 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %695, i32 0, i32 0
  %697 = load i32, i32* %696, align 8
  %698 = icmp ne i32 %697, 0
  br i1 %698, label %699, label %701

699:                                              ; preds = %687
  %700 = load i64, i64* @BUS_16_BIT, align 8
  br label %703

701:                                              ; preds = %687
  %702 = load i64, i64* @BUS_8_BIT, align 8
  br label %703

703:                                              ; preds = %701, %699
  %704 = phi i64 [ %700, %699 ], [ %702, %701 ]
  %705 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %706 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %705, i32 0, i32 2
  %707 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %706, i32 0, i32 0
  %708 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %707, i32 0, i32 4
  store i64 %704, i64* %708, align 8
  %709 = load i32, i32* @SYM_DISC_ENABLED, align 4
  %710 = load i32, i32* @SYM_TAGS_ENABLED, align 4
  %711 = or i32 %709, %710
  %712 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %713 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %712, i32 0, i32 0
  %714 = load i32, i32* %713, align 8
  %715 = or i32 %714, %711
  store i32 %715, i32* %713, align 8
  %716 = load i32, i32* @SYM_SETUP_MAX_TAG, align 4
  %717 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %718 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %717, i32 0, i32 1
  store i32 %716, i32* %718, align 4
  %719 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %720 = load i32, i32* %7, align 4
  %721 = load %struct.sym_nvram*, %struct.sym_nvram** %4, align 8
  %722 = call i32 @sym_nvram_setup_target(%struct.TYPE_17__* %719, i32 %720, %struct.sym_nvram* %721)
  %723 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %724 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %723, i32 0, i32 1
  %725 = load i32, i32* %724, align 4
  %726 = load i32, i32* @FE_ULTRA3, align 4
  %727 = and i32 %725, %726
  %728 = icmp ne i32 %727, 0
  br i1 %728, label %729, label %764

729:                                              ; preds = %703
  %730 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %731 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %730, i32 0, i32 2
  %732 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %731, i32 0, i32 0
  %733 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %732, i32 0, i32 2
  %734 = load i32, i32* %733, align 8
  %735 = icmp sle i32 %734, 9
  br i1 %735, label %736, label %763

736:                                              ; preds = %729
  %737 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %738 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %737, i32 0, i32 2
  %739 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %738, i32 0, i32 0
  %740 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %739, i32 0, i32 4
  %741 = load i64, i64* %740, align 8
  %742 = load i64, i64* @BUS_16_BIT, align 8
  %743 = icmp eq i64 %741, %742
  br i1 %743, label %744, label %763

744:                                              ; preds = %736
  %745 = load i32, i32* @PPR_OPT_DT, align 4
  %746 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %747 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %746, i32 0, i32 2
  %748 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %747, i32 0, i32 0
  %749 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %748, i32 0, i32 5
  %750 = load i32, i32* %749, align 8
  %751 = or i32 %750, %745
  store i32 %751, i32* %749, align 8
  %752 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %753 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %752, i32 0, i32 10
  %754 = load i32, i32* %753, align 8
  %755 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %756 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %755, i32 0, i32 2
  %757 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %756, i32 0, i32 0
  %758 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %757, i32 0, i32 3
  store i32 %754, i32* %758, align 4
  %759 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %760 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %759, i32 0, i32 2
  %761 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %760, i32 0, i32 0
  %762 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %761, i32 0, i32 1
  store i32 3, i32* %762, align 4
  br label %763

763:                                              ; preds = %744, %736, %729
  br label %764

764:                                              ; preds = %763, %703
  %765 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %766 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %765, i32 0, i32 1
  %767 = load i32, i32* %766, align 4
  %768 = icmp ne i32 %767, 0
  br i1 %768, label %776, label %769

769:                                              ; preds = %764
  %770 = load i32, i32* @SYM_TAGS_ENABLED, align 4
  %771 = xor i32 %770, -1
  %772 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %773 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %772, i32 0, i32 0
  %774 = load i32, i32* %773, align 8
  %775 = and i32 %774, %771
  store i32 %775, i32* %773, align 8
  br label %776

776:                                              ; preds = %769, %764
  br label %777

777:                                              ; preds = %776
  %778 = load i32, i32* %7, align 4
  %779 = add nsw i32 %778, 1
  store i32 %779, i32* %7, align 4
  br label %639

780:                                              ; preds = %639
  %781 = load %struct.sym_nvram*, %struct.sym_nvram** %4, align 8
  %782 = getelementptr inbounds %struct.sym_nvram, %struct.sym_nvram* %781, i32 0, i32 0
  %783 = load i32, i32* %782, align 4
  store i32 %783, i32* %7, align 4
  %784 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %785 = call i8* @sym_name(%struct.TYPE_17__* %784)
  %786 = load i32, i32* %7, align 4
  %787 = load i32, i32* @SYM_SYMBIOS_NVRAM, align 4
  %788 = icmp eq i32 %786, %787
  br i1 %788, label %789, label %790

789:                                              ; preds = %780
  br label %796

790:                                              ; preds = %780
  %791 = load i32, i32* %7, align 4
  %792 = load i32, i32* @SYM_TEKRAM_NVRAM, align 4
  %793 = icmp eq i32 %791, %792
  %794 = zext i1 %793 to i64
  %795 = select i1 %793, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  br label %796

796:                                              ; preds = %790, %789
  %797 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %789 ], [ %795, %790 ]
  %798 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %799 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %798, i32 0, i32 24
  %800 = load i32, i32* %799, align 4
  %801 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %802 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %801, i32 0, i32 1
  %803 = load i32, i32* %802, align 4
  %804 = load i32, i32* @FE_ULTRA3, align 4
  %805 = and i32 %803, %804
  %806 = icmp ne i32 %805, 0
  br i1 %806, label %807, label %808

807:                                              ; preds = %796
  br label %827

808:                                              ; preds = %796
  %809 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %810 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %809, i32 0, i32 1
  %811 = load i32, i32* %810, align 4
  %812 = load i32, i32* @FE_ULTRA2, align 4
  %813 = and i32 %811, %812
  %814 = icmp ne i32 %813, 0
  br i1 %814, label %815, label %816

815:                                              ; preds = %808
  br label %825

816:                                              ; preds = %808
  %817 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %818 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %817, i32 0, i32 1
  %819 = load i32, i32* %818, align 4
  %820 = load i32, i32* @FE_ULTRA, align 4
  %821 = and i32 %819, %820
  %822 = icmp ne i32 %821, 0
  %823 = zext i1 %822 to i64
  %824 = select i1 %822, i32 20, i32 10
  br label %825

825:                                              ; preds = %816, %815
  %826 = phi i32 [ 40, %815 ], [ %824, %816 ]
  br label %827

827:                                              ; preds = %825, %807
  %828 = phi i32 [ 80, %807 ], [ %826, %825 ]
  %829 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %830 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %829, i32 0, i32 25
  %831 = load i32, i32* %830, align 8
  %832 = sext i32 %831 to i64
  %833 = inttoptr i64 %832 to i8*
  %834 = call i8* @sym_scsi_bus_mode(i8* %833)
  %835 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %836 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %835, i32 0, i32 23
  %837 = load i32, i32* %836, align 8
  %838 = and i32 %837, 10
  %839 = icmp ne i32 %838, 0
  %840 = zext i1 %839 to i64
  %841 = select i1 %839, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0)
  %842 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %785, i8* %797, i32 %800, i32 %828, i8* %834, i8* %841)
  %843 = load i32, i32* @sym_verbose, align 4
  %844 = icmp ne i32 %843, 0
  br i1 %844, label %845, label %880

845:                                              ; preds = %827
  %846 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %847 = call i8* @sym_name(%struct.TYPE_17__* %846)
  %848 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %849 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %848, i32 0, i32 19
  %850 = load i32, i32* %849, align 8
  %851 = load i32, i32* @IRQM, align 4
  %852 = and i32 %850, %851
  %853 = icmp ne i32 %852, 0
  %854 = zext i1 %853 to i64
  %855 = select i1 %853, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0)
  %856 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %857 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %856, i32 0, i32 35
  %858 = load i64, i64* %857, align 8
  %859 = icmp ne i64 %858, 0
  %860 = zext i1 %859 to i64
  %861 = select i1 %859, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)
  %862 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* %847, i8* %855, i8* %861)
  %863 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %864 = call i8* @sym_name(%struct.TYPE_17__* %863)
  %865 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %866 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %865, i32 0, i32 33
  %867 = load i8*, i8** %866, align 8
  %868 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i8* %864, i8* %867)
  %869 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %870 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %869, i32 0, i32 1
  %871 = load i32, i32* %870, align 4
  %872 = load i32, i32* @FE_NOPM, align 4
  %873 = and i32 %871, %872
  %874 = icmp ne i32 %873, 0
  br i1 %874, label %875, label %879

875:                                              ; preds = %845
  %876 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %877 = call i8* @sym_name(%struct.TYPE_17__* %876)
  %878 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i64 0, i64 0), i8* %877)
  br label %879

879:                                              ; preds = %875, %845
  br label %880

880:                                              ; preds = %879, %827
  %881 = load i32, i32* @sym_verbose, align 4
  %882 = icmp sgt i32 %881, 1
  br i1 %882, label %883, label %926

883:                                              ; preds = %880
  %884 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %885 = call i8* @sym_name(%struct.TYPE_17__* %884)
  %886 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %887 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %886, i32 0, i32 27
  %888 = load i32, i32* %887, align 8
  %889 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %890 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %889, i32 0, i32 14
  %891 = load i32, i32* %890, align 4
  %892 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %893 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %892, i32 0, i32 31
  %894 = load i32, i32* %893, align 8
  %895 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %896 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %895, i32 0, i32 34
  %897 = load i32, i32* %896, align 8
  %898 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %899 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %898, i32 0, i32 15
  %900 = load i32, i32* %899, align 8
  %901 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %902 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %901, i32 0, i32 16
  %903 = load i32, i32* %902, align 4
  %904 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.13, i64 0, i64 0), i8* %885, i32 %888, i32 %891, i32 %894, i32 %897, i32 %900, i32 %903)
  %905 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %906 = call i8* @sym_name(%struct.TYPE_17__* %905)
  %907 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %908 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %907, i32 0, i32 5
  %909 = load i32, i32* %908, align 4
  %910 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %911 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %910, i32 0, i32 18
  %912 = load i32, i32* %911, align 4
  %913 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %914 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %913, i32 0, i32 19
  %915 = load i32, i32* %914, align 8
  %916 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %917 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %916, i32 0, i32 20
  %918 = load i32, i32* %917, align 4
  %919 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %920 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %919, i32 0, i32 22
  %921 = load i32, i32* %920, align 4
  %922 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %923 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %922, i32 0, i32 21
  %924 = load i32, i32* %923, align 8
  %925 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.14, i64 0, i64 0), i8* %906, i32 %909, i32 %912, i32 %915, i32 %918, i32 %921, i32 %924)
  br label %926

926:                                              ; preds = %883, %880
  %927 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %928 = load i32, i32* @SYM_SCAN_BOOT_DISABLED, align 4
  %929 = call i32 @sym_print_targets_flag(%struct.TYPE_17__* %927, i32 %928, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0))
  %930 = load i32, i32* @sym_verbose, align 4
  %931 = icmp ne i32 %930, 0
  br i1 %931, label %932, label %936

932:                                              ; preds = %926
  %933 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %934 = load i32, i32* @SYM_SCAN_LUNS_DISABLED, align 4
  %935 = call i32 @sym_print_targets_flag(%struct.TYPE_17__* %933, i32 %934, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0))
  br label %936

936:                                              ; preds = %932, %926
  ret i32 0
}

declare dso_local i32 @sym_getclock(%struct.TYPE_17__*, i32) #1

declare dso_local i8* @howmany(i32, i32) #1

declare dso_local i32 @burst_code(i32, i32, i32) #1

declare dso_local i32 @sym_nvram_setup_host(%struct.TYPE_17__*, %struct.sym_nvram*) #1

declare dso_local i32 @INB(i32) #1

declare dso_local i32 @sym_init_burst(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @sym_nvram_setup_target(%struct.TYPE_17__*, i32, %struct.sym_nvram*) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i8* @sym_name(%struct.TYPE_17__*) #1

declare dso_local i8* @sym_scsi_bus_mode(i8*) #1

declare dso_local i32 @sym_print_targets_flag(%struct.TYPE_17__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
