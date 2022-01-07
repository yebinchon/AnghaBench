; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/arp/extr_arp.c_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/arp/extr_arp.c_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr_dl = type { i32, i64, i32, i32, i8* }
%struct.rt_msghdr = type { i32 }
%struct.ether_addr = type { i32 }
%struct.timespec = type { i32 }

@AF_LINK = common dso_local global i64 0, align 8
@expire_time = common dso_local global i32 0, align 4
@flags = common dso_local global i32 0, align 4
@doing_proxy = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"temp\00", align 1
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"net.link.ether.inet.max_age\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"sysctlbyname\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"pub\00", align 1
@RTF_ANNOUNCE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"only\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"blackhole\00", align 1
@RTF_REJECT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [45 x i8] c"Choose one of blackhole or reject, not both.\00", align 1
@RTF_BLACKHOLE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"reject\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"Invalid parameter '%s'\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"no interface found for %s\00", align 1
@ETHER_ADDR_LEN = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [30 x i8] c"invalid Ethernet address '%s'\00", align 1
@RTM_GET = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@RTF_GATEWAY = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [46 x i8] c"cannot intuit interface index and type for %s\00", align 1
@RTM_ADD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.sockaddr_in*, align 8
  %7 = alloca %struct.sockaddr_in*, align 8
  %8 = alloca %struct.sockaddr_dl*, align 8
  %9 = alloca %struct.rt_msghdr*, align 8
  %10 = alloca %struct.ether_addr*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.sockaddr_dl, align 8
  %14 = alloca %struct.timespec, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.ether_addr*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %18 = load i8**, i8*** %5, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %11, align 8
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 1
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %12, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sub nsw i32 %24, 2
  store i32 %25, i32* %4, align 4
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 2
  store i8** %27, i8*** %5, align 8
  %28 = call i32 @bzero(%struct.sockaddr_dl* %13, i32 32)
  %29 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %13, i32 0, i32 0
  store i32 32, i32* %29, align 8
  %30 = load i64, i64* @AF_LINK, align 8
  %31 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %13, i32 0, i32 1
  store i64 %30, i64* %31, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = call %struct.sockaddr_in* @getaddr(i8* %32)
  store %struct.sockaddr_in* %33, %struct.sockaddr_in** %7, align 8
  %34 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %35 = icmp eq %struct.sockaddr_in* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %228

37:                                               ; preds = %2
  store i32 0, i32* @expire_time, align 4
  store i32 0, i32* @flags, align 4
  store i32 0, i32* @doing_proxy, align 4
  br label %38

38:                                               ; preds = %127, %37
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %4, align 4
  %41 = icmp sgt i32 %39, 0
  br i1 %41, label %42, label %130

