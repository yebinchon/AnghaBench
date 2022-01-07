; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kgssapi/extr_gss_init_sec_context.c_gss_init_sec_context.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kgssapi/extr_gss_init_sec_context.c_gss_init_sec_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_21__ = type { i32*, i64 }
%struct.init_sec_context_res = type { i64, i8*, i8*, i32, i64, i32, i8* }
%struct.init_sec_context_args = type { %struct.TYPE_21__, i32, i8*, i8*, i32, i32, i64, i64, i32 }

@GSS_S_FAILURE = common dso_local global i8* null, align 8
@curthread = common dso_local global %struct.TYPE_16__* null, align 8
@RPC_SUCCESS = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@GSS_S_CONTINUE_NEEDED = common dso_local global i64 0, align 8
@xdr_init_sec_context_res = common dso_local global i64 0, align 8
@GSS_S_BAD_MECH = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @gss_init_sec_context(i8** %0, %struct.TYPE_20__* %1, %struct.TYPE_19__** %2, %struct.TYPE_18__* %3, i32 %4, i8* %5, i8* %6, i32 %7, %struct.TYPE_21__* %8, i32* %9, %struct.TYPE_21__* %10, i8** %11, i8** %12) #0 {
  %14 = alloca i8*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca %struct.TYPE_20__*, align 8
  %17 = alloca %struct.TYPE_19__**, align 8
  %18 = alloca %struct.TYPE_18__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_21__*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca %struct.TYPE_21__*, align 8
  %26 = alloca i8**, align 8
  %27 = alloca i8**, align 8
  %28 = alloca %struct.init_sec_context_res, align 8
  %29 = alloca %struct.init_sec_context_args, align 8
  %30 = alloca i32, align 4
  %31 = alloca %struct.TYPE_19__*, align 8
  %32 = alloca i32*, align 8
  store i8** %0, i8*** %15, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %16, align 8
  store %struct.TYPE_19__** %2, %struct.TYPE_19__*** %17, align 8
  store %struct.TYPE_18__* %3, %struct.TYPE_18__** %18, align 8
  store i32 %4, i32* %19, align 4
  store i8* %5, i8** %20, align 8
  store i8* %6, i8** %21, align 8
  store i32 %7, i32* %22, align 4
  store %struct.TYPE_21__* %8, %struct.TYPE_21__** %23, align 8
  store i32* %9, i32** %24, align 8
  store %struct.TYPE_21__* %10, %struct.TYPE_21__** %25, align 8
  store i8** %11, i8*** %26, align 8
  store i8** %12, i8*** %27, align 8
  %33 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %17, align 8
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %33, align 8
  store %struct.TYPE_19__* %34, %struct.TYPE_19__** %31, align 8
  %35 = load i8**, i8*** %15, align 8
  store i8* null, i8** %35, align 8
  %36 = call i32* (...) @kgss_gssd_client()
  store i32* %36, i32** %32, align 8
  %37 = load i32*, i32** %32, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %13
  %40 = load i8*, i8** @GSS_S_FAILURE, align 8
  store i8* %40, i8** %14, align 8
  br label %192

41:                                               ; preds = %13
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** @curthread, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.init_sec_context_args, %struct.init_sec_context_args* %29, i32 0, i32 8
  store i32 %46, i32* %47, align 8
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %49 = icmp ne %struct.TYPE_20__* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %41
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.init_sec_context_args, %struct.init_sec_context_args* %29, i32 0, i32 7
  store i64 %53, i64* %54, align 8
  br label %57

55:                                               ; preds = %41
  %56 = getelementptr inbounds %struct.init_sec_context_args, %struct.init_sec_context_args* %29, i32 0, i32 7
  store i64 0, i64* %56, align 8
  br label %57

57:                                               ; preds = %55, %50
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %31, align 8
  %59 = icmp ne %struct.TYPE_19__* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %31, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.init_sec_context_args, %struct.init_sec_context_args* %29, i32 0, i32 6
  store i64 %63, i64* %64, align 8
  br label %67

65:                                               ; preds = %57
  %66 = getelementptr inbounds %struct.init_sec_context_args, %struct.init_sec_context_args* %29, i32 0, i32 6
  store i64 0, i64* %66, align 8
  br label %67

