; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_stats.c_stats_v1_itercb_tostr_freeform.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_stats.c_stats_v1_itercb_tostr_freeform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statsblobv1 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.voi = type { i64, i64, i32, i32, i32 }
%struct.voistat = type { i64, i64, i32, i32, i32, i32 }
%struct.sb_iter_ctx = type { i32, i32, i32, %struct.sb_tostrcb_ctx* }
%struct.sb_tostrcb_ctx = type { i32, i32, %struct.TYPE_3__*, %struct.sbuf* }
%struct.TYPE_3__ = type { %struct.metablob* }
%struct.metablob = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8* }
%struct.sbuf = type { i32 }

@SB_TOSTR_OBJDUMP = common dso_local global i32 0, align 4
@SB_IT_FIRST_CB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"struct statsblobv1@%p\00", align 1
@.str.1 = private unnamed_addr constant [121 x i8] c", abi=%hhu, endian=%hhu, maxsz=%hu, cursz=%hu, created=%jd, lastrst=%jd, flags=0x%04hx, stats_off=%hu, statsdata_off=%hu\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c", tplhash=%u\00", align 1
@SB_IT_FIRST_VOISTAT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"\0A\09vois[%hd]: id=%hd\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c", name=\22%s\22\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [60 x i8] c", flags=0x%04hx, dtype=%s, voistatmaxid=%hhd, stats_off=%hu\00", align 1
@vsd_dtype2name = common dso_local global i32* null, align 8
@.str.7 = private unnamed_addr constant [31 x i8] c"\0A\09\09vois[%hd]stat[%hhd]: stype=\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%hhd\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"%s, errs=%hu\00", align 1
@vs_stype2name = common dso_local global i32* null, align 8
@.str.10 = private unnamed_addr constant [48 x i8] c", flags=0x%04x, dtype=%s, dsz=%hu, data_off=%hu\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"\0A\09\09\09voistatdata: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.statsblobv1*, %struct.voi*, %struct.voistat*, %struct.sb_iter_ctx*)* @stats_v1_itercb_tostr_freeform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stats_v1_itercb_tostr_freeform(%struct.statsblobv1* %0, %struct.voi* %1, %struct.voistat* %2, %struct.sb_iter_ctx* %3) #0 {
  %5 = alloca %struct.statsblobv1*, align 8
  %6 = alloca %struct.voi*, align 8
  %7 = alloca %struct.voistat*, align 8
  %8 = alloca %struct.sb_iter_ctx*, align 8
  %9 = alloca %struct.sb_tostrcb_ctx*, align 8
  %10 = alloca %struct.metablob*, align 8
  %11 = alloca %struct.sbuf*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.statsblobv1* %0, %struct.statsblobv1** %5, align 8
  store %struct.voi* %1, %struct.voi** %6, align 8
  store %struct.voistat* %2, %struct.voistat** %7, align 8
  store %struct.sb_iter_ctx* %3, %struct.sb_iter_ctx** %8, align 8
  %14 = load %struct.sb_iter_ctx*, %struct.sb_iter_ctx** %8, align 8
  %15 = getelementptr inbounds %struct.sb_iter_ctx, %struct.sb_iter_ctx* %14, i32 0, i32 3
  %16 = load %struct.sb_tostrcb_ctx*, %struct.sb_tostrcb_ctx** %15, align 8
  store %struct.sb_tostrcb_ctx* %16, %struct.sb_tostrcb_ctx** %9, align 8
  %17 = load %struct.sb_tostrcb_ctx*, %struct.sb_tostrcb_ctx** %9, align 8
  %18 = getelementptr inbounds %struct.sb_tostrcb_ctx, %struct.sb_tostrcb_ctx* %17, i32 0, i32 3
  %19 = load %struct.sbuf*, %struct.sbuf** %18, align 8
  store %struct.sbuf* %19, %struct.sbuf** %11, align 8
  %20 = load %struct.sb_tostrcb_ctx*, %struct.sb_tostrcb_ctx** %9, align 8
  %21 = getelementptr inbounds %struct.sb_tostrcb_ctx, %struct.sb_tostrcb_ctx* %20, i32 0, i32 2
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = icmp ne %struct.TYPE_3__* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %4
  %25 = load %struct.sb_tostrcb_ctx*, %struct.sb_tostrcb_ctx** %9, align 8
  %26 = getelementptr inbounds %struct.sb_tostrcb_ctx, %struct.sb_tostrcb_ctx* %25, i32 0, i32 2
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load %struct.metablob*, %struct.metablob** %28, align 8
  br label %31

