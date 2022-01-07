; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/syslogd/extr_syslogd.c_parsemsg_rfc3164.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/syslogd/extr_syslogd.c_parsemsg_rfc3164.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32 }
%struct.logtime = type { %struct.tm, i64 }

@MAXLINE = common dso_local global i32 0, align 4
@RFC3164_DATEFMT = common dso_local global i32 0, align 4
@RFC3164_DATELEN = common dso_local global i32 0, align 4
@RemoteAddDate = common dso_local global i32 0, align 4
@MAXHOSTNAMELEN = common dso_local global i32 0, align 4
@RemoteHostname = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Invalid HOSTNAME from %s: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*)* @parsemsg_rfc3164 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parsemsg_rfc3164(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.tm, align 4
  %8 = alloca %struct.logtime*, align 8
  %9 = alloca %struct.logtime, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.tm, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %20 = load i32, i32* @MAXLINE, align 4
  %21 = add nsw i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %14, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %15, align 8
  store %struct.logtime* null, %struct.logtime** %8, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load i32, i32* @RFC3164_DATEFMT, align 4
  %27 = call i8* @strptime(i8* %25, i32 %26, %struct.tm* %7)
  %28 = load i8*, i8** %6, align 8
  %29 = load i32, i32* @RFC3164_DATELEN, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = icmp eq i8* %27, %31
  br i1 %32, label %33, label %135

33:                                               ; preds = %3
  %34 = load i8*, i8** %6, align 8
  %35 = load i32, i32* @RFC3164_DATELEN, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 32
  br i1 %40, label %41, label %135

41:                                               ; preds = %33
  %42 = load i32, i32* @RFC3164_DATELEN, align 4
  %43 = add nsw i32 %42, 1
  %44 = load i8*, i8** %6, align 8
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  store i8* %46, i8** %6, align 8
  %47 = load i32, i32* @RemoteAddDate, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %83, label %49

49:                                               ; preds = %41
  %50 = call i64 @time(i32* null)
  store i64 %50, i64* %17, align 8
  %51 = call i32 @localtime_r(i64* %17, %struct.tm* %16)
  %52 = getelementptr inbounds %struct.tm, %struct.tm* %16, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %18, align 4
  br label %55

55:                                               ; preds = %79, %49
  %56 = load i32, i32* %18, align 4
  %57 = getelementptr inbounds %struct.tm, %struct.tm* %16, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = sub nsw i32 %58, 1
  %60 = icmp sge i32 %56, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = getelementptr inbounds %struct.logtime, %struct.logtime* %9, i32 0, i32 0
  %64 = bitcast %struct.tm* %63 to i8*
  %65 = bitcast %struct.tm* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %64, i8* align 4 %65, i64 8, i1 false)
  %66 = load i32, i32* %18, align 4
  %67 = getelementptr inbounds %struct.logtime, %struct.logtime* %9, i32 0, i32 0
  %68 = getelementptr inbounds %struct.tm, %struct.tm* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = getelementptr inbounds %struct.logtime, %struct.logtime* %9, i32 0, i32 0
  %70 = getelementptr inbounds %struct.tm, %struct.tm* %69, i32 0, i32 1
  store i32 -1, i32* %70, align 4
  %71 = getelementptr inbounds %struct.logtime, %struct.logtime* %9, i32 0, i32 1
  store i64 0, i64* %71, align 8
  %72 = getelementptr inbounds %struct.logtime, %struct.logtime* %9, i32 0, i32 0
  %73 = call i64 @mktime(%struct.tm* %72)
  %74 = load i64, i64* %17, align 8
  %75 = add nsw i64 %74, 604800
  %76 = icmp slt i64 %73, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %55
  br label %82

78:                                               ; preds = %55
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %18, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %18, align 4
  br label %55

82:                                               ; preds = %77
  store %struct.logtime* %9, %struct.logtime** %8, align 8
  br label %83

83:                                               ; preds = %82, %41
  %84 = load i8*, i8** %6, align 8
  %85 = call i64 @strlen(i8* %84)
  store i64 %85, i64* %13, align 8
  store i64 0, i64* %12, align 8
  br label %86

