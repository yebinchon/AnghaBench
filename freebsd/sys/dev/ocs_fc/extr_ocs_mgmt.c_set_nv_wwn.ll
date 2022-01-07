; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_mgmt.c_set_nv_wwn.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_mgmt.c_set_nv_wwn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i8*, i32, i32, i32, i32*, i32* }

@.str = private unnamed_addr constant [12 x i8] c"set_nv_wwn1\00", align 1
@ocs_mgmt_get_nvparms_cb = common dso_local global i32 0, align 4
@OCS_HW_RTN_SUCCESS = common dso_local global i64 0, align 8
@OCS_SEM_FOREVER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"ocs_sem_p failed\0A\00", align 1
@ENXIO = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"getting nvparms status 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"NA\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"%2hhx:%2hhx:%2hhx:%2hhx:%2hhx:%2hhx:%2hhx:%2hhx\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"can't parse WWPN %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"can't parse WWNN %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"set_nv_wwn2\00", align 1
@ocs_mgmt_set_nvparms_cb = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [25 x i8] c"setting wwn status 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_8__*, i8*, i8*)* @set_nv_wwn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_nv_wwn(%struct.TYPE_8__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_9__, align 8
  %9 = alloca [8 x i32], align 16
  %10 = alloca [8 x i32], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  store i64 -1, i64* %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %18 = call i32 @ocs_sem_init(i32* %17, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* @ocs_mgmt_get_nvparms_cb, align 4
  %22 = call i64 @ocs_hw_get_nvparms(i32* %20, i32 %21, %struct.TYPE_9__* %8)
  store i64 %22, i64* %13, align 8
  %23 = load i64, i64* %13, align 8
  %24 = load i64, i64* @OCS_HW_RTN_SUCCESS, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %46

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %28 = load i32, i32* @OCS_SEM_FOREVER, align 4
  %29 = call i64 @ocs_sem_p(i32* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %33 = call i32 @ocs_log_err(%struct.TYPE_8__* %32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i64, i64* @ENXIO, align 8
  %35 = sub nsw i64 0, %34
  store i64 %35, i64* %4, align 8
  br label %182

36:                                               ; preds = %26
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @ocs_log_test(%struct.TYPE_8__* %41, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %43)
  store i64 -1, i64* %4, align 8
  br label %182

45:                                               ; preds = %36
  br label %46

46:                                               ; preds = %45, %3
  %47 = load i8*, i8** %7, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = call i8* @ocs_strsep(i8** %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i8* %50, i8** %11, align 8
  %51 = load i8*, i8** %7, align 8
  store i8* %51, i8** %12, align 8
  br label %52

52:                                               ; preds = %49, %46
  %53 = load i8*, i8** %11, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i8*, i8** %11, align 8
  %57 = call i32 @ocs_strcmp(i8* %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i32 %57, i32* %14, align 4
  br label %58

58:                                               ; preds = %55, %52
  %59 = load i8*, i8** %12, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i8*, i8** %12, align 8
  %63 = call i32 @ocs_strcmp(i8* %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i32 %63, i32* %15, align 4
  br label %64

64:                                               ; preds = %61, %58
  %65 = load i8*, i8** %11, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %87

67:                                               ; preds = %64
  %68 = load i32, i32* %14, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %87

70:                                               ; preds = %67
  %71 = load i8*, i8** %11, align 8
  %72 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  %73 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 1
  %74 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 2
  %75 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 3
  %76 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 4
  %77 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 5
  %78 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 6
  %79 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 7
  %80 = call i32 @ocs_sscanf(i8* %71, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i32* %72, i32* %73, i32* %74, i32* %75, i32* %76, i32* %77, i32* %78, i32* %79)
  %81 = icmp ne i32 %80, 8
  br i1 %81, label %82, label %86

82:                                               ; preds = %70
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %84 = load i8*, i8** %11, align 8
  %85 = call i32 @ocs_log_test(%struct.TYPE_8__* %83, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i8* %84)
  store i64 -1, i64* %4, align 8
  br label %182

86:                                               ; preds = %70
  br label %87

87:                                               ; preds = %86, %67, %64
  %88 = load i8*, i8** %12, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %110

90:                                               ; preds = %87
  %91 = load i32, i32* %15, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %110

93:                                               ; preds = %90
  %94 = load i8*, i8** %12, align 8
  %95 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %96 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 1
  %97 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 2
  %98 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 3
  %99 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 4
  %100 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 5
  %101 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 6
  %102 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 7
  %103 = call i32 @ocs_sscanf(i8* %94, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i32* %95, i32* %96, i32* %97, i32* %98, i32* %99, i32* %100, i32* %101, i32* %102)
  %104 = icmp ne i32 %103, 8
  br i1 %104, label %105, label %109

105:                                              ; preds = %93
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %107 = load i8*, i8** %12, align 8
  %108 = call i32 @ocs_log_test(%struct.TYPE_8__* %106, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i8* %107)
  store i64 -1, i64* %4, align 8
  br label %182

109:                                              ; preds = %93
  br label %110

110:                                              ; preds = %109, %90, %87
  store i32 0, i32* %16, align 4
  br label %111

111:                                              ; preds = %141, %110
  %112 = load i32, i32* %16, align 4
  %113 = icmp slt i32 %112, 8
  br i1 %113, label %114, label %144

114:                                              ; preds = %111
  %115 = load i32, i32* %14, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %127

117:                                              ; preds = %114
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 5
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %16, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %16, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 %125
  store i32 %123, i32* %126, align 4
  br label %127

127:                                              ; preds = %117, %114
  %128 = load i32, i32* %15, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %140

130:                                              ; preds = %127
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 4
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %16, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %16, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 %138
  store i32 %136, i32* %139, align 4
  br label %140

140:                                              ; preds = %130, %127
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %16, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %16, align 4
  br label %111

144:                                              ; preds = %111
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %146 = call i32 @ocs_sem_init(i32* %145, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 0
  %149 = load i32, i32* @ocs_mgmt_set_nvparms_cb, align 4
  %150 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  %151 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 3
  %153 = load i32, i32* %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = call i64 @ocs_hw_set_nvparms(i32* %148, i32 %149, i32* %150, i32* %151, i32 %153, i32 %155, %struct.TYPE_9__* %8)
  store i64 %156, i64* %13, align 8
  %157 = load i64, i64* %13, align 8
  %158 = load i64, i64* @OCS_HW_RTN_SUCCESS, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %180

160:                                              ; preds = %144
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %162 = load i32, i32* @OCS_SEM_FOREVER, align 4
  %163 = call i64 @ocs_sem_p(i32* %161, i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %160
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %167 = call i32 @ocs_log_err(%struct.TYPE_8__* %166, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %168 = load i64, i64* @ENXIO, align 8
  %169 = sub nsw i64 0, %168
  store i64 %169, i64* %4, align 8
  br label %182

170:                                              ; preds = %160
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %172 = load i8*, i8** %171, align 8
  %173 = icmp ne i8* %172, null
  br i1 %173, label %174, label %179

174:                                              ; preds = %170
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %177 = load i8*, i8** %176, align 8
  %178 = call i32 @ocs_log_test(%struct.TYPE_8__* %175, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i8* %177)
  store i64 -1, i64* %4, align 8
  br label %182

179:                                              ; preds = %170
  br label %180

180:                                              ; preds = %179, %144
  %181 = load i64, i64* %13, align 8
  store i64 %181, i64* %4, align 8
  br label %182

182:                                              ; preds = %180, %174, %165, %105, %82, %40, %31
  %183 = load i64, i64* %4, align 8
  ret i64 %183
}

declare dso_local i32 @ocs_sem_init(i32*, i32, i8*) #1

declare dso_local i64 @ocs_hw_get_nvparms(i32*, i32, %struct.TYPE_9__*) #1

declare dso_local i64 @ocs_sem_p(i32*, i32) #1

declare dso_local i32 @ocs_log_err(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @ocs_log_test(%struct.TYPE_8__*, i8*, i8*) #1

declare dso_local i8* @ocs_strsep(i8**, i8*) #1

declare dso_local i32 @ocs_strcmp(i8*, i8*) #1

declare dso_local i32 @ocs_sscanf(i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @ocs_hw_set_nvparms(i32*, i32, i32*, i32*, i32, i32, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
