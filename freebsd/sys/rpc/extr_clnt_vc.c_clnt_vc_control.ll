; ModuleID = '/home/carl/AnghaBench/freebsd/sys/rpc/extr_clnt_vc.c_clnt_vc_control.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/rpc/extr_clnt_vc.c_clnt_vc_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.ct_data = type { i8*, i32, %struct.TYPE_5__*, i32, i32, i32, %struct.TYPE_7__, %struct.timeval, i8* }
%struct.TYPE_5__ = type { %struct.ct_data* }
%struct.TYPE_7__ = type { i64 }
%struct.timeval = type { i32 }

@TRUE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@BYTES_PER_XDR_UNIT = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_6__*, i32, i8*)* @clnt_vc_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @clnt_vc_control(%struct.TYPE_6__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ct_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.ct_data*
  store %struct.ct_data* %14, %struct.ct_data** %8, align 8
  %15 = load i8*, i8** %7, align 8
  store i8* %15, i8** %9, align 8
  %16 = load %struct.ct_data*, %struct.ct_data** %8, align 8
  %17 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %16, i32 0, i32 1
  %18 = call i32 @mtx_lock(i32* %17)
  %19 = load i32, i32* %6, align 4
  switch i32 %19, label %36 [
    i32 136, label %20
    i32 135, label %28
  ]

20:                                               ; preds = %3
  %21 = load i8*, i8** @TRUE, align 8
  %22 = load %struct.ct_data*, %struct.ct_data** %8, align 8
  %23 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %22, i32 0, i32 8
  store i8* %21, i8** %23, align 8
  %24 = load %struct.ct_data*, %struct.ct_data** %8, align 8
  %25 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %24, i32 0, i32 1
  %26 = call i32 @mtx_unlock(i32* %25)
  %27 = load i8*, i8** @TRUE, align 8
  store i8* %27, i8** %4, align 8
  br label %227

28:                                               ; preds = %3
  %29 = load i8*, i8** @FALSE, align 8
  %30 = load %struct.ct_data*, %struct.ct_data** %8, align 8
  %31 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %30, i32 0, i32 8
  store i8* %29, i8** %31, align 8
  %32 = load %struct.ct_data*, %struct.ct_data** %8, align 8
  %33 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %32, i32 0, i32 1
  %34 = call i32 @mtx_unlock(i32* %33)
  %35 = load i8*, i8** @TRUE, align 8
  store i8* %35, i8** %4, align 8
  br label %227

36:                                               ; preds = %3
  br label %37

37:                                               ; preds = %36
  %38 = load i8*, i8** %7, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load %struct.ct_data*, %struct.ct_data** %8, align 8
  %42 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %41, i32 0, i32 1
  %43 = call i32 @mtx_unlock(i32* %42)
  %44 = load i8*, i8** @FALSE, align 8
  store i8* %44, i8** %4, align 8
  br label %227

45:                                               ; preds = %37
  %46 = load i32, i32* %6, align 4
  switch i32 %46, label %217 [
    i32 131, label %47
    i32 141, label %64
    i32 143, label %71
    i32 142, label %80
    i32 132, label %89
    i32 138, label %94
    i32 128, label %100
    i32 140, label %107
    i32 130, label %121
    i32 144, label %135
    i32 133, label %149
    i32 129, label %163
    i32 139, label %167
    i32 134, label %173
    i32 145, label %186
    i32 137, label %202
  ]

47:                                               ; preds = %45
  %48 = load i8*, i8** %7, align 8
  %49 = bitcast i8* %48 to %struct.timeval*
  %50 = call i32 @time_not_ok(%struct.timeval* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load %struct.ct_data*, %struct.ct_data** %8, align 8
  %54 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %53, i32 0, i32 1
  %55 = call i32 @mtx_unlock(i32* %54)
  %56 = load i8*, i8** @FALSE, align 8
  store i8* %56, i8** %4, align 8
  br label %227

57:                                               ; preds = %47
  %58 = load %struct.ct_data*, %struct.ct_data** %8, align 8
  %59 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %58, i32 0, i32 7
  %60 = load i8*, i8** %9, align 8
  %61 = bitcast i8* %60 to %struct.timeval*
  %62 = bitcast %struct.timeval* %59 to i8*
  %63 = bitcast %struct.timeval* %61 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %62, i8* align 4 %63, i64 4, i1 false)
  br label %222

64:                                               ; preds = %45
  %65 = load i8*, i8** %9, align 8
  %66 = bitcast i8* %65 to %struct.timeval*
  %67 = load %struct.ct_data*, %struct.ct_data** %8, align 8
  %68 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %67, i32 0, i32 7
  %69 = bitcast %struct.timeval* %66 to i8*
  %70 = bitcast %struct.timeval* %68 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %69, i8* align 8 %70, i64 4, i1 false)
  br label %222

