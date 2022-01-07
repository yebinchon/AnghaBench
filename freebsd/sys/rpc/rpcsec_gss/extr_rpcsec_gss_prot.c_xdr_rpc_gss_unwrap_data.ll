; ModuleID = '/home/carl/AnghaBench/freebsd/sys/rpc/rpcsec_gss/extr_rpcsec_gss_prot.c_xdr_rpc_gss_unwrap_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/rpc/rpcsec_gss/extr_rpcsec_gss_prot.c_xdr_rpc_gss_unwrap_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i64 }

@rpc_gss_svc_integrity = common dso_local global i64 0, align 8
@M_WAITOK = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@MHLEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"unexpected large GSS-API checksum\00", align 1
@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"gss_verify_mic\00", align 1
@rpc_gss_svc_privacy = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"gss_unwrap\00", align 1
@TRUE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"wrong sequence number in databody\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @xdr_rpc_gss_unwrap_data(%struct.mbuf** %0, i32 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.mbuf**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.mbuf*, align 8
  %13 = alloca %struct.mbuf*, align 8
  %14 = alloca %struct.mbuf*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store %struct.mbuf** %0, %struct.mbuf*** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %22 = load %struct.mbuf**, %struct.mbuf*** %7, align 8
  %23 = load %struct.mbuf*, %struct.mbuf** %22, align 8
  store %struct.mbuf* %23, %struct.mbuf** %12, align 8
  %24 = load %struct.mbuf**, %struct.mbuf*** %7, align 8
  store %struct.mbuf* null, %struct.mbuf** %24, align 8
  store %struct.mbuf* null, %struct.mbuf** %13, align 8
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* @rpc_gss_svc_integrity, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %103

28:                                               ; preds = %5
  %29 = call i64 @get_uint32(%struct.mbuf** %12)
  store i64 %29, i64* %15, align 8
  %30 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  store %struct.mbuf* %30, %struct.mbuf** %13, align 8
  %31 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %32 = load i64, i64* %15, align 8
  %33 = load i32, i32* @M_WAITOK, align 4
  %34 = call %struct.mbuf* @m_split(%struct.mbuf* %31, i64 %32, i32 %33)
  store %struct.mbuf* %34, %struct.mbuf** %12, align 8
  %35 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %36 = icmp ne %struct.mbuf* %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %28
  %38 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %39 = call i32 @m_freem(%struct.mbuf* %38)
  %40 = load i64, i64* @FALSE, align 8
  store i64 %40, i64* %6, align 8
  br label %167

41:                                               ; preds = %28
  %42 = call i64 @get_uint32(%struct.mbuf** %12)
  store i64 %42, i64* %16, align 8
  %43 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %44 = icmp ne %struct.mbuf* %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %47 = call i32 @m_freem(%struct.mbuf* %46)
  %48 = load i64, i64* @FALSE, align 8
  store i64 %48, i64* %6, align 8
  br label %167

