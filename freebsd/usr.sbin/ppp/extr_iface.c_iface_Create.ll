; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_iface.c_iface_Create.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_iface.c_iface_Create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iface = type { i32, %struct.iface_addr*, i64, i32, i32, i32*, i32 }
%struct.iface_addr = type { i32, i32 }
%struct.if_msghdr = type { i64, i32, i32, i32 }
%struct.ifa_msghdr = type { i64, i32, i32 }
%struct.sockaddr_dl = type { i64, i32 }
%struct.sockaddr = type { i64 }

@RTAX_MAX = common dso_local global i32 0, align 4
@CTL_NET = common dso_local global i32 0, align 4
@PF_ROUTE = common dso_local global i32 0, align 4
@NET_RT_IFLIST = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"iface_Create: sysctl: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"iface_Create: sysctl: estimate: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"iface_Create: malloc failed: %s\0A\00", align 1
@RTM_IFINFO = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"iface_Create: malloc: %s\0A\00", align 1
@RTM_NEWADDR = common dso_local global i64 0, align 8
@RTA_IFA = common dso_local global i32 0, align 4
@RTAX_IFA = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@RTAX_NETMASK = common dso_local global i64 0, align 8
@RTAX_BRD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.iface* @iface_Create(i8* %0) #0 {
  %2 = alloca %struct.iface*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [6 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.if_msghdr*, align 8
  %13 = alloca %struct.ifa_msghdr*, align 8
  %14 = alloca %struct.sockaddr_dl*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.iface*, align 8
  %18 = alloca %struct.iface_addr*, align 8
  %19 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %20 = load i32, i32* @RTAX_MAX, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %15, align 8
  %23 = alloca %struct.sockaddr*, i64 %21, align 16
  store i64 %21, i64* %16, align 8
  %24 = load i32, i32* @CTL_NET, align 4
  %25 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 0
  store i32 %24, i32* %25, align 16
  %26 = load i32, i32* @PF_ROUTE, align 4
  %27 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 1
  store i32 %26, i32* %27, align 4
  %28 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 2
  store i32 0, i32* %28, align 8
  %29 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 3
  store i32 0, i32* %29, align 4
  %30 = load i32, i32* @NET_RT_IFLIST, align 4
  %31 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 4
  store i32 %30, i32* %31, align 16
  %32 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 5
  store i32 0, i32* %32, align 4
  store i32 20, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %79, %1
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %5, align 4
  %36 = icmp eq i32 %34, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %37
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %40, %33
  %45 = load i32, i32* @stderr, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i8* @strerror(i32 %46)
  %48 = call i32 @fprintf(i32 %45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %47)
  store %struct.iface* null, %struct.iface** %2, align 8
  store i32 1, i32* %19, align 4
  br label %281

49:                                               ; preds = %40, %37
  %50 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 0
  %51 = call i64 @sysctl(i32* %50, i32 6, i8* null, i64* %7, i32* null, i32 0)
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = load i32, i32* @stderr, align 4
  %55 = load i32, i32* @errno, align 4
  %56 = call i8* @strerror(i32 %55)
  %57 = call i32 @fprintf(i32 %54, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %56)
  store %struct.iface* null, %struct.iface** %2, align 8
  store i32 1, i32* %19, align 4
  br label %281

58:                                               ; preds = %49
  %59 = load i64, i64* %7, align 8
  %60 = trunc i64 %59 to i32
  %61 = call i64 @malloc(i32 %60)
  %62 = inttoptr i64 %61 to i8*
  store i8* %62, i8** %9, align 8
  %63 = icmp eq i8* %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %58
  %65 = load i32, i32* @stderr, align 4
  %66 = load i32, i32* @errno, align 4
  %67 = call i8* @strerror(i32 %66)
  %68 = call i32 @fprintf(i32 %65, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %67)
  store %struct.iface* null, %struct.iface** %2, align 8
  store i32 1, i32* %19, align 4
  br label %281

69:                                               ; preds = %58
  %70 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 0
  %71 = load i8*, i8** %9, align 8
  %72 = call i64 @sysctl(i32* %70, i32 6, i8* %71, i64* %7, i32* null, i32 0)
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load i32, i32* @errno, align 4
  store i32 %75, i32* %6, align 4
  %76 = load i8*, i8** %9, align 8
  %77 = call i32 @free(i8* %76)
  store i8* null, i8** %9, align 8
  br label %78

78:                                               ; preds = %74, %69
  br label %79

79:                                               ; preds = %78
  %80 = load i8*, i8** %9, align 8
  %81 = icmp eq i8* %80, null
  br i1 %81, label %33, label %82

82:                                               ; preds = %79
  %83 = load i8*, i8** %9, align 8
  store i8* %83, i8** %10, align 8
  %84 = load i8*, i8** %9, align 8
  %85 = load i64, i64* %7, align 8
  %86 = getelementptr inbounds i8, i8* %84, i64 %85
  store i8* %86, i8** %11, align 8
  store %struct.iface* null, %struct.iface** %17, align 8
  %87 = load i8*, i8** %3, align 8
  %88 = call i64 @strlen(i8* %87)
  store i64 %88, i64* %8, align 8
  br label %89

89:                                               ; preds = %276, %82
  %90 = load i8*, i8** %10, align 8
  %91 = load i8*, i8** %11, align 8
  %92 = icmp ult i8* %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = load %struct.iface*, %struct.iface** %17, align 8
  %95 = icmp eq %struct.iface* %94, null
  br label %96

96:                                               ; preds = %93, %89
  %97 = phi i1 [ false, %89 ], [ %95, %93 ]
  br i1 %97, label %98, label %277

98:                                               ; preds = %96
  %99 = load i8*, i8** %10, align 8
  %100 = bitcast i8* %99 to %struct.if_msghdr*
  store %struct.if_msghdr* %100, %struct.if_msghdr** %12, align 8
  %101 = load %struct.if_msghdr*, %struct.if_msghdr** %12, align 8
  %102 = getelementptr inbounds %struct.if_msghdr, %struct.if_msghdr* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @RTM_IFINFO, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %98
  br label %277

107:                                              ; preds = %98
  %108 = load %struct.if_msghdr*, %struct.if_msghdr** %12, align 8
  %109 = getelementptr inbounds %struct.if_msghdr, %struct.if_msghdr* %108, i64 1
  %110 = bitcast %struct.if_msghdr* %109 to %struct.sockaddr_dl*
  store %struct.sockaddr_dl* %110, %struct.sockaddr_dl** %14, align 8
  %111 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %14, align 8
  %112 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* %8, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %159

116:                                              ; preds = %107
  %117 = load i8*, i8** %3, align 8
  %118 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %14, align 8
  %119 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load i64, i64* %8, align 8
  %122 = call i32 @strncmp(i8* %117, i32 %120, i64 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %159, label %124

124:                                              ; preds = %116
  %125 = call i64 @malloc(i32 48)
  %126 = inttoptr i64 %125 to %struct.iface*
  store %struct.iface* %126, %struct.iface** %17, align 8
  %127 = load %struct.iface*, %struct.iface** %17, align 8
  %128 = icmp eq %struct.iface* %127, null
  br i1 %128, label %129, label %136

129:                                              ; preds = %124
  %130 = load i32, i32* @stderr, align 4
  %131 = load i32, i32* @errno, align 4
  %132 = call i8* @strerror(i32 %131)
  %133 = call i32 @fprintf(i32 %130, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %132)
  %134 = load i8*, i8** %9, align 8
  %135 = call i32 @free(i8* %134)
  store %struct.iface* null, %struct.iface** %2, align 8
  store i32 1, i32* %19, align 4
  br label %281

136:                                              ; preds = %124
  %137 = load i8*, i8** %3, align 8
  %138 = call i32 @strdup(i8* %137)
  %139 = load %struct.iface*, %struct.iface** %17, align 8
  %140 = getelementptr inbounds %struct.iface, %struct.iface* %139, i32 0, i32 6
  store i32 %138, i32* %140, align 8
  %141 = load %struct.iface*, %struct.iface** %17, align 8
  %142 = getelementptr inbounds %struct.iface, %struct.iface* %141, i32 0, i32 5
  store i32* null, i32** %142, align 8
  %143 = load %struct.if_msghdr*, %struct.if_msghdr** %12, align 8
  %144 = getelementptr inbounds %struct.if_msghdr, %struct.if_msghdr* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.iface*, %struct.iface** %17, align 8
  %147 = getelementptr inbounds %struct.iface, %struct.iface* %146, i32 0, i32 4
  store i32 %145, i32* %147, align 4
  %148 = load %struct.if_msghdr*, %struct.if_msghdr** %12, align 8
  %149 = getelementptr inbounds %struct.if_msghdr, %struct.if_msghdr* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.iface*, %struct.iface** %17, align 8
  %152 = getelementptr inbounds %struct.iface, %struct.iface* %151, i32 0, i32 3
  store i32 %150, i32* %152, align 8
  %153 = load %struct.iface*, %struct.iface** %17, align 8
  %154 = getelementptr inbounds %struct.iface, %struct.iface* %153, i32 0, i32 2
  store i64 0, i64* %154, align 8
  %155 = load %struct.iface*, %struct.iface** %17, align 8
  %156 = getelementptr inbounds %struct.iface, %struct.iface* %155, i32 0, i32 0
  store i32 0, i32* %156, align 8
  %157 = load %struct.iface*, %struct.iface** %17, align 8
  %158 = getelementptr inbounds %struct.iface, %struct.iface* %157, i32 0, i32 1
  store %struct.iface_addr* null, %struct.iface_addr** %158, align 8
  br label %159

159:                                              ; preds = %136, %116, %107
  %160 = load %struct.if_msghdr*, %struct.if_msghdr** %12, align 8
  %161 = getelementptr inbounds %struct.if_msghdr, %struct.if_msghdr* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = load i8*, i8** %10, align 8
  %164 = sext i32 %162 to i64
  %165 = getelementptr inbounds i8, i8* %163, i64 %164
  store i8* %165, i8** %10, align 8
  br label %166

166:                                              ; preds = %269, %159
  %167 = load i8*, i8** %10, align 8
  %168 = load i8*, i8** %11, align 8
  %169 = icmp ult i8* %167, %168
  br i1 %169, label %170, label %276

170:                                              ; preds = %166
  %171 = load i8*, i8** %10, align 8
  %172 = bitcast i8* %171 to %struct.ifa_msghdr*
  store %struct.ifa_msghdr* %172, %struct.ifa_msghdr** %13, align 8
  %173 = load %struct.ifa_msghdr*, %struct.ifa_msghdr** %13, align 8
  %174 = getelementptr inbounds %struct.ifa_msghdr, %struct.ifa_msghdr* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @RTM_NEWADDR, align 8
  %177 = icmp ne i64 %175, %176
  br i1 %177, label %178, label %179

178:                                              ; preds = %170
  br label %276

179:                                              ; preds = %170
  %180 = load %struct.iface*, %struct.iface** %17, align 8
  %181 = icmp ne %struct.iface* %180, null
  br i1 %181, label %182, label %268

182:                                              ; preds = %179
  %183 = load %struct.ifa_msghdr*, %struct.ifa_msghdr** %13, align 8
  %184 = getelementptr inbounds %struct.ifa_msghdr, %struct.ifa_msghdr* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @RTA_IFA, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %268

189:                                              ; preds = %182
  %190 = load %struct.ifa_msghdr*, %struct.ifa_msghdr** %13, align 8
  %191 = call i32 @iface_ParseHdr(%struct.ifa_msghdr* %190, %struct.sockaddr** %23)
  %192 = load i64, i64* @RTAX_IFA, align 8
  %193 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %23, i64 %192
  %194 = load %struct.sockaddr*, %struct.sockaddr** %193, align 8
  %195 = icmp ne %struct.sockaddr* %194, null
  br i1 %195, label %196, label %267

196:                                              ; preds = %189
  %197 = load i64, i64* @RTAX_IFA, align 8
  %198 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %23, i64 %197
  %199 = load %struct.sockaddr*, %struct.sockaddr** %198, align 8
  %200 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @AF_INET, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %212, label %204

204:                                              ; preds = %196
  %205 = load i64, i64* @RTAX_IFA, align 8
  %206 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %23, i64 %205
  %207 = load %struct.sockaddr*, %struct.sockaddr** %206, align 8
  %208 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* @AF_INET6, align 8
  %211 = icmp eq i64 %209, %210
  br i1 %211, label %212, label %267

212:                                              ; preds = %204, %196
  %213 = load %struct.iface*, %struct.iface** %17, align 8
  %214 = getelementptr inbounds %struct.iface, %struct.iface* %213, i32 0, i32 1
  %215 = load %struct.iface_addr*, %struct.iface_addr** %214, align 8
  %216 = load %struct.iface*, %struct.iface** %17, align 8
  %217 = getelementptr inbounds %struct.iface, %struct.iface* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = add nsw i32 %218, 1
  %220 = sext i32 %219 to i64
  %221 = mul i64 %220, 8
  %222 = trunc i64 %221 to i32
  %223 = call i64 @realloc(%struct.iface_addr* %215, i32 %222)
  %224 = inttoptr i64 %223 to %struct.iface_addr*
  store %struct.iface_addr* %224, %struct.iface_addr** %18, align 8
  %225 = load %struct.iface_addr*, %struct.iface_addr** %18, align 8
  %226 = icmp eq %struct.iface_addr* %225, null
  br i1 %226, label %227, label %228

227:                                              ; preds = %212
  br label %276

228:                                              ; preds = %212
  %229 = load %struct.iface_addr*, %struct.iface_addr** %18, align 8
  %230 = load %struct.iface*, %struct.iface** %17, align 8
  %231 = getelementptr inbounds %struct.iface, %struct.iface* %230, i32 0, i32 1
  store %struct.iface_addr* %229, %struct.iface_addr** %231, align 8
  %232 = load %struct.iface*, %struct.iface** %17, align 8
  %233 = getelementptr inbounds %struct.iface, %struct.iface* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = load %struct.iface_addr*, %struct.iface_addr** %18, align 8
  %236 = sext i32 %234 to i64
  %237 = getelementptr inbounds %struct.iface_addr, %struct.iface_addr* %235, i64 %236
  store %struct.iface_addr* %237, %struct.iface_addr** %18, align 8
  %238 = load %struct.iface*, %struct.iface** %17, align 8
  %239 = getelementptr inbounds %struct.iface, %struct.iface* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %239, align 8
  %242 = load %struct.iface_addr*, %struct.iface_addr** %18, align 8
  %243 = getelementptr inbounds %struct.iface_addr, %struct.iface_addr* %242, i32 0, i32 1
  %244 = load i64, i64* @RTAX_IFA, align 8
  %245 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %23, i64 %244
  %246 = load %struct.sockaddr*, %struct.sockaddr** %245, align 8
  %247 = load i64, i64* @RTAX_NETMASK, align 8
  %248 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %23, i64 %247
  %249 = load %struct.sockaddr*, %struct.sockaddr** %248, align 8
  %250 = call i32 @ncprange_setsa(i32* %243, %struct.sockaddr* %246, %struct.sockaddr* %249)
  %251 = load i64, i64* @RTAX_BRD, align 8
  %252 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %23, i64 %251
  %253 = load %struct.sockaddr*, %struct.sockaddr** %252, align 8
  %254 = icmp ne %struct.sockaddr* %253, null
  br i1 %254, label %255, label %262

255:                                              ; preds = %228
  %256 = load %struct.iface_addr*, %struct.iface_addr** %18, align 8
  %257 = getelementptr inbounds %struct.iface_addr, %struct.iface_addr* %256, i32 0, i32 0
  %258 = load i64, i64* @RTAX_BRD, align 8
  %259 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %23, i64 %258
  %260 = load %struct.sockaddr*, %struct.sockaddr** %259, align 8
  %261 = call i32 @ncpaddr_setsa(i32* %257, %struct.sockaddr* %260)
  br label %266

262:                                              ; preds = %228
  %263 = load %struct.iface_addr*, %struct.iface_addr** %18, align 8
  %264 = getelementptr inbounds %struct.iface_addr, %struct.iface_addr* %263, i32 0, i32 0
  %265 = call i32 @ncpaddr_init(i32* %264)
  br label %266

266:                                              ; preds = %262, %255
  br label %267

267:                                              ; preds = %266, %204, %189
  br label %268

268:                                              ; preds = %267, %182, %179
  br label %269

269:                                              ; preds = %268
  %270 = load %struct.ifa_msghdr*, %struct.ifa_msghdr** %13, align 8
  %271 = getelementptr inbounds %struct.ifa_msghdr, %struct.ifa_msghdr* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 4
  %273 = load i8*, i8** %10, align 8
  %274 = sext i32 %272 to i64
  %275 = getelementptr inbounds i8, i8* %273, i64 %274
  store i8* %275, i8** %10, align 8
  br label %166

276:                                              ; preds = %227, %178, %166
  br label %89

277:                                              ; preds = %106, %96
  %278 = load i8*, i8** %9, align 8
  %279 = call i32 @free(i8* %278)
  %280 = load %struct.iface*, %struct.iface** %17, align 8
  store %struct.iface* %280, %struct.iface** %2, align 8
  store i32 1, i32* %19, align 4
  br label %281

281:                                              ; preds = %277, %129, %64, %53, %44
  %282 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %282)
  %283 = load %struct.iface*, %struct.iface** %2, align 8
  ret %struct.iface* %283
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #2

declare dso_local i8* @strerror(i32) #2

declare dso_local i64 @sysctl(i32*, i32, i8*, i64*, i32*, i32) #2

declare dso_local i64 @malloc(i32) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @strncmp(i8*, i32, i64) #2

declare dso_local i32 @strdup(i8*) #2

declare dso_local i32 @iface_ParseHdr(%struct.ifa_msghdr*, %struct.sockaddr**) #2

declare dso_local i64 @realloc(%struct.iface_addr*, i32) #2

declare dso_local i32 @ncprange_setsa(i32*, %struct.sockaddr*, %struct.sockaddr*) #2

declare dso_local i32 @ncpaddr_setsa(i32*, %struct.sockaddr*) #2

declare dso_local i32 @ncpaddr_init(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