67:                                               ; preds = %65, %60
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.init_sec_context_args, %struct.init_sec_context_args* %29, i32 0, i32 5
  store i32 %70, i32* %71, align 4
  %72 = load i32, i32* %19, align 4
  %73 = getelementptr inbounds %struct.init_sec_context_args, %struct.init_sec_context_args* %29, i32 0, i32 4
  store i32 %72, i32* %73, align 8
  %74 = load i8*, i8** %20, align 8
  %75 = getelementptr inbounds %struct.init_sec_context_args, %struct.init_sec_context_args* %29, i32 0, i32 3
  store i8* %74, i8** %75, align 8
  %76 = load i8*, i8** %21, align 8
  %77 = getelementptr inbounds %struct.init_sec_context_args, %struct.init_sec_context_args* %29, i32 0, i32 2
  store i8* %76, i8** %77, align 8
  %78 = load i32, i32* %22, align 4
  %79 = getelementptr inbounds %struct.init_sec_context_args, %struct.init_sec_context_args* %29, i32 0, i32 1
  store i32 %78, i32* %79, align 8
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %81 = icmp ne %struct.TYPE_21__* %80, null
  br i1 %81, label %82, label %87

82:                                               ; preds = %67
  %83 = getelementptr inbounds %struct.init_sec_context_args, %struct.init_sec_context_args* %29, i32 0, i32 0
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %85 = bitcast %struct.TYPE_21__* %83 to i8*
  %86 = bitcast %struct.TYPE_21__* %84 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %85, i8* align 8 %86, i64 16, i1 false)
  br label %92

87:                                               ; preds = %67
  %88 = getelementptr inbounds %struct.init_sec_context_args, %struct.init_sec_context_args* %29, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 1
  store i64 0, i64* %89, align 8
  %90 = getelementptr inbounds %struct.init_sec_context_args, %struct.init_sec_context_args* %29, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 0
  store i32* null, i32** %91, align 8
  br label %92

92:                                               ; preds = %87, %82
  %93 = call i32 @bzero(%struct.init_sec_context_res* %28, i32 56)
  %94 = load i32*, i32** %32, align 8
  %95 = call i32 @gssd_init_sec_context_1(%struct.init_sec_context_args* %29, %struct.init_sec_context_res* %28, i32* %94)
  store i32 %95, i32* %30, align 4
  %96 = load i32*, i32** %32, align 8
  %97 = call i32 @CLNT_RELEASE(i32* %96)
  %98 = load i32, i32* %30, align 4
  %99 = load i32, i32* @RPC_SUCCESS, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %92
  %102 = load i32, i32* %30, align 4
  %103 = zext i32 %102 to i64
  %104 = inttoptr i64 %103 to i8*
  %105 = load i8**, i8*** %15, align 8
  store i8* %104, i8** %105, align 8
  %106 = load i8*, i8** @GSS_S_FAILURE, align 8
  store i8* %106, i8** %14, align 8
  br label %192

107:                                              ; preds = %92
  %108 = getelementptr inbounds %struct.init_sec_context_res, %struct.init_sec_context_res* %28, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @GSS_S_COMPLETE, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %127

112:                                              ; preds = %107
  %113 = getelementptr inbounds %struct.init_sec_context_res, %struct.init_sec_context_res* %28, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @GSS_S_CONTINUE_NEEDED, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %127

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.init_sec_context_res, %struct.init_sec_context_res* %28, i32 0, i32 6
  %119 = load i8*, i8** %118, align 8
  %120 = load i8**, i8*** %15, align 8
  store i8* %119, i8** %120, align 8
  %121 = load i64, i64* @xdr_init_sec_context_res, align 8
  %122 = trunc i64 %121 to i32
  %123 = call i32 @xdr_free(i32 %122, %struct.init_sec_context_res* %28)
  %124 = getelementptr inbounds %struct.init_sec_context_res, %struct.init_sec_context_res* %28, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = inttoptr i64 %125 to i8*
  store i8* %126, i8** %14, align 8
  br label %192

127:                                              ; preds = %112, %107
  %128 = getelementptr inbounds %struct.init_sec_context_res, %struct.init_sec_context_res* %28, i32 0, i32 6
  %129 = load i8*, i8** %128, align 8
  %130 = load i8**, i8*** %15, align 8
  store i8* %129, i8** %130, align 8
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %31, align 8
  %132 = icmp ne %struct.TYPE_19__* %131, null
  br i1 %132, label %146, label %133

133:                                              ; preds = %127
  %134 = getelementptr inbounds %struct.init_sec_context_res, %struct.init_sec_context_res* %28, i32 0, i32 5
  %135 = load i32, i32* %134, align 8
  %136 = call %struct.TYPE_19__* @kgss_create_context(i32 %135)
  store %struct.TYPE_19__* %136, %struct.TYPE_19__** %31, align 8
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %31, align 8
  %138 = icmp ne %struct.TYPE_19__* %137, null
  br i1 %138, label %145, label %139

