; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/lpr/common_source/extr_matchjobs.c_format_jobspec.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/lpr/common_source/extr_matchjobs.c_format_jobspec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jobspec = type { i8*, i32, i8*, i8*, i32, i32 }

@__const.format_jobspec.fromuser = private unnamed_addr constant [11 x i8] c"from user \00", align 1
@__const.format_jobspec.fromhost = private unnamed_addr constant [11 x i8] c"from host \00", align 1
@.str = private unnamed_addr constant [8 x i8] c"%ld-%ld\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @format_jobspec(%struct.jobspec* %0, i32 %1) #0 {
  %3 = alloca %struct.jobspec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [40 x i8], align 16
  %6 = alloca [200 x i8], align 16
  %7 = alloca [11 x i8], align 1
  %8 = alloca [11 x i8], align 1
  %9 = alloca i64, align 8
  store %struct.jobspec* %0, %struct.jobspec** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = bitcast [11 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %10, i8* align 1 getelementptr inbounds ([11 x i8], [11 x i8]* @__const.format_jobspec.fromuser, i32 0, i32 0), i64 11, i1 false)
  %11 = bitcast [11 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 getelementptr inbounds ([11 x i8], [11 x i8]* @__const.format_jobspec.fromhost, i32 0, i32 0), i64 11, i1 false)
  %12 = load %struct.jobspec*, %struct.jobspec** %3, align 8
  %13 = getelementptr inbounds %struct.jobspec, %struct.jobspec* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load %struct.jobspec*, %struct.jobspec** %3, align 8
  %18 = getelementptr inbounds %struct.jobspec, %struct.jobspec* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @free(i8* %19)
  %21 = load %struct.jobspec*, %struct.jobspec** %3, align 8
  %22 = getelementptr inbounds %struct.jobspec, %struct.jobspec* %21, i32 0, i32 0
  store i8* null, i8** %22, align 8
  br label %23

23:                                               ; preds = %16, %2
  %24 = load %struct.jobspec*, %struct.jobspec** %3, align 8
  %25 = getelementptr inbounds %struct.jobspec, %struct.jobspec* %24, i32 0, i32 1
  store i32 1, i32* %25, align 8
  %26 = getelementptr inbounds [40 x i8], [40 x i8]* %5, i64 0, i64 0
  store i8 0, i8* %26, align 16
  %27 = load %struct.jobspec*, %struct.jobspec** %3, align 8
  %28 = getelementptr inbounds %struct.jobspec, %struct.jobspec* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = icmp sge i32 %29, 0
  br i1 %30, label %31, label %57

31:                                               ; preds = %23
  %32 = load %struct.jobspec*, %struct.jobspec** %3, align 8
  %33 = getelementptr inbounds %struct.jobspec, %struct.jobspec* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.jobspec*, %struct.jobspec** %3, align 8
  %36 = getelementptr inbounds %struct.jobspec, %struct.jobspec* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %34, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %31
  %40 = getelementptr inbounds [40 x i8], [40 x i8]* %5, i64 0, i64 0
  %41 = load %struct.jobspec*, %struct.jobspec** %3, align 8
  %42 = getelementptr inbounds %struct.jobspec, %struct.jobspec* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.jobspec*, %struct.jobspec** %3, align 8
  %45 = getelementptr inbounds %struct.jobspec, %struct.jobspec* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %40, i32 40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %46)
  br label %56

48:                                               ; preds = %31
  %49 = load %struct.jobspec*, %struct.jobspec** %3, align 8
  %50 = getelementptr inbounds %struct.jobspec, %struct.jobspec* %49, i32 0, i32 1
  store i32 0, i32* %50, align 8
  %51 = getelementptr inbounds [40 x i8], [40 x i8]* %5, i64 0, i64 0
  %52 = load %struct.jobspec*, %struct.jobspec** %3, align 8
  %53 = getelementptr inbounds %struct.jobspec, %struct.jobspec* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %51, i32 40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %48, %39
  br label %57

57:                                               ; preds = %56, %23
  store i64 200, i64* %9, align 8
  %58 = getelementptr inbounds [200 x i8], [200 x i8]* %6, i64 0, i64 0
  store i8 0, i8* %58, align 16
  %59 = load i32, i32* %4, align 4
  switch i32 %59, label %141 [
    i32 129, label %60
    i32 128, label %140
  ]

