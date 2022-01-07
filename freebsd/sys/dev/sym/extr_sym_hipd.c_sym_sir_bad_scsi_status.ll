; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c_sym_sir_bad_scsi_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c_sym_sir_bad_scsi_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32, i32*, %struct.TYPE_38__* }
%struct.TYPE_38__ = type { %struct.TYPE_33__ }
%struct.TYPE_33__ = type { %struct.TYPE_32__ }
%struct.TYPE_32__ = type { i32, i32, i32, i32 }
%struct.TYPE_29__ = type { i64, i32, i32, i32, i32, i32*, i32*, i32, %struct.TYPE_37__, i32, i32, i32, i32, i32, i8*, i32, i32, i32 }
%struct.TYPE_37__ = type { %struct.TYPE_36__, %struct.TYPE_34__, %struct.TYPE_31__, %struct.TYPE_30__ }
%struct.TYPE_36__ = type { %struct.TYPE_35__, i8*, i8*, i8* }
%struct.TYPE_35__ = type { i8* }
%struct.TYPE_34__ = type { i8*, i8* }
%struct.TYPE_31__ = type { i8*, i8* }
%struct.TYPE_30__ = type { i8*, i8* }

@MA_OWNED = common dso_local global i32 0, align 4
@nc_scratcha = common dso_local global i32 0, align 4
@sym_verbose = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"BUSY\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"QUEUE FULL\0A\00", align 1
@HF_SENSE = common dso_local global i32 0, align 4
@start = common dso_local global i32 0, align 4
@M_IDENTIFY = common dso_local global i32 0, align 4
@PPR_OPT_MASK = common dso_local global i32 0, align 4
@NS_PPR = common dso_local global i32 0, align 4
@BUS_8_BIT = common dso_local global i32 0, align 4
@NS_WIDE = common dso_local global i32 0, align 4
@NS_SYNC = common dso_local global i32 0, align 4
@scsi_smsg2 = common dso_local global i32 0, align 4
@sensecmd = common dso_local global i32 0, align 4
@SYM_SNS_BBUF_LEN = common dso_local global i32 0, align 4
@sdata_in = common dso_local global i32 0, align 4
@SYM_QUIRK_AUTOSAVE = common dso_local global i32 0, align 4
@HS_NEGOTIATE = common dso_local global i32 0, align 4
@HS_BUSY = common dso_local global i32 0, align 4
@S_ILLEGAL = common dso_local global i32 0, align 4
@HF_DATA_IN = common dso_local global i32 0, align 4
@select = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_28__*, %struct.TYPE_29__*)* @sym_sir_bad_scsi_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sym_sir_bad_scsi_status(%struct.TYPE_28__* %0, %struct.TYPE_29__* %1) #0 {
  %3 = alloca %struct.TYPE_28__*, align 8
  %4 = alloca %struct.TYPE_29__*, align 8
  %5 = alloca %struct.TYPE_38__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %3, align 8
  store %struct.TYPE_29__* %1, %struct.TYPE_29__** %4, align 8
  %12 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %15 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %14, i64 %17
  store %struct.TYPE_38__* %18, %struct.TYPE_38__** %5, align 8
  %19 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %7, align 4
  %22 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* @MA_OWNED, align 4
  %26 = call i32 @SYM_LOCK_ASSERT(i32 %25)
  %27 = load i32, i32* @nc_scratcha, align 4
  %28 = call i32 @INL(i32 %27)
  %29 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sub nsw i32 %28, %31
  %33 = sdiv i32 %32, 4
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %7, align 4
  switch i32 %34, label %47 [
    i32 131, label %35
    i32 129, label %35
    i32 128, label %51
    i32 130, label %51
  ]

35:                                               ; preds = %2, %2
  %36 = load i32, i32* @sym_verbose, align 4
  %37 = icmp sge i32 %36, 2
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %40 = call i32 @PRINT_ADDR(%struct.TYPE_29__* %39)
  %41 = load i32, i32* %7, align 4
  %42 = icmp eq i32 %41, 131
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0)
  %45 = call i32 @printf(i8* %44)
  br label %46

46:                                               ; preds = %38, %35
  br label %47

47:                                               ; preds = %2, %46
  %48 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %49 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %50 = call i32 @sym_complete_error(%struct.TYPE_28__* %48, %struct.TYPE_29__* %49)
  br label %299

51:                                               ; preds = %2, %2
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @HF_SENSE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %58 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %59 = call i32 @sym_complete_error(%struct.TYPE_28__* %57, %struct.TYPE_29__* %58)
  br label %299

