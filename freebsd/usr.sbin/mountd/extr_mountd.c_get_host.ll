; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mountd/extr_mountd.c_get_host.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mountd/extr_mountd.c_get_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grouplist = type { i64, %struct.TYPE_2__, %struct.grouplist* }
%struct.TYPE_2__ = type { %struct.addrinfo* }
%struct.addrinfo = type { i8*, %struct.addrinfo*, i32, i32, i32, i32 }

@NI_MAXHOST = common dso_local global i32 0, align 4
@GT_NULL = common dso_local global i64 0, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Bad netgroup type for ip host %s\00", align 1
@AI_CANONNAME = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"can't get address info for host %s\00", align 1
@NI_NUMERICHOST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@debug = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"got host %s\0A\00", align 1
@GT_HOST = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"ignoring duplicate host %s\0A\00", align 1
@GT_IGNORE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.grouplist*, %struct.grouplist*)* @get_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_host(i8* %0, %struct.grouplist* %1, %struct.grouplist* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.grouplist*, align 8
  %7 = alloca %struct.grouplist*, align 8
  %8 = alloca %struct.grouplist*, align 8
  %9 = alloca %struct.addrinfo*, align 8
  %10 = alloca %struct.addrinfo*, align 8
  %11 = alloca %struct.addrinfo, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.grouplist* %1, %struct.grouplist** %6, align 8
  store %struct.grouplist* %2, %struct.grouplist** %7, align 8
  %16 = load i32, i32* @NI_MAXHOST, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %13, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %14, align 8
  %20 = load %struct.grouplist*, %struct.grouplist** %6, align 8
  %21 = getelementptr inbounds %struct.grouplist, %struct.grouplist* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @GT_NULL, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = load i32, i32* @LOG_ERR, align 4
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @syslog(i32 %26, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %27)
  store i32 1, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %148

29:                                               ; preds = %3
  %30 = call i32 @memset(%struct.addrinfo* %11, i32 0, i32 32)
  %31 = load i32, i32* @AI_CANONNAME, align 4
  %32 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 3
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* @IPPROTO_UDP, align 4
  %34 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 5
  store i32 %33, i32* %34, align 4
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @getaddrinfo(i8* %35, i32* null, %struct.addrinfo* %11, %struct.addrinfo** %9)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %29
  %40 = load i32, i32* @LOG_ERR, align 4
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 @syslog(i32 %40, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %41)
  store i32 1, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %148

43:                                               ; preds = %29
  %44 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %45 = load %struct.grouplist*, %struct.grouplist** %6, align 8
  %46 = getelementptr inbounds %struct.grouplist, %struct.grouplist* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store %struct.addrinfo* %44, %struct.addrinfo** %47, align 8
  br label %48

48:                                               ; preds = %140, %43
  %49 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %50 = icmp ne %struct.addrinfo* %49, null
  br i1 %50, label %51, label %144

51:                                               ; preds = %48
  %52 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %53 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = icmp eq i8* %54, null
  br i1 %55, label %56, label %79

56:                                               ; preds = %51
  %57 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %58 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %61 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = trunc i64 %17 to i32
  %64 = load i32, i32* @NI_NUMERICHOST, align 4
  %65 = call i64 @getnameinfo(i32 %59, i32 %62, i8* %19, i32 %63, i32* null, i32 0, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %56
  %68 = trunc i64 %17 to i32
  %69 = call i32 @strlcpy(i8* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %67, %56
  %71 = call i8* @strdup(i8* %19)
  %72 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %73 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %72, i32 0, i32 0
  store i8* %71, i8** %73, align 8
  %74 = load i32, i32* @AI_CANONNAME, align 4
  %75 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %76 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %70, %51
  %80 = load i64, i64* @debug, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %79
  %83 = load i32, i32* @stderr, align 4
  %84 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %85 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @fprintf(i32 %83, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %86)
  br label %88

88:                                               ; preds = %82, %79
  %89 = load %struct.grouplist*, %struct.grouplist** %7, align 8
  store %struct.grouplist* %89, %struct.grouplist** %8, align 8
  br label %90

90:                                               ; preds = %136, %88
  %91 = load %struct.grouplist*, %struct.grouplist** %8, align 8
  %92 = icmp ne %struct.grouplist* %91, null
  br i1 %92, label %93, label %140

93:                                               ; preds = %90
  %94 = load %struct.grouplist*, %struct.grouplist** %8, align 8
  %95 = getelementptr inbounds %struct.grouplist, %struct.grouplist* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @GT_HOST, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  br label %136

100:                                              ; preds = %93
  %101 = load %struct.grouplist*, %struct.grouplist** %8, align 8
  %102 = getelementptr inbounds %struct.grouplist, %struct.grouplist* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load %struct.addrinfo*, %struct.addrinfo** %103, align 8
  store %struct.addrinfo* %104, %struct.addrinfo** %10, align 8
  br label %105

105:                                              ; preds = %131, %100
  %106 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %107 = icmp ne %struct.addrinfo* %106, null
  br i1 %107, label %108, label %135

108:                                              ; preds = %105
  %109 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %110 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %113 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = call i64 @sacmp(i32 %111, i32 %114, i32* null)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %108
  br label %131

118:                                              ; preds = %108
  %119 = load i64, i64* @debug, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %118
  %122 = load i32, i32* @stderr, align 4
  %123 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %124 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 @fprintf(i32 %122, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* %125)
  br label %127

127:                                              ; preds = %121, %118
  %128 = load i64, i64* @GT_IGNORE, align 8
  %129 = load %struct.grouplist*, %struct.grouplist** %6, align 8
  %130 = getelementptr inbounds %struct.grouplist, %struct.grouplist* %129, i32 0, i32 0
  store i64 %128, i64* %130, align 8
  store i32 0, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %148

131:                                              ; preds = %117
  %132 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %133 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %132, i32 0, i32 1
  %134 = load %struct.addrinfo*, %struct.addrinfo** %133, align 8
  store %struct.addrinfo* %134, %struct.addrinfo** %10, align 8
  br label %105

135:                                              ; preds = %105
  br label %136

136:                                              ; preds = %135, %99
  %137 = load %struct.grouplist*, %struct.grouplist** %8, align 8
  %138 = getelementptr inbounds %struct.grouplist, %struct.grouplist* %137, i32 0, i32 2
  %139 = load %struct.grouplist*, %struct.grouplist** %138, align 8
  store %struct.grouplist* %139, %struct.grouplist** %8, align 8
  br label %90

140:                                              ; preds = %90
  %141 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %142 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %141, i32 0, i32 1
  %143 = load %struct.addrinfo*, %struct.addrinfo** %142, align 8
  store %struct.addrinfo* %143, %struct.addrinfo** %9, align 8
  br label %48

144:                                              ; preds = %48
  %145 = load i64, i64* @GT_HOST, align 8
  %146 = load %struct.grouplist*, %struct.grouplist** %6, align 8
  %147 = getelementptr inbounds %struct.grouplist, %struct.grouplist* %146, i32 0, i32 0
  store i64 %145, i64* %147, align 8
  store i32 0, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %148

148:                                              ; preds = %144, %127, %39, %25
  %149 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %149)
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @syslog(i32, i8*, i8*) #2

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #2

declare dso_local i32 @getaddrinfo(i8*, i32*, %struct.addrinfo*, %struct.addrinfo**) #2

declare dso_local i64 @getnameinfo(i32, i32, i8*, i32, i32*, i32, i32) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i8* @strdup(i8*) #2

declare dso_local i32 @fprintf(i32, i8*, i8*) #2

declare dso_local i64 @sacmp(i32, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