60:                                               ; preds = %57
  %61 = load %struct.jobspec*, %struct.jobspec** %3, align 8
  %62 = getelementptr inbounds %struct.jobspec, %struct.jobspec* %61, i32 0, i32 2
  %63 = load i8*, i8** %62, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %72

65:                                               ; preds = %60
  %66 = getelementptr inbounds [200 x i8], [200 x i8]* %6, i64 0, i64 0
  %67 = load %struct.jobspec*, %struct.jobspec** %3, align 8
  %68 = getelementptr inbounds %struct.jobspec, %struct.jobspec* %67, i32 0, i32 2
  %69 = load i8*, i8** %68, align 8
  %70 = load i64, i64* %9, align 8
  %71 = call i32 @strlcat(i8* %66, i8* %69, i64 %70)
  br label %72

72:                                               ; preds = %65, %60
  %73 = getelementptr inbounds [40 x i8], [40 x i8]* %5, i64 0, i64 0
  %74 = load i8, i8* %73, align 16
  %75 = sext i8 %74 to i32
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %91

77:                                               ; preds = %72
  %78 = getelementptr inbounds [200 x i8], [200 x i8]* %6, i64 0, i64 0
  %79 = load i8, i8* %78, align 16
  %80 = sext i8 %79 to i32
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = getelementptr inbounds [200 x i8], [200 x i8]* %6, i64 0, i64 0
  %84 = load i64, i64* %9, align 8
  %85 = call i32 @strlcat(i8* %83, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64 %84)
  br label %86

86:                                               ; preds = %82, %77
  %87 = getelementptr inbounds [200 x i8], [200 x i8]* %6, i64 0, i64 0
  %88 = getelementptr inbounds [40 x i8], [40 x i8]* %5, i64 0, i64 0
  %89 = load i64, i64* %9, align 8
  %90 = call i32 @strlcat(i8* %87, i8* %88, i64 %89)
  br label %91

91:                                               ; preds = %86, %72
  %92 = load %struct.jobspec*, %struct.jobspec** %3, align 8
  %93 = getelementptr inbounds %struct.jobspec, %struct.jobspec* %92, i32 0, i32 3
  %94 = load i8*, i8** %93, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %100

96:                                               ; preds = %91
  %97 = getelementptr inbounds [200 x i8], [200 x i8]* %6, i64 0, i64 0
  %98 = load i64, i64* %9, align 8
  %99 = call i32 @strlcat(i8* %97, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i64 %98)
  br label %100

100:                                              ; preds = %96, %91
  %101 = getelementptr inbounds [200 x i8], [200 x i8]* %6, i64 0, i64 0
  %102 = call i64 @strlen(i8* %101)
  %103 = add i64 %102, 1
  store i64 %103, i64* %9, align 8
  %104 = load %struct.jobspec*, %struct.jobspec** %3, align 8
  %105 = getelementptr inbounds %struct.jobspec, %struct.jobspec* %104, i32 0, i32 3
  %106 = load i8*, i8** %105, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %115

108:                                              ; preds = %100
  %109 = load %struct.jobspec*, %struct.jobspec** %3, align 8
  %110 = getelementptr inbounds %struct.jobspec, %struct.jobspec* %109, i32 0, i32 3
  %111 = load i8*, i8** %110, align 8
  %112 = call i64 @strlen(i8* %111)
  %113 = load i64, i64* %9, align 8
  %114 = add i64 %113, %112
  store i64 %114, i64* %9, align 8
  br label %115

115:                                              ; preds = %108, %100
  %116 = load i64, i64* %9, align 8
  %117 = call i8* @malloc(i64 %116)
  %118 = load %struct.jobspec*, %struct.jobspec** %3, align 8
  %119 = getelementptr inbounds %struct.jobspec, %struct.jobspec* %118, i32 0, i32 0
  store i8* %117, i8** %119, align 8
  %120 = load %struct.jobspec*, %struct.jobspec** %3, align 8
  %121 = getelementptr inbounds %struct.jobspec, %struct.jobspec* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = getelementptr inbounds [200 x i8], [200 x i8]* %6, i64 0, i64 0
  %124 = load i64, i64* %9, align 8
  %125 = call i32 @strlcpy(i8* %122, i8* %123, i64 %124)
  %126 = load %struct.jobspec*, %struct.jobspec** %3, align 8
  %127 = getelementptr inbounds %struct.jobspec, %struct.jobspec* %126, i32 0, i32 3
  %128 = load i8*, i8** %127, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %130, label %139

