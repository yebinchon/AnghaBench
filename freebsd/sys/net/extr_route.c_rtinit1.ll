; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_route.c_rtinit1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_route.c_rtinit1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifaddr = type { i32, %struct.TYPE_2__*, %struct.sockaddr*, %struct.sockaddr*, %struct.sockaddr* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.sockaddr = type { i64, i32 }
%struct.rtentry = type { %struct.ifaddr*, %struct.TYPE_2__* }
%struct.rt_addrinfo = type { i32, %struct.sockaddr**, %struct.ifaddr* }
%struct.sockaddr_dl = type { i32, i32, i32, i32 }
%struct.rib_head = type { i32, %struct.radix_node* (%struct.sockaddr*, %struct.sockaddr*, i32*)* }
%struct.radix_node = type { i32 }

@RIB_RLOCK_TRACKER = common dso_local global i32 0, align 4
@_SOCKADDR_TMPSIZE = common dso_local global i32 0, align 4
@RTF_HOST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RT_DEFAULT_FIB = common dso_local global i32 0, align 4
@RT_ALL_FIBS = common dso_local global i32 0, align 4
@V_rt_add_addr_allfibs = common dso_local global i64 0, align 8
@RTM_ADD = common dso_local global i32 0, align 4
@rt_numfibs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"rtinit1: bad fibnum\00", align 1
@RTM_DELETE = common dso_local global i32 0, align 4
@AF_LINK = common dso_local global i32 0, align 4
@RNF_ROOT = common dso_local global i32 0, align 4
@IFA_RTSELF = common dso_local global i32 0, align 4
@RTF_PINNED = common dso_local global i32 0, align 4
@RTAX_DST = common dso_local global i64 0, align 8
@RTAX_GATEWAY = common dso_local global i64 0, align 8
@RTAX_NETMASK = common dso_local global i64 0, align 8
@EHOSTUNREACH = common dso_local global i32 0, align 4
@ENETUNREACH = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifaddr*, i32, i32, i32)* @rtinit1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtinit1(%struct.ifaddr* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ifaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr*, align 8
  %11 = alloca %struct.sockaddr*, align 8
  %12 = alloca %struct.rtentry*, align 8
  %13 = alloca %struct.rt_addrinfo, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.sockaddr_dl*, align 8
  %22 = alloca %struct.rib_head*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.radix_node*, align 8
  store %struct.ifaddr* %0, %struct.ifaddr** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %25 = load i32, i32* @RIB_RLOCK_TRACKER, align 4
  store %struct.rtentry* null, %struct.rtentry** %12, align 8
  store i32 0, i32* %14, align 4
  %26 = load i32, i32* @_SOCKADDR_TMPSIZE, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %17, align 8
  %29 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %18, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store %struct.sockaddr_dl* null, %struct.sockaddr_dl** %21, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @RTF_HOST, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %4
  %35 = load %struct.ifaddr*, %struct.ifaddr** %6, align 8
  %36 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %35, i32 0, i32 4
  %37 = load %struct.sockaddr*, %struct.sockaddr** %36, align 8
  store %struct.sockaddr* %37, %struct.sockaddr** %10, align 8
  store %struct.sockaddr* null, %struct.sockaddr** %11, align 8
  br label %45

38:                                               ; preds = %4
  %39 = load %struct.ifaddr*, %struct.ifaddr** %6, align 8
  %40 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %39, i32 0, i32 2
  %41 = load %struct.sockaddr*, %struct.sockaddr** %40, align 8
  store %struct.sockaddr* %41, %struct.sockaddr** %10, align 8
  %42 = load %struct.ifaddr*, %struct.ifaddr** %6, align 8
  %43 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %42, i32 0, i32 3
  %44 = load %struct.sockaddr*, %struct.sockaddr** %43, align 8
  store %struct.sockaddr* %44, %struct.sockaddr** %11, align 8
  br label %45

45:                                               ; preds = %38, %34
  %46 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %47 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* @EINVAL, align 4
  store i32 %51, i32* %5, align 4
  store i32 1, i32* %23, align 4
  br label %311

52:                                               ; preds = %45
  %53 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %54 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  switch i32 %55, label %57 [
    i32 128, label %56
    i32 129, label %56
  ]

56:                                               ; preds = %52, %52
  br label %59

57:                                               ; preds = %52
  %58 = load i32, i32* @RT_DEFAULT_FIB, align 4
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %57, %56
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @RT_ALL_FIBS, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %80

63:                                               ; preds = %59
  %64 = load i64, i64* @V_rt_add_addr_allfibs, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %63
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @RTM_ADD, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = load %struct.ifaddr*, %struct.ifaddr** %6, align 8
  %72 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %71, i32 0, i32 1
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %16, align 4
  store i32 %75, i32* %15, align 4
  br label %79

76:                                               ; preds = %66, %63
  store i32 0, i32* %15, align 4
  %77 = load i32, i32* @rt_numfibs, align 4
  %78 = sub nsw i32 %77, 1
  store i32 %78, i32* %16, align 4
  br label %79

79:                                               ; preds = %76, %70
  br label %88

80:                                               ; preds = %59
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @rt_numfibs, align 4
  %83 = icmp slt i32 %81, %82
  %84 = zext i1 %83 to i32
  %85 = call i32 @KASSERT(i32 %84, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %86 = load i32, i32* %9, align 4
  store i32 %86, i32* %15, align 4
  %87 = load i32, i32* %9, align 4
  store i32 %87, i32* %16, align 4
  br label %88

88:                                               ; preds = %80, %79
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* @RTM_DELETE, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %102

92:                                               ; preds = %88
  %93 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %94 = icmp ne %struct.sockaddr* %93, null
  br i1 %94, label %95, label %101

95:                                               ; preds = %92
  %96 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %97 = bitcast i8* %29 to %struct.sockaddr*
  %98 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %99 = call i32 @rt_maskedcopy(%struct.sockaddr* %96, %struct.sockaddr* %97, %struct.sockaddr* %98)
  %100 = bitcast i8* %29 to %struct.sockaddr*
  store %struct.sockaddr* %100, %struct.sockaddr** %10, align 8
  br label %101

101:                                              ; preds = %95, %92
  br label %130

102:                                              ; preds = %88
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* @RTM_ADD, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %129

106:                                              ; preds = %102
  %107 = bitcast i8* %29 to %struct.sockaddr_dl*
  store %struct.sockaddr_dl* %107, %struct.sockaddr_dl** %21, align 8
  %108 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %21, align 8
  %109 = call i32 @bzero(%struct.sockaddr_dl* %108, i32 16)
  %110 = load i32, i32* @AF_LINK, align 4
  %111 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %21, align 8
  %112 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %111, i32 0, i32 3
  store i32 %110, i32* %112, align 4
  %113 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %21, align 8
  %114 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %113, i32 0, i32 0
  store i32 16, i32* %114, align 4
  %115 = load %struct.ifaddr*, %struct.ifaddr** %6, align 8
  %116 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %115, i32 0, i32 1
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %21, align 8
  %121 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 4
  %122 = load %struct.ifaddr*, %struct.ifaddr** %6, align 8
  %123 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %122, i32 0, i32 1
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %21, align 8
  %128 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 4
  br label %129

129:                                              ; preds = %106, %102
  br label %130

130:                                              ; preds = %129, %101
  %131 = load i32, i32* %15, align 4
  store i32 %131, i32* %9, align 4
  br label %132

132:                                              ; preds = %280, %130
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* %16, align 4
  %135 = icmp sle i32 %133, %134
  br i1 %135, label %136, label %283

136:                                              ; preds = %132
  %137 = load i32, i32* %7, align 4
  %138 = load i32, i32* @RTM_DELETE, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %185

140:                                              ; preds = %136
  %141 = load i32, i32* %9, align 4
  %142 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %143 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = call %struct.rib_head* @rt_tables_get_rnh(i32 %141, i32 %144)
  store %struct.rib_head* %145, %struct.rib_head** %22, align 8
  %146 = load %struct.rib_head*, %struct.rib_head** %22, align 8
  %147 = icmp eq %struct.rib_head* %146, null
  br i1 %147, label %148, label %149

148:                                              ; preds = %140
  br label %280

149:                                              ; preds = %140
  %150 = load %struct.rib_head*, %struct.rib_head** %22, align 8
  %151 = call i32 @RIB_RLOCK(%struct.rib_head* %150)
  %152 = load %struct.rib_head*, %struct.rib_head** %22, align 8
  %153 = getelementptr inbounds %struct.rib_head, %struct.rib_head* %152, i32 0, i32 1
  %154 = load %struct.radix_node* (%struct.sockaddr*, %struct.sockaddr*, i32*)*, %struct.radix_node* (%struct.sockaddr*, %struct.sockaddr*, i32*)** %153, align 8
  %155 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %156 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %157 = load %struct.rib_head*, %struct.rib_head** %22, align 8
  %158 = getelementptr inbounds %struct.rib_head, %struct.rib_head* %157, i32 0, i32 0
  %159 = call %struct.radix_node* %154(%struct.sockaddr* %155, %struct.sockaddr* %156, i32* %158)
  store %struct.radix_node* %159, %struct.radix_node** %24, align 8
  %160 = load %struct.radix_node*, %struct.radix_node** %24, align 8
  %161 = icmp eq %struct.radix_node* %160, null
  br i1 %161, label %176, label %162

162:                                              ; preds = %149
  %163 = load %struct.radix_node*, %struct.radix_node** %24, align 8
  %164 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @RNF_ROOT, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %176, label %169

169:                                              ; preds = %162
  %170 = load %struct.radix_node*, %struct.radix_node** %24, align 8
  %171 = call %struct.rtentry* @RNTORT(%struct.radix_node* %170)
  %172 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %171, i32 0, i32 0
  %173 = load %struct.ifaddr*, %struct.ifaddr** %172, align 8
  %174 = load %struct.ifaddr*, %struct.ifaddr** %6, align 8
  %175 = icmp ne %struct.ifaddr* %173, %174
  br label %176

176:                                              ; preds = %169, %162, %149
  %177 = phi i1 [ true, %162 ], [ true, %149 ], [ %175, %169 ]
  %178 = zext i1 %177 to i32
  store i32 %178, i32* %14, align 4
  %179 = load %struct.rib_head*, %struct.rib_head** %22, align 8
  %180 = call i32 @RIB_RUNLOCK(%struct.rib_head* %179)
  %181 = load i32, i32* %14, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %176
  br label %280

184:                                              ; preds = %176
  br label %185

185:                                              ; preds = %184, %136
  %186 = bitcast %struct.rt_addrinfo* %13 to %struct.sockaddr_dl*
  %187 = call i32 @bzero(%struct.sockaddr_dl* %186, i32 24)
  %188 = load %struct.ifaddr*, %struct.ifaddr** %6, align 8
  %189 = call i32 @ifa_ref(%struct.ifaddr* %188)
  %190 = load %struct.ifaddr*, %struct.ifaddr** %6, align 8
  %191 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %13, i32 0, i32 2
  store %struct.ifaddr* %190, %struct.ifaddr** %191, align 8
  %192 = load i32, i32* %8, align 4
  %193 = load %struct.ifaddr*, %struct.ifaddr** %6, align 8
  %194 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* @IFA_RTSELF, align 4
  %197 = xor i32 %196, -1
  %198 = and i32 %195, %197
  %199 = or i32 %192, %198
  %200 = load i32, i32* @RTF_PINNED, align 4
  %201 = or i32 %199, %200
  %202 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %13, i32 0, i32 0
  store i32 %201, i32* %202, align 8
  %203 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %204 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %13, i32 0, i32 1
  %205 = load %struct.sockaddr**, %struct.sockaddr*** %204, align 8
  %206 = load i64, i64* @RTAX_DST, align 8
  %207 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %205, i64 %206
  store %struct.sockaddr* %203, %struct.sockaddr** %207, align 8
  %208 = load i32, i32* %7, align 4
  %209 = load i32, i32* @RTM_ADD, align 4
  %210 = icmp eq i32 %208, %209
  br i1 %210, label %211, label %218

211:                                              ; preds = %185
  %212 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %21, align 8
  %213 = bitcast %struct.sockaddr_dl* %212 to %struct.sockaddr*
  %214 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %13, i32 0, i32 1
  %215 = load %struct.sockaddr**, %struct.sockaddr*** %214, align 8
  %216 = load i64, i64* @RTAX_GATEWAY, align 8
  %217 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %215, i64 %216
  store %struct.sockaddr* %213, %struct.sockaddr** %217, align 8
  br label %226

218:                                              ; preds = %185
  %219 = load %struct.ifaddr*, %struct.ifaddr** %6, align 8
  %220 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %219, i32 0, i32 2
  %221 = load %struct.sockaddr*, %struct.sockaddr** %220, align 8
  %222 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %13, i32 0, i32 1
  %223 = load %struct.sockaddr**, %struct.sockaddr*** %222, align 8
  %224 = load i64, i64* @RTAX_GATEWAY, align 8
  %225 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %223, i64 %224
  store %struct.sockaddr* %221, %struct.sockaddr** %225, align 8
  br label %226

226:                                              ; preds = %218, %211
  %227 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %228 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %13, i32 0, i32 1
  %229 = load %struct.sockaddr**, %struct.sockaddr*** %228, align 8
  %230 = load i64, i64* @RTAX_NETMASK, align 8
  %231 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %229, i64 %230
  store %struct.sockaddr* %227, %struct.sockaddr** %231, align 8
  %232 = load i32, i32* %7, align 4
  %233 = load i32, i32* %9, align 4
  %234 = call i32 @rtrequest1_fib(i32 %232, %struct.rt_addrinfo* %13, %struct.rtentry** %12, i32 %233)
  store i32 %234, i32* %14, align 4
  %235 = load i32, i32* %14, align 4
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %274

237:                                              ; preds = %226
  %238 = load %struct.rtentry*, %struct.rtentry** %12, align 8
  %239 = icmp ne %struct.rtentry* %238, null
  br i1 %239, label %240, label %274

240:                                              ; preds = %237
  %241 = load %struct.rtentry*, %struct.rtentry** %12, align 8
  %242 = call i32 @RT_LOCK(%struct.rtentry* %241)
  %243 = load %struct.rtentry*, %struct.rtentry** %12, align 8
  %244 = call i32 @RT_ADDREF(%struct.rtentry* %243)
  %245 = load %struct.rtentry*, %struct.rtentry** %12, align 8
  %246 = call i32 @RT_UNLOCK(%struct.rtentry* %245)
  %247 = load i32, i32* %7, align 4
  %248 = load %struct.ifaddr*, %struct.ifaddr** %6, align 8
  %249 = load i32, i32* %14, align 4
  %250 = load %struct.rtentry*, %struct.rtentry** %12, align 8
  %251 = load i32, i32* %9, align 4
  %252 = call i32 @rt_newaddrmsg_fib(i32 %247, %struct.ifaddr* %248, i32 %249, %struct.rtentry* %250, i32 %251)
  %253 = load %struct.rtentry*, %struct.rtentry** %12, align 8
  %254 = call i32 @RT_LOCK(%struct.rtentry* %253)
  %255 = load %struct.rtentry*, %struct.rtentry** %12, align 8
  %256 = call i32 @RT_REMREF(%struct.rtentry* %255)
  %257 = load i32, i32* %7, align 4
  %258 = load i32, i32* @RTM_DELETE, align 4
  %259 = icmp eq i32 %257, %258
  br i1 %259, label %260, label %263

260:                                              ; preds = %240
  %261 = load %struct.rtentry*, %struct.rtentry** %12, align 8
  %262 = call i32 @RTFREE_LOCKED(%struct.rtentry* %261)
  br label %273

263:                                              ; preds = %240
  %264 = load i32, i32* %7, align 4
  %265 = load i32, i32* @RTM_ADD, align 4
  %266 = icmp eq i32 %264, %265
  br i1 %266, label %267, label %270

267:                                              ; preds = %263
  %268 = load %struct.rtentry*, %struct.rtentry** %12, align 8
  %269 = call i32 @RT_REMREF(%struct.rtentry* %268)
  br label %270

270:                                              ; preds = %267, %263
  %271 = load %struct.rtentry*, %struct.rtentry** %12, align 8
  %272 = call i32 @RT_UNLOCK(%struct.rtentry* %271)
  br label %273

273:                                              ; preds = %270, %260
  store i32 1, i32* %19, align 4
  br label %274

274:                                              ; preds = %273, %237, %226
  %275 = load i32, i32* %14, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %279

277:                                              ; preds = %274
  %278 = load i32, i32* %14, align 4
  store i32 %278, i32* %20, align 4
  br label %279

279:                                              ; preds = %277, %274
  br label %280

280:                                              ; preds = %279, %183, %148
  %281 = load i32, i32* %9, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %9, align 4
  br label %132

283:                                              ; preds = %132
  %284 = load i32, i32* %7, align 4
  %285 = load i32, i32* @RTM_DELETE, align 4
  %286 = icmp eq i32 %284, %285
  br i1 %286, label %287, label %303

287:                                              ; preds = %283
  %288 = load i32, i32* %19, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %291

290:                                              ; preds = %287
  store i32 0, i32* %14, align 4
  br label %302

291:                                              ; preds = %287
  %292 = load i32, i32* %8, align 4
  %293 = load i32, i32* @RTF_HOST, align 4
  %294 = and i32 %292, %293
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %298

296:                                              ; preds = %291
  %297 = load i32, i32* @EHOSTUNREACH, align 4
  br label %300

298:                                              ; preds = %291
  %299 = load i32, i32* @ENETUNREACH, align 4
  br label %300

300:                                              ; preds = %298, %296
  %301 = phi i32 [ %297, %296 ], [ %299, %298 ]
  store i32 %301, i32* %14, align 4
  br label %302

302:                                              ; preds = %300, %290
  br label %309

303:                                              ; preds = %283
  %304 = load i32, i32* %20, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %308

306:                                              ; preds = %303
  %307 = load i32, i32* %20, align 4
  store i32 %307, i32* %14, align 4
  br label %308

308:                                              ; preds = %306, %303
  br label %309

309:                                              ; preds = %308, %302
  %310 = load i32, i32* %14, align 4
  store i32 %310, i32* %5, align 4
  store i32 1, i32* %23, align 4
  br label %311

311:                                              ; preds = %309, %50
  %312 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %312)
  %313 = load i32, i32* %5, align 4
  ret i32 %313
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @KASSERT(i32, i8*) #2

declare dso_local i32 @rt_maskedcopy(%struct.sockaddr*, %struct.sockaddr*, %struct.sockaddr*) #2

declare dso_local i32 @bzero(%struct.sockaddr_dl*, i32) #2

declare dso_local %struct.rib_head* @rt_tables_get_rnh(i32, i32) #2

declare dso_local i32 @RIB_RLOCK(%struct.rib_head*) #2

declare dso_local %struct.rtentry* @RNTORT(%struct.radix_node*) #2

declare dso_local i32 @RIB_RUNLOCK(%struct.rib_head*) #2

declare dso_local i32 @ifa_ref(%struct.ifaddr*) #2

declare dso_local i32 @rtrequest1_fib(i32, %struct.rt_addrinfo*, %struct.rtentry**, i32) #2

declare dso_local i32 @RT_LOCK(%struct.rtentry*) #2

declare dso_local i32 @RT_ADDREF(%struct.rtentry*) #2

declare dso_local i32 @RT_UNLOCK(%struct.rtentry*) #2

declare dso_local i32 @rt_newaddrmsg_fib(i32, %struct.ifaddr*, i32, %struct.rtentry*, i32) #2

declare dso_local i32 @RT_REMREF(%struct.rtentry*) #2

declare dso_local i32 @RTFREE_LOCKED(%struct.rtentry*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