42:                                               ; preds = %38
  %43 = load i8**, i8*** %5, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i64 @strcmp(i8* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %42
  store i64 4, i64* %16, align 8
  %49 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %50 = call i32 @clock_gettime(i32 %49, %struct.timespec* %14)
  %51 = call i64 @sysctlbyname(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32* %15, i64* %16, i32* null, i32 0)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = call i32 @xo_err(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %48
  %56 = getelementptr inbounds %struct.timespec, %struct.timespec* %14, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %15, align 4
  %59 = add nsw i32 %57, %58
  store i32 %59, i32* @expire_time, align 4
  br label %127

60:                                               ; preds = %42
  %61 = load i8**, i8*** %5, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i64 @strcmp(i8* %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %84

66:                                               ; preds = %60
  %67 = load i32, i32* @RTF_ANNOUNCE, align 4
  %68 = load i32, i32* @flags, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* @flags, align 4
  store i32 1, i32* @doing_proxy, align 4
  %70 = load i32, i32* %4, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %66
  %73 = load i8**, i8*** %5, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 1
  %75 = load i8*, i8** %74, align 8
  %76 = call i64 @strcmp(i8* %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %72
  %79 = load i32, i32* %4, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %4, align 4
  %81 = load i8**, i8*** %5, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i32 1
  store i8** %82, i8*** %5, align 8
  br label %83

83:                                               ; preds = %78, %72, %66
  br label %126

84:                                               ; preds = %60
  %85 = load i8**, i8*** %5, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i64 0
  %87 = load i8*, i8** %86, align 8
  %88 = call i64 @strcmp(i8* %87, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %101

90:                                               ; preds = %84
  %91 = load i32, i32* @flags, align 4
  %92 = load i32, i32* @RTF_REJECT, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %90
  %96 = call i32 @xo_errx(i32 1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0))
  br label %97

97:                                               ; preds = %95, %90
  %98 = load i32, i32* @RTF_BLACKHOLE, align 4
  %99 = load i32, i32* @flags, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* @flags, align 4
  br label %125

101:                                              ; preds = %84
  %102 = load i8**, i8*** %5, align 8
  %103 = getelementptr inbounds i8*, i8** %102, i64 0
  %104 = load i8*, i8** %103, align 8
  %105 = call i64 @strcmp(i8* %104, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %118

107:                                              ; preds = %101
  %108 = load i32, i32* @flags, align 4
  %109 = load i32, i32* @RTF_BLACKHOLE, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %107
  %113 = call i32 @xo_errx(i32 1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0))
  br label %114

114:                                              ; preds = %112, %107
  %115 = load i32, i32* @RTF_REJECT, align 4
  %116 = load i32, i32* @flags, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* @flags, align 4
  br label %124

118:                                              ; preds = %101
  %119 = load i8**, i8*** %5, align 8
  %120 = getelementptr inbounds i8*, i8** %119, i64 0
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 @xo_warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i8* %121)
  %123 = call i32 (...) @usage()
  br label %124

124:                                              ; preds = %118, %114
  br label %125

125:                                              ; preds = %124, %97
  br label %126

126:                                              ; preds = %125, %83
  br label %127

127:                                              ; preds = %126, %55
  %128 = load i8**, i8*** %5, align 8
  %129 = getelementptr inbounds i8*, i8** %128, i32 1
  store i8** %129, i8*** %5, align 8
  br label %38

130:                                              ; preds = %38
  %131 = call i64 @LLADDR(%struct.sockaddr_dl* %13)
  %132 = inttoptr i64 %131 to %struct.ether_addr*
  store %struct.ether_addr* %132, %struct.ether_addr** %10, align 8
  %133 = load i32, i32* @doing_proxy, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %157

135:                                              ; preds = %130
  %136 = load i8*, i8** %12, align 8
  %137 = call i64 @strcmp(i8* %136, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %157, label %139

139:                                              ; preds = %135
  %140 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %141 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.ether_addr*, %struct.ether_addr** %10, align 8
  %145 = call i32 @get_ether_addr(i32 %143, %struct.ether_addr* %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %154, label %147

147:                                              ; preds = %139
  %148 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %149 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i8* @inet_ntoa(i32 %151)
  %153 = call i32 @xo_warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i8* %152)
  store i32 1, i32* %3, align 4
  br label %228

154:                                              ; preds = %139
  %155 = load i8*, i8** @ETHER_ADDR_LEN, align 8
  %156 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %13, i32 0, i32 4
  store i8* %155, i8** %156, align 8
  br label %173

157:                                              ; preds = %135, %130
  %158 = load i8*, i8** %12, align 8
  %159 = call %struct.ether_addr* @ether_aton(i8* %158)
  store %struct.ether_addr* %159, %struct.ether_addr** %17, align 8
  %160 = load %struct.ether_addr*, %struct.ether_addr** %17, align 8
  %161 = icmp eq %struct.ether_addr* %160, null
  br i1 %161, label %162, label %165

162:                                              ; preds = %157
  %163 = load i8*, i8** %12, align 8
  %164 = call i32 @xo_warnx(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0), i8* %163)
  store i32 1, i32* %3, align 4
  br label %228

165:                                              ; preds = %157
  %166 = load %struct.ether_addr*, %struct.ether_addr** %10, align 8
  %167 = load %struct.ether_addr*, %struct.ether_addr** %17, align 8
  %168 = bitcast %struct.ether_addr* %166 to i8*
  %169 = bitcast %struct.ether_addr* %167 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %168, i8* align 4 %169, i64 4, i1 false)
  %170 = load i8*, i8** @ETHER_ADDR_LEN, align 8
  %171 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %13, i32 0, i32 4
  store i8* %170, i8** %171, align 8
  br label %172

172:                                              ; preds = %165
  br label %173

173:                                              ; preds = %172, %154
  %174 = load i32, i32* @RTM_GET, align 4
  %175 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %176 = call %struct.rt_msghdr* @rtmsg(i32 %174, %struct.sockaddr_in* %175, %struct.sockaddr_dl* null)
  store %struct.rt_msghdr* %176, %struct.rt_msghdr** %9, align 8
  %177 = load %struct.rt_msghdr*, %struct.rt_msghdr** %9, align 8
  %178 = icmp eq %struct.rt_msghdr* %177, null
  br i1 %178, label %179, label %182

179:                                              ; preds = %173
  %180 = load i8*, i8** %11, align 8
  %181 = call i32 @xo_warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* %180)
  store i32 1, i32* %3, align 4
  br label %228

182:                                              ; preds = %173
  %183 = load %struct.rt_msghdr*, %struct.rt_msghdr** %9, align 8
  %184 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %183, i64 1
  %185 = bitcast %struct.rt_msghdr* %184 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %185, %struct.sockaddr_in** %6, align 8
  %186 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %187 = call i32 @SA_SIZE(%struct.sockaddr_in* %186)
  %188 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %189 = bitcast %struct.sockaddr_in* %188 to i8*
  %190 = sext i32 %187 to i64
  %191 = getelementptr inbounds i8, i8* %189, i64 %190
  %192 = bitcast i8* %191 to %struct.sockaddr_dl*
  store %struct.sockaddr_dl* %192, %struct.sockaddr_dl** %8, align 8
  %193 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %8, align 8
  %194 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @AF_LINK, align 8
  %197 = icmp ne i64 %195, %196
  br i1 %197, label %211, label %198

198:                                              ; preds = %182
  %199 = load %struct.rt_msghdr*, %struct.rt_msghdr** %9, align 8
  %200 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* @RTF_GATEWAY, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %211, label %205

205:                                              ; preds = %198
  %206 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %8, align 8
  %207 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @valid_type(i32 %208)
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %214, label %211

211:                                              ; preds = %205, %198, %182
  %212 = load i8*, i8** %11, align 8
  %213 = call i32 @xo_warnx(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.13, i64 0, i64 0), i8* %212)
  store i32 1, i32* %3, align 4
  br label %228