30:                                               ; preds = %4
  br label %31

31:                                               ; preds = %30, %24
  %32 = phi %struct.metablob* [ %29, %24 ], [ null, %30 ]
  store %struct.metablob* %32, %struct.metablob** %10, align 8
  %33 = load %struct.sb_tostrcb_ctx*, %struct.sb_tostrcb_ctx** %9, align 8
  %34 = getelementptr inbounds %struct.sb_tostrcb_ctx, %struct.sb_tostrcb_ctx* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @SB_TOSTR_OBJDUMP, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %13, align 4
  %40 = load %struct.sb_iter_ctx*, %struct.sb_iter_ctx** %8, align 8
  %41 = getelementptr inbounds %struct.sb_iter_ctx, %struct.sb_iter_ctx* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @SB_IT_FIRST_CB, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %88

46:                                               ; preds = %31
  %47 = load %struct.sbuf*, %struct.sbuf** %11, align 8
  %48 = load %struct.statsblobv1*, %struct.statsblobv1** %5, align 8
  %49 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %47, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.statsblobv1* %48)
  %50 = load i32, i32* %13, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %82

52:                                               ; preds = %46
  %53 = load %struct.sbuf*, %struct.sbuf** %11, align 8
  %54 = load %struct.statsblobv1*, %struct.statsblobv1** %5, align 8
  %55 = getelementptr inbounds %struct.statsblobv1, %struct.statsblobv1* %54, i32 0, i32 9
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.statsblobv1*, %struct.statsblobv1** %5, align 8
  %58 = getelementptr inbounds %struct.statsblobv1, %struct.statsblobv1* %57, i32 0, i32 8
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.statsblobv1*, %struct.statsblobv1** %5, align 8
  %61 = getelementptr inbounds %struct.statsblobv1, %struct.statsblobv1* %60, i32 0, i32 7
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.statsblobv1*, %struct.statsblobv1** %5, align 8
  %64 = getelementptr inbounds %struct.statsblobv1, %struct.statsblobv1* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.statsblobv1*, %struct.statsblobv1** %5, align 8
  %67 = getelementptr inbounds %struct.statsblobv1, %struct.statsblobv1* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.statsblobv1*, %struct.statsblobv1** %5, align 8
  %70 = getelementptr inbounds %struct.statsblobv1, %struct.statsblobv1* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.statsblobv1*, %struct.statsblobv1** %5, align 8
  %73 = getelementptr inbounds %struct.statsblobv1, %struct.statsblobv1* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.statsblobv1*, %struct.statsblobv1** %5, align 8
  %76 = getelementptr inbounds %struct.statsblobv1, %struct.statsblobv1* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.statsblobv1*, %struct.statsblobv1** %5, align 8
  %79 = getelementptr inbounds %struct.statsblobv1, %struct.statsblobv1* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %53, i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 %59, i32 %62, i32 %65, i32 %68, i32 %71, i32 %74, i32 %77, i32 %80)
  br label %82

82:                                               ; preds = %52, %46
  %83 = load %struct.sbuf*, %struct.sbuf** %11, align 8
  %84 = load %struct.statsblobv1*, %struct.statsblobv1** %5, align 8
  %85 = getelementptr inbounds %struct.statsblobv1, %struct.statsblobv1* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %83, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %86)
  br label %88

