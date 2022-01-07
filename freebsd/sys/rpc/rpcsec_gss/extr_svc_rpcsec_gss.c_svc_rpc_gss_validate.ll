; ModuleID = '/home/carl/AnghaBench/freebsd/sys/rpc/rpcsec_gss/extr_svc_rpcsec_gss.c_svc_rpc_gss_validate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/rpc/rpcsec_gss/extr_svc_rpcsec_gss.c_svc_rpc_gss_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rpc_gss_client = type { i32, i32, i32 }
%struct.rpc_msg = type { %struct.TYPE_7__, i32, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.opaque_auth, i64, i64, i64, i64 }
%struct.TYPE_6__ = type { i32, i32* }
%struct.opaque_auth = type { i64, i32, i32 }
%struct.TYPE_8__ = type { i32, i32* }

@.str = private unnamed_addr constant [26 x i8] c"in svc_rpc_gss_validate()\00", align 1
@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"gss_verify_mic\00", align 1
@RPCSEC_GSS_DESTROY = common dso_local global i64 0, align 8
@CLIENT_STALE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rpc_gss_client*, %struct.rpc_msg*, i32*, i64)* @svc_rpc_gss_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svc_rpc_gss_validate(%struct.svc_rpc_gss_client* %0, %struct.rpc_msg* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.svc_rpc_gss_client*, align 8
  %7 = alloca %struct.rpc_msg*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.opaque_auth*, align 8
  %11 = alloca %struct.TYPE_8__, align 8
  %12 = alloca %struct.TYPE_8__, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca [32 x i32], align 16
  %17 = alloca i32*, align 8
  store %struct.svc_rpc_gss_client* %0, %struct.svc_rpc_gss_client** %6, align 8
  store %struct.rpc_msg* %1, %struct.rpc_msg** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = call i32 @rpc_gss_log_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %19 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 0
  %20 = call i32 @memset(i32* %19, i32 0, i32 128)
  %21 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 0
  store i32* %21, i32** %17, align 8
  %22 = load i32*, i32** %17, align 8
  %23 = load %struct.rpc_msg*, %struct.rpc_msg** %7, align 8
  %24 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @IXDR_PUT_LONG(i32* %22, i64 %25)
  %27 = load i32*, i32** %17, align 8
  %28 = load %struct.rpc_msg*, %struct.rpc_msg** %7, align 8
  %29 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @IXDR_PUT_ENUM(i32* %27, i32 %30)
  %32 = load i32*, i32** %17, align 8
  %33 = load %struct.rpc_msg*, %struct.rpc_msg** %7, align 8
  %34 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 5
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @IXDR_PUT_LONG(i32* %32, i64 %36)
  %38 = load i32*, i32** %17, align 8
  %39 = load %struct.rpc_msg*, %struct.rpc_msg** %7, align 8
  %40 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @IXDR_PUT_LONG(i32* %38, i64 %42)
  %44 = load i32*, i32** %17, align 8
  %45 = load %struct.rpc_msg*, %struct.rpc_msg** %7, align 8
  %46 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @IXDR_PUT_LONG(i32* %44, i64 %48)
  %50 = load i32*, i32** %17, align 8
  %51 = load %struct.rpc_msg*, %struct.rpc_msg** %7, align 8
  %52 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @IXDR_PUT_LONG(i32* %50, i64 %54)
  %56 = load %struct.rpc_msg*, %struct.rpc_msg** %7, align 8
  %57 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  store %struct.opaque_auth* %58, %struct.opaque_auth** %10, align 8
  %59 = load i32*, i32** %17, align 8
  %60 = load %struct.opaque_auth*, %struct.opaque_auth** %10, align 8
  %61 = getelementptr inbounds %struct.opaque_auth, %struct.opaque_auth* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @IXDR_PUT_ENUM(i32* %59, i32 %62)
  %64 = load i32*, i32** %17, align 8
  %65 = load %struct.opaque_auth*, %struct.opaque_auth** %10, align 8
  %66 = getelementptr inbounds %struct.opaque_auth, %struct.opaque_auth* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @IXDR_PUT_LONG(i32* %64, i64 %67)
  %69 = load %struct.opaque_auth*, %struct.opaque_auth** %10, align 8
  %70 = getelementptr inbounds %struct.opaque_auth, %struct.opaque_auth* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %91

73:                                               ; preds = %4
  %74 = load i32*, i32** %17, align 8
  %75 = ptrtoint i32* %74 to i32
  %76 = load %struct.opaque_auth*, %struct.opaque_auth** %10, align 8
  %77 = getelementptr inbounds %struct.opaque_auth, %struct.opaque_auth* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.opaque_auth*, %struct.opaque_auth** %10, align 8
  %80 = getelementptr inbounds %struct.opaque_auth, %struct.opaque_auth* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @memcpy(i32 %75, i32 %78, i64 %81)
  %83 = load %struct.opaque_auth*, %struct.opaque_auth** %10, align 8
  %84 = getelementptr inbounds %struct.opaque_auth, %struct.opaque_auth* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @RNDUP(i64 %85)
  %87 = sext i32 %86 to i64
  %88 = udiv i64 %87, 4
  %89 = load i32*, i32** %17, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 %88
  store i32* %90, i32** %17, align 8
  br label %91

91:                                               ; preds = %73, %4
  %92 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 0
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  store i32* %92, i32** %93, align 8
  %94 = load i32*, i32** %17, align 8
  %95 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 0
  %96 = ptrtoint i32* %94 to i64
  %97 = ptrtoint i32* %95 to i64
  %98 = sub i64 %96, %97
  %99 = sdiv exact i64 %98, 4
  %100 = trunc i64 %99 to i32
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  store i32 %100, i32* %101, align 8
  %102 = load %struct.rpc_msg*, %struct.rpc_msg** %7, align 8
  %103 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  store i32* %106, i32** %107, align 8
  %108 = load %struct.rpc_msg*, %struct.rpc_msg** %7, align 8
  %109 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  store i32 %112, i32* %113, align 8
  %114 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %6, align 8
  %115 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = call i64 @gss_verify_mic(i64* %14, i32 %116, %struct.TYPE_8__* %11, %struct.TYPE_8__* %12, i32* %15)
  store i64 %117, i64* %13, align 8
  %118 = load i64, i64* %13, align 8
  %119 = load i64, i64* @GSS_S_COMPLETE, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %137

121:                                              ; preds = %91
  %122 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %6, align 8
  %123 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i64, i64* %13, align 8
  %126 = load i64, i64* %14, align 8
  %127 = call i32 @rpc_gss_log_status(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %124, i64 %125, i64 %126)
  %128 = load i64, i64* %9, align 8
  %129 = load i64, i64* @RPCSEC_GSS_DESTROY, align 8
  %130 = icmp ne i64 %128, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %121
  %132 = load i32, i32* @CLIENT_STALE, align 4
  %133 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %6, align 8
  %134 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 4
  br label %135

135:                                              ; preds = %131, %121
  %136 = load i32, i32* @FALSE, align 4
  store i32 %136, i32* %5, align 4
  br label %141

137:                                              ; preds = %91
  %138 = load i32, i32* %15, align 4
  %139 = load i32*, i32** %8, align 8
  store i32 %138, i32* %139, align 4
  %140 = load i32, i32* @TRUE, align 4
  store i32 %140, i32* %5, align 4
  br label %141

141:                                              ; preds = %137, %135
  %142 = load i32, i32* %5, align 4
  ret i32 %142
}

declare dso_local i32 @rpc_gss_log_debug(i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @IXDR_PUT_LONG(i32*, i64) #1

declare dso_local i32 @IXDR_PUT_ENUM(i32*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @RNDUP(i64) #1

declare dso_local i64 @gss_verify_mic(i64*, i32, %struct.TYPE_8__*, %struct.TYPE_8__*, i32*) #1

declare dso_local i32 @rpc_gss_log_status(i8*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