60:                                               ; preds = %51
  %61 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %62 = load i32, i32* %11, align 4
  %63 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @sym_dequeue_from_squeue(%struct.TYPE_28__* %61, i32 %62, i64 %65, i32 %68, i32 -1)
  %70 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %71 = load i32, i32* @start, align 4
  %72 = call i32 @SCRIPTA_BA(%struct.TYPE_28__* %70, i32 %71)
  %73 = call i32 @OUTL_DSP(i32 %72)
  %74 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %77, i32 0, i32 4
  store i32 %76, i32* %78, align 4
  %79 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %79, i32 0, i32 10
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %82, i32 0, i32 17
  store i32 %81, i32* %83, align 8
  %84 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %85 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %86 = call i32 @sym_compute_residual(%struct.TYPE_28__* %84, %struct.TYPE_29__* %85)
  %87 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %87, i32 0, i32 16
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* @M_IDENTIFY, align 4
  %90 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = or i32 %89, %92
  %94 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %94, i32 0, i32 5
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  store i32 %93, i32* %97, align 4
  store i32 1, i32* %9, align 4
  %98 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %98, i32 0, i32 11
  store i32 0, i32* %99, align 8
  store i32 0, i32* %10, align 4
  %100 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @PPR_OPT_MASK, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %60
  %109 = load i32, i32* @NS_PPR, align 4
  store i32 %109, i32* %10, align 4
  br label %131

110:                                              ; preds = %60
  %111 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @BUS_8_BIT, align 4
  %117 = icmp ne i32 %115, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %110
  %119 = load i32, i32* @NS_WIDE, align 4
  store i32 %119, i32* %10, align 4
  br label %130

120:                                              ; preds = %110
  %121 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %120
  %128 = load i32, i32* @NS_SYNC, align 4
  store i32 %128, i32* %10, align 4
  br label %129

129:                                              ; preds = %127, %120
  br label %130

130:                                              ; preds = %129, %118
  br label %131

131:                                              ; preds = %130, %108
  %132 = load i32, i32* %10, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %147

134:                                              ; preds = %131
  %135 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %136 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %137 = load i32, i32* %10, align 4
  %138 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %138, i32 0, i32 5
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %9, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = call i32 @sym_prepare_nego(%struct.TYPE_28__* %135, %struct.TYPE_29__* %136, i32 %137, i32* %143)
  %145 = load i32, i32* %9, align 4
  %146 = add nsw i32 %145, %144
  store i32 %146, i32* %9, align 4
  br label %147

147:                                              ; preds = %134, %131
  %148 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %149 = load i32, i32* @scsi_smsg2, align 4
  %150 = call i32 @CCB_BA(%struct.TYPE_29__* %148, i32 %149)
  %151 = call i8* @cpu_to_scr(i32 %150)
  %152 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %152, i32 0, i32 8
  %154 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %153, i32 0, i32 3
  %155 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %154, i32 0, i32 1
  store i8* %151, i8** %155, align 8
  %156 = load i32, i32* %9, align 4
  %157 = call i8* @cpu_to_scr(i32 %156)
  %158 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %158, i32 0, i32 8
  %160 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %159, i32 0, i32 3
  %161 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %160, i32 0, i32 0
  store i8* %157, i8** %161, align 8
  %162 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %163 = load i32, i32* @sensecmd, align 4
  %164 = call i32 @CCB_BA(%struct.TYPE_29__* %162, i32 %163)
  %165 = call i8* @cpu_to_scr(i32 %164)
  %166 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %166, i32 0, i32 8
  %168 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %168, i32 0, i32 1
  store i8* %165, i8** %169, align 8
  %170 = call i8* @cpu_to_scr(i32 6)
  %171 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %171, i32 0, i32 8
  %173 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %173, i32 0, i32 0
  store i8* %170, i8** %174, align 8
  %175 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %175, i32 0, i32 6
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 0
  store i32 3, i32* %178, align 4
  %179 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 8
  %182 = shl i32 %181, 5
  %183 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %183, i32 0, i32 6
  %185 = load i32*, i32** %184, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 1
  store i32 %182, i32* %186, align 4
  %187 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = icmp sgt i32 %191, 2
  br i1 %192, label %198, label %193

193:                                              ; preds = %147
  %194 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 8
  %197 = icmp sgt i32 %196, 7
  br i1 %197, label %198, label %203

198:                                              ; preds = %193, %147
  %199 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %199, i32 0, i32 6
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 1
  store i32 0, i32* %202, align 4
  br label %203

