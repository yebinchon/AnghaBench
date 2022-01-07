; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/route6d/extr_route6d.c_delroute.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/route6d/extr_route6d.c_delroute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netinfo6 = type { i32, %struct.in6_addr }
%struct.in6_addr = type { i32 }
%struct.rt_msghdr = type { i32, i32, i32, i32, i64, i32, i32 }
%struct.sockaddr_in6 = type { i32, %struct.in6_addr, i8* }

@BUFSIZ = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"DEL: %s/%d gw %s\0A\00", align 1
@rtlog = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"%s: DEL: %s/%d gw %s\0A\00", align 1
@nflag = common dso_local global i64 0, align 8
@RTM_DELETE = common dso_local global i32 0, align 4
@RTM_VERSION = common dso_local global i32 0, align 4
@seq = common dso_local global i64 0, align 8
@pid = common dso_local global i32 0, align 4
@RTF_UP = common dso_local global i32 0, align 4
@RTF_GATEWAY = common dso_local global i32 0, align 4
@Qflag = common dso_local global i32 0, align 4
@RTF_HOST = common dso_local global i32 0, align 4
@RTA_DST = common dso_local global i32 0, align 4
@RTA_GATEWAY = common dso_local global i32 0, align 4
@RTA_NETMASK = common dso_local global i32 0, align 4
@rtsock = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ESRCH = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"RTDEL: Route does not exist: %s/%d gw %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Can not write to rtsock (delroute): %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"\09Can not write to rtsock: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netinfo6*, %struct.in6_addr*)* @delroute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @delroute(%struct.netinfo6* %0, %struct.in6_addr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.netinfo6*, align 8
  %5 = alloca %struct.in6_addr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.rt_msghdr*, align 8
  %10 = alloca %struct.sockaddr_in6*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.netinfo6* %0, %struct.netinfo6** %4, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %5, align 8
  %13 = load i32, i32* @BUFSIZ, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %17 = load i32, i32* @BUFSIZ, align 4
  %18 = zext i32 %17 to i64
  %19 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %8, align 8
  %20 = load i8*, i8** @AF_INET6, align 8
  %21 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %22 = bitcast %struct.in6_addr* %21 to i8*
  %23 = trunc i64 %18 to i32
  %24 = call i32 @inet_ntop(i8* %20, i8* %22, i8* %19, i32 %23)
  %25 = load %struct.netinfo6*, %struct.netinfo6** %4, align 8
  %26 = getelementptr inbounds %struct.netinfo6, %struct.netinfo6* %25, i32 0, i32 1
  %27 = call i8* @inet6_n2p(%struct.in6_addr* %26)
  %28 = load %struct.netinfo6*, %struct.netinfo6** %4, align 8
  %29 = getelementptr inbounds %struct.netinfo6, %struct.netinfo6* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @tracet(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %27, i32 %30, i8* %19)
  %32 = load i64, i64* @rtlog, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %2
  %35 = load i64, i64* @rtlog, align 8
  %36 = call i8* (...) @hms()
  %37 = load %struct.netinfo6*, %struct.netinfo6** %4, align 8
  %38 = getelementptr inbounds %struct.netinfo6, %struct.netinfo6* %37, i32 0, i32 1
  %39 = call i8* @inet6_n2p(%struct.in6_addr* %38)
  %40 = load %struct.netinfo6*, %struct.netinfo6** %4, align 8
  %41 = getelementptr inbounds %struct.netinfo6, %struct.netinfo6* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i64, i8*, i8*, ...) @fprintf(i64 %35, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %36, i8* %39, i32 %42, i8* %19)
  br label %44

44:                                               ; preds = %34, %2
  %45 = load i64, i64* @nflag, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %208

