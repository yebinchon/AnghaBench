; ModuleID = '/home/carl/AnghaBench/freebsd/sys/rpc/extr_svc_auth_unix.c__svcauth_unix.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/rpc/extr_svc_auth_unix.c__svcauth_unix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_req = type { i32, %struct.xucred* }
%struct.xucred = type { i64, i8**, i8* }
%struct.rpc_msg = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }

@XDR_DECODE = common dso_local global i32 0, align 4
@MAX_MACHINE_NAME = common dso_local global i64 0, align 8
@AUTH_BADCRED = common dso_local global i32 0, align 4
@NGRPS = common dso_local global i64 0, align 8
@XU_NGROUPS = common dso_local global i64 0, align 8
@BYTES_PER_XDR_UNIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"bad auth_len gid %ld str %ld auth %u\0A\00", align 1
@_null_auth = common dso_local global i32 0, align 4
@AUTH_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_svcauth_unix(%struct.svc_req* %0, %struct.rpc_msg* %1) #0 {
  %3 = alloca %struct.svc_req*, align 8
  %4 = alloca %struct.rpc_msg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.xucred*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.svc_req* %0, %struct.svc_req** %3, align 8
  store %struct.rpc_msg* %1, %struct.rpc_msg** %4, align 8
  %14 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %15 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %14, i32 0, i32 1
  %16 = load %struct.xucred*, %struct.xucred** %15, align 8
  store %struct.xucred* %16, %struct.xucred** %9, align 8
  %17 = load %struct.rpc_msg*, %struct.rpc_msg** %4, align 8
  %18 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %10, align 8
  %22 = load %struct.rpc_msg*, %struct.rpc_msg** %4, align 8
  %23 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i64, i64* %10, align 8
  %28 = load i32, i32* @XDR_DECODE, align 4
  %29 = call i32 @xdrmem_create(i32* %6, i32 %26, i64 %27, i32 %28)
  %30 = load i64, i64* %10, align 8
  %31 = call i32* @XDR_INLINE(i32* %6, i64 %30)
  store i32* %31, i32** %7, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %127

34:                                               ; preds = %2
  %35 = load i32*, i32** %7, align 8
  %36 = call i8* @IXDR_GET_UINT32(i32* %35)
  store i8* %36, i8** %8, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = call i8* @IXDR_GET_UINT32(i32* %37)
  %39 = ptrtoint i8* %38 to i64
  store i64 %39, i64* %11, align 8
  %40 = load i64, i64* %11, align 8
  %41 = load i64, i64* @MAX_MACHINE_NAME, align 8
  %42 = icmp ugt i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = load i32, i32* @AUTH_BADCRED, align 4
  store i32 %44, i32* %5, align 4
  br label %139

45:                                               ; preds = %34
  %46 = load i64, i64* %11, align 8
  %47 = call i64 @RNDUP(i64 %46)
  store i64 %47, i64* %11, align 8
  %48 = load i64, i64* %11, align 8
  %49 = udiv i64 %48, 4
  %50 = load i32*, i32** %7, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 %49
  store i32* %51, i32** %7, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = call i8* @IXDR_GET_UINT32(i32* %52)
  %54 = load %struct.xucred*, %struct.xucred** %9, align 8
  %55 = getelementptr inbounds %struct.xucred, %struct.xucred* %54, i32 0, i32 2
  store i8* %53, i8** %55, align 8
  %56 = load i32*, i32** %7, align 8
  %57 = call i8* @IXDR_GET_UINT32(i32* %56)
  %58 = load %struct.xucred*, %struct.xucred** %9, align 8
  %59 = getelementptr inbounds %struct.xucred, %struct.xucred* %58, i32 0, i32 1
  %60 = load i8**, i8*** %59, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 0
  store i8* %57, i8** %61, align 8
  %62 = load i32*, i32** %7, align 8
  %63 = call i8* @IXDR_GET_UINT32(i32* %62)
  %64 = ptrtoint i8* %63 to i64
  store i64 %64, i64* %12, align 8
  %65 = load i64, i64* %12, align 8
  %66 = load i64, i64* @NGRPS, align 8
  %67 = icmp ugt i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %45
  %69 = load i32, i32* @AUTH_BADCRED, align 4
  store i32 %69, i32* %5, align 4
  br label %139

70:                                               ; preds = %45
  store i64 0, i64* %13, align 8
  br label %71

71:                                               ; preds = %93, %70
  %72 = load i64, i64* %13, align 8
  %73 = load i64, i64* %12, align 8
  %74 = icmp ult i64 %72, %73
  br i1 %74, label %75, label %96

