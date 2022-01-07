; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pkg/extr_pkg.c_fetch_to_fd.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pkg/extr_pkg.c_fetch_to_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.url = type { i8*, i8*, i32 }
%struct.dns_srvinfo = type { %struct.dns_srvinfo*, i32, i32 }
%struct.url_stat = type { i32 }

@MAXHOSTNAMELEN = common dso_local global i32 0, align 4
@fetch_to_fd.mirror_type = internal global i8* null, align 8
@MIRROR_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"No MIRROR_TYPE defined\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"mkstemp()\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"fetchParseURL('%s')\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"srv\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"_%s._tcp.%s\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"write()\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"An error occurred while fetching pkg(8)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @fetch_to_fd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fetch_to_fd(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.url*, align 8
  %7 = alloca %struct.dns_srvinfo*, align 8
  %8 = alloca %struct.dns_srvinfo*, align 8
  %9 = alloca %struct.url_stat, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca [10240 x i8], align 16
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %19 = load i32, i32* @MAXHOSTNAMELEN, align 4
  %20 = add nsw i32 %19, 13
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %16, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %17, align 8
  store i32 3, i32* %13, align 4
  store %struct.dns_srvinfo* null, %struct.dns_srvinfo** %7, align 8
  store %struct.dns_srvinfo* null, %struct.dns_srvinfo** %8, align 8
  store i32* null, i32** %10, align 8
  %24 = load i8*, i8** @fetch_to_fd.mirror_type, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %2
  %27 = load i32, i32* @MIRROR_TYPE, align 4
  %28 = call i64 @config_string(i32 %27, i8** @fetch_to_fd.mirror_type)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = call i32 @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %163

32:                                               ; preds = %26, %2
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @mkstemp(i8* %33)
  store i32 %34, i32* %11, align 4
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %163

38:                                               ; preds = %32
  %39 = load i32, i32* %13, align 4
  store i32 %39, i32* %12, align 4
  %40 = load i8*, i8** %4, align 8
  %41 = call %struct.url* @fetchParseURL(i8* %40)
  store %struct.url* %41, %struct.url** %6, align 8
  %42 = icmp eq %struct.url* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i8*, i8** %4, align 8
  %45 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %44)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %163

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %118, %46
  %48 = load i32*, i32** %10, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %119

50:                                               ; preds = %47
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %76

