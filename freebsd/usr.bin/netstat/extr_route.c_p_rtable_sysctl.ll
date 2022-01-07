; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/netstat/extr_route.c_p_rtable_sysctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/netstat/extr_route.c_p_rtable_sysctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8* }
%struct.rt_msghdr = type { i64, i32 }
%struct.sockaddr = type { i32 }
%struct.ifaddrs = type { i32, %struct.TYPE_6__*, %struct.ifaddrs* }
%struct.TYPE_6__ = type { i64 }
%struct.sockaddr_dl = type { i32 }

@AF_UNSPEC = common dso_local global i32 0, align 4
@EX_OSERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"getifaddrs\00", align 1
@AF_LINK = common dso_local global i64 0, align 8
@ifmap_size = common dso_local global i32 0, align 4
@ifmap = common dso_local global %struct.TYPE_7__* null, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"realloc(%d) failed\00", align 1
@IFNAMSIZ = common dso_local global i32 0, align 4
@CTL_NET = common dso_local global i32 0, align 4
@PF_ROUTE = common dso_local global i32 0, align 4
@NET_RT_DUMP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"sysctl: net.route.0.%d.dump.%d estimate\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"malloc(%lu)\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"sysctl: net.route.0.%d.dump.%d\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"route-table\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"rt-family\00", align 1
@RTM_VERSION = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [9 x i8] c"rt-entry\00", align 1
@wid_dst = common dso_local global i32 0, align 4
@wid_gw = common dso_local global i32 0, align 4
@wid_flags = common dso_local global i32 0, align 4
@wid_pksent = common dso_local global i32 0, align 4
@wid_mtu = common dso_local global i32 0, align 4
@wid_if = common dso_local global i32 0, align 4
@wid_expire = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @p_rtable_sysctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p_rtable_sysctl(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca [7 x i32], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.rt_msghdr*, align 8
  %11 = alloca %struct.sockaddr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ifaddrs*, align 8
  %17 = alloca %struct.ifaddrs*, align 8
  %18 = alloca %struct.sockaddr_dl*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %19 = load i32, i32* @AF_UNSPEC, align 4
  store i32 %19, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %20 = call i64 @getifaddrs(%struct.ifaddrs** %16)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @EX_OSERR, align 4
  %24 = call i32 (i32, i8*, ...) @err(i32 %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %22, %2
  %26 = load %struct.ifaddrs*, %struct.ifaddrs** %16, align 8
  store %struct.ifaddrs* %26, %struct.ifaddrs** %17, align 8
  br label %27

27:                                               ; preds = %104, %25
  %28 = load %struct.ifaddrs*, %struct.ifaddrs** %17, align 8
  %29 = icmp ne %struct.ifaddrs* %28, null
  br i1 %29, label %30, label %108

30:                                               ; preds = %27
  %31 = load %struct.ifaddrs*, %struct.ifaddrs** %17, align 8
  %32 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %31, i32 0, i32 1
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @AF_LINK, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %104

39:                                               ; preds = %30
  %40 = load %struct.ifaddrs*, %struct.ifaddrs** %17, align 8
  %41 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %40, i32 0, i32 1
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = bitcast %struct.TYPE_6__* %42 to %struct.sockaddr_dl*
  store %struct.sockaddr_dl* %43, %struct.sockaddr_dl** %18, align 8
  %44 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %18, align 8
  %45 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* @ifmap_size, align 4
  %49 = icmp sge i32 %47, %48
  br i1 %49, label %50, label %81

50:                                               ; preds = %39
  %51 = load i32, i32* %13, align 4
  %52 = add nsw i32 %51, 1
  %53 = call i32 @roundup(i32 %52, i32 32)
  %54 = sext i32 %53 to i64
  %55 = mul i64 %54, 4
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %14, align 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ifmap, align 8
  %58 = load i32, i32* %14, align 4
  %59 = call %struct.TYPE_7__* @realloc(%struct.TYPE_7__* %57, i32 %58)
  store %struct.TYPE_7__* %59, %struct.TYPE_7__** @ifmap, align 8
  %60 = icmp eq %struct.TYPE_7__* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %50
  %62 = load i32, i32* %14, align 4
  %63 = sext i32 %62 to i64
  %64 = call i32 @errx(i32 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 %63)
  br label %65

65:                                               ; preds = %61, %50
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ifmap, align 8
  %67 = load i32, i32* @ifmap_size, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i64 %68
  %70 = load i32, i32* %14, align 4
  %71 = sext i32 %70 to i64
  %72 = load i32, i32* @ifmap_size, align 4
  %73 = sext i32 %72 to i64
  %74 = mul i64 %73, 4
  %75 = sub i64 %71, %74
  %76 = trunc i64 %75 to i32
  %77 = call i32 @memset(%struct.TYPE_7__* %69, i32 0, i32 %76)
  %78 = load i32, i32* %13, align 4
  %79 = add nsw i32 %78, 1
  %80 = call i32 @roundup(i32 %79, i32 32)
  store i32 %80, i32* @ifmap_size, align 4
  br label %81

81:                                               ; preds = %65, %39
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ifmap, align 8
  %83 = load i32, i32* %13, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %81
  br label %104

92:                                               ; preds = %81
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ifmap, align 8
  %94 = load i32, i32* %13, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = load %struct.ifaddrs*, %struct.ifaddrs** %17, align 8
  %100 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @IFNAMSIZ, align 4
  %103 = call i32 @strlcpy(i8* %98, i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %92, %91, %38
  %105 = load %struct.ifaddrs*, %struct.ifaddrs** %17, align 8
  %106 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %105, i32 0, i32 2
  %107 = load %struct.ifaddrs*, %struct.ifaddrs** %106, align 8
  store %struct.ifaddrs* %107, %struct.ifaddrs** %17, align 8
  br label %27

108:                                              ; preds = %27
  %109 = load %struct.ifaddrs*, %struct.ifaddrs** %16, align 8
  %110 = call i32 @freeifaddrs(%struct.ifaddrs* %109)
  %111 = load i32, i32* @CTL_NET, align 4
  %112 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 0
  store i32 %111, i32* %112, align 16
  %113 = load i32, i32* @PF_ROUTE, align 4
  %114 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 1
  store i32 %113, i32* %114, align 4
  %115 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 2
  store i32 0, i32* %115, align 8
  %116 = load i32, i32* %4, align 4
  %117 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 3
  store i32 %116, i32* %117, align 4
  %118 = load i32, i32* @NET_RT_DUMP, align 4
  %119 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 4
  store i32 %118, i32* %119, align 16
  %120 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 5
  store i32 0, i32* %120, align 4
  %121 = load i32, i32* %3, align 4
  %122 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 6
  store i32 %121, i32* %122, align 8
  %123 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 0
  %124 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 0
  %125 = call i32 @nitems(i32* %124)
  %126 = call i64 @sysctl(i32* %123, i32 %125, i8* null, i64* %5, i32* null, i32 0)
  %127 = icmp slt i64 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %108
  %129 = load i32, i32* @EX_OSERR, align 4
  %130 = load i32, i32* %4, align 4
  %131 = load i32, i32* %3, align 4
  %132 = call i32 (i32, i8*, ...) @err(i32 %129, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %130, i32 %131)
  br label %133

133:                                              ; preds = %128, %108
  %134 = load i64, i64* %5, align 8
  %135 = call i8* @malloc(i64 %134)
  store i8* %135, i8** %7, align 8
  %136 = icmp eq i8* %135, null
  br i1 %136, label %137, label %140

137:                                              ; preds = %133
  %138 = load i64, i64* %5, align 8
  %139 = call i32 @errx(i32 2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i64 %138)
  br label %140

140:                                              ; preds = %137, %133
  %141 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 0
  %142 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 0
  %143 = call i32 @nitems(i32* %142)
  %144 = load i8*, i8** %7, align 8
  %145 = call i64 @sysctl(i32* %141, i32 %143, i8* %144, i64* %5, i32* null, i32 0)
  %146 = icmp slt i64 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %140
  %148 = load i32, i32* %4, align 4
  %149 = load i32, i32* %3, align 4
  %150 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %148, i32 %149)
  br label %151

151:                                              ; preds = %147, %140
  %152 = load i8*, i8** %7, align 8
  %153 = load i64, i64* %5, align 8
  %154 = getelementptr inbounds i8, i8* %152, i64 %153
  store i8* %154, i8** %9, align 8
  %155 = call i32 @xo_open_container(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %156 = call i32 @xo_open_list(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %157 = load i8*, i8** %7, align 8
  store i8* %157, i8** %8, align 8
  br label %158

158:                                              ; preds = %205, %151
  %159 = load i8*, i8** %8, align 8
  %160 = load i8*, i8** %9, align 8
  %161 = icmp ult i8* %159, %160
  br i1 %161, label %162, label %212

162:                                              ; preds = %158
  %163 = load i8*, i8** %8, align 8
  %164 = bitcast i8* %163 to %struct.rt_msghdr*
  store %struct.rt_msghdr* %164, %struct.rt_msghdr** %10, align 8
  %165 = load %struct.rt_msghdr*, %struct.rt_msghdr** %10, align 8
  %166 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @RTM_VERSION, align 8
  %169 = icmp ne i64 %167, %168
  br i1 %169, label %170, label %171

170:                                              ; preds = %162
  br label %205

171:                                              ; preds = %162
  %172 = load %struct.rt_msghdr*, %struct.rt_msghdr** %10, align 8
  %173 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %172, i64 1
  %174 = bitcast %struct.rt_msghdr* %173 to %struct.sockaddr*
  store %struct.sockaddr* %174, %struct.sockaddr** %11, align 8
  %175 = load i32, i32* %12, align 4
  %176 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %177 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = icmp ne i32 %175, %178
  br i1 %179, label %180, label %202

180:                                              ; preds = %171
  %181 = load i32, i32* %15, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %180
  %184 = call i32 @xo_close_list(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %185 = call i32 @xo_close_instance(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  br label %186

186:                                              ; preds = %183, %180
  store i32 1, i32* %15, align 4
  %187 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %188 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  store i32 %189, i32* %12, align 4
  %190 = load i32, i32* %12, align 4
  %191 = call i32 @WID_DST_DEFAULT(i32 %190)
  store i32 %191, i32* @wid_dst, align 4
  %192 = load i32, i32* %12, align 4
  %193 = call i32 @WID_GW_DEFAULT(i32 %192)
  store i32 %193, i32* @wid_gw, align 4
  store i32 6, i32* @wid_flags, align 4
  store i32 8, i32* @wid_pksent, align 4
  store i32 6, i32* @wid_mtu, align 4
  %194 = load i32, i32* %12, align 4
  %195 = call i32 @WID_IF_DEFAULT(i32 %194)
  store i32 %195, i32* @wid_if, align 4
  store i32 6, i32* @wid_expire, align 4
  %196 = call i32 @xo_open_instance(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %197 = load i32, i32* %12, align 4
  %198 = call i32 @pr_family(i32 %197)
  %199 = call i32 @xo_open_list(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %200 = load i32, i32* %12, align 4
  %201 = call i32 @pr_rthdr(i32 %200)
  br label %202

202:                                              ; preds = %186, %171
  %203 = load %struct.rt_msghdr*, %struct.rt_msghdr** %10, align 8
  %204 = call i32 @p_rtentry_sysctl(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), %struct.rt_msghdr* %203)
  br label %205

205:                                              ; preds = %202, %170
  %206 = load %struct.rt_msghdr*, %struct.rt_msghdr** %10, align 8
  %207 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 8
  %209 = load i8*, i8** %8, align 8
  %210 = sext i32 %208 to i64
  %211 = getelementptr inbounds i8, i8* %209, i64 %210
  store i8* %211, i8** %8, align 8
  br label %158

212:                                              ; preds = %158
  %213 = load i32, i32* %15, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %212
  %216 = call i32 @xo_close_list(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %217 = call i32 @xo_close_instance(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  br label %218

218:                                              ; preds = %215, %212
  %219 = call i32 @xo_close_list(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %220 = call i32 @xo_close_container(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %221 = load i8*, i8** %7, align 8
  %222 = call i32 @free(i8* %221)
  ret void
}

declare dso_local i64 @getifaddrs(%struct.ifaddrs**) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local %struct.TYPE_7__* @realloc(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @errx(i32, i8*, i64) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @strlcpy(i8*, i32, i32) #1

declare dso_local i32 @freeifaddrs(%struct.ifaddrs*) #1

declare dso_local i64 @sysctl(i32*, i32, i8*, i64*, i32*, i32) #1

declare dso_local i32 @nitems(i32*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @xo_open_container(i8*) #1

declare dso_local i32 @xo_open_list(i8*) #1

declare dso_local i32 @xo_close_list(i8*) #1

declare dso_local i32 @xo_close_instance(i8*) #1

declare dso_local i32 @WID_DST_DEFAULT(i32) #1

declare dso_local i32 @WID_GW_DEFAULT(i32) #1

declare dso_local i32 @WID_IF_DEFAULT(i32) #1

declare dso_local i32 @xo_open_instance(i8*) #1

declare dso_local i32 @pr_family(i32) #1

declare dso_local i32 @pr_rthdr(i32) #1

declare dso_local i32 @p_rtentry_sysctl(i8*, %struct.rt_msghdr*) #1

declare dso_local i32 @xo_close_container(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
