; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/route6d/extr_route6d.c_addroute.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/route6d/extr_route6d.c_addroute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.riprt = type { i32, %struct.netinfo6 }
%struct.netinfo6 = type { i32, i32, %struct.in6_addr }
%struct.in6_addr = type { i32 }
%struct.ifc = type { i32, i32 }
%struct.rt_msghdr = type { i32, i32, i32, %struct.TYPE_2__, i32, i32, i64, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr_in6 = type { i32, %struct.in6_addr, i8*, i32 }

@BUFSIZ = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"ADD: %s/%d gw %s [%d] ifa %s\0A\00", align 1
@rtlog = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"%s: ADD: %s/%d gw %s [%d] ifa %s\0A\00", align 1
@nflag = common dso_local global i64 0, align 8
@RTM_ADD = common dso_local global i32 0, align 4
@RTM_VERSION = common dso_local global i32 0, align 4
@seq = common dso_local global i64 0, align 8
@pid = common dso_local global i32 0, align 4
@Qflag = common dso_local global i32 0, align 4
@RTA_DST = common dso_local global i32 0, align 4
@RTA_GATEWAY = common dso_local global i32 0, align 4
@RTA_NETMASK = common dso_local global i32 0, align 4
@RTV_HOPCOUNT = common dso_local global i32 0, align 4
@rtsock = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"ADD: Route already exists %s/%d gw %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Can not write to rtsock (addroute): %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"\09Can not write to rtsock: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.riprt*, %struct.in6_addr*, %struct.ifc*)* @addroute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addroute(%struct.riprt* %0, %struct.in6_addr* %1, %struct.ifc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.riprt*, align 8
  %6 = alloca %struct.in6_addr*, align 8
  %7 = alloca %struct.ifc*, align 8
  %8 = alloca %struct.netinfo6*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.rt_msghdr*, align 8
  %14 = alloca %struct.sockaddr_in6*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.riprt* %0, %struct.riprt** %5, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %6, align 8
  store %struct.ifc* %2, %struct.ifc** %7, align 8
  %17 = load i32, i32* @BUFSIZ, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %9, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %10, align 8
  %21 = load i32, i32* @BUFSIZ, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %11, align 8
  %24 = load i32, i32* @BUFSIZ, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %12, align 8
  %27 = load %struct.riprt*, %struct.riprt** %5, align 8
  %28 = getelementptr inbounds %struct.riprt, %struct.riprt* %27, i32 0, i32 1
  store %struct.netinfo6* %28, %struct.netinfo6** %8, align 8
  %29 = load i8*, i8** @AF_INET6, align 8
  %30 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %31 = bitcast %struct.in6_addr* %30 to i8*
  %32 = trunc i64 %22 to i32
  %33 = call i32 @inet_ntop(i8* %29, i8* %31, i8* %23, i32 %32)
  %34 = load i8*, i8** @AF_INET6, align 8
  %35 = load %struct.ifc*, %struct.ifc** %7, align 8
  %36 = getelementptr inbounds %struct.ifc, %struct.ifc* %35, i32 0, i32 1
  %37 = bitcast i32* %36 to i8*
  %38 = trunc i64 %25 to i32
  %39 = call i32 @inet_ntop(i8* %34, i8* %37, i8* %26, i32 %38)
  %40 = load %struct.netinfo6*, %struct.netinfo6** %8, align 8
  %41 = getelementptr inbounds %struct.netinfo6, %struct.netinfo6* %40, i32 0, i32 2
  %42 = call i8* @inet6_n2p(%struct.in6_addr* %41)
  %43 = load %struct.netinfo6*, %struct.netinfo6** %8, align 8
  %44 = getelementptr inbounds %struct.netinfo6, %struct.netinfo6* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.netinfo6*, %struct.netinfo6** %8, align 8
  %47 = getelementptr inbounds %struct.netinfo6, %struct.netinfo6* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sub nsw i32 %48, 1
  %50 = call i32 @tracet(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %42, i32 %45, i8* %23, i32 %49, i8* %26)
  %51 = load i64, i64* @rtlog, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %3
  %54 = load i64, i64* @rtlog, align 8
  %55 = call i8* (...) @hms()
  %56 = load %struct.netinfo6*, %struct.netinfo6** %8, align 8
  %57 = getelementptr inbounds %struct.netinfo6, %struct.netinfo6* %56, i32 0, i32 2
  %58 = call i8* @inet6_n2p(%struct.in6_addr* %57)
  %59 = load %struct.netinfo6*, %struct.netinfo6** %8, align 8
  %60 = getelementptr inbounds %struct.netinfo6, %struct.netinfo6* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.netinfo6*, %struct.netinfo6** %8, align 8
  %63 = getelementptr inbounds %struct.netinfo6, %struct.netinfo6* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = sub nsw i32 %64, 1
  %66 = call i32 (i64, i8*, i8*, ...) @fprintf(i64 %54, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %55, i8* %58, i32 %61, i8* %23, i32 %65, i8* %26)
  br label %67

67:                                               ; preds = %53, %3
  %68 = load i64, i64* @nflag, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  store i32 0, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %240

71:                                               ; preds = %67
  %72 = trunc i64 %18 to i32
  %73 = call i32 @memset(i8* %20, i32 0, i32 %72)
  %74 = bitcast i8* %20 to %struct.rt_msghdr*
  store %struct.rt_msghdr* %74, %struct.rt_msghdr** %13, align 8
  %75 = load i32, i32* @RTM_ADD, align 4
  %76 = load %struct.rt_msghdr*, %struct.rt_msghdr** %13, align 8
  %77 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %76, i32 0, i32 8
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* @RTM_VERSION, align 4
  %79 = load %struct.rt_msghdr*, %struct.rt_msghdr** %13, align 8
  %80 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %79, i32 0, i32 7
  store i32 %78, i32* %80, align 8
  %81 = load i64, i64* @seq, align 8
  %82 = add nsw i64 %81, 1
  store i64 %82, i64* @seq, align 8
  %83 = load %struct.rt_msghdr*, %struct.rt_msghdr** %13, align 8
  %84 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %83, i32 0, i32 6
  store i64 %82, i64* %84, align 8
  %85 = load i32, i32* @pid, align 4
  %86 = load %struct.rt_msghdr*, %struct.rt_msghdr** %13, align 8
  %87 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %86, i32 0, i32 5
  store i32 %85, i32* %87, align 4
  %88 = load %struct.riprt*, %struct.riprt** %5, align 8
  %89 = getelementptr inbounds %struct.riprt, %struct.riprt* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.rt_msghdr*, %struct.rt_msghdr** %13, align 8
  %92 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %91, i32 0, i32 4
  store i32 %90, i32* %92, align 8
  %93 = load i32, i32* @Qflag, align 4
  %94 = load %struct.rt_msghdr*, %struct.rt_msghdr** %13, align 8
  %95 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 8
  %98 = load i32, i32* @RTA_DST, align 4
  %99 = load i32, i32* @RTA_GATEWAY, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @RTA_NETMASK, align 4
  %102 = or i32 %100, %101
  %103 = load %struct.rt_msghdr*, %struct.rt_msghdr** %13, align 8
  %104 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  %105 = load %struct.netinfo6*, %struct.netinfo6** %8, align 8
  %106 = getelementptr inbounds %struct.netinfo6, %struct.netinfo6* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = sub nsw i32 %107, 1
  %109 = load %struct.rt_msghdr*, %struct.rt_msghdr** %13, align 8
  %110 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  store i32 %108, i32* %111, align 4
  %112 = load i32, i32* @RTV_HOPCOUNT, align 4
  %113 = load %struct.rt_msghdr*, %struct.rt_msghdr** %13, align 8
  %114 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 8
  %115 = getelementptr inbounds i8, i8* %20, i64 40
  %116 = bitcast i8* %115 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %116, %struct.sockaddr_in6** %14, align 8
  %117 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %14, align 8
  %118 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %117, i32 0, i32 0
  store i32 24, i32* %118, align 8
  %119 = load i8*, i8** @AF_INET6, align 8
  %120 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %14, align 8
  %121 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %120, i32 0, i32 2
  store i8* %119, i8** %121, align 8
  %122 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %14, align 8
  %123 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %122, i32 0, i32 1
  %124 = load %struct.netinfo6*, %struct.netinfo6** %8, align 8
  %125 = getelementptr inbounds %struct.netinfo6, %struct.netinfo6* %124, i32 0, i32 2
  %126 = bitcast %struct.in6_addr* %123 to i8*
  %127 = bitcast %struct.in6_addr* %125 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %126, i8* align 4 %127, i64 4, i1 false)
  %128 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %14, align 8
  %129 = bitcast %struct.sockaddr_in6* %128 to i8*
  %130 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %14, align 8
  %131 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @ROUNDUP(i32 %132)
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8, i8* %129, i64 %134
  %136 = bitcast i8* %135 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %136, %struct.sockaddr_in6** %14, align 8
  %137 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %14, align 8
  %138 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %137, i32 0, i32 0
  store i32 24, i32* %138, align 8
  %139 = load i8*, i8** @AF_INET6, align 8
  %140 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %14, align 8
  %141 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %140, i32 0, i32 2
  store i8* %139, i8** %141, align 8
  %142 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %14, align 8
  %143 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %142, i32 0, i32 1
  %144 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %145 = bitcast %struct.in6_addr* %143 to i8*
  %146 = bitcast %struct.in6_addr* %144 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %145, i8* align 4 %146, i64 4, i1 false)
  %147 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %14, align 8
  %148 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %147, i32 0, i32 1
  %149 = call i64 @IN6_IS_ADDR_LINKLOCAL(%struct.in6_addr* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %71
  %152 = load %struct.ifc*, %struct.ifc** %7, align 8
  %153 = getelementptr inbounds %struct.ifc, %struct.ifc* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %14, align 8
  %156 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %155, i32 0, i32 3
  store i32 %154, i32* %156, align 8
  br label %157

157:                                              ; preds = %151, %71
  %158 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %14, align 8
  %159 = bitcast %struct.sockaddr_in6* %158 to i8*
  %160 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %14, align 8
  %161 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @ROUNDUP(i32 %162)
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8, i8* %159, i64 %164
  %166 = bitcast i8* %165 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %166, %struct.sockaddr_in6** %14, align 8
  %167 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %14, align 8
  %168 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %167, i32 0, i32 0
  store i32 24, i32* %168, align 8
  %169 = load i8*, i8** @AF_INET6, align 8
  %170 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %14, align 8
  %171 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %170, i32 0, i32 2
  store i8* %169, i8** %171, align 8
  %172 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %14, align 8
  %173 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %172, i32 0, i32 1
  %174 = load %struct.netinfo6*, %struct.netinfo6** %8, align 8
  %175 = getelementptr inbounds %struct.netinfo6, %struct.netinfo6* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = call %struct.in6_addr* @plen2mask(i32 %176)
  %178 = bitcast %struct.in6_addr* %173 to i8*
  %179 = bitcast %struct.in6_addr* %177 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %178, i8* align 4 %179, i64 4, i1 false)
  %180 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %14, align 8
  %181 = bitcast %struct.sockaddr_in6* %180 to i8*
  %182 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %14, align 8
  %183 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @ROUNDUP(i32 %184)
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8, i8* %181, i64 %186
  %188 = bitcast i8* %187 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %188, %struct.sockaddr_in6** %14, align 8
  %189 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %14, align 8
  %190 = bitcast %struct.sockaddr_in6* %189 to i8*
  %191 = ptrtoint i8* %190 to i64
  %192 = ptrtoint i8* %20 to i64
  %193 = sub i64 %191, %192
  %194 = trunc i64 %193 to i32
  store i32 %194, i32* %15, align 4
  %195 = load i32, i32* %15, align 4
  %196 = load %struct.rt_msghdr*, %struct.rt_msghdr** %13, align 8
  %197 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %196, i32 0, i32 1
  store i32 %195, i32* %197, align 4
  %198 = load i32, i32* @rtsock, align 4
  %199 = load i32, i32* %15, align 4
  %200 = call i64 @write(i32 %198, i8* %20, i32 %199)
  %201 = icmp sgt i64 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %157
  store i32 0, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %240