86:                                               ; preds = %121, %83
  %87 = load i64, i64* %12, align 8
  %88 = load i32, i32* @MAXHOSTNAMELEN, align 4
  %89 = load i64, i64* %13, align 8
  %90 = call i64 @MIN(i32 %88, i64 %89)
  %91 = icmp ult i64 %87, %90
  br i1 %91, label %92, label %124

92:                                               ; preds = %86
  %93 = load i8*, i8** %6, align 8
  %94 = load i64, i64* %12, align 8
  %95 = getelementptr inbounds i8, i8* %93, i64 %94
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 32
  br i1 %98, label %99, label %112

99:                                               ; preds = %92
  %100 = load i64, i64* @RemoteHostname, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %99
  %103 = load i8*, i8** %6, align 8
  %104 = load i64, i64* %12, align 8
  %105 = getelementptr inbounds i8, i8* %103, i64 %104
  store i8 0, i8* %105, align 1
  %106 = load i8*, i8** %6, align 8
  store i8* %106, i8** %4, align 8
  br label %107

107:                                              ; preds = %102, %99
  %108 = load i64, i64* %12, align 8
  %109 = add i64 %108, 1
  %110 = load i8*, i8** %6, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 %109
  store i8* %111, i8** %6, align 8
  br label %124

112:                                              ; preds = %92
  %113 = load i8*, i8** %6, align 8
  %114 = load i64, i64* %12, align 8
  %115 = getelementptr inbounds i8, i8* %113, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp eq i32 %117, 58
  br i1 %118, label %119, label %120

119:                                              ; preds = %112
  br label %124

120:                                              ; preds = %112
  br label %121

121:                                              ; preds = %120
  %122 = load i64, i64* %12, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %12, align 8
  br label %86

124:                                              ; preds = %119, %107, %86
  %125 = load i64, i64* %12, align 8
  %126 = load i32, i32* @MAXHOSTNAMELEN, align 4
  %127 = load i64, i64* %13, align 8
  %128 = call i64 @MIN(i32 %126, i64 %127)
  %129 = icmp eq i64 %125, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %124
  %131 = load i8*, i8** %4, align 8
  %132 = load i8*, i8** %6, align 8
  %133 = call i32 @dprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %131, i8* %132)
  store i32 1, i32* %19, align 4
  br label %146

134:                                              ; preds = %124
  br label %135

135:                                              ; preds = %134, %33, %3
  %136 = call i32 @parsemsg_rfc3164_app_name_procid(i8** %6, i8** %10, i8** %11)
  %137 = load i8*, i8** %6, align 8
  %138 = trunc i64 %22 to i32
  %139 = call i32 @parsemsg_remove_unsafe_characters(i8* %137, i8* %24, i32 %138)
  %140 = load i32, i32* %5, align 4
  %141 = load %struct.logtime*, %struct.logtime** %8, align 8
  %142 = load i8*, i8** %4, align 8
  %143 = load i8*, i8** %10, align 8
  %144 = load i8*, i8** %11, align 8
  %145 = call i32 @logmsg(i32 %140, %struct.logtime* %141, i8* %142, i8* %143, i8* %144, i32* null, i32* null, i8* %24, i32 0)
  store i32 0, i32* %19, align 4
  br label %146

146:                                              ; preds = %135, %130
  %147 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %147)
  %148 = load i32, i32* %19, align 4
  switch i32 %148, label %150 [
    i32 0, label %149
    i32 1, label %149
  ]

149:                                              ; preds = %146, %146
  ret void

150:                                              ; preds = %146
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @strptime(i8*, i32, %struct.tm*) #2

declare dso_local i64 @time(i32*) #2

declare dso_local i32 @localtime_r(i64*, %struct.tm*) #2

declare dso_local i32 @assert(i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i64 @mktime(%struct.tm*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i64 @MIN(i32, i64) #2

declare dso_local i32 @dprintf(i8*, i8*, i8*) #2

declare dso_local i32 @parsemsg_rfc3164_app_name_procid(i8**, i8**, i8**) #2

declare dso_local i32 @parsemsg_remove_unsafe_characters(i8*, i8*, i32) #2

declare dso_local i32 @logmsg(i32, %struct.logtime*, i8*, i8*, i8*, i32*, i32*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