130:                                              ; preds = %115
  %131 = load %struct.jobspec*, %struct.jobspec** %3, align 8
  %132 = getelementptr inbounds %struct.jobspec, %struct.jobspec* %131, i32 0, i32 0
  %133 = load i8*, i8** %132, align 8
  %134 = load %struct.jobspec*, %struct.jobspec** %3, align 8
  %135 = getelementptr inbounds %struct.jobspec, %struct.jobspec* %134, i32 0, i32 3
  %136 = load i8*, i8** %135, align 8
  %137 = load i64, i64* %9, align 8
  %138 = call i32 @strlcat(i8* %133, i8* %136, i64 %137)
  br label %139

139:                                              ; preds = %130, %115
  br label %239

140:                                              ; preds = %57
  br label %141

141:                                              ; preds = %57, %140
  %142 = getelementptr inbounds [200 x i8], [200 x i8]* %6, i64 0, i64 0
  %143 = getelementptr inbounds [40 x i8], [40 x i8]* %5, i64 0, i64 0
  %144 = load i64, i64* %9, align 8
  %145 = call i32 @strlcat(i8* %142, i8* %143, i64 %144)
  %146 = load %struct.jobspec*, %struct.jobspec** %3, align 8
  %147 = getelementptr inbounds %struct.jobspec, %struct.jobspec* %146, i32 0, i32 2
  %148 = load i8*, i8** %147, align 8
  %149 = icmp ne i8* %148, null
  br i1 %149, label %150, label %170

150:                                              ; preds = %141
  %151 = getelementptr inbounds [40 x i8], [40 x i8]* %5, i64 0, i64 0
  %152 = load i8, i8* %151, align 16
  %153 = sext i8 %152 to i32
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %150
  %156 = getelementptr inbounds [200 x i8], [200 x i8]* %6, i64 0, i64 0
  %157 = load i64, i64* %9, align 8
  %158 = call i32 @strlcat(i8* %156, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 %157)
  br label %159

159:                                              ; preds = %155, %150
  %160 = getelementptr inbounds [200 x i8], [200 x i8]* %6, i64 0, i64 0
  %161 = getelementptr inbounds [11 x i8], [11 x i8]* %7, i64 0, i64 0
  %162 = load i64, i64* %9, align 8
  %163 = call i32 @strlcat(i8* %160, i8* %161, i64 %162)
  %164 = getelementptr inbounds [200 x i8], [200 x i8]* %6, i64 0, i64 0
  %165 = load %struct.jobspec*, %struct.jobspec** %3, align 8
  %166 = getelementptr inbounds %struct.jobspec, %struct.jobspec* %165, i32 0, i32 2
  %167 = load i8*, i8** %166, align 8
  %168 = load i64, i64* %9, align 8
  %169 = call i32 @strlcat(i8* %164, i8* %167, i64 %168)
  br label %170

170:                                              ; preds = %159, %141
  %171 = load %struct.jobspec*, %struct.jobspec** %3, align 8
  %172 = getelementptr inbounds %struct.jobspec, %struct.jobspec* %171, i32 0, i32 3
  %173 = load i8*, i8** %172, align 8
  %174 = icmp ne i8* %173, null
  br i1 %174, label %175, label %199

175:                                              ; preds = %170
  %176 = load %struct.jobspec*, %struct.jobspec** %3, align 8
  %177 = getelementptr inbounds %struct.jobspec, %struct.jobspec* %176, i32 0, i32 2
  %178 = load i8*, i8** %177, align 8
  %179 = icmp eq i8* %178, null
  br i1 %179, label %180, label %194