88:                                               ; preds = %82, %31
  %89 = load %struct.sb_iter_ctx*, %struct.sb_iter_ctx** %8, align 8
  %90 = getelementptr inbounds %struct.sb_iter_ctx, %struct.sb_iter_ctx* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @SB_IT_FIRST_VOISTAT, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %148

95:                                               ; preds = %88
  %96 = load %struct.sbuf*, %struct.sbuf** %11, align 8
  %97 = load %struct.sb_iter_ctx*, %struct.sb_iter_ctx** %8, align 8
  %98 = getelementptr inbounds %struct.sb_iter_ctx, %struct.sb_iter_ctx* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.voi*, %struct.voi** %6, align 8
  %101 = getelementptr inbounds %struct.voi, %struct.voi* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %96, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %99, i64 %102)
  %104 = load %struct.voi*, %struct.voi** %6, align 8
  %105 = getelementptr inbounds %struct.voi, %struct.voi* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ult i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %95
  br label %233

109:                                              ; preds = %95
  %110 = load %struct.sbuf*, %struct.sbuf** %11, align 8
  %111 = load %struct.metablob*, %struct.metablob** %10, align 8
  %112 = icmp eq %struct.metablob* %111, null
  br i1 %112, label %113, label %114

113:                                              ; preds = %109
  br label %124

114:                                              ; preds = %109
  %115 = load %struct.metablob*, %struct.metablob** %10, align 8
  %116 = getelementptr inbounds %struct.metablob, %struct.metablob* %115, i32 0, i32 0
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = load %struct.voi*, %struct.voi** %6, align 8
  %119 = getelementptr inbounds %struct.voi, %struct.voi* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  br label %124

124:                                              ; preds = %114, %113
  %125 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), %113 ], [ %123, %114 ]
  %126 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %110, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %125)
  %127 = load i32, i32* %13, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %147

129:                                              ; preds = %124
  %130 = load %struct.sbuf*, %struct.sbuf** %11, align 8
  %131 = load %struct.voi*, %struct.voi** %6, align 8
  %132 = getelementptr inbounds %struct.voi, %struct.voi* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = load i32*, i32** @vsd_dtype2name, align 8
  %135 = load %struct.voi*, %struct.voi** %6, align 8
  %136 = getelementptr inbounds %struct.voi, %struct.voi* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = getelementptr inbounds i32, i32* %134, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.voi*, %struct.voi** %6, align 8
  %141 = getelementptr inbounds %struct.voi, %struct.voi* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.voi*, %struct.voi** %6, align 8
  %144 = getelementptr inbounds %struct.voi, %struct.voi* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %130, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.6, i64 0, i64 0), i32 %133, i32 %139, i32 %142, i32 %145)
  br label %147

147:                                              ; preds = %129, %124
  br label %148

148:                                              ; preds = %147, %88
  %149 = load i32, i32* %13, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %157, label %151

151:                                              ; preds = %148
  %152 = load %struct.voistat*, %struct.voistat** %7, align 8
  %153 = getelementptr inbounds %struct.voistat, %struct.voistat* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = icmp ule i64 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %151
  br label %233

157:                                              ; preds = %151, %148
  %158 = load %struct.sbuf*, %struct.sbuf** %11, align 8
  %159 = load %struct.voi*, %struct.voi** %6, align 8
  %160 = getelementptr inbounds %struct.voi, %struct.voi* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.sb_iter_ctx*, %struct.sb_iter_ctx** %8, align 8
  %163 = getelementptr inbounds %struct.sb_iter_ctx, %struct.sb_iter_ctx* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %158, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i64 %161, i32 %164)
  %166 = load %struct.voistat*, %struct.voistat** %7, align 8
  %167 = getelementptr inbounds %struct.voistat, %struct.voistat* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = icmp ult i64 %168, 0
  br i1 %169, label %170, label %176