214:                                              ; preds = %205
  %215 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %8, align 8
  %216 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 4
  %218 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %13, i32 0, i32 3
  store i32 %217, i32* %218, align 4
  %219 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %8, align 8
  %220 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  %222 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %13, i32 0, i32 2
  store i32 %221, i32* %222, align 8
  %223 = load i32, i32* @RTM_ADD, align 4
  %224 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %225 = call %struct.rt_msghdr* @rtmsg(i32 %223, %struct.sockaddr_in* %224, %struct.sockaddr_dl* %13)
  %226 = icmp eq %struct.rt_msghdr* %225, null
  %227 = zext i1 %226 to i32
  store i32 %227, i32* %3, align 4
  br label %228

228:                                              ; preds = %214, %211, %179, %162, %147, %36
  %229 = load i32, i32* %3, align 4
  ret i32 %229
}

declare dso_local i32 @bzero(%struct.sockaddr_dl*, i32) #1

declare dso_local %struct.sockaddr_in* @getaddr(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i64 @sysctlbyname(i8*, i32*, i64*, i32*, i32) #1

declare dso_local i32 @xo_err(i32, i8*) #1

declare dso_local i32 @xo_errx(i32, i8*) #1

declare dso_local i32 @xo_warnx(i8*, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i64 @LLADDR(%struct.sockaddr_dl*) #1

declare dso_local i32 @get_ether_addr(i32, %struct.ether_addr*) #1

declare dso_local i8* @inet_ntoa(i32) #1

declare dso_local %struct.ether_addr* @ether_aton(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.rt_msghdr* @rtmsg(i32, %struct.sockaddr_in*, %struct.sockaddr_dl*) #1

declare dso_local i32 @xo_warn(i8*, i8*) #1

declare dso_local i32 @SA_SIZE(%struct.sockaddr_in*) #1

declare dso_local i32 @valid_type(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