203:                                              ; preds = %157
  %204 = load i64, i64* @errno, align 8
  %205 = load i64, i64* @EEXIST, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %207, label %227

207:                                              ; preds = %203
  %208 = load %struct.netinfo6*, %struct.netinfo6** %8, align 8
  %209 = getelementptr inbounds %struct.netinfo6, %struct.netinfo6* %208, i32 0, i32 2
  %210 = call i8* @inet6_n2p(%struct.in6_addr* %209)
  %211 = load %struct.netinfo6*, %struct.netinfo6** %8, align 8
  %212 = getelementptr inbounds %struct.netinfo6, %struct.netinfo6* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = call i32 (i32, i8*, i8*, ...) @trace(i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %210, i32 %213, i8* %23)
  %215 = load i64, i64* @rtlog, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %226

217:                                              ; preds = %207
  %218 = load i64, i64* @rtlog, align 8
  %219 = load %struct.netinfo6*, %struct.netinfo6** %8, align 8
  %220 = getelementptr inbounds %struct.netinfo6, %struct.netinfo6* %219, i32 0, i32 2
  %221 = call i8* @inet6_n2p(%struct.in6_addr* %220)
  %222 = load %struct.netinfo6*, %struct.netinfo6** %8, align 8
  %223 = getelementptr inbounds %struct.netinfo6, %struct.netinfo6* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = call i32 (i64, i8*, i8*, ...) @fprintf(i64 %218, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %221, i32 %224, i8* %23)
  br label %226