48:                                               ; preds = %44
  %49 = trunc i64 %14 to i32
  %50 = call i32 @memset(i8* %16, i32 0, i32 %49)
  %51 = bitcast i8* %16 to %struct.rt_msghdr*
  store %struct.rt_msghdr* %51, %struct.rt_msghdr** %9, align 8
  %52 = load i32, i32* @RTM_DELETE, align 4
  %53 = load %struct.rt_msghdr*, %struct.rt_msghdr** %9, align 8
  %54 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %53, i32 0, i32 6
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @RTM_VERSION, align 4
  %56 = load %struct.rt_msghdr*, %struct.rt_msghdr** %9, align 8
  %57 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %56, i32 0, i32 5
  store i32 %55, i32* %57, align 8
  %58 = load i64, i64* @seq, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* @seq, align 8
  %60 = load %struct.rt_msghdr*, %struct.rt_msghdr** %9, align 8
  %61 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %60, i32 0, i32 4
  store i64 %59, i64* %61, align 8
  %62 = load i32, i32* @pid, align 4
  %63 = load %struct.rt_msghdr*, %struct.rt_msghdr** %9, align 8
  %64 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @RTF_UP, align 4
  %66 = load i32, i32* @RTF_GATEWAY, align 4
  %67 = or i32 %65, %66
  %68 = load %struct.rt_msghdr*, %struct.rt_msghdr** %9, align 8
  %69 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* @Qflag, align 4
  %71 = load %struct.rt_msghdr*, %struct.rt_msghdr** %9, align 8
  %72 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 8
  %75 = load %struct.netinfo6*, %struct.netinfo6** %4, align 8
  %76 = getelementptr inbounds %struct.netinfo6, %struct.netinfo6* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = icmp eq i64 %78, 32
  br i1 %79, label %80, label %86

80:                                               ; preds = %48
  %81 = load i32, i32* @RTF_HOST, align 4
  %82 = load %struct.rt_msghdr*, %struct.rt_msghdr** %9, align 8
  %83 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 8
  br label %86

86:                                               ; preds = %80, %48
  %87 = load i32, i32* @RTA_DST, align 4
  %88 = load i32, i32* @RTA_GATEWAY, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @RTA_NETMASK, align 4
  %91 = or i32 %89, %90
  %92 = load %struct.rt_msghdr*, %struct.rt_msghdr** %9, align 8
  %93 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = getelementptr inbounds i8, i8* %16, i64 32
  %95 = bitcast i8* %94 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %95, %struct.sockaddr_in6** %10, align 8
  %96 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %97 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %96, i32 0, i32 0
  store i32 16, i32* %97, align 8
  %98 = load i8*, i8** @AF_INET6, align 8
  %99 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %100 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %99, i32 0, i32 2
  store i8* %98, i8** %100, align 8
  %101 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %102 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %101, i32 0, i32 1
  %103 = load %struct.netinfo6*, %struct.netinfo6** %4, align 8
  %104 = getelementptr inbounds %struct.netinfo6, %struct.netinfo6* %103, i32 0, i32 1
  %105 = bitcast %struct.in6_addr* %102 to i8*
  %106 = bitcast %struct.in6_addr* %104 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %105, i8* align 4 %106, i64 4, i1 false)
  %107 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %108 = bitcast %struct.sockaddr_in6* %107 to i8*
  %109 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %110 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @ROUNDUP(i32 %111)
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %108, i64 %113
  %115 = bitcast i8* %114 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %115, %struct.sockaddr_in6** %10, align 8
  %116 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %117 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %116, i32 0, i32 0
  store i32 16, i32* %117, align 8
  %118 = load i8*, i8** @AF_INET6, align 8
  %119 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %120 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %119, i32 0, i32 2
  store i8* %118, i8** %120, align 8
  %121 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %122 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %121, i32 0, i32 1
  %123 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %124 = bitcast %struct.in6_addr* %122 to i8*
  %125 = bitcast %struct.in6_addr* %123 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %124, i8* align 4 %125, i64 4, i1 false)
  %126 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %127 = bitcast %struct.sockaddr_in6* %126 to i8*
  %128 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %129 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @ROUNDUP(i32 %130)
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %127, i64 %132
  %134 = bitcast i8* %133 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %134, %struct.sockaddr_in6** %10, align 8
  %135 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %136 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %135, i32 0, i32 0
  store i32 16, i32* %136, align 8
  %137 = load i8*, i8** @AF_INET6, align 8
  %138 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %139 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %138, i32 0, i32 2
  store i8* %137, i8** %139, align 8
  %140 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %141 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %140, i32 0, i32 1
  %142 = load %struct.netinfo6*, %struct.netinfo6** %4, align 8
  %143 = getelementptr inbounds %struct.netinfo6, %struct.netinfo6* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call %struct.in6_addr* @plen2mask(i32 %144)
  %146 = bitcast %struct.in6_addr* %141 to i8*
  %147 = bitcast %struct.in6_addr* %145 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %146, i8* align 4 %147, i64 4, i1 false)
  %148 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %149 = bitcast %struct.sockaddr_in6* %148 to i8*
  %150 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %151 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @ROUNDUP(i32 %152)
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8, i8* %149, i64 %154
  %156 = bitcast i8* %155 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %156, %struct.sockaddr_in6** %10, align 8
  %157 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %158 = bitcast %struct.sockaddr_in6* %157 to i8*
  %159 = ptrtoint i8* %158 to i64
  %160 = ptrtoint i8* %16 to i64
  %161 = sub i64 %159, %160
  %162 = trunc i64 %161 to i32
  store i32 %162, i32* %11, align 4
  %163 = load i32, i32* %11, align 4
  %164 = load %struct.rt_msghdr*, %struct.rt_msghdr** %9, align 8
  %165 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %164, i32 0, i32 2
  store i32 %163, i32* %165, align 8
  %166 = load i32, i32* @rtsock, align 4
  %167 = load i32, i32* %11, align 4
  %168 = call i64 @write(i32 %166, i8* %16, i32 %167)
  %169 = icmp sge i64 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %86
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %208

