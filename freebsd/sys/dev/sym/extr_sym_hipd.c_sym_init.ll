; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c_sym_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c_sym_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i64, i64, i32, i32, i64, i32, i32, i64, i32, %struct.TYPE_17__*, i32 (%struct.TYPE_18__*)*, i64, i8**, i64, i64, i8**, i64, i64 }
%struct.TYPE_17__ = type { %struct.TYPE_16__, %struct.TYPE_14__, i64 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64, i32, i64, i64 }
%struct.TYPE_14__ = type { i64, i32, i64 }

@MA_OWNED = common dso_local global i32 0, align 4
@nc_stest3 = common dso_local global i32 0, align 4
@TE = common dso_local global i32 0, align 4
@CSF = common dso_local global i32 0, align 4
@nc_ctest3 = common dso_local global i32 0, align 4
@CLF = common dso_local global i32 0, align 4
@MAX_QUEUE = common dso_local global i32 0, align 4
@CAM_SCSI_BUS_RESET = common dso_local global i32 0, align 4
@nc_istat = common dso_local global i32 0, align 4
@nc_scntl0 = common dso_local global i32 0, align 4
@nc_scntl1 = common dso_local global i32 0, align 4
@nc_scid = common dso_local global i32 0, align 4
@RRE = common dso_local global i32 0, align 4
@nc_respid = common dso_local global i32 0, align 4
@SIGP = common dso_local global i32 0, align 4
@nc_dmode = common dso_local global i32 0, align 4
@nc_ctest5 = common dso_local global i32 0, align 4
@nc_dcntl = common dso_local global i32 0, align 4
@NOCOM = common dso_local global i32 0, align 4
@nc_ctest4 = common dso_local global i32 0, align 4
@FE_C10 = common dso_local global i32 0, align 4
@nc_stest2 = common dso_local global i32 0, align 4
@EXT = common dso_local global i32 0, align 4
@nc_stime0 = common dso_local global i32 0, align 4
@PCI_ID_LSI53C1010_2 = common dso_local global i64 0, align 8
@nc_aipcntl1 = common dso_local global i32 0, align 4
@DISAIP = common dso_local global i32 0, align 4
@PCI_ID_LSI53C1010 = common dso_local global i64 0, align 8
@nc_stest1 = common dso_local global i32 0, align 4
@PCI_ID_SYM53C875 = common dso_local global i64 0, align 8
@nc_ctest0 = common dso_local global i32 0, align 4
@PCI_ID_SYM53C896 = common dso_local global i64 0, align 8
@DPR = common dso_local global i32 0, align 4
@FE_DAC = common dso_local global i32 0, align 4
@FE_NOPM = common dso_local global i32 0, align 4
@nc_ccntl0 = common dso_local global i32 0, align 4
@nc_ccntl1 = common dso_local global i32 0, align 4
@nc_pmjad1 = common dso_local global i32 0, align 4
@pm_handle = common dso_local global i32 0, align 4
@nc_pmjad2 = common dso_local global i32 0, align 4
@FE_LED0 = common dso_local global i32 0, align 4
@nc_gpcntl = common dso_local global i32 0, align 4
@FE_LEDC = common dso_local global i32 0, align 4
@nc_sien = common dso_local global i32 0, align 4
@STO = common dso_local global i64 0, align 8
@HTH = common dso_local global i64 0, align 8
@MA = common dso_local global i64 0, align 8
@SGE = common dso_local global i64 0, align 8
@UDC = common dso_local global i64 0, align 8
@RST = common dso_local global i64 0, align 8
@PAR = common dso_local global i64 0, align 8
@nc_dien = common dso_local global i32 0, align 4
@MDPE = common dso_local global i32 0, align 4
@BF = common dso_local global i32 0, align 4
@SSI = common dso_local global i32 0, align 4
@SIR = common dso_local global i32 0, align 4
@IID = common dso_local global i32 0, align 4
@FE_ULTRA2 = common dso_local global i32 0, align 4
@FE_ULTRA3 = common dso_local global i32 0, align 4
@SBMC = common dso_local global i32 0, align 4
@nc_sist = common dso_local global i32 0, align 4
@nc_stest4 = common dso_local global i32 0, align 4
@SMODE = common dso_local global i32 0, align 4
@SYM_CONF_MAX_TARGET = common dso_local global i32 0, align 4
@BUS_8_BIT = common dso_local global i32 0, align 4
@sym_verbose = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"%s: Downloading SCSI SCRIPTS.\0A\00", align 1
@nc_mmws = common dso_local global i32 0, align 4
@nc_mmrs = common dso_local global i32 0, align 4
@nc_sfs = common dso_local global i32 0, align 4
@start64 = common dso_local global i32 0, align 4
@init = common dso_local global i32 0, align 4
@nc_dsa = common dso_local global i32 0, align 4
@AC_BUS_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*, i32)* @sym_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sym_init(%struct.TYPE_18__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @MA_OWNED, align 4
  %9 = call i32 @SYM_LOCK_ASSERT(i32 %8)
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %14 = call i32 @sym_soft_reset(%struct.TYPE_18__* %13)
  br label %24

15:                                               ; preds = %2
  %16 = load i32, i32* @nc_stest3, align 4
  %17 = load i32, i32* @TE, align 4
  %18 = load i32, i32* @CSF, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @OUTB(i32 %16, i32 %19)
  %21 = load i32, i32* @nc_ctest3, align 4
  %22 = load i32, i32* @CLF, align 4
  %23 = call i32 @OUTONB(i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %15, %12
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 32
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %6, align 8
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %58, %24
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @MAX_QUEUE, align 4
  %31 = mul nsw i32 %30, 2
  %32 = icmp slt i32 %29, %31
  br i1 %32, label %33, label %61

33:                                               ; preds = %28
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 31
  %36 = load i64, i64* %35, align 8
  %37 = call i8* @cpu_to_scr(i64 %36)
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 30
  %40 = load i8**, i8*** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %40, i64 %42
  store i8* %37, i8** %43, align 8
  %44 = load i64, i64* %6, align 8
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 2
  %47 = mul nsw i32 %46, 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %44, %48
  %50 = call i8* @cpu_to_scr(i64 %49)
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 30
  %53 = load i8**, i8*** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %53, i64 %56
  store i8* %50, i8** %57, align 8
  br label %58

58:                                               ; preds = %33
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 2
  store i32 %60, i32* %5, align 4
  br label %28

61:                                               ; preds = %28
  %62 = load i64, i64* %6, align 8
  %63 = call i8* @cpu_to_scr(i64 %62)
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 30
  %66 = load i8**, i8*** %65, align 8
  %67 = load i32, i32* @MAX_QUEUE, align 4
  %68 = mul nsw i32 %67, 2
  %69 = sub nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8*, i8** %66, i64 %70
  store i8* %63, i8** %71, align 8
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 29
  store i64 0, i64* %73, align 8
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 28
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %6, align 8
  store i32 0, i32* %5, align 4
  br label %77

77:                                               ; preds = %103, %61
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* @MAX_QUEUE, align 4
  %80 = mul nsw i32 %79, 2
  %81 = icmp slt i32 %78, %80
  br i1 %81, label %82, label %106

82:                                               ; preds = %77
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 27
  %85 = load i8**, i8*** %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8*, i8** %85, i64 %87
  store i8* null, i8** %88, align 8
  %89 = load i64, i64* %6, align 8
  %90 = load i32, i32* %5, align 4
  %91 = add nsw i32 %90, 2
  %92 = mul nsw i32 %91, 4
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %89, %93
  %95 = call i8* @cpu_to_scr(i64 %94)
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 27
  %98 = load i8**, i8*** %97, align 8
  %99 = load i32, i32* %5, align 4
  %100 = add nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8*, i8** %98, i64 %101
  store i8* %95, i8** %102, align 8
  br label %103

103:                                              ; preds = %82
  %104 = load i32, i32* %5, align 4
  %105 = add nsw i32 %104, 2
  store i32 %105, i32* %5, align 4
  br label %77

106:                                              ; preds = %77
  %107 = load i64, i64* %6, align 8
  %108 = call i8* @cpu_to_scr(i64 %107)
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 27
  %111 = load i8**, i8*** %110, align 8
  %112 = load i32, i32* @MAX_QUEUE, align 4
  %113 = mul nsw i32 %112, 2
  %114 = sub nsw i32 %113, 1
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8*, i8** %111, i64 %115
  store i8* %108, i8** %116, align 8
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 26
  store i64 0, i64* %118, align 8
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 25
  %121 = load i32 (%struct.TYPE_18__*)*, i32 (%struct.TYPE_18__*)** %120, align 8
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %123 = call i32 %121(%struct.TYPE_18__* %122)
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %125 = load i32, i32* @CAM_SCSI_BUS_RESET, align 4
  %126 = call i32 @sym_flush_busy_queue(%struct.TYPE_18__* %124, i32 %125)
  %127 = load i32, i32* @nc_istat, align 4
  %128 = call i32 @OUTB(i32 %127, i32 0)
  %129 = call i32 @UDELAY(i32 2000)
  %130 = load i32, i32* @nc_scntl0, align 4
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = or i32 %133, 192
  %135 = call i32 @OUTB(i32 %130, i32 %134)
  %136 = load i32, i32* @nc_scntl1, align 4
  %137 = call i32 @OUTB(i32 %136, i32 0)
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 23
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @sym_selectclock(%struct.TYPE_18__* %138, i32 %141)
  %143 = load i32, i32* @nc_scid, align 4
  %144 = load i32, i32* @RRE, align 4
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = or i32 %144, %147
  %149 = call i32 @OUTB(i32 %143, i32 %148)
  %150 = load i32, i32* @nc_respid, align 4
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = zext i32 %153 to i64
  %155 = shl i64 1, %154
  %156 = call i32 @OUTW(i32 %150, i64 %155)
  %157 = load i32, i32* @nc_istat, align 4
  %158 = load i32, i32* @SIGP, align 4
  %159 = call i32 @OUTB(i32 %157, i32 %158)
  %160 = load i32, i32* @nc_dmode, align 4
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @OUTB(i32 %160, i32 %163)
  %165 = load i32, i32* @nc_ctest5, align 4
  %166 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @OUTB(i32 %165, i32 %168)
  %170 = load i32, i32* @nc_dcntl, align 4
  %171 = load i32, i32* @NOCOM, align 4
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 4
  %174 = load i32, i32* %173, align 8
  %175 = or i32 %171, %174
  %176 = call i32 @OUTB(i32 %170, i32 %175)
  %177 = load i32, i32* @nc_ctest3, align 4
  %178 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %178, i32 0, i32 5
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @OUTB(i32 %177, i32 %180)
  %182 = load i32, i32* @nc_ctest4, align 4
  %183 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %183, i32 0, i32 6
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @OUTB(i32 %182, i32 %185)
  %187 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %187, i32 0, i32 7
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @FE_C10, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %199

193:                                              ; preds = %106
  %194 = load i32, i32* @nc_stest2, align 4
  %195 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %195, i32 0, i32 8
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @OUTB(i32 %194, i32 %197)
  br label %207

199:                                              ; preds = %106
  %200 = load i32, i32* @nc_stest2, align 4
  %201 = load i32, i32* @EXT, align 4
  %202 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %202, i32 0, i32 8
  %204 = load i32, i32* %203, align 8
  %205 = or i32 %201, %204
  %206 = call i32 @OUTB(i32 %200, i32 %205)
  br label %207

207:                                              ; preds = %199, %193
  %208 = load i32, i32* @nc_stest3, align 4
  %209 = load i32, i32* @TE, align 4
  %210 = call i32 @OUTB(i32 %208, i32 %209)
  %211 = load i32, i32* @nc_stime0, align 4
  %212 = call i32 @OUTB(i32 %211, i32 12)
  %213 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %213, i32 0, i32 9
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @PCI_ID_LSI53C1010_2, align 8
  %217 = icmp eq i64 %215, %216
  br i1 %217, label %218, label %222

218:                                              ; preds = %207
  %219 = load i32, i32* @nc_aipcntl1, align 4
  %220 = load i32, i32* @DISAIP, align 4
  %221 = call i32 @OUTB(i32 %219, i32 %220)
  br label %222

222:                                              ; preds = %218, %207
  %223 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %224 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %223, i32 0, i32 9
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* @PCI_ID_LSI53C1010, align 8
  %227 = icmp eq i64 %225, %226
  br i1 %227, label %228, label %234

228:                                              ; preds = %222
  %229 = load i32, i32* @nc_stest1, align 4
  %230 = load i32, i32* @nc_stest1, align 4
  %231 = call i32 @INB(i32 %230)
  %232 = or i32 %231, 48
  %233 = call i32 @OUTB(i32 %229, i32 %232)
  br label %234

234:                                              ; preds = %228, %222
  %235 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %236 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %235, i32 0, i32 9
  %237 = load i64, i64* %236, align 8
  %238 = load i64, i64* @PCI_ID_SYM53C875, align 8
  %239 = icmp eq i64 %237, %238
  br i1 %239, label %240, label %243

240:                                              ; preds = %234
  %241 = load i32, i32* @nc_ctest0, align 4
  %242 = call i32 @OUTB(i32 %241, i32 32)
  br label %256

243:                                              ; preds = %234
  %244 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %245 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %244, i32 0, i32 9
  %246 = load i64, i64* %245, align 8
  %247 = load i64, i64* @PCI_ID_SYM53C896, align 8
  %248 = icmp eq i64 %246, %247
  br i1 %248, label %249, label %255

249:                                              ; preds = %243
  %250 = load i32, i32* @DPR, align 4
  %251 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %252 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %251, i32 0, i32 10
  %253 = load i32, i32* %252, align 8
  %254 = or i32 %253, %250
  store i32 %254, i32* %252, align 8
  br label %255

255:                                              ; preds = %249, %243
  br label %256

256:                                              ; preds = %255, %240
  %257 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %258 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %257, i32 0, i32 7
  %259 = load i32, i32* %258, align 4
  %260 = load i32, i32* @FE_DAC, align 4
  %261 = load i32, i32* @FE_NOPM, align 4
  %262 = or i32 %260, %261
  %263 = and i32 %259, %262
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %276

265:                                              ; preds = %256
  %266 = load i32, i32* @nc_ccntl0, align 4
  %267 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %268 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %267, i32 0, i32 10
  %269 = load i32, i32* %268, align 8
  %270 = call i32 @OUTB(i32 %266, i32 %269)
  %271 = load i32, i32* @nc_ccntl1, align 4
  %272 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %273 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %272, i32 0, i32 11
  %274 = load i32, i32* %273, align 4
  %275 = call i32 @OUTB(i32 %271, i32 %274)
  br label %276

276:                                              ; preds = %265, %256
  %277 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %278 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %277, i32 0, i32 7
  %279 = load i32, i32* %278, align 4
  %280 = load i32, i32* @FE_NOPM, align 4
  %281 = and i32 %279, %280
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %294

283:                                              ; preds = %276
  %284 = load i32, i32* @nc_pmjad1, align 4
  %285 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %286 = load i32, i32* @pm_handle, align 4
  %287 = call i64 @SCRIPTB_BA(%struct.TYPE_18__* %285, i32 %286)
  %288 = call i32 @OUTL(i32 %284, i64 %287)
  %289 = load i32, i32* @nc_pmjad2, align 4
  %290 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %291 = load i32, i32* @pm_handle, align 4
  %292 = call i64 @SCRIPTB_BA(%struct.TYPE_18__* %290, i32 %291)
  %293 = call i32 @OUTL(i32 %289, i64 %292)
  br label %294

294:                                              ; preds = %283, %276
  %295 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %296 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %295, i32 0, i32 7
  %297 = load i32, i32* %296, align 4
  %298 = load i32, i32* @FE_LED0, align 4
  %299 = and i32 %297, %298
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %307

301:                                              ; preds = %294
  %302 = load i32, i32* @nc_gpcntl, align 4
  %303 = load i32, i32* @nc_gpcntl, align 4
  %304 = call i32 @INB(i32 %303)
  %305 = and i32 %304, -2
  %306 = call i32 @OUTB(i32 %302, i32 %305)
  br label %322

307:                                              ; preds = %294
  %308 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %309 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %308, i32 0, i32 7
  %310 = load i32, i32* %309, align 4
  %311 = load i32, i32* @FE_LEDC, align 4
  %312 = and i32 %310, %311
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %321

314:                                              ; preds = %307
  %315 = load i32, i32* @nc_gpcntl, align 4
  %316 = load i32, i32* @nc_gpcntl, align 4
  %317 = call i32 @INB(i32 %316)
  %318 = and i32 %317, -66
  %319 = or i32 %318, 32
  %320 = call i32 @OUTB(i32 %315, i32 %319)
  br label %321

321:                                              ; preds = %314, %307
  br label %322

322:                                              ; preds = %321, %301
  %323 = load i32, i32* @nc_sien, align 4
  %324 = load i64, i64* @STO, align 8
  %325 = load i64, i64* @HTH, align 8
  %326 = or i64 %324, %325
  %327 = load i64, i64* @MA, align 8
  %328 = or i64 %326, %327
  %329 = load i64, i64* @SGE, align 8
  %330 = or i64 %328, %329
  %331 = load i64, i64* @UDC, align 8
  %332 = or i64 %330, %331
  %333 = load i64, i64* @RST, align 8
  %334 = or i64 %332, %333
  %335 = load i64, i64* @PAR, align 8
  %336 = or i64 %334, %335
  %337 = call i32 @OUTW(i32 %323, i64 %336)
  %338 = load i32, i32* @nc_dien, align 4
  %339 = load i32, i32* @MDPE, align 4
  %340 = load i32, i32* @BF, align 4
  %341 = or i32 %339, %340
  %342 = load i32, i32* @SSI, align 4
  %343 = or i32 %341, %342
  %344 = load i32, i32* @SIR, align 4
  %345 = or i32 %343, %344
  %346 = load i32, i32* @IID, align 4
  %347 = or i32 %345, %346
  %348 = call i32 @OUTB(i32 %338, i32 %347)
  %349 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %350 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %349, i32 0, i32 7
  %351 = load i32, i32* %350, align 4
  %352 = load i32, i32* @FE_ULTRA2, align 4
  %353 = load i32, i32* @FE_ULTRA3, align 4
  %354 = or i32 %352, %353
  %355 = and i32 %351, %354
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %374

357:                                              ; preds = %322
  %358 = load i32, i32* @nc_sien, align 4
  %359 = load i32, i32* @SBMC, align 4
  %360 = call i32 @OUTONW(i32 %358, i32 %359)
  %361 = load i32, i32* %4, align 4
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %363, label %367

363:                                              ; preds = %357
  %364 = call i32 @MDELAY(i32 100)
  %365 = load i32, i32* @nc_sist, align 4
  %366 = call i32 @INW(i32 %365)
  br label %367

367:                                              ; preds = %363, %357
  %368 = load i32, i32* @nc_stest4, align 4
  %369 = call i32 @INB(i32 %368)
  %370 = load i32, i32* @SMODE, align 4
  %371 = and i32 %369, %370
  %372 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %373 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %372, i32 0, i32 12
  store i32 %371, i32* %373, align 8
  br label %374

374:                                              ; preds = %367, %322
  store i32 0, i32* %5, align 4
  br label %375

375:                                              ; preds = %417, %374
  %376 = load i32, i32* %5, align 4
  %377 = load i32, i32* @SYM_CONF_MAX_TARGET, align 4
  %378 = icmp slt i32 %376, %377
  br i1 %378, label %379, label %420

379:                                              ; preds = %375
  %380 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %381 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %380, i32 0, i32 24
  %382 = load %struct.TYPE_17__*, %struct.TYPE_17__** %381, align 8
  %383 = load i32, i32* %5, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %382, i64 %384
  store %struct.TYPE_17__* %385, %struct.TYPE_17__** %7, align 8
  %386 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %387 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %386, i32 0, i32 2
  store i64 0, i64* %387, align 8
  %388 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %389 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %388, i32 0, i32 1
  %390 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %389, i32 0, i32 2
  store i64 0, i64* %390, align 8
  %391 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %392 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %391, i32 0, i32 23
  %393 = load i32, i32* %392, align 8
  %394 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %395 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %394, i32 0, i32 1
  %396 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %395, i32 0, i32 1
  store i32 %393, i32* %396, align 8
  %397 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %398 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %397, i32 0, i32 1
  %399 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %398, i32 0, i32 0
  store i64 0, i64* %399, align 8
  %400 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %401 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %400, i32 0, i32 0
  %402 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %401, i32 0, i32 0
  %403 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %402, i32 0, i32 3
  store i64 0, i64* %403, align 8
  %404 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %405 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %404, i32 0, i32 0
  %406 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %405, i32 0, i32 0
  %407 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %406, i32 0, i32 2
  store i64 0, i64* %407, align 8
  %408 = load i32, i32* @BUS_8_BIT, align 4
  %409 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %410 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %409, i32 0, i32 0
  %411 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %410, i32 0, i32 0
  %412 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %411, i32 0, i32 1
  store i32 %408, i32* %412, align 8
  %413 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %414 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %413, i32 0, i32 0
  %415 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %414, i32 0, i32 0
  %416 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %415, i32 0, i32 0
  store i64 0, i64* %416, align 8
  br label %417

417:                                              ; preds = %379
  %418 = load i32, i32* %5, align 4
  %419 = add nsw i32 %418, 1
  store i32 %419, i32* %5, align 4
  br label %375

420:                                              ; preds = %375
  %421 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %422 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %421, i32 0, i32 22
  %423 = load i64, i64* %422, align 8
  %424 = icmp ne i64 %423, 0
  br i1 %424, label %425, label %475

425:                                              ; preds = %420
  %426 = load i32, i32* @sym_verbose, align 4
  %427 = icmp sgt i32 %426, 1
  br i1 %427, label %428, label %432

428:                                              ; preds = %425
  %429 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %430 = call i8* @sym_name(%struct.TYPE_18__* %429)
  %431 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %430)
  br label %432

432:                                              ; preds = %428, %425
  %433 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %434 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %433, i32 0, i32 13
  %435 = load i32, i32* %434, align 4
  %436 = icmp eq i32 %435, 8192
  br i1 %436, label %437, label %463

437:                                              ; preds = %432
  %438 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %439 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %438, i32 0, i32 21
  %440 = load i32, i32* %439, align 4
  %441 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %442 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %441, i32 0, i32 20
  %443 = load i32, i32* %442, align 8
  %444 = call i32 @OUTRAM_OFF(i32 4096, i32 %440, i32 %443)
  %445 = load i32, i32* @nc_mmws, align 4
  %446 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %447 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %446, i32 0, i32 19
  %448 = load i64, i64* %447, align 8
  %449 = call i32 @OUTL(i32 %445, i64 %448)
  %450 = load i32, i32* @nc_mmrs, align 4
  %451 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %452 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %451, i32 0, i32 19
  %453 = load i64, i64* %452, align 8
  %454 = call i32 @OUTL(i32 %450, i64 %453)
  %455 = load i32, i32* @nc_sfs, align 4
  %456 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %457 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %456, i32 0, i32 19
  %458 = load i64, i64* %457, align 8
  %459 = call i32 @OUTL(i32 %455, i64 %458)
  %460 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %461 = load i32, i32* @start64, align 4
  %462 = call i64 @SCRIPTB_BA(%struct.TYPE_18__* %460, i32 %461)
  store i64 %462, i64* %6, align 8
  br label %467

463:                                              ; preds = %432
  %464 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %465 = load i32, i32* @init, align 4
  %466 = call i64 @SCRIPTA_BA(%struct.TYPE_18__* %464, i32 %465)
  store i64 %466, i64* %6, align 8
  br label %467

467:                                              ; preds = %463, %437
  %468 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %469 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %468, i32 0, i32 18
  %470 = load i32, i32* %469, align 4
  %471 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %472 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %471, i32 0, i32 17
  %473 = load i32, i32* %472, align 8
  %474 = call i32 @OUTRAM_OFF(i32 0, i32 %470, i32 %473)
  br label %479

475:                                              ; preds = %420
  %476 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %477 = load i32, i32* @init, align 4
  %478 = call i64 @SCRIPTA_BA(%struct.TYPE_18__* %476, i32 %477)
  store i64 %478, i64* %6, align 8
  br label %479

479:                                              ; preds = %475, %467
  %480 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %481 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %480, i32 0, i32 16
  store i64 0, i64* %481, align 8
  %482 = load i32, i32* @nc_dsa, align 4
  %483 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %484 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %483, i32 0, i32 15
  %485 = load i64, i64* %484, align 8
  %486 = call i32 @OUTL(i32 %482, i64 %485)
  %487 = load i64, i64* %6, align 8
  %488 = call i32 @OUTL_DSP(i64 %487)
  %489 = load i32, i32* %4, align 4
  %490 = icmp ne i32 %489, 0
  br i1 %490, label %491, label %497

491:                                              ; preds = %479
  %492 = load i32, i32* @AC_BUS_RESET, align 4
  %493 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %494 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %493, i32 0, i32 14
  %495 = load i32, i32* %494, align 8
  %496 = call i32 @xpt_async(i32 %492, i32 %495, i32* null)
  br label %497

497:                                              ; preds = %491, %479
  ret void
}

declare dso_local i32 @SYM_LOCK_ASSERT(i32) #1

declare dso_local i32 @sym_soft_reset(%struct.TYPE_18__*) #1

declare dso_local i32 @OUTB(i32, i32) #1

declare dso_local i32 @OUTONB(i32, i32) #1

declare dso_local i8* @cpu_to_scr(i64) #1

declare dso_local i32 @sym_flush_busy_queue(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @UDELAY(i32) #1

declare dso_local i32 @sym_selectclock(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @OUTW(i32, i64) #1

declare dso_local i32 @INB(i32) #1

declare dso_local i32 @OUTL(i32, i64) #1

declare dso_local i64 @SCRIPTB_BA(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @OUTONW(i32, i32) #1

declare dso_local i32 @MDELAY(i32) #1

declare dso_local i32 @INW(i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @sym_name(%struct.TYPE_18__*) #1

declare dso_local i32 @OUTRAM_OFF(i32, i32, i32) #1

declare dso_local i64 @SCRIPTA_BA(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @OUTL_DSP(i64) #1

declare dso_local i32 @xpt_async(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
