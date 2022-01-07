; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_io.c_ocs_mgmt_io_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_io.c_ocs_mgmt_io_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"%s/io[%d]\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"display_name\00", align 1
@MGMT_MODE_RD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"init_task_tag\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"0x%x\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"tgt_task_tag\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"hw_tag\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"tag\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"transferred\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%zu\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"auto_resp\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"exp_xfer_len\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"xfer_req\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocs_mgmt_io_get(i32* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [80 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_2__*, align 8
  %12 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 -1, i32* %10, align 4
  %13 = load i8*, i8** %8, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %14, %struct.TYPE_2__** %11, align 8
  %15 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %16 = load i8*, i8** %6, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @snprintf(i8* %15, i32 80, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %16, i32 %19)
  %21 = load i8*, i8** %7, align 8
  %22 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %23 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %24 = call i32 @strlen(i8* %23)
  %25 = call i64 @ocs_strncmp(i8* %21, i8* %22, i32 %24)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %141

27:                                               ; preds = %4
  %28 = load i8*, i8** %7, align 8
  %29 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %30 = call i32 @strlen(i8* %29)
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %28, i64 %31
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  store i8* %33, i8** %12, align 8
  %34 = load i8*, i8** %12, align 8
  %35 = call i64 @ocs_strcmp(i8* %34, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %27
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* @MGMT_MODE_RD, align 4
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 9
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ocs_mgmt_emit_string(i32* %38, i32 %39, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  store i32 0, i32* %10, align 4
  br label %140

44:                                               ; preds = %27
  %45 = load i8*, i8** %12, align 8
  %46 = call i64 @ocs_strcmp(i8* %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %44
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* @MGMT_MODE_RD, align 4
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 8
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ocs_mgmt_emit_int(i32* %49, i32 %50, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %53)
  store i32 0, i32* %10, align 4
  br label %139

55:                                               ; preds = %44
  %56 = load i8*, i8** %12, align 8
  %57 = call i64 @ocs_strcmp(i8* %56, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %55
  %60 = load i32*, i32** %5, align 8
  %61 = load i32, i32* @MGMT_MODE_RD, align 4
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 7
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @ocs_mgmt_emit_int(i32* %60, i32 %61, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %64)
  store i32 0, i32* %10, align 4
  br label %138

66:                                               ; preds = %55
  %67 = load i8*, i8** %12, align 8
  %68 = call i64 @ocs_strcmp(i8* %67, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %66
  %71 = load i32*, i32** %5, align 8
  %72 = load i32, i32* @MGMT_MODE_RD, align 4
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 6
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @ocs_mgmt_emit_int(i32* %71, i32 %72, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %75)
  store i32 0, i32* %10, align 4
  br label %137

77:                                               ; preds = %66
  %78 = load i8*, i8** %12, align 8
  %79 = call i64 @ocs_strcmp(i8* %78, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %77
  %82 = load i32*, i32** %5, align 8
  %83 = load i32, i32* @MGMT_MODE_RD, align 4
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @ocs_mgmt_emit_int(i32* %82, i32 %83, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %86)
  store i32 0, i32* %10, align 4
  br label %136

88:                                               ; preds = %77
  %89 = load i8*, i8** %12, align 8
  %90 = call i64 @ocs_strcmp(i8* %89, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %88
  %93 = load i32*, i32** %5, align 8
  %94 = load i32, i32* @MGMT_MODE_RD, align 4
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @ocs_mgmt_emit_int(i32* %93, i32 %94, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 %97)
  store i32 0, i32* %10, align 4
  br label %135

99:                                               ; preds = %88
  %100 = load i8*, i8** %12, align 8
  %101 = call i64 @ocs_strcmp(i8* %100, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %99
  %104 = load i32*, i32** %5, align 8
  %105 = load i32, i32* @MGMT_MODE_RD, align 4
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @ocs_mgmt_emit_boolean(i32* %104, i32 %105, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 %108)
  store i32 0, i32* %10, align 4
  br label %134

110:                                              ; preds = %99
  %111 = load i8*, i8** %12, align 8
  %112 = call i64 @ocs_strcmp(i8* %111, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %110
  %115 = load i32*, i32** %5, align 8
  %116 = load i32, i32* @MGMT_MODE_RD, align 4
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @ocs_mgmt_emit_int(i32* %115, i32 %116, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i32 %119)
  store i32 0, i32* %10, align 4
  br label %133

121:                                              ; preds = %110
  %122 = load i8*, i8** %12, align 8
  %123 = call i64 @ocs_strcmp(i8* %122, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %121
  %126 = load i32*, i32** %5, align 8
  %127 = load i32, i32* @MGMT_MODE_RD, align 4
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @ocs_mgmt_emit_int(i32* %126, i32 %127, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i32 %130)
  store i32 0, i32* %10, align 4
  br label %132

132:                                              ; preds = %125, %121
  br label %133

133:                                              ; preds = %132, %114
  br label %134

134:                                              ; preds = %133, %103
  br label %135

135:                                              ; preds = %134, %92
  br label %136

136:                                              ; preds = %135, %81
  br label %137

137:                                              ; preds = %136, %70
  br label %138

138:                                              ; preds = %137, %59
  br label %139

139:                                              ; preds = %138, %48
  br label %140

140:                                              ; preds = %139, %37
  br label %141

141:                                              ; preds = %140, %4
  %142 = load i32, i32* %10, align 4
  ret i32 %142
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #1

declare dso_local i64 @ocs_strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @ocs_strcmp(i8*, i8*) #1

declare dso_local i32 @ocs_mgmt_emit_string(i32*, i32, i8*, i32) #1

declare dso_local i32 @ocs_mgmt_emit_int(i32*, i32, i8*, i8*, i32) #1

declare dso_local i32 @ocs_mgmt_emit_boolean(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