203:                                              ; preds = %198, %193
  %204 = load i32, i32* @SYM_SNS_BBUF_LEN, align 4
  %205 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %205, i32 0, i32 6
  %207 = load i32*, i32** %206, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 4
  store i32 %204, i32* %208, align 4
  %209 = load i32, i32* @SYM_SNS_BBUF_LEN, align 4
  %210 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %210, i32 0, i32 7
  store i32 %209, i32* %211, align 8
  %212 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %212, i32 0, i32 15
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* @SYM_SNS_BBUF_LEN, align 4
  %216 = call i32 @bzero(i32 %214, i32 %215)
  %217 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %217, i32 0, i32 15
  %219 = load i32, i32* %218, align 8
  %220 = call i32 @vtobus(i32 %219)
  %221 = call i8* @cpu_to_scr(i32 %220)
  %222 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %222, i32 0, i32 8
  %224 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %223, i32 0, i32 1
  %225 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %224, i32 0, i32 1
  store i8* %221, i8** %225, align 8
  %226 = load i32, i32* @SYM_SNS_BBUF_LEN, align 4
  %227 = call i8* @cpu_to_scr(i32 %226)
  %228 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %228, i32 0, i32 8
  %230 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %230, i32 0, i32 0
  store i8* %227, i8** %231, align 8
  %232 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %233 = load i32, i32* @sdata_in, align 4
  %234 = call i32 @SCRIPTB_BA(%struct.TYPE_28__* %232, i32 %233)
  store i32 %234, i32* %6, align 4
  %235 = load i32, i32* %6, align 4
  %236 = call i8* @cpu_to_scr(i32 %235)
  %237 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %237, i32 0, i32 8
  %239 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %239, i32 0, i32 3
  store i8* %236, i8** %240, align 8
  %241 = load i32, i32* %6, align 4
  %242 = add nsw i32 %241, 16
  %243 = call i8* @cpu_to_scr(i32 %242)
  %244 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %245 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %244, i32 0, i32 8
  %246 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %246, i32 0, i32 2
  store i8* %243, i8** %247, align 8
  %248 = load i32, i32* %6, align 4
  %249 = call i8* @cpu_to_scr(i32 %248)
  %250 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %251 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %250, i32 0, i32 8
  %252 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %252, i32 0, i32 1
  store i8* %249, i8** %253, align 8
  %254 = load i32, i32* %6, align 4
  %255 = call i8* @cpu_to_scr(i32 %254)
  %256 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %257 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %256, i32 0, i32 14
  store i8* %255, i8** %257, align 8
  %258 = load i32, i32* @SYM_QUIRK_AUTOSAVE, align 4
  %259 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %260 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %259, i32 0, i32 13
  store i32 %258, i32* %260, align 8
  %261 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %262 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %261, i32 0, i32 11
  %263 = load i32, i32* %262, align 8
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %267

265:                                              ; preds = %203
  %266 = load i32, i32* @HS_NEGOTIATE, align 4
  br label %269

267:                                              ; preds = %203
  %268 = load i32, i32* @HS_BUSY, align 4
  br label %269

269:                                              ; preds = %267, %265
  %270 = phi i32 [ %266, %265 ], [ %268, %267 ]
  %271 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %272 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %271, i32 0, i32 12
  store i32 %270, i32* %272, align 4
  %273 = load i32, i32* @S_ILLEGAL, align 4
  %274 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %275 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %274, i32 0, i32 1
  store i32 %273, i32* %275, align 8
  %276 = load i32, i32* @HF_SENSE, align 4
  %277 = load i32, i32* @HF_DATA_IN, align 4
  %278 = or i32 %276, %277
  %279 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %280 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %279, i32 0, i32 2
  store i32 %278, i32* %280, align 4
  %281 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %282 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %281, i32 0, i32 10
  store i32 0, i32* %282, align 4
  %283 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %284 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %283, i32 0, i32 9
  store i32 0, i32* %284, align 8
  %285 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %286 = load i32, i32* @select, align 4
  %287 = call i32 @SCRIPTA_BA(%struct.TYPE_28__* %285, i32 %286)
  %288 = call i8* @cpu_to_scr(i32 %287)
  %289 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %290 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %289, i32 0, i32 8
  %291 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %292, i32 0, i32 0
  store i8* %288, i8** %293, align 8
  %294 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %295 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %296 = call i32 @sym_put_start_queue(%struct.TYPE_28__* %294, %struct.TYPE_29__* %295)
  %297 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %298 = call i32 @sym_flush_comp_queue(%struct.TYPE_28__* %297, i32 0)
  br label %299

299:                                              ; preds = %269, %56, %47
  ret void
}

declare dso_local i32 @SYM_LOCK_ASSERT(i32) #1

declare dso_local i32 @INL(i32) #1

declare dso_local i32 @PRINT_ADDR(%struct.TYPE_29__*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @sym_complete_error(%struct.TYPE_28__*, %struct.TYPE_29__*) #1

declare dso_local i32 @sym_dequeue_from_squeue(%struct.TYPE_28__*, i32, i64, i32, i32) #1

declare dso_local i32 @OUTL_DSP(i32) #1

declare dso_local i32 @SCRIPTA_BA(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @sym_compute_residual(%struct.TYPE_28__*, %struct.TYPE_29__*) #1

declare dso_local i32 @sym_prepare_nego(%struct.TYPE_28__*, %struct.TYPE_29__*, i32, i32*) #1

declare dso_local i8* @cpu_to_scr(i32) #1

declare dso_local i32 @CCB_BA(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @bzero(i32, i32) #1

declare dso_local i32 @vtobus(i32) #1

declare dso_local i32 @SCRIPTB_BA(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @sym_put_start_queue(%struct.TYPE_28__*, %struct.TYPE_29__*) #1

declare dso_local i32 @sym_flush_comp_queue(%struct.TYPE_28__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