180:                                              ; preds = %175
  %181 = getelementptr inbounds [40 x i8], [40 x i8]* %5, i64 0, i64 0
  %182 = load i8, i8* %181, align 16
  %183 = sext i8 %182 to i32
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %180
  %186 = getelementptr inbounds [200 x i8], [200 x i8]* %6, i64 0, i64 0
  %187 = load i64, i64* %9, align 8
  %188 = call i32 @strlcat(i8* %186, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 %187)
  br label %189

189:                                              ; preds = %185, %180
  %190 = getelementptr inbounds [200 x i8], [200 x i8]* %6, i64 0, i64 0
  %191 = getelementptr inbounds [11 x i8], [11 x i8]* %8, i64 0, i64 0
  %192 = load i64, i64* %9, align 8
  %193 = call i32 @strlcat(i8* %190, i8* %191, i64 %192)
  br label %198

194:                                              ; preds = %175
  %195 = getelementptr inbounds [200 x i8], [200 x i8]* %6, i64 0, i64 0
  %196 = load i64, i64* %9, align 8
  %197 = call i32 @strlcat(i8* %195, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i64 %196)
  br label %198

198:                                              ; preds = %194, %189
  br label %199

199:                                              ; preds = %198, %170
  %200 = getelementptr inbounds [200 x i8], [200 x i8]* %6, i64 0, i64 0
  %201 = call i64 @strlen(i8* %200)
  %202 = add i64 %201, 1
  store i64 %202, i64* %9, align 8
  %203 = load %struct.jobspec*, %struct.jobspec** %3, align 8
  %204 = getelementptr inbounds %struct.jobspec, %struct.jobspec* %203, i32 0, i32 3
  %205 = load i8*, i8** %204, align 8
  %206 = icmp ne i8* %205, null
  br i1 %206, label %207, label %214

207:                                              ; preds = %199
  %208 = load %struct.jobspec*, %struct.jobspec** %3, align 8
  %209 = getelementptr inbounds %struct.jobspec, %struct.jobspec* %208, i32 0, i32 3
  %210 = load i8*, i8** %209, align 8
  %211 = call i64 @strlen(i8* %210)
  %212 = load i64, i64* %9, align 8
  %213 = add i64 %212, %211
  store i64 %213, i64* %9, align 8
  br label %214

214:                                              ; preds = %207, %199
  %215 = load i64, i64* %9, align 8
  %216 = call i8* @malloc(i64 %215)
  %217 = load %struct.jobspec*, %struct.jobspec** %3, align 8
  %218 = getelementptr inbounds %struct.jobspec, %struct.jobspec* %217, i32 0, i32 0
  store i8* %216, i8** %218, align 8
  %219 = load %struct.jobspec*, %struct.jobspec** %3, align 8
  %220 = getelementptr inbounds %struct.jobspec, %struct.jobspec* %219, i32 0, i32 0
  %221 = load i8*, i8** %220, align 8
  %222 = getelementptr inbounds [200 x i8], [200 x i8]* %6, i64 0, i64 0
  %223 = load i64, i64* %9, align 8
  %224 = call i32 @strlcpy(i8* %221, i8* %222, i64 %223)
  %225 = load %struct.jobspec*, %struct.jobspec** %3, align 8
  %226 = getelementptr inbounds %struct.jobspec, %struct.jobspec* %225, i32 0, i32 3
  %227 = load i8*, i8** %226, align 8
  %228 = icmp ne i8* %227, null
  br i1 %228, label %229, label %238

229:                                              ; preds = %214
  %230 = load %struct.jobspec*, %struct.jobspec** %3, align 8
  %231 = getelementptr inbounds %struct.jobspec, %struct.jobspec* %230, i32 0, i32 0
  %232 = load i8*, i8** %231, align 8
  %233 = load %struct.jobspec*, %struct.jobspec** %3, align 8
  %234 = getelementptr inbounds %struct.jobspec, %struct.jobspec* %233, i32 0, i32 3
  %235 = load i8*, i8** %234, align 8
  %236 = load i64, i64* %9, align 8
  %237 = call i32 @strlcat(i8* %232, i8* %235, i64 %236)
  br label %238

238:                                              ; preds = %229, %214
  br label %239

239:                                              ; preds = %238, %139
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, ...) #2

declare dso_local i32 @strlcat(i8*, i8*, i64) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i8* @malloc(i64) #2

declare dso_local i32 @strlcpy(i8*, i8*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
