; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dummynet.c_config_fs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dummynet.c_config_fs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.dn_fsk = type { i32*, %struct.dn_fs, i64 }
%struct.dn_fs = type { i32, i32, i32, i32, i32*, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.dn_id = type { i32 }
%struct.dn_schk = type { i32* }

@.str = private unnamed_addr constant [23 x i8] c"invalid flowset len %d\00", align 1
@DN_MAX_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"flowset %d\00", align 1
@DN_QSIZE_BYTES = common dso_local global i32 0, align 4
@dn_cfg = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@DN_HAVE_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"flowset buckets\00", align 1
@DNHT_INSERT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"missing sched for flowset %d\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"flowset %d unchanged\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"fs %d changed sched %d@%p to %d@%p\00", align 1
@DN_DETACH = common dso_local global i32 0, align 4
@DN_DESTROY = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dn_fsk* (%struct.dn_fs*, %struct.dn_id*, i32)* @config_fs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dn_fsk* @config_fs(%struct.dn_fs* %0, %struct.dn_id* %1, i32 %2) #0 {
  %4 = alloca %struct.dn_fsk*, align 8
  %5 = alloca %struct.dn_fs*, align 8
  %6 = alloca %struct.dn_id*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dn_fsk*, align 8
  %10 = alloca %struct.dn_schk*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.dn_fs* %0, %struct.dn_fs** %5, align 8
  store %struct.dn_id* %1, %struct.dn_id** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.dn_fs*, %struct.dn_fs** %5, align 8
  %16 = getelementptr inbounds %struct.dn_fs, %struct.dn_fs* %15, i32 0, i32 6
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = icmp ne i64 %19, 32
  br i1 %20, label %21, label %27

21:                                               ; preds = %3
  %22 = load %struct.dn_fs*, %struct.dn_fs** %5, align 8
  %23 = getelementptr inbounds %struct.dn_fs, %struct.dn_fs* %22, i32 0, i32 6
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @D(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %25)
  store %struct.dn_fsk* null, %struct.dn_fsk** %4, align 8
  br label %223

27:                                               ; preds = %3
  %28 = load %struct.dn_fs*, %struct.dn_fs** %5, align 8
  %29 = getelementptr inbounds %struct.dn_fs, %struct.dn_fs* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp sle i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @DN_MAX_ID, align 4
  %36 = mul nsw i32 3, %35
  %37 = icmp sge i32 %34, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %33, %27
  store %struct.dn_fsk* null, %struct.dn_fsk** %4, align 8
  br label %223

39:                                               ; preds = %33
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @ND(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load %struct.dn_fs*, %struct.dn_fs** %5, align 8
  %43 = getelementptr inbounds %struct.dn_fs, %struct.dn_fs* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @DN_QSIZE_BYTES, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %39
  %49 = load %struct.dn_fs*, %struct.dn_fs** %5, align 8
  %50 = getelementptr inbounds %struct.dn_fs, %struct.dn_fs* %49, i32 0, i32 2
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dn_cfg, i32 0, i32 6), align 4
  %52 = call i32 @ipdn_bound_var(i32* %50, i32 16384, i32 1500, i32 %51, i8* null)
  br label %58

53:                                               ; preds = %39
  %54 = load %struct.dn_fs*, %struct.dn_fs** %5, align 8
  %55 = getelementptr inbounds %struct.dn_fs, %struct.dn_fs* %54, i32 0, i32 2
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dn_cfg, i32 0, i32 5), align 4
  %57 = call i32 @ipdn_bound_var(i32* %55, i32 50, i32 1, i32 %56, i8* null)
  br label %58

