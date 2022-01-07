; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kgssapi/krb5/extr_krb5_mech.c_krb5_verify_mic_old.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kgssapi/krb5/extr_krb5_mech.c_krb5_verify_mic_old.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.krb5_context = type { %struct.TYPE_5__, i32, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.mbuf = type { i64, i32*, %struct.mbuf* }

@.str = private unnamed_addr constant [3 x i8] c"\01\01\00", align 1
@FALSE = common dso_local global i32 0, align 4
@GSS_S_DEFECTIVE_TOKEN = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@MT_DATA = common dso_local global i32 0, align 4
@GSS_S_BAD_SIG = common dso_local global i32 0, align 4
@GSS_C_REPLAY_FLAG = common dso_local global i32 0, align 4
@GSS_C_SEQUENCE_FLAG = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.krb5_context*, %struct.mbuf*, %struct.mbuf*, i32*)* @krb5_verify_mic_old to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @krb5_verify_mic_old(%struct.krb5_context* %0, %struct.mbuf* %1, %struct.mbuf* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.krb5_context*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.mbuf*, align 8
  %11 = alloca %struct.mbuf*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.krb5_context* %0, %struct.krb5_context** %6, align 8
  store %struct.mbuf* %1, %struct.mbuf** %7, align 8
  store %struct.mbuf* %2, %struct.mbuf** %8, align 8
  store i32* %3, i32** %9, align 8
  %21 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %22 = call i64 @m_length(%struct.mbuf* %21, %struct.mbuf** %10)
  store i64 %22, i64* %15, align 8
  %23 = load %struct.krb5_context*, %struct.krb5_context** %6, align 8
  %24 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @token_length(i32 %25)
  store i64 %26, i64* %16, align 8
  %27 = load i64, i64* %16, align 8
  %28 = load i32, i32* @FALSE, align 4
  %29 = call i32* @krb5_verify_token(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 %27, %struct.mbuf** %8, i64* %17, i32 %28)
  store i32* %29, i32** %12, align 8
  %30 = load i32*, i32** %12, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %4
  %33 = load i32, i32* @GSS_S_DEFECTIVE_TOKEN, align 4
  store i32 %33, i32* %5, align 4
  br label %256

34:                                               ; preds = %4
  %35 = load i32*, i32** %12, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 2
  store i32* %36, i32** %12, align 8
  %37 = load i32*, i32** %12, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %9, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %39, %42
  br i1 %43, label %52, label %44

44:                                               ; preds = %34
  %45 = load i32*, i32** %12, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %9, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %47, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %44, %34
  %53 = load i32, i32* @GSS_S_DEFECTIVE_TOKEN, align 4
  store i32 %53, i32* %5, align 4
  br label %256

54:                                               ; preds = %44
  %55 = load i32*, i32** %12, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  store i32* %56, i32** %12, align 8
  %57 = load i32*, i32** %12, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 255
  br i1 %60, label %76, label %61

61:                                               ; preds = %54
  %62 = load i32*, i32** %12, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 255
  br i1 %65, label %76, label %66

66:                                               ; preds = %61
  %67 = load i32*, i32** %12, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 2
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 255
  br i1 %70, label %76, label %71

71:                                               ; preds = %66
  %72 = load i32*, i32** %12, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 3
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 255
  br i1 %75, label %76, label %78

76:                                               ; preds = %71, %66, %61, %54
  %77 = load i32, i32* @GSS_S_DEFECTIVE_TOKEN, align 4
  store i32 %77, i32* %5, align 4
  br label %256

78:                                               ; preds = %71
  %79 = load i32*, i32** %12, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 4
  store i32* %80, i32** %12, align 8
  %81 = load %struct.krb5_context*, %struct.krb5_context** %6, align 8
  %82 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %81, i32 0, i32 2
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %19, align 8
  %88 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %89 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %18, align 8
  %91 = load i32*, i32** %12, align 8
  %92 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %93 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = ptrtoint i32* %91 to i64
  %96 = ptrtoint i32* %94 to i64
  %97 = sub i64 %95, %96
  %98 = sdiv exact i64 %97, 4
  %99 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %100 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %99, i32 0, i32 0
  store i64 %98, i64* %100, align 8
  %101 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %102 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %103 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %102, i32 0, i32 2
  store %struct.mbuf* %101, %struct.mbuf** %103, align 8
  %104 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %105 = load i32, i32* @M_WAITOK, align 4
  %106 = load i32, i32* @MT_DATA, align 4
  %107 = call i32 @MGET(%struct.mbuf* %104, i32 %105, i32 %106)
  %108 = load i64, i64* %19, align 8
  %109 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %110 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %109, i32 0, i32 0
  store i64 %108, i64* %110, align 8
  %111 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %112 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %113 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %112, i32 0, i32 2
  store %struct.mbuf* %111, %struct.mbuf** %113, align 8
  %114 = load %struct.krb5_context*, %struct.krb5_context** %6, align 8
  %115 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %114, i32 0, i32 2
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %115, align 8
  %117 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %118 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %119 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = sub i64 %120, 8
  %122 = trunc i64 %121 to i32
  %123 = load i64, i64* %15, align 8
  %124 = add i64 8, %123
  %125 = trunc i64 %124 to i32
  %126 = load i64, i64* %19, align 8
  %127 = call i32 @krb5_checksum(%struct.TYPE_6__* %116, i32 15, %struct.mbuf* %117, i32 %122, i32 %125, i64 %126)
  %128 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %129 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %128, i32 0, i32 2
  store %struct.mbuf* null, %struct.mbuf** %129, align 8
  %130 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %131 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %130, i32 0, i32 2
  store %struct.mbuf* null, %struct.mbuf** %131, align 8
  %132 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %133 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = load i32*, i32** %12, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 8
  %137 = load i64, i64* %19, align 8
  %138 = call i64 @bcmp(i32* %134, i32* %136, i64 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %78
  %141 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %142 = call i32 @m_free(%struct.mbuf* %141)
  %143 = load i32, i32* @GSS_S_BAD_SIG, align 4
  store i32 %143, i32* %5, align 4
  br label %256

144:                                              ; preds = %78
  %145 = load i32*, i32** %12, align 8
  %146 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %147 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = call i32 @bcopy(i32* %145, i32* %148, i32 8)
  %150 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %151 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %150, i32 0, i32 0
  store i64 8, i64* %151, align 8
  %152 = load %struct.krb5_context*, %struct.krb5_context** %6, align 8
  %153 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %156 = load i32*, i32** %12, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 8
  %158 = call i32 @krb5_decrypt(i32 %154, %struct.mbuf* %155, i32 0, i32 8, i32* %157, i32 8)
  %159 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %160 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %159, i32 0, i32 1
  %161 = load i32*, i32** %160, align 8
  store i32* %161, i32** %13, align 8
  %162 = load i32*, i32** %9, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 0
  %164 = load i32, i32* %163, align 4
  %165 = icmp eq i32 %164, 17
  br i1 %165, label %166, label %185

166:                                              ; preds = %144
  %167 = load i32*, i32** %13, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 3
  %169 = load i32, i32* %168, align 4
  %170 = load i32*, i32** %13, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 2
  %172 = load i32, i32* %171, align 4
  %173 = shl i32 %172, 8
  %174 = or i32 %169, %173
  %175 = load i32*, i32** %13, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 1
  %177 = load i32, i32* %176, align 4
  %178 = shl i32 %177, 16
  %179 = or i32 %174, %178
  %180 = load i32*, i32** %13, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 0
  %182 = load i32, i32* %181, align 4
  %183 = shl i32 %182, 24
  %184 = or i32 %179, %183
  store i32 %184, i32* %20, align 4
  br label %204

185:                                              ; preds = %144
  %186 = load i32*, i32** %13, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 0
  %188 = load i32, i32* %187, align 4
  %189 = load i32*, i32** %13, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 1
  %191 = load i32, i32* %190, align 4
  %192 = shl i32 %191, 8
  %193 = or i32 %188, %192
  %194 = load i32*, i32** %13, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 2
  %196 = load i32, i32* %195, align 4
  %197 = shl i32 %196, 16
  %198 = or i32 %193, %197
  %199 = load i32*, i32** %13, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 3
  %201 = load i32, i32* %200, align 4
  %202 = shl i32 %201, 24
  %203 = or i32 %198, %202
  store i32 %203, i32* %20, align 4
  br label %204

204:                                              ; preds = %185, %166
  %205 = load %struct.krb5_context*, %struct.krb5_context** %6, align 8
  %206 = call i64 @is_initiator(%struct.krb5_context* %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %204
  store i32 255, i32* %14, align 4
  br label %210

209:                                              ; preds = %204
  store i32 0, i32* %14, align 4
  br label %210

210:                                              ; preds = %209, %208
  %211 = load i32*, i32** %13, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 4
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* %14, align 4
  %215 = icmp ne i32 %213, %214
  br i1 %215, label %234, label %216

216:                                              ; preds = %210
  %217 = load i32*, i32** %13, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 5
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* %14, align 4
  %221 = icmp ne i32 %219, %220
  br i1 %221, label %234, label %222

222:                                              ; preds = %216
  %223 = load i32*, i32** %13, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 6
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* %14, align 4
  %227 = icmp ne i32 %225, %226
  br i1 %227, label %234, label %228

228:                                              ; preds = %222
  %229 = load i32*, i32** %13, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 7
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* %14, align 4
  %233 = icmp ne i32 %231, %232
  br i1 %233, label %234, label %238

234:                                              ; preds = %228, %222, %216, %210
  %235 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %236 = call i32 @m_free(%struct.mbuf* %235)
  %237 = load i32, i32* @GSS_S_DEFECTIVE_TOKEN, align 4
  store i32 %237, i32* %5, align 4
  br label %256

238:                                              ; preds = %228
  %239 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %240 = call i32 @m_free(%struct.mbuf* %239)
  %241 = load %struct.krb5_context*, %struct.krb5_context** %6, align 8
  %242 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = load i32, i32* @GSS_C_REPLAY_FLAG, align 4
  %246 = load i32, i32* @GSS_C_SEQUENCE_FLAG, align 4
  %247 = or i32 %245, %246
  %248 = and i32 %244, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %254

250:                                              ; preds = %238
  %251 = load %struct.krb5_context*, %struct.krb5_context** %6, align 8
  %252 = load i32, i32* %20, align 4
  %253 = call i32 @krb5_sequence_check(%struct.krb5_context* %251, i32 %252)
  store i32 %253, i32* %5, align 4
  br label %256

254:                                              ; preds = %238
  %255 = load i32, i32* @GSS_S_COMPLETE, align 4
  store i32 %255, i32* %5, align 4
  br label %256

256:                                              ; preds = %254, %250, %234, %140, %76, %52, %32
  %257 = load i32, i32* %5, align 4
  ret i32 %257
}

declare dso_local i64 @m_length(%struct.mbuf*, %struct.mbuf**) #1

declare dso_local i64 @token_length(i32) #1

declare dso_local i32* @krb5_verify_token(i8*, i64, %struct.mbuf**, i64*, i32) #1

declare dso_local i32 @MGET(%struct.mbuf*, i32, i32) #1

declare dso_local i32 @krb5_checksum(%struct.TYPE_6__*, i32, %struct.mbuf*, i32, i32, i64) #1

declare dso_local i64 @bcmp(i32*, i32*, i64) #1

declare dso_local i32 @m_free(%struct.mbuf*) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i32 @krb5_decrypt(i32, %struct.mbuf*, i32, i32, i32*, i32) #1

declare dso_local i64 @is_initiator(%struct.krb5_context*) #1

declare dso_local i32 @krb5_sequence_check(%struct.krb5_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
