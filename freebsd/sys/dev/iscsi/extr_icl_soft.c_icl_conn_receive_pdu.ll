; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_icl_soft.c_icl_conn_receive_pdu.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_icl_soft.c_icl_conn_receive_pdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icl_pdu = type { i32 }
%struct.icl_conn = type { i32, i64, i64, i32, i32, %struct.icl_pdu*, %struct.socket* }
%struct.socket = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"ic->ic_receive_pdu != NULL\00", align 1
@M_NOWAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"failed to allocate PDU; dropping connection\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"ic->ic_receive_pdu == NULL\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"failed to receive BHS; dropping connection\00", align 1
@.str.4 = private unnamed_addr constant [105 x i8] c"received data segment length %zd is larger than negotiated MaxDataSegmentLength %zd; dropping connection\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"failed to receive AHS; dropping connection\00", align 1
@ISCSI_HEADER_DIGEST_SIZE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [42 x i8] c"header digest failed; dropping connection\00", align 1
@.str.7 = private unnamed_addr constant [51 x i8] c"failed to receive data segment;dropping connection\00", align 1
@ISCSI_DATA_DIGEST_SIZE = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [40 x i8] c"data digest failed; dropping connection\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"invalid ic_receive_state %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.icl_pdu* (%struct.icl_conn*, i64*)* @icl_conn_receive_pdu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.icl_pdu* @icl_conn_receive_pdu(%struct.icl_conn* %0, i64* %1) #0 {
  %3 = alloca %struct.icl_pdu*, align 8
  %4 = alloca %struct.icl_conn*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.icl_pdu*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.icl_conn* %0, %struct.icl_conn** %4, align 8
  store i64* %1, i64** %5, align 8
  %11 = load %struct.icl_conn*, %struct.icl_conn** %4, align 8
  %12 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %11, i32 0, i32 6
  %13 = load %struct.socket*, %struct.socket** %12, align 8
  store %struct.socket* %13, %struct.socket** %7, align 8
  %14 = load %struct.icl_conn*, %struct.icl_conn** %4, align 8
  %15 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 131
  br i1 %17, label %18, label %38