58:                                               ; preds = %53, %48
  %59 = load %struct.dn_fs*, %struct.dn_fs** %5, align 8
  %60 = getelementptr inbounds %struct.dn_fs, %struct.dn_fs* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @DN_HAVE_MASK, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %58
  %66 = load %struct.dn_fs*, %struct.dn_fs** %5, align 8
  %67 = getelementptr inbounds %struct.dn_fs, %struct.dn_fs* %66, i32 0, i32 3
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dn_cfg, i32 0, i32 0), align 4
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dn_cfg, i32 0, i32 4), align 4
  %70 = call i32 @ipdn_bound_var(i32* %67, i32 %68, i32 1, i32 %69, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %74

71:                                               ; preds = %58
  %72 = load %struct.dn_fs*, %struct.dn_fs** %5, align 8
  %73 = getelementptr inbounds %struct.dn_fs, %struct.dn_fs* %72, i32 0, i32 3
  store i32 1, i32* %73, align 4
  br label %74

74:                                               ; preds = %71, %65
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %74
  %78 = call i32 (...) @DN_BH_WLOCK()
  br label %79

79:                                               ; preds = %77, %74
  br label %80

80:                                               ; preds = %79
  %81 = load %struct.dn_fs*, %struct.dn_fs** %5, align 8
  %82 = getelementptr inbounds %struct.dn_fs, %struct.dn_fs* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = load i32, i32* @DNHT_INSERT, align 4
  br label %88

87:                                               ; preds = %80
  br label %88

88:                                               ; preds = %87, %85
  %89 = phi i32 [ %86, %85 ], [ 0, %87 ]
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dn_cfg, i32 0, i32 1), align 4
  store i32 %90, i32* %13, align 4
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dn_cfg, i32 0, i32 3), align 4
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* %11, align 4
  %94 = call %struct.dn_fsk* @dn_ht_find(i32 %91, i32 %92, i32 %93, i32* null)
  store %struct.dn_fsk* %94, %struct.dn_fsk** %9, align 8
  %95 = load %struct.dn_fsk*, %struct.dn_fsk** %9, align 8
  %96 = icmp eq %struct.dn_fsk* %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %88
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @D(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %98)
  br label %216

100:                                              ; preds = %88
  %101 = load %struct.dn_fs*, %struct.dn_fs** %5, align 8
  %102 = getelementptr inbounds %struct.dn_fs, %struct.dn_fs* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 8
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %100
  %106 = load %struct.dn_fsk*, %struct.dn_fsk** %9, align 8
  %107 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.dn_fs, %struct.dn_fs* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.dn_fs*, %struct.dn_fs** %5, align 8
  %111 = getelementptr inbounds %struct.dn_fs, %struct.dn_fs* %110, i32 0, i32 5
  store i32 %109, i32* %111, align 8
  br label %112

112:                                              ; preds = %105, %100
  store i32 0, i32* %12, align 4
  br label %113

113:                                              ; preds = %142, %112
  %114 = load i32, i32* %12, align 4
  %115 = sext i32 %114 to i64
  %116 = icmp ult i64 %115, 2
  br i1 %116, label %117, label %145

117:                                              ; preds = %113
  %118 = load %struct.dn_fs*, %struct.dn_fs** %5, align 8
  %119 = getelementptr inbounds %struct.dn_fs, %struct.dn_fs* %118, i32 0, i32 4
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %12, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = icmp eq i32 %124, -1
  br i1 %125, label %126, label %141

126:                                              ; preds = %117
  %127 = load %struct.dn_fsk*, %struct.dn_fsk** %9, align 8
  %128 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.dn_fs, %struct.dn_fs* %128, i32 0, i32 4
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %12, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.dn_fs*, %struct.dn_fs** %5, align 8
  %136 = getelementptr inbounds %struct.dn_fs, %struct.dn_fs* %135, i32 0, i32 4
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %12, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  store i32 %134, i32* %140, align 4
  br label %141

141:                                              ; preds = %126, %117
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %12, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %12, align 4
  br label %113

145:                                              ; preds = %113
  %146 = load %struct.dn_fsk*, %struct.dn_fsk** %9, align 8
  %147 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %146, i32 0, i32 1
  %148 = load %struct.dn_fs*, %struct.dn_fs** %5, align 8
  %149 = call i64 @bcmp(%struct.dn_fs* %147, %struct.dn_fs* %148, i32 32)
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %145
  %152 = load i32, i32* %8, align 4
  %153 = call i32 @ND(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %152)
  br label %216

154:                                              ; preds = %145
  %155 = load i32, i32* %13, align 4
  %156 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dn_cfg, i32 0, i32 1), align 4
  %157 = icmp ne i32 %155, %156
  br i1 %157, label %158, label %161

158:                                              ; preds = %154
  %159 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dn_cfg, i32 0, i32 2), align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dn_cfg, i32 0, i32 2), align 4
  br label %161