71:                                               ; preds = %45
  %72 = load i8*, i8** %7, align 8
  %73 = load %struct.ct_data*, %struct.ct_data** %8, align 8
  %74 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %73, i32 0, i32 6
  %75 = load %struct.ct_data*, %struct.ct_data** %8, align 8
  %76 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %75, i32 0, i32 6
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @memcpy(i8* %72, %struct.TYPE_7__* %74, i64 %78)
  br label %222

80:                                               ; preds = %45
  %81 = load i8*, i8** %7, align 8
  %82 = load %struct.ct_data*, %struct.ct_data** %8, align 8
  %83 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %82, i32 0, i32 6
  %84 = load %struct.ct_data*, %struct.ct_data** %8, align 8
  %85 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %84, i32 0, i32 6
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @memcpy(i8* %81, %struct.TYPE_7__* %83, i64 %87)
  br label %222

89:                                               ; preds = %45
  %90 = load %struct.ct_data*, %struct.ct_data** %8, align 8
  %91 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %90, i32 0, i32 1
  %92 = call i32 @mtx_unlock(i32* %91)
  %93 = load i8*, i8** @FALSE, align 8
  store i8* %93, i8** %4, align 8
  br label %227

94:                                               ; preds = %45
  %95 = load %struct.ct_data*, %struct.ct_data** %8, align 8
  %96 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 8
  %98 = load i8*, i8** %7, align 8
  %99 = bitcast i8* %98 to i32*
  store i32 %97, i32* %99, align 4
  br label %222

100:                                              ; preds = %45
  %101 = load i8*, i8** %7, align 8
  %102 = bitcast i8* %101 to i32*
  %103 = load i32, i32* %102, align 4
  %104 = sub nsw i32 %103, 1
  %105 = load %struct.ct_data*, %struct.ct_data** %8, align 8
  %106 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %105, i32 0, i32 5
  store i32 %104, i32* %106, align 8
  br label %222

107:                                              ; preds = %45
  %108 = load %struct.ct_data*, %struct.ct_data** %8, align 8
  %109 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @BYTES_PER_XDR_UNIT, align 4
  %112 = mul nsw i32 4, %111
  %113 = add nsw i32 %110, %112
  %114 = sext i32 %113 to i64
  %115 = inttoptr i64 %114 to i8*
  %116 = bitcast i8* %115 to i32*
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @ntohl(i32 %117)
  %119 = load i8*, i8** %7, align 8
  %120 = bitcast i8* %119 to i32*
  store i32 %118, i32* %120, align 4
  br label %222

121:                                              ; preds = %45
  %122 = load i8*, i8** %7, align 8
  %123 = bitcast i8* %122 to i32*
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @htonl(i32 %124)
  %126 = load %struct.ct_data*, %struct.ct_data** %8, align 8
  %127 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @BYTES_PER_XDR_UNIT, align 4
  %130 = mul nsw i32 4, %129
  %131 = add nsw i32 %128, %130
  %132 = sext i32 %131 to i64
  %133 = inttoptr i64 %132 to i8*
  %134 = bitcast i8* %133 to i32*
  store i32 %125, i32* %134, align 4
  br label %222

135:                                              ; preds = %45
  %136 = load %struct.ct_data*, %struct.ct_data** %8, align 8
  %137 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @BYTES_PER_XDR_UNIT, align 4
  %140 = mul nsw i32 3, %139
  %141 = add nsw i32 %138, %140
  %142 = sext i32 %141 to i64
  %143 = inttoptr i64 %142 to i8*
  %144 = bitcast i8* %143 to i32*
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @ntohl(i32 %145)
  %147 = load i8*, i8** %7, align 8
  %148 = bitcast i8* %147 to i32*
  store i32 %146, i32* %148, align 4
  br label %222

149:                                              ; preds = %45
  %150 = load i8*, i8** %7, align 8
  %151 = bitcast i8* %150 to i32*
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @htonl(i32 %152)
  %154 = load %struct.ct_data*, %struct.ct_data** %8, align 8
  %155 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @BYTES_PER_XDR_UNIT, align 4
  %158 = mul nsw i32 3, %157
  %159 = add nsw i32 %156, %158
  %160 = sext i32 %159 to i64
  %161 = inttoptr i64 %160 to i8*
  %162 = bitcast i8* %161 to i32*
  store i32 %153, i32* %162, align 4
  br label %222

