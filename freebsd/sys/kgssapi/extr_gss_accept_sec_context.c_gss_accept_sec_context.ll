; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kgssapi/extr_gss_accept_sec_context.c_gss_accept_sec_context.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kgssapi/extr_gss_accept_sec_context.c_gss_accept_sec_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_13__ = type { i32 }
%struct.accept_sec_context_res = type { i64, i32, i32, i32, i64, i32, i32, i64, i32 }
%struct.accept_sec_context_args = type { i32, i32, i64, i64 }

@GSS_S_FAILURE = common dso_local global i32 0, align 4
@RPC_SUCCESS = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@GSS_S_CONTINUE_NEEDED = common dso_local global i64 0, align 8
@xdr_accept_sec_context_res = common dso_local global i64 0, align 8
@GSS_S_BAD_MECH = common dso_local global i32 0, align 4
@M_GSSAPI = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gss_accept_sec_context(i32* %0, %struct.TYPE_14__** %1, %struct.TYPE_15__* %2, i32* %3, i32 %4, %struct.TYPE_13__** %5, i32* %6, i32* %7, i32* %8, i32* %9, %struct.TYPE_15__** %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_14__**, align 8
  %15 = alloca %struct.TYPE_15__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_13__**, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca %struct.TYPE_15__**, align 8
  %24 = alloca %struct.accept_sec_context_res, align 8
  %25 = alloca %struct.accept_sec_context_args, align 8
  %26 = alloca i32, align 4
  %27 = alloca %struct.TYPE_14__*, align 8
  %28 = alloca %struct.TYPE_13__*, align 8
  %29 = alloca %struct.TYPE_15__*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store i32* %0, i32** %13, align 8
  store %struct.TYPE_14__** %1, %struct.TYPE_14__*** %14, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %15, align 8
  store i32* %3, i32** %16, align 8
  store i32 %4, i32* %17, align 4
  store %struct.TYPE_13__** %5, %struct.TYPE_13__*** %18, align 8
  store i32* %6, i32** %19, align 8
  store i32* %7, i32** %20, align 8
  store i32* %8, i32** %21, align 8
  store i32* %9, i32** %22, align 8
  store %struct.TYPE_15__** %10, %struct.TYPE_15__*** %23, align 8
  %33 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %14, align 8
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %33, align 8
  store %struct.TYPE_14__* %34, %struct.TYPE_14__** %27, align 8
  %35 = call i32* (...) @kgss_gssd_client()
  store i32* %35, i32** %30, align 8
  %36 = load i32*, i32** %30, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %11
  %39 = load i32*, i32** %13, align 8
  store i32 0, i32* %39, align 4
  %40 = load i32, i32* @GSS_S_FAILURE, align 4
  store i32 %40, i32* %12, align 4
  br label %196

41:                                               ; preds = %11
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  %43 = icmp ne %struct.TYPE_14__* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.accept_sec_context_args, %struct.accept_sec_context_args* %25, i32 0, i32 3
  store i64 %47, i64* %48, align 8
  br label %51

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.accept_sec_context_args, %struct.accept_sec_context_args* %25, i32 0, i32 3
  store i64 0, i64* %50, align 8
  br label %51

51:                                               ; preds = %49, %44
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %53 = icmp ne %struct.TYPE_15__* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.accept_sec_context_args, %struct.accept_sec_context_args* %25, i32 0, i32 2
  store i64 %57, i64* %58, align 8
  br label %61

59:                                               ; preds = %51
  %60 = getelementptr inbounds %struct.accept_sec_context_args, %struct.accept_sec_context_args* %25, i32 0, i32 2
  store i64 0, i64* %60, align 8
  br label %61

61:                                               ; preds = %59, %54
  %62 = load i32*, i32** %16, align 8
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.accept_sec_context_args, %struct.accept_sec_context_args* %25, i32 0, i32 1
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* %17, align 4
  %66 = getelementptr inbounds %struct.accept_sec_context_args, %struct.accept_sec_context_args* %25, i32 0, i32 0
  store i32 %65, i32* %66, align 8
  %67 = call i32 @bzero(%struct.accept_sec_context_res* %24, i32 56)
  %68 = load i32*, i32** %30, align 8
  %69 = call i32 @gssd_accept_sec_context_1(%struct.accept_sec_context_args* %25, %struct.accept_sec_context_res* %24, i32* %68)
  store i32 %69, i32* %26, align 4
  %70 = load i32*, i32** %30, align 8
  %71 = call i32 @CLNT_RELEASE(i32* %70)
  %72 = load i32, i32* %26, align 4
  %73 = load i32, i32* @RPC_SUCCESS, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %61
  %76 = load i32, i32* %26, align 4
  %77 = load i32*, i32** %13, align 8
  store i32 %76, i32* %77, align 4
  %78 = load i32, i32* @GSS_S_FAILURE, align 4
  store i32 %78, i32* %12, align 4
  br label %196

79:                                               ; preds = %61
  %80 = getelementptr inbounds %struct.accept_sec_context_res, %struct.accept_sec_context_res* %24, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @GSS_S_COMPLETE, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %99

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.accept_sec_context_res, %struct.accept_sec_context_res* %24, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @GSS_S_CONTINUE_NEEDED, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %99

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.accept_sec_context_res, %struct.accept_sec_context_res* %24, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load i32*, i32** %13, align 8
  store i32 %91, i32* %92, align 4
  %93 = load i64, i64* @xdr_accept_sec_context_res, align 8
  %94 = trunc i64 %93 to i32
  %95 = call i32 @xdr_free(i32 %94, %struct.accept_sec_context_res* %24)
  %96 = getelementptr inbounds %struct.accept_sec_context_res, %struct.accept_sec_context_res* %24, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %12, align 4
  br label %196

99:                                               ; preds = %84, %79
  %100 = getelementptr inbounds %struct.accept_sec_context_res, %struct.accept_sec_context_res* %24, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load i32*, i32** %13, align 8
  store i32 %101, i32* %102, align 4
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  %104 = icmp ne %struct.TYPE_14__* %103, null
  br i1 %104, label %118, label %105

105:                                              ; preds = %99
  %106 = getelementptr inbounds %struct.accept_sec_context_res, %struct.accept_sec_context_res* %24, i32 0, i32 8
  %107 = load i32, i32* %106, align 8
  %108 = call %struct.TYPE_14__* @kgss_create_context(i32 %107)
  store %struct.TYPE_14__* %108, %struct.TYPE_14__** %27, align 8
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  %110 = icmp ne %struct.TYPE_14__* %109, null
  br i1 %110, label %117, label %111

111:                                              ; preds = %105
  %112 = load i64, i64* @xdr_accept_sec_context_res, align 8
  %113 = trunc i64 %112 to i32
  %114 = call i32 @xdr_free(i32 %113, %struct.accept_sec_context_res* %24)
  %115 = load i32*, i32** %13, align 8
  store i32 0, i32* %115, align 4
  %116 = load i32, i32* @GSS_S_BAD_MECH, align 4
  store i32 %116, i32* %12, align 4
  br label %196

117:                                              ; preds = %105
  br label %118

118:                                              ; preds = %117, %99
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  %120 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %14, align 8
  store %struct.TYPE_14__* %119, %struct.TYPE_14__** %120, align 8
  %121 = getelementptr inbounds %struct.accept_sec_context_res, %struct.accept_sec_context_res* %24, i32 0, i32 7
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 0
  store i64 %122, i64* %124, align 8
  %125 = load i32, i32* @M_GSSAPI, align 4
  %126 = load i32, i32* @M_WAITOK, align 4
  %127 = call i8* @malloc(i32 4, i32 %125, i32 %126)
  %128 = bitcast i8* %127 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %128, %struct.TYPE_13__** %28, align 8
  %129 = getelementptr inbounds %struct.accept_sec_context_res, %struct.accept_sec_context_res* %24, i32 0, i32 6
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 4
  %133 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %18, align 8
  %134 = icmp ne %struct.TYPE_13__** %133, null
  br i1 %134, label %135, label %138

135:                                              ; preds = %118
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %137 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %18, align 8
  store %struct.TYPE_13__* %136, %struct.TYPE_13__** %137, align 8
  br label %140

138:                                              ; preds = %118
  %139 = call i32 @gss_release_name(i32* %31, %struct.TYPE_13__** %28)
  br label %140

140:                                              ; preds = %138, %135
  %141 = load i32*, i32** %19, align 8
  %142 = icmp ne i32* %141, null
  br i1 %142, label %143, label %147

143:                                              ; preds = %140
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  %145 = call i32 @KGSS_MECH_TYPE(%struct.TYPE_14__* %144)
  %146 = load i32*, i32** %19, align 8
  store i32 %145, i32* %146, align 4
  br label %147

147:                                              ; preds = %143, %140
  %148 = getelementptr inbounds %struct.accept_sec_context_res, %struct.accept_sec_context_res* %24, i32 0, i32 5
  %149 = load i32*, i32** %20, align 8
  %150 = call i32 @kgss_copy_buffer(i32* %148, i32* %149)
  %151 = load i32*, i32** %21, align 8
  %152 = icmp ne i32* %151, null
  br i1 %152, label %153, label %157

153:                                              ; preds = %147
  %154 = getelementptr inbounds %struct.accept_sec_context_res, %struct.accept_sec_context_res* %24, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = load i32*, i32** %21, align 8
  store i32 %155, i32* %156, align 4
  br label %157

157:                                              ; preds = %153, %147
  %158 = load i32*, i32** %22, align 8
  %159 = icmp ne i32* %158, null
  br i1 %159, label %160, label %164

160:                                              ; preds = %157
  %161 = getelementptr inbounds %struct.accept_sec_context_res, %struct.accept_sec_context_res* %24, i32 0, i32 3
  %162 = load i32, i32* %161, align 8
  %163 = load i32*, i32** %22, align 8
  store i32 %162, i32* %163, align 4
  br label %164

164:                                              ; preds = %160, %157
  %165 = load i32, i32* @M_GSSAPI, align 4
  %166 = load i32, i32* @M_WAITOK, align 4
  %167 = call i8* @malloc(i32 4, i32 %165, i32 %166)
  %168 = bitcast i8* %167 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %168, %struct.TYPE_15__** %29, align 8
  %169 = getelementptr inbounds %struct.accept_sec_context_res, %struct.accept_sec_context_res* %24, i32 0, i32 4
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %29, align 8
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 0
  store i64 %170, i64* %172, align 8
  %173 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %23, align 8
  %174 = icmp ne %struct.TYPE_15__** %173, null
  br i1 %174, label %175, label %178

175:                                              ; preds = %164
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %29, align 8
  %177 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %23, align 8
  store %struct.TYPE_15__* %176, %struct.TYPE_15__** %177, align 8
  br label %180

178:                                              ; preds = %164
  %179 = call i32 @gss_release_cred(i32* %32, %struct.TYPE_15__** %29)
  br label %180

180:                                              ; preds = %178, %175
  %181 = load i64, i64* @xdr_accept_sec_context_res, align 8
  %182 = trunc i64 %181 to i32
  %183 = call i32 @xdr_free(i32 %182, %struct.accept_sec_context_res* %24)
  %184 = getelementptr inbounds %struct.accept_sec_context_res, %struct.accept_sec_context_res* %24, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @GSS_S_COMPLETE, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %192

188:                                              ; preds = %180
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  %190 = call i64 @kgss_transfer_context(%struct.TYPE_14__* %189)
  %191 = getelementptr inbounds %struct.accept_sec_context_res, %struct.accept_sec_context_res* %24, i32 0, i32 0
  store i64 %190, i64* %191, align 8
  br label %192

192:                                              ; preds = %188, %180
  %193 = getelementptr inbounds %struct.accept_sec_context_res, %struct.accept_sec_context_res* %24, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = trunc i64 %194 to i32
  store i32 %195, i32* %12, align 4
  br label %196

196:                                              ; preds = %192, %111, %89, %75, %38
  %197 = load i32, i32* %12, align 4
  ret i32 %197
}

declare dso_local i32* @kgss_gssd_client(...) #1

declare dso_local i32 @bzero(%struct.accept_sec_context_res*, i32) #1

declare dso_local i32 @gssd_accept_sec_context_1(%struct.accept_sec_context_args*, %struct.accept_sec_context_res*, i32*) #1

declare dso_local i32 @CLNT_RELEASE(i32*) #1

declare dso_local i32 @xdr_free(i32, %struct.accept_sec_context_res*) #1

declare dso_local %struct.TYPE_14__* @kgss_create_context(i32) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @gss_release_name(i32*, %struct.TYPE_13__**) #1

declare dso_local i32 @KGSS_MECH_TYPE(%struct.TYPE_14__*) #1

declare dso_local i32 @kgss_copy_buffer(i32*, i32*) #1

declare dso_local i32 @gss_release_cred(i32*, %struct.TYPE_15__**) #1

declare dso_local i64 @kgss_transfer_context(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
