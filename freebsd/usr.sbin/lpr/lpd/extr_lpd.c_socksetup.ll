; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/lpr/lpd/extr_lpd.c_socksetup.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/lpr/lpd/extr_lpd.c_socksetup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i32, i32, i32, i32, %struct.addrinfo*, i32 }

@AI_PASSIVE = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"printer\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"couldn't allocate memory for sockets\00", align 1
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"socket(): %m\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"setsockopt(SO_REUSEADDR): %m\00", align 1
@SO_DEBUG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"setsockopt (SO_DEBUG): %m\00", align 1
@AF_INET6 = common dso_local global i64 0, align 8
@IPPROTO_IPV6 = common dso_local global i32 0, align 4
@IPV6_V6ONLY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"setsockopt (IPV6_V6ONLY): %m\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"bind(): %m\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"Couldn't bind to any socket\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32)* @socksetup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @socksetup(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.addrinfo, align 8
  %6 = alloca %struct.addrinfo*, align 8
  %7 = alloca %struct.addrinfo*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 1, i32* %12, align 4
  %13 = call i32 @memset(%struct.addrinfo* %5, i32 0, i32 40)
  %14 = load i32, i32* @AI_PASSIVE, align 4
  %15 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %5, i32 0, i32 6
  store i32 %14, i32* %15, align 8
  %16 = load i32, i32* %3, align 4
  %17 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %5, i32 0, i32 0
  store i32 %16, i32* %17, align 8
  %18 = load i32, i32* @SOCK_STREAM, align 4
  %19 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %5, i32 0, i32 4
  store i32 %18, i32* %19, align 8
  %20 = call i32 @getaddrinfo(i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.addrinfo* %5, %struct.addrinfo** %6)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = load i32, i32* @LOG_ERR, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @gai_strerror(i32 %25)
  %27 = call i32 (i32, i8*, ...) @syslog(i32 %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = call i32 @mcleanup(i32 0)
  br label %29

29:                                               ; preds = %23, %2
  store i32 0, i32* %9, align 4
  %30 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  store %struct.addrinfo* %30, %struct.addrinfo** %7, align 8
  br label %31

31:                                               ; preds = %35, %29
  %32 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %33 = icmp ne %struct.addrinfo* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  br label %35

35:                                               ; preds = %34
  %36 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %37 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %36, i32 0, i32 5
  %38 = load %struct.addrinfo*, %struct.addrinfo** %37, align 8
  store %struct.addrinfo* %38, %struct.addrinfo** %7, align 8
  %39 = load i32, i32* %9, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %9, align 4
  br label %31

41:                                               ; preds = %31
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = mul i64 %44, 4
  %46 = trunc i64 %45 to i32
  %47 = call i32* @malloc(i32 %46)
  store i32* %47, i32** %11, align 8
  %48 = load i32*, i32** %11, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %41
  %51 = load i32, i32* @LOG_ERR, align 4
  %52 = call i32 (i32, i8*, ...) @syslog(i32 %51, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %53 = call i32 @mcleanup(i32 0)
  br label %54

54:                                               ; preds = %50, %41
  %55 = load i32*, i32** %11, align 8
  store i32 0, i32* %55, align 4
  %56 = load i32*, i32** %11, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  store i32* %57, i32** %10, align 8
  %58 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  store %struct.addrinfo* %58, %struct.addrinfo** %7, align 8
  br label %59

59:                                               ; preds = %154, %54
  %60 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %61 = icmp ne %struct.addrinfo* %60, null
  br i1 %61, label %62, label %158

62:                                               ; preds = %59
  %63 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %64 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %67 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %70 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @socket(i32 %65, i32 %68, i32 %71)
  %73 = load i32*, i32** %10, align 8
  store i32 %72, i32* %73, align 4
  %74 = load i32*, i32** %10, align 8
  %75 = load i32, i32* %74, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %62
  %78 = load i32, i32* @LOG_DEBUG, align 4
  %79 = call i32 (i32, i8*, ...) @syslog(i32 %78, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %154

80:                                               ; preds = %62
  %81 = load i32*, i32** %10, align 8
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @SOL_SOCKET, align 4
  %84 = load i32, i32* @SO_REUSEADDR, align 4
  %85 = call i64 @setsockopt(i32 %82, i32 %83, i32 %84, i32* %12, i32 4)
  %86 = icmp slt i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %80
  %88 = load i32, i32* @LOG_ERR, align 4
  %89 = call i32 (i32, i8*, ...) @syslog(i32 %88, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %90 = load i32*, i32** %10, align 8
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @close(i32 %91)
  br label %154

93:                                               ; preds = %80
  %94 = load i32, i32* %4, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %110

96:                                               ; preds = %93
  %97 = load i32*, i32** %10, align 8
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @SOL_SOCKET, align 4
  %100 = load i32, i32* @SO_DEBUG, align 4
  %101 = call i64 @setsockopt(i32 %98, i32 %99, i32 %100, i32* %4, i32 4)
  %102 = icmp slt i64 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %96
  %104 = load i32, i32* @LOG_ERR, align 4
  %105 = call i32 (i32, i8*, ...) @syslog(i32 %104, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %106 = load i32*, i32** %10, align 8
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @close(i32 %107)
  br label %154

109:                                              ; preds = %96
  br label %110

110:                                              ; preds = %109, %93
  %111 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %112 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = sext i32 %113 to i64
  %115 = load i64, i64* @AF_INET6, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %131

117:                                              ; preds = %110
  %118 = load i32*, i32** %10, align 8
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @IPPROTO_IPV6, align 4
  %121 = load i32, i32* @IPV6_V6ONLY, align 4
  %122 = call i64 @setsockopt(i32 %119, i32 %120, i32 %121, i32* %12, i32 4)
  %123 = icmp slt i64 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %117
  %125 = load i32, i32* @LOG_ERR, align 4
  %126 = call i32 (i32, i8*, ...) @syslog(i32 %125, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %127 = load i32*, i32** %10, align 8
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @close(i32 %128)
  br label %154

130:                                              ; preds = %117
  br label %131

131:                                              ; preds = %130, %110
  %132 = load i32*, i32** %10, align 8
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %135 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %138 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i64 @bind(i32 %133, i32 %136, i32 %139)
  %141 = icmp slt i64 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %131
  %143 = load i32, i32* @LOG_DEBUG, align 4
  %144 = call i32 (i32, i8*, ...) @syslog(i32 %143, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %145 = load i32*, i32** %10, align 8
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @close(i32 %146)
  br label %154

148:                                              ; preds = %131
  %149 = load i32*, i32** %11, align 8
  %150 = load i32, i32* %149, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %149, align 4
  %152 = load i32*, i32** %10, align 8
  %153 = getelementptr inbounds i32, i32* %152, i32 1
  store i32* %153, i32** %10, align 8
  br label %154

154:                                              ; preds = %148, %142, %124, %103, %87, %77
  %155 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %156 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %155, i32 0, i32 5
  %157 = load %struct.addrinfo*, %struct.addrinfo** %156, align 8
  store %struct.addrinfo* %157, %struct.addrinfo** %7, align 8
  br label %59

158:                                              ; preds = %59
  %159 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %160 = icmp ne %struct.addrinfo* %159, null
  br i1 %160, label %161, label %164

161:                                              ; preds = %158
  %162 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %163 = call i32 @freeaddrinfo(%struct.addrinfo* %162)
  br label %164

164:                                              ; preds = %161, %158
  %165 = load i32*, i32** %11, align 8
  %166 = load i32, i32* %165, align 4
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %164
  %169 = load i32, i32* @LOG_ERR, align 4
  %170 = call i32 (i32, i8*, ...) @syslog(i32 %169, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  %171 = load i32*, i32** %11, align 8
  %172 = call i32 @free(i32* %171)
  %173 = call i32 @mcleanup(i32 0)
  br label %174

174:                                              ; preds = %168, %164
  %175 = load i32*, i32** %11, align 8
  ret i32* %175
}

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i32 @getaddrinfo(i32*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @syslog(i32, i8*, ...) #1

declare dso_local i32 @gai_strerror(i32) #1

declare dso_local i32 @mcleanup(i32) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i64 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @bind(i32, i32, i32) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
