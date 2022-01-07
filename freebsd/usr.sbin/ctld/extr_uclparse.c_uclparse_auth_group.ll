; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_uclparse.c_uclparse_auth_group.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_uclparse.c_uclparse_auth_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i64 }
%struct.auth_group = type { i32 }
%struct.auth_name = type { i32 }
%struct.auth_portal = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"default\00", align 1
@conf = common dso_local global %struct.TYPE_13__* null, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"auth-type\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"chap\00", align 1
@UCL_ARRAY = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [51 x i8] c"\22chap\22 property of auth-group \22%s\22 is not an array\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"chap-mutual\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"\22chap-mutual\22 property of auth-group \22%s\22 is not an array\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"initiator-name\00", align 1
@.str.7 = private unnamed_addr constant [61 x i8] c"\22initiator-name\22 property of auth-group \22%s\22 is not an array\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"initiator-portal\00", align 1
@.str.9 = private unnamed_addr constant [63 x i8] c"\22initiator-portal\22 property of auth-group \22%s\22 is not an array\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_12__*)* @uclparse_auth_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uclparse_auth_group(i8* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.auth_group*, align 8
  %7 = alloca %struct.auth_name*, align 8
  %8 = alloca %struct.auth_portal*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %11, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %12, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %2
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** @conf, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** @conf, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = call %struct.auth_group* @auth_group_find(%struct.TYPE_13__* %27, i8* %28)
  store %struct.auth_group* %29, %struct.auth_group** %6, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** @conf, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  store i32 1, i32* %31, align 4
  br label %36

32:                                               ; preds = %21, %2
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** @conf, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = call %struct.auth_group* @auth_group_new(%struct.TYPE_13__* %33, i8* %34)
  store %struct.auth_group* %35, %struct.auth_group** %6, align 8
  br label %36

36:                                               ; preds = %32, %26
  %37 = load %struct.auth_group*, %struct.auth_group** %6, align 8
  %38 = icmp eq %struct.auth_group* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 1, i32* %3, align 4
  br label %173

40:                                               ; preds = %36
  br label %41

41:                                               ; preds = %171, %40
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %43 = call %struct.TYPE_12__* @ucl_iterate_object(%struct.TYPE_12__* %42, i32** %9, i32 1)
  store %struct.TYPE_12__* %43, %struct.TYPE_12__** %11, align 8
  %44 = icmp ne %struct.TYPE_12__* %43, null
  br i1 %44, label %45, label %172