75:                                               ; preds = %71
  %76 = load i64, i64* %13, align 8
  %77 = add i64 %76, 1
  %78 = load i64, i64* @XU_NGROUPS, align 8
  %79 = icmp ult i64 %77, %78
  br i1 %79, label %80, label %89

80:                                               ; preds = %75
  %81 = load i32*, i32** %7, align 8
  %82 = call i8* @IXDR_GET_INT32(i32* %81)
  %83 = load %struct.xucred*, %struct.xucred** %9, align 8
  %84 = getelementptr inbounds %struct.xucred, %struct.xucred* %83, i32 0, i32 1
  %85 = load i8**, i8*** %84, align 8
  %86 = load i64, i64* %13, align 8
  %87 = add i64 %86, 1
  %88 = getelementptr inbounds i8*, i8** %85, i64 %87
  store i8* %82, i8** %88, align 8
  br label %92

89:                                               ; preds = %75
  %90 = load i32*, i32** %7, align 8
  %91 = getelementptr inbounds i32, i32* %90, i32 1
  store i32* %91, i32** %7, align 8
  br label %92

92:                                               ; preds = %89, %80
  br label %93

93:                                               ; preds = %92
  %94 = load i64, i64* %13, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %13, align 8
  br label %71

96:                                               ; preds = %71
  %97 = load i64, i64* %12, align 8
  %98 = add i64 %97, 1
  %99 = load i64, i64* @XU_NGROUPS, align 8
  %100 = icmp ugt i64 %98, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %96
  %102 = load i64, i64* @XU_NGROUPS, align 8
  %103 = load %struct.xucred*, %struct.xucred** %9, align 8
  %104 = getelementptr inbounds %struct.xucred, %struct.xucred* %103, i32 0, i32 0
  store i64 %102, i64* %104, align 8
  br label %110

105:                                              ; preds = %96
  %106 = load i64, i64* %12, align 8
  %107 = add i64 %106, 1
  %108 = load %struct.xucred*, %struct.xucred** %9, align 8
  %109 = getelementptr inbounds %struct.xucred, %struct.xucred* %108, i32 0, i32 0
  store i64 %107, i64* %109, align 8
  br label %110

110:                                              ; preds = %105, %101
  %111 = load i64, i64* %12, align 8
  %112 = add i64 5, %111
  %113 = load i32, i32* @BYTES_PER_XDR_UNIT, align 4
  %114 = sext i32 %113 to i64
  %115 = mul i64 %112, %114
  %116 = load i64, i64* %11, align 8
  %117 = add i64 %115, %116
  %118 = load i64, i64* %10, align 8
  %119 = icmp ugt i64 %117, %118
  br i1 %119, label %120, label %126

120:                                              ; preds = %110
  %121 = load i64, i64* %12, align 8
  %122 = load i64, i64* %11, align 8
  %123 = load i64, i64* %10, align 8
  %124 = call i32 @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %121, i64 %122, i64 %123)
  %125 = load i32, i32* @AUTH_BADCRED, align 4
  store i32 %125, i32* %5, align 4
  br label %139

126:                                              ; preds = %110
  br label %134

127:                                              ; preds = %2
  %128 = load %struct.xucred*, %struct.xucred** %9, align 8
  %129 = call i32 @xdr_authunix_parms(i32* %6, i8** %8, %struct.xucred* %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %133, label %131

131:                                              ; preds = %127
  %132 = load i32, i32* @AUTH_BADCRED, align 4
  store i32 %132, i32* %5, align 4
  br label %139

133:                                              ; preds = %127
  br label %134

134:                                              ; preds = %133, %126
  %135 = load i32, i32* @_null_auth, align 4
  %136 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %137 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 8
  %138 = load i32, i32* @AUTH_OK, align 4
  store i32 %138, i32* %5, align 4
  br label %139

139:                                              ; preds = %134, %131, %120, %68, %43
  %140 = call i32 @XDR_DESTROY(i32* %6)
  %141 = load i32, i32* %5, align 4
  ret i32 %141
}

declare dso_local i32 @xdrmem_create(i32*, i32, i64, i32) #1

declare dso_local i32* @XDR_INLINE(i32*, i64) #1

declare dso_local i8* @IXDR_GET_UINT32(i32*) #1

declare dso_local i64 @RNDUP(i64) #1

declare dso_local i8* @IXDR_GET_INT32(i32*) #1

declare dso_local i32 @printf(i8*, i64, i64, i64) #1

declare dso_local i32 @xdr_authunix_parms(i32*, i8**, %struct.xucred*) #1

declare dso_local i32 @XDR_DESTROY(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