163:                                              ; preds = %45
  %164 = load i8*, i8** %7, align 8
  %165 = load %struct.ct_data*, %struct.ct_data** %8, align 8
  %166 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %165, i32 0, i32 0
  store i8* %164, i8** %166, align 8
  br label %222

167:                                              ; preds = %45
  %168 = load %struct.ct_data*, %struct.ct_data** %8, align 8
  %169 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %168, i32 0, i32 0
  %170 = load i8*, i8** %169, align 8
  %171 = load i8*, i8** %7, align 8
  %172 = bitcast i8* %171 to i8**
  store i8* %170, i8** %172, align 8
  br label %222

173:                                              ; preds = %45
  %174 = load i8*, i8** %7, align 8
  %175 = bitcast i8* %174 to i32*
  %176 = load i32, i32* %175, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %173
  %179 = load i32, i32* @PCATCH, align 4
  %180 = load %struct.ct_data*, %struct.ct_data** %8, align 8
  %181 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %180, i32 0, i32 3
  store i32 %179, i32* %181, align 8
  br label %185

182:                                              ; preds = %173
  %183 = load %struct.ct_data*, %struct.ct_data** %8, align 8
  %184 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %183, i32 0, i32 3
  store i32 0, i32* %184, align 8
  br label %185

185:                                              ; preds = %182, %178
  br label %222

186:                                              ; preds = %45
  %187 = load %struct.ct_data*, %struct.ct_data** %8, align 8
  %188 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 8
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %196

191:                                              ; preds = %186
  %192 = load i8*, i8** @TRUE, align 8
  %193 = ptrtoint i8* %192 to i32
  %194 = load i8*, i8** %7, align 8
  %195 = bitcast i8* %194 to i32*
  store i32 %193, i32* %195, align 4
  br label %201

196:                                              ; preds = %186
  %197 = load i8*, i8** @FALSE, align 8
  %198 = ptrtoint i8* %197 to i32
  %199 = load i8*, i8** %7, align 8
  %200 = bitcast i8* %199 to i32*
  store i32 %198, i32* %200, align 4
  br label %201

201:                                              ; preds = %196, %191
  br label %222

202:                                              ; preds = %45
  %203 = load i8*, i8** %7, align 8
  %204 = bitcast i8* %203 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %204, %struct.TYPE_5__** %10, align 8
  %205 = load %struct.ct_data*, %struct.ct_data** %8, align 8
  %206 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %205, i32 0, i32 2
  %207 = load %struct.TYPE_5__*, %struct.TYPE_5__** %206, align 8
  %208 = icmp eq %struct.TYPE_5__* %207, null
  br i1 %208, label %209, label %216

209:                                              ; preds = %202
  %210 = load %struct.ct_data*, %struct.ct_data** %8, align 8
  %211 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i32 0, i32 0
  store %struct.ct_data* %210, %struct.ct_data** %212, align 8
  %213 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %214 = load %struct.ct_data*, %struct.ct_data** %8, align 8
  %215 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %214, i32 0, i32 2
  store %struct.TYPE_5__* %213, %struct.TYPE_5__** %215, align 8
  br label %216

216:                                              ; preds = %209, %202
  br label %222

217:                                              ; preds = %45
  %218 = load %struct.ct_data*, %struct.ct_data** %8, align 8
  %219 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %218, i32 0, i32 1
  %220 = call i32 @mtx_unlock(i32* %219)
  %221 = load i8*, i8** @FALSE, align 8
  store i8* %221, i8** %4, align 8
  br label %227

222:                                              ; preds = %216, %201, %185, %167, %163, %149, %135, %121, %107, %100, %94, %80, %71, %64, %57
  %223 = load %struct.ct_data*, %struct.ct_data** %8, align 8
  %224 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %223, i32 0, i32 1
  %225 = call i32 @mtx_unlock(i32* %224)
  %226 = load i8*, i8** @TRUE, align 8
  store i8* %226, i8** %4, align 8
  br label %227

227:                                              ; preds = %222, %217, %89, %52, %40, %28, %20
  %228 = load i8*, i8** %4, align 8
  ret i8* %228
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @time_not_ok(%struct.timeval*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memcpy(i8*, %struct.TYPE_7__*, i64) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