226:                                              ; preds = %217, %207
  br label %239

227:                                              ; preds = %203
  %228 = load i64, i64* @errno, align 8
  %229 = call i8* @strerror(i64 %228)
  %230 = call i32 (i32, i8*, i8*, ...) @trace(i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i8* %229)
  %231 = load i64, i64* @rtlog, align 8
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %238

233:                                              ; preds = %227
  %234 = load i64, i64* @rtlog, align 8
  %235 = load i64, i64* @errno, align 8
  %236 = call i8* @strerror(i64 %235)
  %237 = call i32 (i64, i8*, i8*, ...) @fprintf(i64 %234, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8* %236)
  br label %238

238:                                              ; preds = %233, %227
  br label %239

239:                                              ; preds = %238, %226
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %240

240:                                              ; preds = %239, %202, %70
  %241 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %241)
  %242 = load i32, i32* %4, align 4
  ret i32 %242
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @inet_ntop(i8*, i8*, i8*, i32) #2

declare dso_local i32 @tracet(i32, i8*, i8*, i32, i8*, i32, i8*) #2

declare dso_local i8* @inet6_n2p(%struct.in6_addr*) #2

declare dso_local i32 @fprintf(i64, i8*, i8*, ...) #2

declare dso_local i8* @hms(...) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @ROUNDUP(i32) #2

declare dso_local i64 @IN6_IS_ADDR_LINKLOCAL(%struct.in6_addr*) #2

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