49:                                               ; preds = %41
  %50 = load i64, i64* %16, align 8
  %51 = load i64, i64* @MHLEN, align 8
  %52 = icmp sle i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @KASSERT(i32 %53, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %55 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  store %struct.mbuf* %55, %struct.mbuf** %14, align 8
  %56 = load i64, i64* %16, align 8
  %57 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %58 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp sgt i64 %56, %59
  br i1 %60, label %61, label %72

61:                                               ; preds = %49
  %62 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %63 = load i64, i64* %16, align 8
  %64 = call %struct.mbuf* @m_pullup(%struct.mbuf* %62, i64 %63)
  store %struct.mbuf* %64, %struct.mbuf** %14, align 8
  %65 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %66 = icmp ne %struct.mbuf* %65, null
  br i1 %66, label %71, label %67

67:                                               ; preds = %61
  %68 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %69 = call i32 @m_freem(%struct.mbuf* %68)
  %70 = load i64, i64* @FALSE, align 8
  store i64 %70, i64* %6, align 8
  br label %167

71:                                               ; preds = %61
  br label %72

72:                                               ; preds = %71, %49
  %73 = load i64, i64* %16, align 8
  %74 = load i64, i64* %16, align 8
  %75 = call i64 @RNDUP(i64 %74)
  %76 = icmp ne i64 %73, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %79 = load i64, i64* %16, align 8
  %80 = call i32 @m_trim(%struct.mbuf* %78, i64 %79)
  br label %81

81:                                               ; preds = %77, %72
  %82 = load i32, i32* %8, align 4
  %83 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %84 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %85 = call i64 @gss_verify_mic_mbuf(i64* %18, i32 %82, %struct.mbuf* %83, %struct.mbuf* %84, i64* %21)
  store i64 %85, i64* %17, align 8
  %86 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %87 = call i32 @m_freem(%struct.mbuf* %86)
  %88 = load i64, i64* %17, align 8
  %89 = load i64, i64* @GSS_S_COMPLETE, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %95, label %91

91:                                               ; preds = %81
  %92 = load i64, i64* %21, align 8
  %93 = load i64, i64* %9, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %91, %81
  %96 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %97 = call i32 @m_freem(%struct.mbuf* %96)
  %98 = load i64, i64* %17, align 8
  %99 = load i64, i64* %18, align 8
  %100 = call i32 @rpc_gss_log_status(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32* null, i64 %98, i64 %99)
  %101 = load i64, i64* @FALSE, align 8
  store i64 %101, i64* %6, align 8
  br label %167

102:                                              ; preds = %91
  br label %148

103:                                              ; preds = %5
  %104 = load i64, i64* %10, align 8
  %105 = load i64, i64* @rpc_gss_svc_privacy, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %147

107:                                              ; preds = %103
  %108 = call i64 @get_uint32(%struct.mbuf** %12)
  store i64 %108, i64* %15, align 8
  %109 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %110 = icmp ne %struct.mbuf* %109, null
  br i1 %110, label %113, label %111

111:                                              ; preds = %107
  %112 = load i64, i64* @FALSE, align 8
  store i64 %112, i64* %6, align 8
  br label %167

113:                                              ; preds = %107
  %114 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  store %struct.mbuf* %114, %struct.mbuf** %13, align 8
  %115 = load i64, i64* %15, align 8
  %116 = load i64, i64* %15, align 8
  %117 = call i64 @RNDUP(i64 %116)
  %118 = icmp ne i64 %115, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %113
  %120 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %121 = load i64, i64* %15, align 8
  %122 = call i32 @m_trim(%struct.mbuf* %120, i64 %121)
  br label %123

123:                                              ; preds = %119, %113
  %124 = load i32, i32* %8, align 4
  %125 = call i64 @gss_unwrap_mbuf(i64* %18, i32 %124, %struct.mbuf** %13, i64* %20, i64* %21)
  store i64 %125, i64* %17, align 8
  %126 = load i64, i64* %17, align 8
  %127 = load i64, i64* @GSS_S_COMPLETE, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %129, label %134

129:                                              ; preds = %123
  %130 = load i64, i64* %17, align 8
  %131 = load i64, i64* %18, align 8
  %132 = call i32 @rpc_gss_log_status(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32* null, i64 %130, i64 %131)
  %133 = load i64, i64* @FALSE, align 8
  store i64 %133, i64* %6, align 8
  br label %167

134:                                              ; preds = %123
  %135 = load i64, i64* %21, align 8
  %136 = load i64, i64* %9, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %142, label %138

138:                                              ; preds = %134
  %139 = load i64, i64* %20, align 8
  %140 = load i64, i64* @TRUE, align 8
  %141 = icmp ne i64 %139, %140
  br i1 %141, label %142, label %146

142:                                              ; preds = %138, %134
  %143 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %144 = call i32 @m_freem(%struct.mbuf* %143)
  %145 = load i64, i64* @FALSE, align 8
  store i64 %145, i64* %6, align 8
  br label %167

146:                                              ; preds = %138
  br label %147

147:                                              ; preds = %146, %103
  br label %148

148:                                              ; preds = %147, %102
  %149 = call i64 @get_uint32(%struct.mbuf** %13)
  store i64 %149, i64* %19, align 8
  %150 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %151 = icmp ne %struct.mbuf* %150, null
  br i1 %151, label %154, label %152

152:                                              ; preds = %148
  %153 = load i64, i64* @FALSE, align 8
  store i64 %153, i64* %6, align 8
  br label %167

154:                                              ; preds = %148
  %155 = load i64, i64* %19, align 8
  %156 = load i64, i64* %11, align 8
  %157 = icmp ne i64 %155, %156
  br i1 %157, label %158, label %163

158:                                              ; preds = %154
  %159 = call i32 @rpc_gss_log_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %160 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %161 = call i32 @m_freem(%struct.mbuf* %160)
  %162 = load i64, i64* @FALSE, align 8
  store i64 %162, i64* %6, align 8
  br label %167

163:                                              ; preds = %154
  %164 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %165 = load %struct.mbuf**, %struct.mbuf*** %7, align 8
  store %struct.mbuf* %164, %struct.mbuf** %165, align 8
  %166 = load i64, i64* @TRUE, align 8
  store i64 %166, i64* %6, align 8
  br label %167

167:                                              ; preds = %163, %158, %152, %142, %129, %111, %95, %67, %45, %37
  %168 = load i64, i64* %6, align 8
  ret i64 %168
}

declare dso_local i64 @get_uint32(%struct.mbuf**) #1

declare dso_local %struct.mbuf* @m_split(%struct.mbuf*, i64, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.mbuf* @m_pullup(%struct.mbuf*, i64) #1

declare dso_local i64 @RNDUP(i64) #1

declare dso_local i32 @m_trim(%struct.mbuf*, i64) #1

declare dso_local i64 @gss_verify_mic_mbuf(i64*, i32, %struct.mbuf*, %struct.mbuf*, i64*) #1

declare dso_local i32 @rpc_gss_log_status(i8*, i32*, i64, i64) #1

declare dso_local i64 @gss_unwrap_mbuf(i64*, i32, %struct.mbuf**, i64*, i64*) #1

declare dso_local i32 @rpc_gss_log_debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