54:                                               ; preds = %50
  %55 = load %struct.url*, %struct.url** %6, align 8
  %56 = getelementptr inbounds %struct.url, %struct.url* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i64 @strcmp(i8* %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %75

60:                                               ; preds = %54
  %61 = load i8*, i8** @fetch_to_fd.mirror_type, align 8
  %62 = call i64 @strcasecmp(i8* %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %60
  %65 = trunc i64 %21 to i32
  %66 = load %struct.url*, %struct.url** %6, align 8
  %67 = getelementptr inbounds %struct.url, %struct.url* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.url*, %struct.url** %6, align 8
  %70 = getelementptr inbounds %struct.url, %struct.url* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @snprintf(i8* %23, i32 %65, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* %68, i8* %71)
  %73 = call %struct.dns_srvinfo* @dns_getsrvinfo(i8* %23)
  store %struct.dns_srvinfo* %73, %struct.dns_srvinfo** %7, align 8
  %74 = load %struct.dns_srvinfo*, %struct.dns_srvinfo** %7, align 8
  store %struct.dns_srvinfo* %74, %struct.dns_srvinfo** %8, align 8
  br label %75

75:                                               ; preds = %64, %60, %54
  br label %76

76:                                               ; preds = %75, %50
  %77 = load %struct.dns_srvinfo*, %struct.dns_srvinfo** %7, align 8
  %78 = icmp ne %struct.dns_srvinfo* %77, null
  br i1 %78, label %79, label %92

79:                                               ; preds = %76
  %80 = load %struct.url*, %struct.url** %6, align 8
  %81 = getelementptr inbounds %struct.url, %struct.url* %80, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  %83 = load %struct.dns_srvinfo*, %struct.dns_srvinfo** %8, align 8
  %84 = getelementptr inbounds %struct.dns_srvinfo, %struct.dns_srvinfo* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @strlcpy(i8* %82, i32 %85, i32 8)
  %87 = load %struct.dns_srvinfo*, %struct.dns_srvinfo** %8, align 8
  %88 = getelementptr inbounds %struct.dns_srvinfo, %struct.dns_srvinfo* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.url*, %struct.url** %6, align 8
  %91 = getelementptr inbounds %struct.url, %struct.url* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 8
  br label %92

92:                                               ; preds = %79, %76
  %93 = load %struct.url*, %struct.url** %6, align 8
  %94 = call i32* @fetchXGet(%struct.url* %93, %struct.url_stat* %9, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0))
  store i32* %94, i32** %10, align 8
  %95 = load i32*, i32** %10, align 8
  %96 = icmp eq i32* %95, null
  br i1 %96, label %97, label %118

97:                                               ; preds = %92
  %98 = load i32, i32* %12, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %12, align 4
  %100 = load i32, i32* %12, align 4
  %101 = icmp sle i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  br label %146

103:                                              ; preds = %97
  %104 = load %struct.dns_srvinfo*, %struct.dns_srvinfo** %7, align 8
  %105 = icmp eq %struct.dns_srvinfo* %104, null
  br i1 %105, label %106, label %108

106:                                              ; preds = %103
  %107 = call i32 @sleep(i32 1)
  br label %117

108:                                              ; preds = %103
  %109 = load %struct.dns_srvinfo*, %struct.dns_srvinfo** %8, align 8
  %110 = getelementptr inbounds %struct.dns_srvinfo, %struct.dns_srvinfo* %109, i32 0, i32 0
  %111 = load %struct.dns_srvinfo*, %struct.dns_srvinfo** %110, align 8
  store %struct.dns_srvinfo* %111, %struct.dns_srvinfo** %8, align 8
  %112 = load %struct.dns_srvinfo*, %struct.dns_srvinfo** %8, align 8
  %113 = icmp eq %struct.dns_srvinfo* %112, null
  br i1 %113, label %114, label %116

114:                                              ; preds = %108
  %115 = load %struct.dns_srvinfo*, %struct.dns_srvinfo** %7, align 8
  store %struct.dns_srvinfo* %115, %struct.dns_srvinfo** %8, align 8
  br label %116

116:                                              ; preds = %114, %108
  br label %117

117:                                              ; preds = %116, %106
  br label %118

118:                                              ; preds = %117, %92
  br label %47

119:                                              ; preds = %47
  br label %120

120:                                              ; preds = %134, %119
  %121 = getelementptr inbounds [10240 x i8], [10240 x i8]* %15, i64 0, i64 0
  %122 = load i32*, i32** %10, align 8
  %123 = call i64 @fread(i8* %121, i32 1, i32 10240, i32* %122)
  store i64 %123, i64* %14, align 8
  %124 = icmp sgt i64 %123, 0
  br i1 %124, label %125, label %135

125:                                              ; preds = %120
  %126 = load i32, i32* %11, align 4
  %127 = getelementptr inbounds [10240 x i8], [10240 x i8]* %15, i64 0, i64 0
  %128 = load i64, i64* %14, align 8
  %129 = call i64 @write(i32 %126, i8* %127, i64 %128)
  %130 = load i64, i64* %14, align 8
  %131 = icmp ne i64 %129, %130
  br i1 %131, label %132, label %134

132:                                              ; preds = %125
  %133 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  br label %146

134:                                              ; preds = %125
  br label %120

135:                                              ; preds = %120
  %136 = load i64, i64* %14, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %135
  %139 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0))
  br label %146

140:                                              ; preds = %135
  %141 = load i32*, i32** %10, align 8
  %142 = call i64 @ferror(i32* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %140
  br label %146

145:                                              ; preds = %140
  br label %155

146:                                              ; preds = %144, %138, %132, %102
  %147 = load i32, i32* %11, align 4
  %148 = icmp ne i32 %147, -1
  br i1 %148, label %149, label %154

149:                                              ; preds = %146
  %150 = load i32, i32* %11, align 4
  %151 = call i32 @close(i32 %150)
  store i32 -1, i32* %11, align 4
  %152 = load i8*, i8** %5, align 8
  %153 = call i32 @unlink(i8* %152)
  br label %154

154:                                              ; preds = %149, %146
  br label %155

155:                                              ; preds = %154, %145
  %156 = load i32*, i32** %10, align 8
  %157 = icmp ne i32* %156, null
  br i1 %157, label %158, label %161

158:                                              ; preds = %155
  %159 = load i32*, i32** %10, align 8
  %160 = call i32 @fclose(i32* %159)
  br label %161

161:                                              ; preds = %158, %155
  %162 = load i32, i32* %11, align 4
  store i32 %162, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %163

163:                                              ; preds = %161, %43, %36, %30
  %164 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %164)
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @config_string(i32, i8**) #2

declare dso_local i32 @warnx(i8*) #2

declare dso_local i32 @mkstemp(i8*) #2

declare dso_local i32 @warn(i8*, ...) #2

declare dso_local %struct.url* @fetchParseURL(i8*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i64 @strcasecmp(i8*, i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local %struct.dns_srvinfo* @dns_getsrvinfo(i8*) #2

declare dso_local i32 @strlcpy(i8*, i32, i32) #2

declare dso_local i32* @fetchXGet(%struct.url*, %struct.url_stat*, i8*) #2

declare dso_local i32 @sleep(i32) #2

declare dso_local i64 @fread(i8*, i32, i32, i32*) #2

declare dso_local i64 @write(i32, i8*, i64) #2

declare dso_local i64 @ferror(i32*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @unlink(i8*) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