171:                                              ; preds = %86
  %172 = load i64, i64* @errno, align 8
  %173 = load i64, i64* @ESRCH, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %175, label %195

175:                                              ; preds = %171
  %176 = load %struct.netinfo6*, %struct.netinfo6** %4, align 8
  %177 = getelementptr inbounds %struct.netinfo6, %struct.netinfo6* %176, i32 0, i32 1
  %178 = call i8* @inet6_n2p(%struct.in6_addr* %177)
  %179 = load %struct.netinfo6*, %struct.netinfo6** %4, align 8
  %180 = getelementptr inbounds %struct.netinfo6, %struct.netinfo6* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = call i32 (i32, i8*, i8*, ...) @trace(i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i8* %178, i32 %181, i8* %19)
  %183 = load i64, i64* @rtlog, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %194

185:                                              ; preds = %175
  %186 = load i64, i64* @rtlog, align 8
  %187 = load %struct.netinfo6*, %struct.netinfo6** %4, align 8
  %188 = getelementptr inbounds %struct.netinfo6, %struct.netinfo6* %187, i32 0, i32 1
  %189 = call i8* @inet6_n2p(%struct.in6_addr* %188)
  %190 = load %struct.netinfo6*, %struct.netinfo6** %4, align 8
  %191 = getelementptr inbounds %struct.netinfo6, %struct.netinfo6* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = call i32 (i64, i8*, i8*, ...) @fprintf(i64 %186, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i8* %189, i32 %192, i8* %19)
  br label %194

194:                                              ; preds = %185, %175
  br label %207

195:                                              ; preds = %171
  %196 = load i64, i64* @errno, align 8
  %197 = call i8* @strerror(i64 %196)
  %198 = call i32 (i32, i8*, i8*, ...) @trace(i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i8* %197)
  %199 = load i64, i64* @rtlog, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %195
  %202 = load i64, i64* @rtlog, align 8
  %203 = load i64, i64* @errno, align 8
  %204 = call i8* @strerror(i64 %203)
  %205 = call i32 (i64, i8*, i8*, ...) @fprintf(i64 %202, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8* %204)
  br label %206

206:                                              ; preds = %201, %195
  br label %207

207:                                              ; preds = %206, %194
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %208

208:                                              ; preds = %207, %170, %47
  %209 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %209)
  %210 = load i32, i32* %3, align 4
  ret i32 %210
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @inet_ntop(i8*, i8*, i8*, i32) #2

declare dso_local i32 @tracet(i32, i8*, i8*, i32, i8*) #2

declare dso_local i8* @inet6_n2p(%struct.in6_addr*) #2

declare dso_local i32 @fprintf(i64, i8*, i8*, ...) #2

declare dso_local i8* @hms(...) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @ROUNDUP(i32) #2

declare dso_local %struct.in6_addr* @plen2mask(i32) #2

declare dso_local i64 @write(i32, i8*, i32) #2

declare dso_local i32 @trace(i32, i8*, i8*, ...) #2

declare dso_local i8* @strerror(i64) #2

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
