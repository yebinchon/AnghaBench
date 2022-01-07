; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_receive-pack.c_read_head_info.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_receive-pack.c_read_head_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.command = type { i32 }
%struct.packet_reader = type { i32, i32, i64, i32 }
%struct.oid_array = type { i32 }
%struct.object_id = type { i32 }

@PACKET_READ_NORMAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"shallow \00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"protocol error: expected shallow sha, got '%s'\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"report-status\00", align 1
@report_status = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"side-band-64k\00", align 1
@LARGE_PACKET_MAX = common dso_local global i32 0, align 4
@use_sideband = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@quiet = common dso_local global i32 0, align 4
@advertise_atomic_push = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"atomic\00", align 1
@use_atomic = common dso_local global i32 0, align 4
@advertise_push_options = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [13 x i8] c"push-options\00", align 1
@use_push_options = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"push-cert\00", align 1
@PACKET_READ_CHOMP_NEWLINE = common dso_local global i32 0, align 4
@PACKET_READ_FLUSH = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [41 x i8] c"protocol error: got an unexpected packet\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"push-cert-end\0A\00", align 1
@push_cert = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.command* (%struct.packet_reader*, %struct.oid_array*)* @read_head_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.command* @read_head_info(%struct.packet_reader* %0, %struct.oid_array* %1) #0 {
  %3 = alloca %struct.packet_reader*, align 8
  %4 = alloca %struct.oid_array*, align 8
  %5 = alloca %struct.command*, align 8
  %6 = alloca %struct.command**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.object_id, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.packet_reader* %0, %struct.packet_reader** %3, align 8
  store %struct.oid_array* %1, %struct.oid_array** %4, align 8
  store %struct.command* null, %struct.command** %5, align 8
  store %struct.command** %5, %struct.command*** %6, align 8
  br label %12

12:                                               ; preds = %149, %148, %42, %2
  %13 = load %struct.packet_reader*, %struct.packet_reader** %3, align 8
  %14 = call i64 @packet_reader_read(%struct.packet_reader* %13)
  %15 = load i64, i64* @PACKET_READ_NORMAL, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %156

18:                                               ; preds = %12
  %19 = load %struct.packet_reader*, %struct.packet_reader** %3, align 8
  %20 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sgt i32 %21, 8
  br i1 %22, label %23, label %45