18:                                               ; preds = %2
  %19 = load %struct.icl_conn*, %struct.icl_conn** %4, align 8
  %20 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %19, i32 0, i32 5
  %21 = load %struct.icl_pdu*, %struct.icl_pdu** %20, align 8
  %22 = icmp eq %struct.icl_pdu* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @KASSERT(i32 %23, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.icl_conn*, %struct.icl_conn** %4, align 8
  %26 = load i32, i32* @M_NOWAIT, align 4
  %27 = call %struct.icl_pdu* @icl_soft_conn_new_pdu(%struct.icl_conn* %25, i32 %26)
  store %struct.icl_pdu* %27, %struct.icl_pdu** %6, align 8
  %28 = load %struct.icl_pdu*, %struct.icl_pdu** %6, align 8
  %29 = icmp eq %struct.icl_pdu* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %18
  %31 = call i32 (i8*, ...) @ICL_DEBUG(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.icl_conn*, %struct.icl_conn** %4, align 8
  %33 = call i32 @icl_conn_fail(%struct.icl_conn* %32)
  store %struct.icl_pdu* null, %struct.icl_pdu** %3, align 8
  br label %188

34:                                               ; preds = %18
  %35 = load %struct.icl_pdu*, %struct.icl_pdu** %6, align 8
  %36 = load %struct.icl_conn*, %struct.icl_conn** %4, align 8
  %37 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %36, i32 0, i32 5
  store %struct.icl_pdu* %35, %struct.icl_pdu** %37, align 8
  br label %48

38:                                               ; preds = %2
  %39 = load %struct.icl_conn*, %struct.icl_conn** %4, align 8
  %40 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %39, i32 0, i32 5
  %41 = load %struct.icl_pdu*, %struct.icl_pdu** %40, align 8
  %42 = icmp ne %struct.icl_pdu* %41, null
  %43 = zext i1 %42 to i32
  %44 = call i32 @KASSERT(i32 %43, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %45 = load %struct.icl_conn*, %struct.icl_conn** %4, align 8
  %46 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %45, i32 0, i32 5
  %47 = load %struct.icl_pdu*, %struct.icl_pdu** %46, align 8
  store %struct.icl_pdu* %47, %struct.icl_pdu** %6, align 8
  br label %48

48:                                               ; preds = %38, %34
  %49 = load i64*, i64** %5, align 8
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.icl_conn*, %struct.icl_conn** %4, align 8
  %52 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ult i64 %50, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  store %struct.icl_pdu* null, %struct.icl_pdu** %3, align 8
  br label %188

56:                                               ; preds = %48
  %57 = load %struct.icl_conn*, %struct.icl_conn** %4, align 8
  %58 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  switch i32 %59, label %176 [
    i32 131, label %60
    i32 132, label %90
    i32 128, label %113
    i32 130, label %128
    i32 129, label %160
  ]

60:                                               ; preds = %56
  %61 = load %struct.icl_pdu*, %struct.icl_pdu** %6, align 8
  %62 = load i64*, i64** %5, align 8
  %63 = call i32 @icl_pdu_receive_bhs(%struct.icl_pdu* %61, i64* %62)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = call i32 (i8*, ...) @ICL_DEBUG(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  br label %181

68:                                               ; preds = %60
  %69 = load %struct.icl_pdu*, %struct.icl_pdu** %6, align 8
  %70 = call i64 @icl_pdu_data_segment_length(%struct.icl_pdu* %69)
  store i64 %70, i64* %8, align 8
  %71 = load i64, i64* %8, align 8
  %72 = load %struct.icl_conn*, %struct.icl_conn** %4, align 8
  %73 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ugt i64 %71, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %68
  %77 = load i64, i64* %8, align 8
  %78 = load %struct.icl_conn*, %struct.icl_conn** %4, align 8
  %79 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @ICL_WARN(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.4, i64 0, i64 0), i64 %77, i64 %80)
  %82 = load i32, i32* @EINVAL, align 4
  store i32 %82, i32* %9, align 4
  br label %181

83:                                               ; preds = %68
  %84 = load %struct.icl_conn*, %struct.icl_conn** %4, align 8
  %85 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %84, i32 0, i32 0
  store i32 132, i32* %85, align 8
  %86 = load %struct.icl_pdu*, %struct.icl_pdu** %6, align 8
  %87 = call i64 @icl_pdu_ahs_length(%struct.icl_pdu* %86)
  %88 = load %struct.icl_conn*, %struct.icl_conn** %4, align 8
  %89 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %88, i32 0, i32 1
  store i64 %87, i64* %89, align 8
  br label %181

90:                                               ; preds = %56
  %91 = load %struct.icl_pdu*, %struct.icl_pdu** %6, align 8
  %92 = load i64*, i64** %5, align 8
  %93 = call i32 @icl_pdu_receive_ahs(%struct.icl_pdu* %91, i64* %92)
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %90
  %97 = call i32 (i8*, ...) @ICL_DEBUG(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  br label %181

98:                                               ; preds = %90
  %99 = load %struct.icl_conn*, %struct.icl_conn** %4, align 8
  %100 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %99, i32 0, i32 0
  store i32 128, i32* %100, align 8
  %101 = load %struct.icl_conn*, %struct.icl_conn** %4, align 8
  %102 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %98
  %106 = load %struct.icl_conn*, %struct.icl_conn** %4, align 8
  %107 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %106, i32 0, i32 1
  store i64 0, i64* %107, align 8
  br label %112

108:                                              ; preds = %98
  %109 = load i64, i64* @ISCSI_HEADER_DIGEST_SIZE, align 8
  %110 = load %struct.icl_conn*, %struct.icl_conn** %4, align 8
  %111 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %110, i32 0, i32 1
  store i64 %109, i64* %111, align 8
  br label %112

112:                                              ; preds = %108, %105
  br label %181

113:                                              ; preds = %56
  %114 = load %struct.icl_pdu*, %struct.icl_pdu** %6, align 8
  %115 = load i64*, i64** %5, align 8
  %116 = call i32 @icl_pdu_check_header_digest(%struct.icl_pdu* %114, i64* %115)
  store i32 %116, i32* %9, align 4
  %117 = load i32, i32* %9, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %113
  %120 = call i32 (i8*, ...) @ICL_DEBUG(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  br label %181

121:                                              ; preds = %113
  %122 = load %struct.icl_conn*, %struct.icl_conn** %4, align 8
  %123 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %122, i32 0, i32 0
  store i32 130, i32* %123, align 8
  %124 = load %struct.icl_pdu*, %struct.icl_pdu** %6, align 8
  %125 = call i64 @icl_pdu_data_segment_receive_len(%struct.icl_pdu* %124)
  %126 = load %struct.icl_conn*, %struct.icl_conn** %4, align 8
  %127 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %126, i32 0, i32 1
  store i64 %125, i64* %127, align 8
  br label %181

128:                                              ; preds = %56
  %129 = load %struct.icl_pdu*, %struct.icl_pdu** %6, align 8
  %130 = load i64*, i64** %5, align 8
  %131 = call i32 @icl_pdu_receive_data_segment(%struct.icl_pdu* %129, i64* %130, i32* %10)
  store i32 %131, i32* %9, align 4
  %132 = load i32, i32* %9, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %128
  %135 = call i32 (i8*, ...) @ICL_DEBUG(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0))
  br label %181

136:                                              ; preds = %128
  %137 = load i32, i32* %10, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %136
  br label %181

140:                                              ; preds = %136
  %141 = load %struct.icl_conn*, %struct.icl_conn** %4, align 8
  %142 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %141, i32 0, i32 0
  store i32 129, i32* %142, align 8
  %143 = load %struct.icl_pdu*, %struct.icl_pdu** %6, align 8
  %144 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %152, label %147

147:                                              ; preds = %140
  %148 = load %struct.icl_conn*, %struct.icl_conn** %4, align 8
  %149 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %147, %140
  %153 = load %struct.icl_conn*, %struct.icl_conn** %4, align 8
  %154 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %153, i32 0, i32 1
  store i64 0, i64* %154, align 8
  br label %159

155:                                              ; preds = %147
  %156 = load i64, i64* @ISCSI_DATA_DIGEST_SIZE, align 8
  %157 = load %struct.icl_conn*, %struct.icl_conn** %4, align 8
  %158 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %157, i32 0, i32 1
  store i64 %156, i64* %158, align 8
  br label %159

159:                                              ; preds = %155, %152
  br label %181

160:                                              ; preds = %56
  %161 = load %struct.icl_pdu*, %struct.icl_pdu** %6, align 8
  %162 = load i64*, i64** %5, align 8
  %163 = call i32 @icl_pdu_check_data_digest(%struct.icl_pdu* %161, i64* %162)
  store i32 %163, i32* %9, align 4
  %164 = load i32, i32* %9, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %160
  %167 = call i32 (i8*, ...) @ICL_DEBUG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0))
  br label %181

168:                                              ; preds = %160
  %169 = load %struct.icl_conn*, %struct.icl_conn** %4, align 8
  %170 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %169, i32 0, i32 0
  store i32 131, i32* %170, align 8
  %171 = load %struct.icl_conn*, %struct.icl_conn** %4, align 8
  %172 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %171, i32 0, i32 1
  store i64 4, i64* %172, align 8
  %173 = load %struct.icl_conn*, %struct.icl_conn** %4, align 8
  %174 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %173, i32 0, i32 5
  store %struct.icl_pdu* null, %struct.icl_pdu** %174, align 8
  %175 = load %struct.icl_pdu*, %struct.icl_pdu** %6, align 8
  store %struct.icl_pdu* %175, %struct.icl_pdu** %3, align 8
  br label %188

176:                                              ; preds = %56
  %177 = load %struct.icl_conn*, %struct.icl_conn** %4, align 8
  %178 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @panic(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i32 %179)
  br label %181

181:                                              ; preds = %176, %166, %159, %139, %134, %121, %119, %112, %96, %83, %76, %66
  %182 = load i32, i32* %9, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %181
  %185 = load %struct.icl_conn*, %struct.icl_conn** %4, align 8
  %186 = call i32 @icl_conn_fail(%struct.icl_conn* %185)
  br label %187

187:                                              ; preds = %184, %181
  store %struct.icl_pdu* null, %struct.icl_pdu** %3, align 8
  br label %188

188:                                              ; preds = %187, %168, %55, %30
  %189 = load %struct.icl_pdu*, %struct.icl_pdu** %3, align 8
  ret %struct.icl_pdu* %189
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.icl_pdu* @icl_soft_conn_new_pdu(%struct.icl_conn*, i32) #1

declare dso_local i32 @ICL_DEBUG(i8*, ...) #1

declare dso_local i32 @icl_conn_fail(%struct.icl_conn*) #1

declare dso_local i32 @icl_pdu_receive_bhs(%struct.icl_pdu*, i64*) #1

declare dso_local i64 @icl_pdu_data_segment_length(%struct.icl_pdu*) #1

declare dso_local i32 @ICL_WARN(i8*, i64, i64) #1

declare dso_local i64 @icl_pdu_ahs_length(%struct.icl_pdu*) #1

declare dso_local i32 @icl_pdu_receive_ahs(%struct.icl_pdu*, i64*) #1

declare dso_local i32 @icl_pdu_check_header_digest(%struct.icl_pdu*, i64*) #1

declare dso_local i64 @icl_pdu_data_segment_receive_len(%struct.icl_pdu*) #1

declare dso_local i32 @icl_pdu_receive_data_segment(%struct.icl_pdu*, i64*, i32*) #1

declare dso_local i32 @icl_pdu_check_data_digest(%struct.icl_pdu*, i64*) #1

declare dso_local i32 @panic(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