161:                                              ; preds = %158, %154
  %162 = load %struct.dn_fs*, %struct.dn_fs** %5, align 8
  %163 = getelementptr inbounds %struct.dn_fs, %struct.dn_fs* %162, i32 0, i32 5
  %164 = load i32, i32* %163, align 8
  %165 = call %struct.dn_schk* @locate_scheduler(i32 %164)
  store %struct.dn_schk* %165, %struct.dn_schk** %10, align 8
  %166 = load %struct.dn_fsk*, %struct.dn_fsk** %9, align 8
  %167 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.dn_fs, %struct.dn_fs* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.dn_fsk*, %struct.dn_fsk** %9, align 8
  %171 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.dn_fs, %struct.dn_fs* %171, i32 0, i32 5
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.dn_fsk*, %struct.dn_fsk** %9, align 8
  %175 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %174, i32 0, i32 2
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.dn_fs*, %struct.dn_fs** %5, align 8
  %178 = getelementptr inbounds %struct.dn_fs, %struct.dn_fs* %177, i32 0, i32 5
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.dn_schk*, %struct.dn_schk** %10, align 8
  %181 = call i32 @DX(i32 2, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %169, i32 %173, i64 %176, i32 %179, %struct.dn_schk* %180)
  %182 = load %struct.dn_fsk*, %struct.dn_fsk** %9, align 8
  %183 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %182, i32 0, i32 2
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %203

186:                                              ; preds = %161
  %187 = load %struct.dn_schk*, %struct.dn_schk** %10, align 8
  %188 = icmp ne %struct.dn_schk* %187, null
  br i1 %188, label %189, label %191

189:                                              ; preds = %186
  %190 = load i32, i32* @DN_DETACH, align 4
  br label %195

191:                                              ; preds = %186
  %192 = load i32, i32* @DN_DETACH, align 4
  %193 = load i32, i32* @DN_DESTROY, align 4
  %194 = or i32 %192, %193
  br label %195

195:                                              ; preds = %191, %189
  %196 = phi i32 [ %190, %189 ], [ %194, %191 ]
  store i32 %196, i32* %14, align 4
  %197 = load i32, i32* @DN_DESTROY, align 4
  %198 = load i32, i32* %14, align 4
  %199 = or i32 %198, %197
  store i32 %199, i32* %14, align 4
  %200 = load %struct.dn_fsk*, %struct.dn_fsk** %9, align 8
  %201 = load i32, i32* %14, align 4
  %202 = call i32 @fsk_detach(%struct.dn_fsk* %200, i32 %201)
  br label %203

203:                                              ; preds = %195, %161
  %204 = load %struct.dn_fsk*, %struct.dn_fsk** %9, align 8
  %205 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %204, i32 0, i32 1
  %206 = load %struct.dn_fs*, %struct.dn_fs** %5, align 8
  %207 = bitcast %struct.dn_fs* %205 to i8*
  %208 = bitcast %struct.dn_fs* %206 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %207, i8* align 8 %208, i64 32, i1 false)
  %209 = load %struct.dn_schk*, %struct.dn_schk** %10, align 8
  %210 = icmp ne %struct.dn_schk* %209, null
  br i1 %210, label %211, label %215

211:                                              ; preds = %203
  %212 = load %struct.dn_fsk*, %struct.dn_fsk** %9, align 8
  %213 = load %struct.dn_schk*, %struct.dn_schk** %10, align 8
  %214 = call i32 @fsk_attach(%struct.dn_fsk* %212, %struct.dn_schk* %213)
  br label %215

215:                                              ; preds = %211, %203
  br label %216

216:                                              ; preds = %215, %151, %97
  %217 = load i32, i32* %7, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %221, label %219

219:                                              ; preds = %216
  %220 = call i32 (...) @DN_BH_WUNLOCK()
  br label %221

221:                                              ; preds = %219, %216
  %222 = load %struct.dn_fsk*, %struct.dn_fsk** %9, align 8
  store %struct.dn_fsk* %222, %struct.dn_fsk** %4, align 8
  br label %223

223:                                              ; preds = %221, %38, %21
  %224 = load %struct.dn_fsk*, %struct.dn_fsk** %4, align 8
  ret %struct.dn_fsk* %224
}

declare dso_local i32 @D(i8*, i32) #1

declare dso_local i32 @ND(i8*, i32) #1

declare dso_local i32 @ipdn_bound_var(i32*, i32, i32, i32, i8*) #1

declare dso_local i32 @DN_BH_WLOCK(...) #1

declare dso_local %struct.dn_fsk* @dn_ht_find(i32, i32, i32, i32*) #1

declare dso_local i64 @bcmp(%struct.dn_fs*, %struct.dn_fs*, i32) #1

declare dso_local %struct.dn_schk* @locate_scheduler(i32) #1

declare dso_local i32 @DX(i32, i8*, i32, i32, i64, i32, %struct.dn_schk*) #1

declare dso_local i32 @fsk_detach(%struct.dn_fsk*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @fsk_attach(%struct.dn_fsk*, %struct.dn_schk*) #1

declare dso_local i32 @DN_BH_WUNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