23:                                               ; preds = %18
  %24 = load %struct.packet_reader*, %struct.packet_reader** %3, align 8
  %25 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @starts_with(i32 %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %23
  %30 = load %struct.packet_reader*, %struct.packet_reader** %3, align 8
  %31 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 8
  %34 = call i64 @get_oid_hex(i32 %33, %struct.object_id* %8)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %29
  %37 = load %struct.packet_reader*, %struct.packet_reader** %3, align 8
  %38 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, 8
  %41 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %36, %29
  %43 = load %struct.oid_array*, %struct.oid_array** %4, align 8
  %44 = call i32 @oid_array_append(%struct.oid_array* %43, %struct.object_id* %8)
  br label %12

45:                                               ; preds = %23, %18
  %46 = load %struct.packet_reader*, %struct.packet_reader** %3, align 8
  %47 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @strlen(i32 %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.packet_reader*, %struct.packet_reader** %3, align 8
  %52 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %96

55:                                               ; preds = %45
  %56 = load %struct.packet_reader*, %struct.packet_reader** %3, align 8
  %57 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %58, %59
  %61 = add nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = inttoptr i64 %62 to i8*
  store i8* %63, i8** %9, align 8
  %64 = load i8*, i8** %9, align 8
  %65 = call i64 @parse_feature_request(i8* %64, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %55
  store i32 1, i32* @report_status, align 4
  br label %68

68:                                               ; preds = %67, %55
  %69 = load i8*, i8** %9, align 8
  %70 = call i64 @parse_feature_request(i8* %69, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i32, i32* @LARGE_PACKET_MAX, align 4
  store i32 %73, i32* @use_sideband, align 4
  br label %74

74:                                               ; preds = %72, %68
  %75 = load i8*, i8** %9, align 8
  %76 = call i64 @parse_feature_request(i8* %75, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  store i32 1, i32* @quiet, align 4
  br label %79

79:                                               ; preds = %78, %74
  %80 = load i64, i64* @advertise_atomic_push, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %79
  %83 = load i8*, i8** %9, align 8
  %84 = call i64 @parse_feature_request(i8* %83, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  store i32 1, i32* @use_atomic, align 4
  br label %87

87:                                               ; preds = %86, %82, %79
  %88 = load i64, i64* @advertise_push_options, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %87
  %91 = load i8*, i8** %9, align 8
  %92 = call i64 @parse_feature_request(i8* %91, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  store i32 1, i32* @use_push_options, align 4
  br label %95

95:                                               ; preds = %94, %90, %87
  br label %96

96:                                               ; preds = %95, %45
  %97 = load %struct.packet_reader*, %struct.packet_reader** %3, align 8
  %98 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @strcmp(i32 %99, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %149, label %102

102:                                              ; preds = %96
  store i32 0, i32* %10, align 4
  %103 = load %struct.packet_reader*, %struct.packet_reader** %3, align 8
  %104 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %11, align 4
  %106 = load i32, i32* @PACKET_READ_CHOMP_NEWLINE, align 4
  %107 = xor i32 %106, -1
  %108 = load %struct.packet_reader*, %struct.packet_reader** %3, align 8
  %109 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = and i32 %110, %107
  store i32 %111, i32* %109, align 4
  br label %112

112:                                              ; preds = %136, %102
  %113 = load %struct.packet_reader*, %struct.packet_reader** %3, align 8
  %114 = call i64 @packet_reader_read(%struct.packet_reader* %113)
  %115 = load %struct.packet_reader*, %struct.packet_reader** %3, align 8
  %116 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @PACKET_READ_FLUSH, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %112
  store i32 1, i32* %10, align 4
  br label %141

121:                                              ; preds = %112
  %122 = load %struct.packet_reader*, %struct.packet_reader** %3, align 8
  %123 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @PACKET_READ_NORMAL, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %121
  %128 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0))
  br label %129

129:                                              ; preds = %127, %121
  %130 = load %struct.packet_reader*, %struct.packet_reader** %3, align 8
  %131 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @strcmp(i32 %132, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %129
  br label %141

136:                                              ; preds = %129
  %137 = load %struct.packet_reader*, %struct.packet_reader** %3, align 8
  %138 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @strbuf_addstr(%struct.TYPE_4__* @push_cert, i32 %139)
  br label %112

141:                                              ; preds = %135, %120
  %142 = load i32, i32* %11, align 4
  %143 = load %struct.packet_reader*, %struct.packet_reader** %3, align 8
  %144 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %143, i32 0, i32 1
  store i32 %142, i32* %144, align 4
  %145 = load i32, i32* %10, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %141
  br label %156

148:                                              ; preds = %141
  br label %12

149:                                              ; preds = %96
  %150 = load %struct.command**, %struct.command*** %6, align 8
  %151 = load %struct.packet_reader*, %struct.packet_reader** %3, align 8
  %152 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* %7, align 4
  %155 = call %struct.command** @queue_command(%struct.command** %150, i32 %153, i32 %154)
  store %struct.command** %155, %struct.command*** %6, align 8
  br label %12

156:                                              ; preds = %147, %17
  %157 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @push_cert, i32 0, i32 0), align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %156
  %160 = load %struct.command**, %struct.command*** %6, align 8
  %161 = call i32 @queue_commands_from_cert(%struct.command** %160, %struct.TYPE_4__* @push_cert)
  br label %162

162:                                              ; preds = %159, %156
  %163 = load %struct.command*, %struct.command** %5, align 8
  ret %struct.command* %163
}

declare dso_local i64 @packet_reader_read(%struct.packet_reader*) #1

declare dso_local i64 @starts_with(i32, i8*) #1

declare dso_local i64 @get_oid_hex(i32, %struct.object_id*) #1

declare dso_local i32 @die(i8*, ...) #1

declare dso_local i32 @oid_array_append(%struct.oid_array*, %struct.object_id*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i64 @parse_feature_request(i8*, i8*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @strbuf_addstr(%struct.TYPE_4__*, i32) #1

declare dso_local %struct.command** @queue_command(%struct.command**, i32, i32) #1

declare dso_local i32 @queue_commands_from_cert(%struct.command**, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