139:                                              ; preds = %133
  %140 = load i64, i64* @xdr_init_sec_context_res, align 8
  %141 = trunc i64 %140 to i32
  %142 = call i32 @xdr_free(i32 %141, %struct.init_sec_context_res* %28)
  %143 = load i8**, i8*** %15, align 8
  store i8* null, i8** %143, align 8
  %144 = load i8*, i8** @GSS_S_BAD_MECH, align 8
  store i8* %144, i8** %14, align 8
  br label %192

145:                                              ; preds = %133
  br label %146

146:                                              ; preds = %145, %127
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %31, align 8
  %148 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %17, align 8
  store %struct.TYPE_19__* %147, %struct.TYPE_19__** %148, align 8
  %149 = getelementptr inbounds %struct.init_sec_context_res, %struct.init_sec_context_res* %28, i32 0, i32 4
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %31, align 8
  %152 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %151, i32 0, i32 0
  store i64 %150, i64* %152, align 8
  %153 = load i32*, i32** %24, align 8
  %154 = icmp ne i32* %153, null
  br i1 %154, label %155, label %159

155:                                              ; preds = %146
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %31, align 8
  %157 = call i32 @KGSS_MECH_TYPE(%struct.TYPE_19__* %156)
  %158 = load i32*, i32** %24, align 8
  store i32 %157, i32* %158, align 4
  br label %159

159:                                              ; preds = %155, %146
  %160 = getelementptr inbounds %struct.init_sec_context_res, %struct.init_sec_context_res* %28, i32 0, i32 3
  %161 = load %struct.TYPE_21__*, %struct.TYPE_21__** %25, align 8
  %162 = call i32 @kgss_copy_buffer(i32* %160, %struct.TYPE_21__* %161)
  %163 = load i8**, i8*** %26, align 8
  %164 = icmp ne i8** %163, null
  br i1 %164, label %165, label %169

165:                                              ; preds = %159
  %166 = getelementptr inbounds %struct.init_sec_context_res, %struct.init_sec_context_res* %28, i32 0, i32 2
  %167 = load i8*, i8** %166, align 8
  %168 = load i8**, i8*** %26, align 8
  store i8* %167, i8** %168, align 8
  br label %169

169:                                              ; preds = %165, %159
  %170 = load i8**, i8*** %27, align 8
  %171 = icmp ne i8** %170, null
  br i1 %171, label %172, label %176

172:                                              ; preds = %169
  %173 = getelementptr inbounds %struct.init_sec_context_res, %struct.init_sec_context_res* %28, i32 0, i32 1
  %174 = load i8*, i8** %173, align 8
  %175 = load i8**, i8*** %27, align 8
  store i8* %174, i8** %175, align 8
  br label %176

176:                                              ; preds = %172, %169
  %177 = load i64, i64* @xdr_init_sec_context_res, align 8
  %178 = trunc i64 %177 to i32
  %179 = call i32 @xdr_free(i32 %178, %struct.init_sec_context_res* %28)
  %180 = getelementptr inbounds %struct.init_sec_context_res, %struct.init_sec_context_res* %28, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @GSS_S_COMPLETE, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %188

184:                                              ; preds = %176
  %185 = load %struct.TYPE_19__*, %struct.TYPE_19__** %31, align 8
  %186 = call i64 @kgss_transfer_context(%struct.TYPE_19__* %185)
  %187 = getelementptr inbounds %struct.init_sec_context_res, %struct.init_sec_context_res* %28, i32 0, i32 0
  store i64 %186, i64* %187, align 8
  br label %188

188:                                              ; preds = %184, %176
  %189 = getelementptr inbounds %struct.init_sec_context_res, %struct.init_sec_context_res* %28, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = inttoptr i64 %190 to i8*
  store i8* %191, i8** %14, align 8
  br label %192

192:                                              ; preds = %188, %139, %117, %101, %39
  %193 = load i8*, i8** %14, align 8
  ret i8* %193
}

declare dso_local i32* @kgss_gssd_client(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @bzero(%struct.init_sec_context_res*, i32) #1

declare dso_local i32 @gssd_init_sec_context_1(%struct.init_sec_context_args*, %struct.init_sec_context_res*, i32*) #1

declare dso_local i32 @CLNT_RELEASE(i32*) #1

declare dso_local i32 @xdr_free(i32, %struct.init_sec_context_res*) #1

declare dso_local %struct.TYPE_19__* @kgss_create_context(i32) #1

declare dso_local i32 @KGSS_MECH_TYPE(%struct.TYPE_19__*) #1

declare dso_local i32 @kgss_copy_buffer(i32*, %struct.TYPE_21__*) #1

declare dso_local i64 @kgss_transfer_context(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
