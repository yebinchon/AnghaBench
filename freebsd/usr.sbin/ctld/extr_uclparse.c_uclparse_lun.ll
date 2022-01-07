; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_uclparse.c_uclparse_lun.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_uclparse.c_uclparse_lun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.lun = type { i32, i32 }

@conf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"backend\00", align 1
@UCL_STRING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"\22backend\22 property of lun \22%s\22 is not a string\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"blocksize\00", align 1
@UCL_INT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [51 x i8] c"\22blocksize\22 property of lun \22%s\22 is not an integer\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"device-id\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"\22device-id\22 property of lun \22%s\22 is not an integer\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"options\00", align 1
@UCL_OBJECT = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [48 x i8] c"\22options\22 property of lun \22%s\22 is not an object\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"\22path\22 property of lun \22%s\22 is not a string\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@.str.11 = private unnamed_addr constant [46 x i8] c"\22serial\22 property of lun \22%s\22 is not a string\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.13 = private unnamed_addr constant [46 x i8] c"\22size\22 property of lun \22%s\22 is not an integer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_9__*)* @uclparse_lun to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uclparse_lun(i8* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.lun*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %9, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %10, align 8
  %12 = load i32, i32* @conf, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = call %struct.lun* @lun_new(i32 %12, i8* %13)
  store %struct.lun* %14, %struct.lun** %6, align 8
  %15 = load %struct.lun*, %struct.lun** %6, align 8
  %16 = icmp eq %struct.lun* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %176

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %174, %18
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %21 = call %struct.TYPE_9__* @ucl_iterate_object(%struct.TYPE_9__* %20, i32** %7, i32 1)
  store %struct.TYPE_9__* %21, %struct.TYPE_9__** %9, align 8
  %22 = icmp ne %struct.TYPE_9__* %21, null
  br i1 %22, label %23, label %175

23:                                               ; preds = %19
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %25 = call i8* @ucl_object_key(%struct.TYPE_9__* %24)
  store i8* %25, i8** %11, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = call i32 @strcmp(i8* %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %45, label %29

29:                                               ; preds = %23
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @UCL_STRING, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %29
  %36 = load %struct.lun*, %struct.lun** %6, align 8
  %37 = getelementptr inbounds %struct.lun, %struct.lun* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @log_warnx(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  store i32 1, i32* %3, align 4
  br label %176

40:                                               ; preds = %29
  %41 = load %struct.lun*, %struct.lun** %6, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %43 = call i32 @ucl_object_tostring(%struct.TYPE_9__* %42)
  %44 = call i32 @lun_set_backend(%struct.lun* %41, i32 %43)
  br label %45

45:                                               ; preds = %40, %23
  %46 = load i8*, i8** %11, align 8
  %47 = call i32 @strcmp(i8* %46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %65, label %49

49:                                               ; preds = %45
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @UCL_INT, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  %56 = load %struct.lun*, %struct.lun** %6, align 8
  %57 = getelementptr inbounds %struct.lun, %struct.lun* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @log_warnx(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %58)
  store i32 1, i32* %3, align 4
  br label %176

60:                                               ; preds = %49
  %61 = load %struct.lun*, %struct.lun** %6, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %63 = call i32 @ucl_object_toint(%struct.TYPE_9__* %62)
  %64 = call i32 @lun_set_blocksize(%struct.lun* %61, i32 %63)
  br label %65

65:                                               ; preds = %60, %45
  %66 = load i8*, i8** %11, align 8
  %67 = call i32 @strcmp(i8* %66, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %85, label %69

69:                                               ; preds = %65
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @UCL_STRING, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %69
  %76 = load %struct.lun*, %struct.lun** %6, align 8
  %77 = getelementptr inbounds %struct.lun, %struct.lun* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @log_warnx(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0), i32 %78)
  store i32 1, i32* %3, align 4
  br label %176

80:                                               ; preds = %69
  %81 = load %struct.lun*, %struct.lun** %6, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %83 = call i32 @ucl_object_tostring(%struct.TYPE_9__* %82)
  %84 = call i32 @lun_set_device_id(%struct.lun* %81, i32 %83)
  br label %85

85:                                               ; preds = %80, %65
  %86 = load i8*, i8** %11, align 8
  %87 = call i32 @strcmp(i8* %86, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %114, label %89

89:                                               ; preds = %85
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @UCL_OBJECT, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %89
  %96 = load %struct.lun*, %struct.lun** %6, align 8
  %97 = getelementptr inbounds %struct.lun, %struct.lun* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @log_warnx(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i32 %98)
  store i32 1, i32* %3, align 4
  br label %176

100:                                              ; preds = %89
  br label %101

101:                                              ; preds = %105, %100
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %103 = call %struct.TYPE_9__* @ucl_iterate_object(%struct.TYPE_9__* %102, i32** %8, i32 1)
  store %struct.TYPE_9__* %103, %struct.TYPE_9__** %10, align 8
  %104 = icmp ne %struct.TYPE_9__* %103, null
  br i1 %104, label %105, label %113

105:                                              ; preds = %101
  %106 = load %struct.lun*, %struct.lun** %6, align 8
  %107 = getelementptr inbounds %struct.lun, %struct.lun* %106, i32 0, i32 1
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %109 = call i8* @ucl_object_key(%struct.TYPE_9__* %108)
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %111 = call i32 @ucl_object_tostring_forced(%struct.TYPE_9__* %110)
  %112 = call i32 @option_new(i32* %107, i8* %109, i32 %111)
  br label %101

113:                                              ; preds = %101
  br label %114

114:                                              ; preds = %113, %85
  %115 = load i8*, i8** %11, align 8
  %116 = call i32 @strcmp(i8* %115, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %134, label %118

118:                                              ; preds = %114
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @UCL_STRING, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %129

124:                                              ; preds = %118
  %125 = load %struct.lun*, %struct.lun** %6, align 8
  %126 = getelementptr inbounds %struct.lun, %struct.lun* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @log_warnx(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0), i32 %127)
  store i32 1, i32* %3, align 4
  br label %176

129:                                              ; preds = %118
  %130 = load %struct.lun*, %struct.lun** %6, align 8
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %132 = call i32 @ucl_object_tostring(%struct.TYPE_9__* %131)
  %133 = call i32 @lun_set_path(%struct.lun* %130, i32 %132)
  br label %134

134:                                              ; preds = %129, %114
  %135 = load i8*, i8** %11, align 8
  %136 = call i32 @strcmp(i8* %135, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %154, label %138

138:                                              ; preds = %134
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @UCL_STRING, align 8
  %143 = icmp ne i64 %141, %142
  br i1 %143, label %144, label %149

144:                                              ; preds = %138
  %145 = load %struct.lun*, %struct.lun** %6, align 8
  %146 = getelementptr inbounds %struct.lun, %struct.lun* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @log_warnx(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.11, i64 0, i64 0), i32 %147)
  store i32 1, i32* %3, align 4
  br label %176

149:                                              ; preds = %138
  %150 = load %struct.lun*, %struct.lun** %6, align 8
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %152 = call i32 @ucl_object_tostring(%struct.TYPE_9__* %151)
  %153 = call i32 @lun_set_serial(%struct.lun* %150, i32 %152)
  br label %154

154:                                              ; preds = %149, %134
  %155 = load i8*, i8** %11, align 8
  %156 = call i32 @strcmp(i8* %155, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %174, label %158

158:                                              ; preds = %154
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @UCL_INT, align 8
  %163 = icmp ne i64 %161, %162
  br i1 %163, label %164, label %169

164:                                              ; preds = %158
  %165 = load %struct.lun*, %struct.lun** %6, align 8
  %166 = getelementptr inbounds %struct.lun, %struct.lun* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @log_warnx(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.13, i64 0, i64 0), i32 %167)
  store i32 1, i32* %3, align 4
  br label %176

169:                                              ; preds = %158
  %170 = load %struct.lun*, %struct.lun** %6, align 8
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %172 = call i32 @ucl_object_toint(%struct.TYPE_9__* %171)
  %173 = call i32 @lun_set_size(%struct.lun* %170, i32 %172)
  br label %174

174:                                              ; preds = %169, %154
  br label %19

175:                                              ; preds = %19
  store i32 0, i32* %3, align 4
  br label %176

176:                                              ; preds = %175, %164, %144, %124, %95, %75, %55, %35, %17
  %177 = load i32, i32* %3, align 4
  ret i32 %177
}

declare dso_local %struct.lun* @lun_new(i32, i8*) #1

declare dso_local %struct.TYPE_9__* @ucl_iterate_object(%struct.TYPE_9__*, i32**, i32) #1

declare dso_local i8* @ucl_object_key(%struct.TYPE_9__*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @log_warnx(i8*, i32) #1

declare dso_local i32 @lun_set_backend(%struct.lun*, i32) #1

declare dso_local i32 @ucl_object_tostring(%struct.TYPE_9__*) #1

declare dso_local i32 @lun_set_blocksize(%struct.lun*, i32) #1

declare dso_local i32 @ucl_object_toint(%struct.TYPE_9__*) #1

declare dso_local i32 @lun_set_device_id(%struct.lun*, i32) #1

declare dso_local i32 @option_new(i32*, i8*, i32) #1

declare dso_local i32 @ucl_object_tostring_forced(%struct.TYPE_9__*) #1

declare dso_local i32 @lun_set_path(%struct.lun*, i32) #1

declare dso_local i32 @lun_set_serial(%struct.lun*, i32) #1

declare dso_local i32 @lun_set_size(%struct.lun*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