45:                                               ; preds = %41
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %47 = call i8* @ucl_object_key(%struct.TYPE_12__* %46)
  store i8* %47, i8** %13, align 8
  %48 = load i8*, i8** %13, align 8
  %49 = call i32 @strcmp(i8* %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %61, label %51

51:                                               ; preds = %45
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %53 = call i8* @ucl_object_tostring(%struct.TYPE_12__* %52)
  store i8* %53, i8** %15, align 8
  %54 = load %struct.auth_group*, %struct.auth_group** %6, align 8
  %55 = load i8*, i8** %15, align 8
  %56 = call i32 @auth_group_set_type(%struct.auth_group* %54, i8* %55)
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %14, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  store i32 1, i32* %3, align 4
  br label %173

60:                                               ; preds = %51
  br label %61

61:                                               ; preds = %60, %45
  %62 = load i8*, i8** %13, align 8
  %63 = call i32 @strcmp(i8* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %87, label %65

65:                                               ; preds = %61
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @UCL_ARRAY, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load i8*, i8** %4, align 8
  %73 = call i32 @log_warnx(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i8* %72)
  store i32 1, i32* %3, align 4
  br label %173

74:                                               ; preds = %65
  store i32* null, i32** %10, align 8
  br label %75

75:                                               ; preds = %85, %74
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %77 = call %struct.TYPE_12__* @ucl_iterate_object(%struct.TYPE_12__* %76, i32** %10, i32 1)
  store %struct.TYPE_12__* %77, %struct.TYPE_12__** %12, align 8
  %78 = icmp ne %struct.TYPE_12__* %77, null
  br i1 %78, label %79, label %86

79:                                               ; preds = %75
  %80 = load %struct.auth_group*, %struct.auth_group** %6, align 8
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %82 = call i64 @uclparse_chap(%struct.auth_group* %80, %struct.TYPE_12__* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  store i32 1, i32* %3, align 4
  br label %173

85:                                               ; preds = %79
  br label %75

86:                                               ; preds = %75
  br label %87

87:                                               ; preds = %86, %61
  %88 = load i8*, i8** %13, align 8
  %89 = call i32 @strcmp(i8* %88, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %113, label %91

91:                                               ; preds = %87
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @UCL_ARRAY, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %91
  %98 = load i8*, i8** %4, align 8
  %99 = call i32 @log_warnx(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0), i8* %98)
  store i32 1, i32* %3, align 4
  br label %173

100:                                              ; preds = %91
  store i32* null, i32** %10, align 8
  br label %101

101:                                              ; preds = %111, %100
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %103 = call %struct.TYPE_12__* @ucl_iterate_object(%struct.TYPE_12__* %102, i32** %10, i32 1)
  store %struct.TYPE_12__* %103, %struct.TYPE_12__** %12, align 8
  %104 = icmp ne %struct.TYPE_12__* %103, null
  br i1 %104, label %105, label %112

105:                                              ; preds = %101
  %106 = load %struct.auth_group*, %struct.auth_group** %6, align 8
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %108 = call i64 @uclparse_chap_mutual(%struct.auth_group* %106, %struct.TYPE_12__* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  store i32 1, i32* %3, align 4
  br label %173

111:                                              ; preds = %105
  br label %101

112:                                              ; preds = %101
  br label %113

113:                                              ; preds = %112, %87
  %114 = load i8*, i8** %13, align 8
  %115 = call i32 @strcmp(i8* %114, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %142, label %117

117:                                              ; preds = %113
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @UCL_ARRAY, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %117
  %124 = load i8*, i8** %4, align 8
  %125 = call i32 @log_warnx(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i64 0, i64 0), i8* %124)
  store i32 1, i32* %3, align 4
  br label %173

126:                                              ; preds = %117
  store i32* null, i32** %10, align 8
  br label %127

127:                                              ; preds = %140, %126
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %129 = call %struct.TYPE_12__* @ucl_iterate_object(%struct.TYPE_12__* %128, i32** %10, i32 1)
  store %struct.TYPE_12__* %129, %struct.TYPE_12__** %12, align 8
  %130 = icmp ne %struct.TYPE_12__* %129, null
  br i1 %130, label %131, label %141

131:                                              ; preds = %127
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %133 = call i8* @ucl_object_tostring(%struct.TYPE_12__* %132)
  store i8* %133, i8** %16, align 8
  %134 = load %struct.auth_group*, %struct.auth_group** %6, align 8
  %135 = load i8*, i8** %16, align 8
  %136 = call %struct.auth_name* @auth_name_new(%struct.auth_group* %134, i8* %135)
  store %struct.auth_name* %136, %struct.auth_name** %7, align 8
  %137 = load %struct.auth_name*, %struct.auth_name** %7, align 8
  %138 = icmp eq %struct.auth_name* %137, null
  br i1 %138, label %139, label %140

139:                                              ; preds = %131
  store i32 1, i32* %3, align 4
  br label %173

140:                                              ; preds = %131
  br label %127

141:                                              ; preds = %127
  br label %142

142:                                              ; preds = %141, %113
  %143 = load i8*, i8** %13, align 8
  %144 = call i32 @strcmp(i8* %143, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %171, label %146

146:                                              ; preds = %142
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @UCL_ARRAY, align 8
  %151 = icmp ne i64 %149, %150
  br i1 %151, label %152, label %155

152:                                              ; preds = %146
  %153 = load i8*, i8** %4, align 8
  %154 = call i32 @log_warnx(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.9, i64 0, i64 0), i8* %153)
  store i32 1, i32* %3, align 4
  br label %173

155:                                              ; preds = %146
  store i32* null, i32** %10, align 8
  br label %156

156:                                              ; preds = %169, %155
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %158 = call %struct.TYPE_12__* @ucl_iterate_object(%struct.TYPE_12__* %157, i32** %10, i32 1)
  store %struct.TYPE_12__* %158, %struct.TYPE_12__** %12, align 8
  %159 = icmp ne %struct.TYPE_12__* %158, null
  br i1 %159, label %160, label %170

160:                                              ; preds = %156
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %162 = call i8* @ucl_object_tostring(%struct.TYPE_12__* %161)
  store i8* %162, i8** %17, align 8
  %163 = load %struct.auth_group*, %struct.auth_group** %6, align 8
  %164 = load i8*, i8** %17, align 8
  %165 = call %struct.auth_portal* @auth_portal_new(%struct.auth_group* %163, i8* %164)
  store %struct.auth_portal* %165, %struct.auth_portal** %8, align 8
  %166 = load %struct.auth_portal*, %struct.auth_portal** %8, align 8
  %167 = icmp eq %struct.auth_portal* %166, null
  br i1 %167, label %168, label %169

168:                                              ; preds = %160
  store i32 1, i32* %3, align 4
  br label %173

169:                                              ; preds = %160
  br label %156

170:                                              ; preds = %156
  br label %171

171:                                              ; preds = %170, %142
  br label %41

172:                                              ; preds = %41
  store i32 0, i32* %3, align 4
  br label %173

173:                                              ; preds = %172, %168, %152, %139, %123, %110, %97, %84, %71, %59, %39
  %174 = load i32, i32* %3, align 4
  ret i32 %174
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local %struct.auth_group* @auth_group_find(%struct.TYPE_13__*, i8*) #1

declare dso_local %struct.auth_group* @auth_group_new(%struct.TYPE_13__*, i8*) #1

declare dso_local %struct.TYPE_12__* @ucl_iterate_object(%struct.TYPE_12__*, i32**, i32) #1

declare dso_local i8* @ucl_object_key(%struct.TYPE_12__*) #1

declare dso_local i8* @ucl_object_tostring(%struct.TYPE_12__*) #1

declare dso_local i32 @auth_group_set_type(%struct.auth_group*, i8*) #1

declare dso_local i32 @log_warnx(i8*, i8*) #1

declare dso_local i64 @uclparse_chap(%struct.auth_group*, %struct.TYPE_12__*) #1

declare dso_local i64 @uclparse_chap_mutual(%struct.auth_group*, %struct.TYPE_12__*) #1

declare dso_local %struct.auth_name* @auth_name_new(%struct.auth_group*, i8*) #1

declare dso_local %struct.auth_portal* @auth_portal_new(%struct.auth_group*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
