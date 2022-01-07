; ModuleID = '/home/carl/AnghaBench/freebsd/sys/rpc/rpcsec_gss/extr_rpcsec_gss_prot.c_xdr_rpc_gss_wrap_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/rpc/rpcsec_gss/extr_rpcsec_gss_prot.c_xdr_rpc_gss_wrap_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }

@xdr_rpc_gss_wrap_data.zpad = internal global [4 x i8] zeroinitializer, align 1
@rpc_gss_svc_integrity = common dso_local global i64 0, align 8
@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"gss_get_mic failed\00", align 1
@FALSE = common dso_local global i32 0, align 4
@rpc_gss_svc_privacy = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"gss_wrap\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xdr_rpc_gss_wrap_data(%struct.mbuf** %0, i32 %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mbuf**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.mbuf*, align 8
  %13 = alloca %struct.mbuf*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.mbuf** %0, %struct.mbuf*** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %18 = load %struct.mbuf**, %struct.mbuf*** %7, align 8
  %19 = load %struct.mbuf*, %struct.mbuf** %18, align 8
  store %struct.mbuf* %19, %struct.mbuf** %12, align 8
  %20 = load i64, i64* %11, align 8
  %21 = call i32 @put_uint32(%struct.mbuf** %12, i64 %20)
  %22 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %23 = call i64 @m_length(%struct.mbuf* %22, i32* null)
  store i64 %23, i64* %17, align 8
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* @rpc_gss_svc_integrity, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %62

27:                                               ; preds = %5
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %31 = call i64 @gss_get_mic_mbuf(i64* %15, i32 %28, i32 %29, %struct.mbuf* %30, %struct.mbuf** %13)
  store i64 %31, i64* %14, align 8
  %32 = load i64, i64* %14, align 8
  %33 = load i64, i64* @GSS_S_COMPLETE, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %27
  %36 = call i32 @rpc_gss_log_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %38 = call i32 @m_freem(%struct.mbuf* %37)
  %39 = load i32, i32* @FALSE, align 4
  store i32 %39, i32* %6, align 4
  br label %101

40:                                               ; preds = %27
  %41 = load i64, i64* %17, align 8
  %42 = call i32 @put_uint32(%struct.mbuf** %12, i64 %41)
  %43 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %44 = call i64 @m_length(%struct.mbuf* %43, i32* null)
  store i64 %44, i64* %17, align 8
  %45 = load i64, i64* %17, align 8
  %46 = call i32 @put_uint32(%struct.mbuf** %13, i64 %45)
  %47 = load i64, i64* %17, align 8
  %48 = load i64, i64* %17, align 8
  %49 = call i64 @RNDUP(i64 %48)
  %50 = icmp ne i64 %47, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %40
  %52 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %53 = load i64, i64* %17, align 8
  %54 = call i64 @RNDUP(i64 %53)
  %55 = load i64, i64* %17, align 8
  %56 = sub nsw i64 %54, %55
  %57 = call i32 @m_append(%struct.mbuf* %52, i64 %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @xdr_rpc_gss_wrap_data.zpad, i64 0, i64 0))
  br label %58

58:                                               ; preds = %51, %40
  %59 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %60 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %61 = call i32 @m_cat(%struct.mbuf* %59, %struct.mbuf* %60)
  br label %97

62:                                               ; preds = %5
  %63 = load i64, i64* %10, align 8
  %64 = load i64, i64* @rpc_gss_svc_privacy, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %96

66:                                               ; preds = %62
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @TRUE, align 4
  %69 = load i32, i32* %9, align 4
  %70 = call i64 @gss_wrap_mbuf(i64* %15, i32 %67, i32 %68, i32 %69, %struct.mbuf** %12, i32* %16)
  store i64 %70, i64* %14, align 8
  %71 = load i64, i64* %14, align 8
  %72 = load i64, i64* @GSS_S_COMPLETE, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %66
  %75 = load i64, i64* %14, align 8
  %76 = load i64, i64* %15, align 8
  %77 = call i32 @rpc_gss_log_status(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* null, i64 %75, i64 %76)
  %78 = load i32, i32* @FALSE, align 4
  store i32 %78, i32* %6, align 4
  br label %101

79:                                               ; preds = %66
  %80 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %81 = call i64 @m_length(%struct.mbuf* %80, i32* null)
  store i64 %81, i64* %17, align 8
  %82 = load i64, i64* %17, align 8
  %83 = call i32 @put_uint32(%struct.mbuf** %12, i64 %82)
  %84 = load i64, i64* %17, align 8
  %85 = load i64, i64* %17, align 8
  %86 = call i64 @RNDUP(i64 %85)
  %87 = icmp ne i64 %84, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %79
  %89 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %90 = load i64, i64* %17, align 8
  %91 = call i64 @RNDUP(i64 %90)
  %92 = load i64, i64* %17, align 8
  %93 = sub nsw i64 %91, %92
  %94 = call i32 @m_append(%struct.mbuf* %89, i64 %93, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @xdr_rpc_gss_wrap_data.zpad, i64 0, i64 0))
  br label %95

95:                                               ; preds = %88, %79
  br label %96

96:                                               ; preds = %95, %62
  br label %97

97:                                               ; preds = %96, %58
  %98 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %99 = load %struct.mbuf**, %struct.mbuf*** %7, align 8
  store %struct.mbuf* %98, %struct.mbuf** %99, align 8
  %100 = load i32, i32* @TRUE, align 4
  store i32 %100, i32* %6, align 4
  br label %101

101:                                              ; preds = %97, %74, %35
  %102 = load i32, i32* %6, align 4
  ret i32 %102
}

declare dso_local i32 @put_uint32(%struct.mbuf**, i64) #1

declare dso_local i64 @m_length(%struct.mbuf*, i32*) #1

declare dso_local i64 @gss_get_mic_mbuf(i64*, i32, i32, %struct.mbuf*, %struct.mbuf**) #1

declare dso_local i32 @rpc_gss_log_debug(i8*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i64 @RNDUP(i64) #1

declare dso_local i32 @m_append(%struct.mbuf*, i64, i8*) #1

declare dso_local i32 @m_cat(%struct.mbuf*, %struct.mbuf*) #1

declare dso_local i64 @gss_wrap_mbuf(i64*, i32, i32, i32, %struct.mbuf**, i32*) #1

declare dso_local i32 @rpc_gss_log_status(i8*, i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
