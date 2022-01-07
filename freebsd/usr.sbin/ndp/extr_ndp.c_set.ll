; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ndp/extr_ndp.c_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ndp/extr_ndp.c_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in6 = type { i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.rt_msghdr }
%struct.rt_msghdr = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.sockaddr_dl = type { i64, i32, i32 }
%struct.addrinfo = type { i64, i32 }
%struct.timeval = type { i64 }

@sin_m = common dso_local global %struct.sockaddr_in6 zeroinitializer, align 4
@m_rtmsg = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@sdl_m = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@blank_sdl = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@blank_sin = common dso_local global %struct.sockaddr_in6 zeroinitializer, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"ndp: %s: %s\0A\00", align 1
@expire_time = common dso_local global i64 0, align 8
@flags = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"temp\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"proxy\00", align 1
@RTF_ANNOUNCE = common dso_local global i64 0, align 8
@RTM_GET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"RTM_GET(%s) failed\00", align 1
@AF_LINK = common dso_local global i64 0, align 8
@RTF_GATEWAY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"set: cannot configure a new entry\0A\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"cannot intuit interface index and type for %s\0A\00", align 1
@RTM_ADD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.sockaddr_in6*, align 8
  %7 = alloca %struct.sockaddr_dl*, align 8
  %8 = alloca %struct.rt_msghdr*, align 8
  %9 = alloca %struct.addrinfo, align 8
  %10 = alloca %struct.addrinfo*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.timeval, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.sockaddr_in6* @sin_m, %struct.sockaddr_in6** %6, align 8
  store %struct.rt_msghdr* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @m_rtmsg, i32 0, i32 0), %struct.rt_msghdr** %8, align 8
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %13, align 8
  %19 = load i8**, i8*** %5, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 1
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %14, align 8
  %22 = call i32 (...) @getsocket()
  %23 = load i32, i32* %4, align 4
  %24 = sub nsw i32 %23, 2
  store i32 %24, i32* %4, align 4
  %25 = load i8**, i8*** %5, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 2
  store i8** %26, i8*** %5, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.TYPE_5__* @sdl_m to i8*), i8* align 4 bitcast (%struct.TYPE_5__* @blank_sdl to i8*), i64 12, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.sockaddr_in6* @sin_m to i8*), i8* align 4 bitcast (%struct.sockaddr_in6* @blank_sin to i8*), i64 12, i1 false)
  %27 = call i32 @bzero(%struct.addrinfo* %9, i32 16)
  %28 = load i32, i32* @AF_INET6, align 4
  %29 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %9, i32 0, i32 1
  store i32 %28, i32* %29, align 8
  %30 = load i8*, i8** %13, align 8
  %31 = call i32 @getaddrinfo(i8* %30, i32* null, %struct.addrinfo* %9, %struct.addrinfo** %10)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %2
  %35 = load i32, i32* @stderr, align 4
  %36 = load i8*, i8** %13, align 8
  %37 = load i32, i32* %11, align 4
  %38 = call i8* @gai_strerror(i32 %37)
  %39 = call i32 (i32, i8*, ...) @fprintf(i32 %35, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %36, i8* %38)
  store i32 1, i32* %3, align 4
  br label %159

40:                                               ; preds = %2
  %41 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %42 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to %struct.sockaddr_in6*
  %45 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8
  %48 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %50 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to %struct.sockaddr_in6*
  %53 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8
  %56 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  %57 = call i64 @LLADDR(%struct.TYPE_5__* @sdl_m)
  %58 = inttoptr i64 %57 to i32*
  store i32* %58, i32** %12, align 8
  %59 = load i8*, i8** %14, align 8
  %60 = load i32*, i32** %12, align 8
  %61 = call i64 @ndp_ether_aton(i8* %59, i32* %60)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %40
  store i32 6, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sdl_m, i32 0, i32 0), align 4
  br label %64

64:                                               ; preds = %63, %40
  store i64 0, i64* @expire_time, align 8
  store i64 0, i64* @flags, align 8
  br label %65

65:                                               ; preds = %91, %64
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %4, align 4
  %68 = icmp sgt i32 %66, 0
  br i1 %68, label %69, label %94

