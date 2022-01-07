; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kgssapi/krb5/extr_krb5_mech.c_krb5_verify_mic_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kgssapi/krb5/extr_krb5_mech.c_krb5_verify_mic_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.krb5_context = type { i32, %struct.TYPE_4__, %struct.krb5_key_state* }
%struct.TYPE_4__ = type { i32 }
%struct.krb5_key_state = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.mbuf = type { i32, i32*, %struct.mbuf* }

@.str = private unnamed_addr constant [25 x i8] c"MIC should be contiguous\00", align 1
@GSS_S_DEFECTIVE_TOKEN = common dso_local global i32 0, align 4
@GSS_TOKEN_SENT_BY_ACCEPTOR = common dso_local global i32 0, align 4
@ACCEPTOR_SUBKEY = common dso_local global i32 0, align 4
@GSS_TOKEN_ACCEPTOR_SUBKEY = common dso_local global i32 0, align 4
@GSS_C_REPLAY_FLAG = common dso_local global i32 0, align 4
@GSS_C_SEQUENCE_FLAG = common dso_local global i32 0, align 4
@GSS_S_UNSEQ_TOKEN = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i32 0, align 4
@GSS_S_BAD_SIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.krb5_context*, %struct.mbuf*, %struct.mbuf*)* @krb5_verify_mic_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @krb5_verify_mic_new(%struct.krb5_context* %0, %struct.mbuf* %1, %struct.mbuf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.krb5_context*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.krb5_key_state*, align 8
  %10 = alloca %struct.mbuf*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca [32 x i8], align 16
  %16 = alloca i32, align 4
  store %struct.krb5_context* %0, %struct.krb5_context** %5, align 8
  store %struct.mbuf* %1, %struct.mbuf** %6, align 8
  store %struct.mbuf* %2, %struct.mbuf** %7, align 8
  %17 = load %struct.krb5_context*, %struct.krb5_context** %5, align 8
  %18 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %17, i32 0, i32 2
  %19 = load %struct.krb5_key_state*, %struct.krb5_key_state** %18, align 8
  store %struct.krb5_key_state* %19, %struct.krb5_key_state** %9, align 8
  %20 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %21 = call i64 @m_length(%struct.mbuf* %20, %struct.mbuf** %10)
  store i64 %21, i64* %13, align 8
  %22 = load %struct.krb5_key_state*, %struct.krb5_key_state** %9, align 8
  %23 = getelementptr inbounds %struct.krb5_key_state, %struct.krb5_key_state* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %14, align 8
  %27 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %28 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %27, i32 0, i32 2
  %29 = load %struct.mbuf*, %struct.mbuf** %28, align 8
  %30 = icmp eq %struct.mbuf* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i32 @KASSERT(i32 %31, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %34 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = load i64, i64* %14, align 8
  %38 = add i64 16, %37
  %39 = icmp ne i64 %36, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %3
  %41 = load i32, i32* @GSS_S_DEFECTIVE_TOKEN, align 4
  store i32 %41, i32* %4, align 4
  br label %210

42:                                               ; preds = %3
  %43 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %44 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  store i32* %45, i32** %11, align 8
  %46 = load i32*, i32** %11, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 4
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = load i32, i32* @GSS_S_DEFECTIVE_TOKEN, align 4
  store i32 %51, i32* %4, align 4
  br label %210

52:                                               ; preds = %42
  %53 = load i32*, i32** %11, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 4
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* @GSS_S_DEFECTIVE_TOKEN, align 4
  store i32 %58, i32* %4, align 4
  br label %210

59:                                               ; preds = %52
  store i32 0, i32* %12, align 4
  %60 = load %struct.krb5_context*, %struct.krb5_context** %5, align 8
  %61 = call i64 @is_initiator(%struct.krb5_context* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load i32, i32* @GSS_TOKEN_SENT_BY_ACCEPTOR, align 4
  %65 = load i32, i32* %12, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %12, align 4
  br label %67

67:                                               ; preds = %63, %59
  %68 = load %struct.krb5_context*, %struct.krb5_context** %5, align 8
  %69 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @ACCEPTOR_SUBKEY, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %67
  %75 = load i32, i32* @GSS_TOKEN_ACCEPTOR_SUBKEY, align 4
  %76 = load i32, i32* %12, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %12, align 4
  br label %78

78:                                               ; preds = %74, %67
  %79 = load i32*, i32** %11, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 2
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %12, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %78
  %85 = load i32, i32* @GSS_S_DEFECTIVE_TOKEN, align 4
  store i32 %85, i32* %4, align 4
  br label %210

86:                                               ; preds = %78
  %87 = load i32*, i32** %11, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 3
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 255
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  %92 = load i32, i32* @GSS_S_DEFECTIVE_TOKEN, align 4
  store i32 %92, i32* %4, align 4
  br label %210

93:                                               ; preds = %86
  %94 = load i32*, i32** %11, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 4
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 255
  br i1 %97, label %98, label %100

98:                                               ; preds = %93
  %99 = load i32, i32* @GSS_S_DEFECTIVE_TOKEN, align 4
  store i32 %99, i32* %4, align 4
  br label %210

100:                                              ; preds = %93
  %101 = load i32*, i32** %11, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 5
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 255
  br i1 %104, label %105, label %107

105:                                              ; preds = %100
  %106 = load i32, i32* @GSS_S_DEFECTIVE_TOKEN, align 4
  store i32 %106, i32* %4, align 4
  br label %210

107:                                              ; preds = %100
  %108 = load i32*, i32** %11, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 6
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 255
  br i1 %111, label %112, label %114

112:                                              ; preds = %107
  %113 = load i32, i32* @GSS_S_DEFECTIVE_TOKEN, align 4
  store i32 %113, i32* %4, align 4
  br label %210

114:                                              ; preds = %107
  %115 = load i32*, i32** %11, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 7
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 255
  br i1 %118, label %119, label %121

119:                                              ; preds = %114
  %120 = load i32, i32* @GSS_S_DEFECTIVE_TOKEN, align 4
  store i32 %120, i32* %4, align 4
  br label %210

121:                                              ; preds = %114
  %122 = load %struct.krb5_context*, %struct.krb5_context** %5, align 8
  %123 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @GSS_C_REPLAY_FLAG, align 4
  %127 = load i32, i32* @GSS_C_SEQUENCE_FLAG, align 4
  %128 = or i32 %126, %127
  %129 = and i32 %125, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %182

131:                                              ; preds = %121
  %132 = load i32*, i32** %11, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 8
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %151, label %136

136:                                              ; preds = %131
  %137 = load i32*, i32** %11, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 9
  %139 = load i32, i32* %138, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %151, label %141

141:                                              ; preds = %136
  %142 = load i32*, i32** %11, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 10
  %144 = load i32, i32* %143, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %151, label %146

146:                                              ; preds = %141
  %147 = load i32*, i32** %11, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 11
  %149 = load i32, i32* %148, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %146, %141, %136, %131
  %152 = load i32, i32* @GSS_S_UNSEQ_TOKEN, align 4
  store i32 %152, i32* %8, align 4
  br label %175

153:                                              ; preds = %146
  %154 = load i32*, i32** %11, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 12
  %156 = load i32, i32* %155, align 4
  %157 = shl i32 %156, 24
  %158 = load i32*, i32** %11, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 13
  %160 = load i32, i32* %159, align 4
  %161 = shl i32 %160, 16
  %162 = or i32 %157, %161
  %163 = load i32*, i32** %11, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 14
  %165 = load i32, i32* %164, align 4
  %166 = shl i32 %165, 8
  %167 = or i32 %162, %166
  %168 = load i32*, i32** %11, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 15
  %170 = load i32, i32* %169, align 4
  %171 = or i32 %167, %170
  store i32 %171, i32* %16, align 4
  %172 = load %struct.krb5_context*, %struct.krb5_context** %5, align 8
  %173 = load i32, i32* %16, align 4
  %174 = call i32 @krb5_sequence_check(%struct.krb5_context* %172, i32 %173)
  store i32 %174, i32* %8, align 4
  br label %175

175:                                              ; preds = %153, %151
  %176 = load i32, i32* %8, align 4
  %177 = call i64 @GSS_ERROR(i32 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %175
  %180 = load i32, i32* %8, align 4
  store i32 %180, i32* %4, align 4
  br label %210

181:                                              ; preds = %175
  br label %184

182:                                              ; preds = %121
  %183 = load i32, i32* @GSS_S_COMPLETE, align 4
  store i32 %183, i32* %8, align 4
  br label %184

184:                                              ; preds = %182, %181
  %185 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %186 = load i64, i64* %14, align 8
  %187 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 0
  %188 = call i32 @m_copydata(%struct.mbuf* %185, i32 16, i64 %186, i8* %187)
  %189 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %190 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %191 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %190, i32 0, i32 2
  store %struct.mbuf* %189, %struct.mbuf** %191, align 8
  %192 = load %struct.krb5_key_state*, %struct.krb5_key_state** %9, align 8
  %193 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %194 = load i64, i64* %13, align 8
  %195 = add i64 %194, 16
  %196 = load i64, i64* %14, align 8
  %197 = call i32 @krb5_checksum(%struct.krb5_key_state* %192, i32 0, %struct.mbuf* %193, i32 0, i64 %195, i64 %196)
  %198 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %199 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %198, i32 0, i32 2
  store %struct.mbuf* null, %struct.mbuf** %199, align 8
  %200 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 0
  %201 = load i32*, i32** %11, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 16
  %203 = load i64, i64* %14, align 8
  %204 = call i64 @bcmp(i8* %200, i32* %202, i64 %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %184
  %207 = load i32, i32* @GSS_S_BAD_SIG, align 4
  store i32 %207, i32* %4, align 4
  br label %210

208:                                              ; preds = %184
  %209 = load i32, i32* @GSS_S_COMPLETE, align 4
  store i32 %209, i32* %4, align 4
  br label %210

210:                                              ; preds = %208, %206, %179, %119, %112, %105, %98, %91, %84, %57, %50, %40
  %211 = load i32, i32* %4, align 4
  ret i32 %211
}

declare dso_local i64 @m_length(%struct.mbuf*, %struct.mbuf**) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @is_initiator(%struct.krb5_context*) #1

declare dso_local i32 @krb5_sequence_check(%struct.krb5_context*, i32) #1

declare dso_local i64 @GSS_ERROR(i32) #1

declare dso_local i32 @m_copydata(%struct.mbuf*, i32, i64, i8*) #1

declare dso_local i32 @krb5_checksum(%struct.krb5_key_state*, i32, %struct.mbuf*, i32, i64, i64) #1

declare dso_local i64 @bcmp(i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
