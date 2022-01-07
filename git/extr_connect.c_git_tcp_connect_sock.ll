; ModuleID = '/home/carl/AnghaBench/git/extr_connect.c_git_tcp_connect_sock.c'
source_filename = "/home/carl/AnghaBench/git/extr_connect.c_git_tcp_connect_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.addrinfo = type { i32, i32, i32, i32, i32, %struct.addrinfo* }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@DEFAULT_GIT_PORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"<none>\00", align 1
@CONNECT_IPV4 = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@CONNECT_IPV6 = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@CONNECT_VERBOSE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Looking up %s ... \00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"unable to look up %s (port %s) (%s)\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"done.\0AConnecting to %s (port %s) ... \00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"%s[%d: %s]: errno=%s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"unable to connect to %s:\0A%s\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"done.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @git_tcp_connect_sock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @git_tcp_connect_sock(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.strbuf, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.addrinfo, align 8
  %9 = alloca %struct.addrinfo*, align 8
  %10 = alloca %struct.addrinfo*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = bitcast %struct.strbuf* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  store i32 -1, i32* %6, align 4
  %14 = load i32, i32* @DEFAULT_GIT_PORT, align 4
  %15 = call i8* @STR(i32 %14)
  store i8* %15, i8** %7, align 8
  store i32 0, i32* %12, align 4
  %16 = call i32 @get_host_and_port(i8** %3, i8** %7)
  %17 = load i8*, i8** %7, align 8
  %18 = load i8, i8* %17, align 1
  %19 = icmp ne i8 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %21

21:                                               ; preds = %20, %2
  %22 = call i32 @memset(%struct.addrinfo* %8, i32 0, i32 32)
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @CONNECT_IPV4, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @AF_INET, align 4
  %29 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i32 0, i32 4
  store i32 %28, i32* %29, align 8
  br label %39

30:                                               ; preds = %21
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @CONNECT_IPV6, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* @AF_INET6, align 4
  %37 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i32 0, i32 4
  store i32 %36, i32* %37, align 8
  br label %38

38:                                               ; preds = %35, %30
  br label %39

39:                                               ; preds = %38, %27
  %40 = load i32, i32* @SOCK_STREAM, align 4
  %41 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i32 0, i32 3
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* @IPPROTO_TCP, align 4
  %43 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i32 0, i32 2
  store i32 %42, i32* %43, align 8
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @CONNECT_VERBOSE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %39
  %49 = load i32, i32* @stderr, align 4
  %50 = call i8* @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i8*, i8** %3, align 8
  %52 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %49, i8* %50, i8* %51)
  br label %53

53:                                               ; preds = %48, %39
  %54 = load i8*, i8** %3, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = call i32 @getaddrinfo(i8* %54, i8* %55, %struct.addrinfo* %8, %struct.addrinfo** %10)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %53
  %60 = call i8* @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %61 = load i8*, i8** %3, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @gai_strerror(i32 %63)
  %65 = call i32 (i8*, i8*, i8*, ...) @die(i8* %60, i8* %61, i8* %62, i32 %64)
  br label %66

66:                                               ; preds = %59, %53
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @CONNECT_VERBOSE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = load i32, i32* @stderr, align 4
  %73 = call i8* @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %74 = load i8*, i8** %3, align 8
  %75 = load i8*, i8** %7, align 8
  %76 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %72, i8* %73, i8* %74, i8* %75)
  br label %77

77:                                               ; preds = %71, %66
  %78 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  store %struct.addrinfo* %78, %struct.addrinfo** %9, align 8
  br label %79

79:                                               ; preds = %130, %77
  %80 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %81 = icmp ne %struct.addrinfo* %80, null
  br i1 %81, label %82, label %136

82:                                               ; preds = %79
  %83 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %84 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %87 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %90 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @socket(i32 %85, i32 %88, i32 %91)
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %105, label %95

95:                                               ; preds = %82
  %96 = load i32, i32* %6, align 4
  %97 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %98 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %101 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i64 @connect(i32 %96, i32 %99, i32 %102)
  %104 = icmp slt i64 %103, 0
  br i1 %104, label %105, label %119

105:                                              ; preds = %95, %82
  %106 = load i8*, i8** %3, align 8
  %107 = load i32, i32* %12, align 4
  %108 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %109 = call i8* @ai_name(%struct.addrinfo* %108)
  %110 = load i32, i32* @errno, align 4
  %111 = call i32 @strerror(i32 %110)
  %112 = call i32 @strbuf_addf(%struct.strbuf* %5, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %106, i32 %107, i8* %109, i32 %111)
  %113 = load i32, i32* %6, align 4
  %114 = icmp sle i32 0, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %105
  %116 = load i32, i32* %6, align 4
  %117 = call i32 @close(i32 %116)
  br label %118

118:                                              ; preds = %115, %105
  store i32 -1, i32* %6, align 4
  br label %130

119:                                              ; preds = %95
  %120 = load i32, i32* %4, align 4
  %121 = load i32, i32* @CONNECT_VERBOSE, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %119
  %125 = load i32, i32* @stderr, align 4
  %126 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %127 = call i8* @ai_name(%struct.addrinfo* %126)
  %128 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %125, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %127)
  br label %129

129:                                              ; preds = %124, %119
  br label %136

130:                                              ; preds = %118
  %131 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %132 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %131, i32 0, i32 5
  %133 = load %struct.addrinfo*, %struct.addrinfo** %132, align 8
  store %struct.addrinfo* %133, %struct.addrinfo** %10, align 8
  %134 = load i32, i32* %12, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %12, align 4
  br label %79

136:                                              ; preds = %129, %79
  %137 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %138 = call i32 @freeaddrinfo(%struct.addrinfo* %137)
  %139 = load i32, i32* %6, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %149

141:                                              ; preds = %136
  %142 = call i8* @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %143 = load i8*, i8** %3, align 8
  %144 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = sext i32 %145 to i64
  %147 = inttoptr i64 %146 to i8*
  %148 = call i32 (i8*, i8*, i8*, ...) @die(i8* %142, i8* %143, i8* %147)
  br label %149

149:                                              ; preds = %141, %136
  %150 = load i32, i32* %6, align 4
  %151 = call i32 @enable_keepalive(i32 %150)
  %152 = load i32, i32* %4, align 4
  %153 = load i32, i32* @CONNECT_VERBOSE, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %149
  %157 = load i32, i32* @stderr, align 4
  %158 = call i8* @_(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %159 = call i32 @fprintf_ln(i32 %157, i8* %158)
  br label %160

160:                                              ; preds = %156, %149
  %161 = call i32 @strbuf_release(%struct.strbuf* %5)
  %162 = load i32, i32* %6, align 4
  ret i32 %162
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @STR(i32) #2

declare dso_local i32 @get_host_and_port(i8**, i8**) #2

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #2

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #2

declare dso_local i8* @_(i8*) #2

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #2

declare dso_local i32 @die(i8*, i8*, i8*, ...) #2

declare dso_local i32 @gai_strerror(i32) #2

declare dso_local i32 @socket(i32, i32, i32) #2

declare dso_local i64 @connect(i32, i32, i32) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*, i32, i8*, i32) #2

declare dso_local i8* @ai_name(%struct.addrinfo*) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #2

declare dso_local i32 @enable_keepalive(i32) #2

declare dso_local i32 @fprintf_ln(i32, i8*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