69:                                               ; preds = %65
  %70 = load i8**, i8*** %5, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i64 @strncmp(i8* %72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %69
  %76 = call i32 @gettimeofday(%struct.timeval* %15, i32 0)
  %77 = getelementptr inbounds %struct.timeval, %struct.timeval* %15, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %78, 1200
  store i64 %79, i64* @expire_time, align 8
  br label %91

80:                                               ; preds = %69
  %81 = load i8**, i8*** %5, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i64 0
  %83 = load i8*, i8** %82, align 8
  %84 = call i64 @strncmp(i8* %83, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 5)
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %80
  %87 = load i64, i64* @RTF_ANNOUNCE, align 8
  %88 = load i64, i64* @flags, align 8
  %89 = or i64 %88, %87
  store i64 %89, i64* @flags, align 8
  br label %90

90:                                               ; preds = %86, %80
  br label %91

91:                                               ; preds = %90, %75
  %92 = load i8**, i8*** %5, align 8
  %93 = getelementptr inbounds i8*, i8** %92, i32 1
  store i8** %93, i8*** %5, align 8
  br label %65

94:                                               ; preds = %65
  %95 = load i32, i32* @RTM_GET, align 4
  %96 = call i32 @rtmsg(i32 %95)
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  %99 = load i8*, i8** %13, align 8
  %100 = call i32 @errx(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %99)
  br label %101

101:                                              ; preds = %98, %94
  %102 = load %struct.rt_msghdr*, %struct.rt_msghdr** %8, align 8
  %103 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %102, i64 1
  %104 = bitcast %struct.rt_msghdr* %103 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %104, %struct.sockaddr_in6** %6, align 8
  %105 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8
  %106 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @ALIGN(i32 %107)
  %109 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8
  %110 = bitcast %struct.sockaddr_in6* %109 to i8*
  %111 = sext i32 %108 to i64
  %112 = getelementptr inbounds i8, i8* %110, i64 %111
  %113 = bitcast i8* %112 to %struct.sockaddr_dl*
  store %struct.sockaddr_dl* %113, %struct.sockaddr_dl** %7, align 8
  %114 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8
  %115 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %114, i32 0, i32 0
  %116 = call i64 @IN6_ARE_ADDR_EQUAL(i32* %115, i32* getelementptr inbounds (%struct.sockaddr_in6, %struct.sockaddr_in6* @sin_m, i32 0, i32 0))
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %140

118:                                              ; preds = %101
  %119 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %7, align 8
  %120 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @AF_LINK, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %137

124:                                              ; preds = %118
  %125 = load %struct.rt_msghdr*, %struct.rt_msghdr** %8, align 8
  %126 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @RTF_GATEWAY, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %137, label %131

131:                                              ; preds = %124
  %132 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %7, align 8
  %133 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  switch i32 %134, label %136 [
    i32 133, label %135
    i32 132, label %135
    i32 131, label %135
    i32 130, label %135
    i32 129, label %135
    i32 128, label %135
    i32 134, label %135
  ]

135:                                              ; preds = %131, %131, %131, %131, %131, %131, %131
  br label %141

136:                                              ; preds = %131
  br label %137

137:                                              ; preds = %136, %124, %118
  %138 = load i32, i32* @stderr, align 4
  %139 = call i32 (i32, i8*, ...) @fprintf(i32 %138, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %159

140:                                              ; preds = %101
  br label %141

141:                                              ; preds = %140, %135
  %142 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %7, align 8
  %143 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @AF_LINK, align 8
  %146 = icmp ne i64 %144, %145
  br i1 %146, label %147, label %150

147:                                              ; preds = %141
  %148 = load i8*, i8** %13, align 8
  %149 = call i32 @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i8* %148)
  store i32 1, i32* %3, align 4
  br label %159

150:                                              ; preds = %141
  %151 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %7, align 8
  %152 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  store i32 %153, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sdl_m, i32 0, i32 1), align 4
  %154 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %7, align 8
  %155 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  store i32 %156, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sdl_m, i32 0, i32 2), align 4
  %157 = load i32, i32* @RTM_ADD, align 4
  %158 = call i32 @rtmsg(i32 %157)
  store i32 %158, i32* %3, align 4
  br label %159

159:                                              ; preds = %150, %147, %137, %34
  %160 = load i32, i32* %3, align 4
  ret i32 %160
}

declare dso_local i32 @getsocket(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @bzero(%struct.addrinfo*, i32) #1

declare dso_local i32 @getaddrinfo(i8*, i32*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @gai_strerror(i32) #1

declare dso_local i64 @LLADDR(%struct.TYPE_5__*) #1

declare dso_local i64 @ndp_ether_aton(i8*, i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i32) #1

declare dso_local i32 @rtmsg(i32) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local i32 @ALIGN(i32) #1

declare dso_local i64 @IN6_ARE_ADDR_EQUAL(i32*, i32*) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