170:                                              ; preds = %157
  %171 = load %struct.sbuf*, %struct.sbuf** %11, align 8
  %172 = load %struct.voistat*, %struct.voistat** %7, align 8
  %173 = getelementptr inbounds %struct.voistat, %struct.voistat* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %171, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %174)
  br label %233

176:                                              ; preds = %157
  %177 = load %struct.sbuf*, %struct.sbuf** %11, align 8
  %178 = load i32*, i32** @vs_stype2name, align 8
  %179 = load %struct.voistat*, %struct.voistat** %7, align 8
  %180 = getelementptr inbounds %struct.voistat, %struct.voistat* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = getelementptr inbounds i32, i32* %178, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.voistat*, %struct.voistat** %7, align 8
  %185 = getelementptr inbounds %struct.voistat, %struct.voistat* %184, i32 0, i32 5
  %186 = load i32, i32* %185, align 4
  %187 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %177, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32 %183, i32 %186)
  br label %188

188:                                              ; preds = %176
  %189 = load %struct.statsblobv1*, %struct.statsblobv1** %5, align 8
  %190 = load %struct.voistat*, %struct.voistat** %7, align 8
  %191 = getelementptr inbounds %struct.voistat, %struct.voistat* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 4
  %193 = call i8* @BLOB_OFFSET(%struct.statsblobv1* %189, i32 %192)
  store i8* %193, i8** %12, align 8
  %194 = load i32, i32* %13, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %214

196:                                              ; preds = %188
  %197 = load %struct.sbuf*, %struct.sbuf** %11, align 8
  %198 = load %struct.voistat*, %struct.voistat** %7, align 8
  %199 = getelementptr inbounds %struct.voistat, %struct.voistat* %198, i32 0, i32 4
  %200 = load i32, i32* %199, align 8
  %201 = load i32*, i32** @vsd_dtype2name, align 8
  %202 = load %struct.voistat*, %struct.voistat** %7, align 8
  %203 = getelementptr inbounds %struct.voistat, %struct.voistat* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = getelementptr inbounds i32, i32* %201, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.voistat*, %struct.voistat** %7, align 8
  %208 = getelementptr inbounds %struct.voistat, %struct.voistat* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = load %struct.voistat*, %struct.voistat** %7, align 8
  %211 = getelementptr inbounds %struct.voistat, %struct.voistat* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 4
  %213 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %197, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.10, i64 0, i64 0), i32 %200, i32 %206, i32 %209, i32 %212)
  br label %214

214:                                              ; preds = %196, %188
  %215 = load %struct.sbuf*, %struct.sbuf** %11, align 8
  %216 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %215, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0))
  %217 = load i8*, i8** %12, align 8
  %218 = load %struct.voi*, %struct.voi** %6, align 8
  %219 = getelementptr inbounds %struct.voi, %struct.voi* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = load %struct.voistat*, %struct.voistat** %7, align 8
  %222 = getelementptr inbounds %struct.voistat, %struct.voistat* %221, i32 0, i32 1
  %223 = load i64, i64* %222, align 8
  %224 = load %struct.voistat*, %struct.voistat** %7, align 8
  %225 = getelementptr inbounds %struct.voistat, %struct.voistat* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = load %struct.sb_tostrcb_ctx*, %struct.sb_tostrcb_ctx** %9, align 8
  %228 = getelementptr inbounds %struct.sb_tostrcb_ctx, %struct.sb_tostrcb_ctx* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.sbuf*, %struct.sbuf** %11, align 8
  %231 = load i32, i32* %13, align 4
  %232 = call i32 @stats_voistatdata_tostr(i8* %217, i64 %220, i64 %223, i32 %226, i32 %229, %struct.sbuf* %230, i32 %231)
  br label %233

233:                                              ; preds = %214, %170, %156, %108
  ret void
}

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, ...) #1

declare dso_local i8* @BLOB_OFFSET(%struct.statsblobv1*, i32) #1

declare dso_local i32 @stats_voistatdata_tostr(i8*, i64, i64, i32, i32, %struct.sbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
