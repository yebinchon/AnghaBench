; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_nd6_nbr.c_nd6_dad_timer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_nd6_nbr.c_nd6_dad_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dadq = type { i64, i64, i64, i64, i64, i64, i64, %struct.ifaddr*, i32 }
%struct.ifaddr = type { %struct.ifnet* }
%struct.ifnet = type { i32, i32, i32 }
%struct.in6_ifaddr = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.epoch_tracker = type { i32 }
%struct.TYPE_4__ = type { i32, i64 }

@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"DAD entry %p with no address\00", align 1
@ND6_IFF_IFDISABLED = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"nd6_dad_timer: cancel DAD on %s because of ND6_IFF_IFDISABLED.\0A\00", align 1
@IN6_IFF_DUPLICATED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"nd6_dad_timer: called with duplicated address %s(%s)\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@IN6_IFF_TENTATIVE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [57 x i8] c"nd6_dad_timer: called with non-tentative address %s(%s)\0A\00", align 1
@V_dad_maxtry = common dso_local global i64 0, align 8
@IFF_UP = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [70 x i8] c"%s: could not run DAD because the interface was down or not running.\0A\00", align 1
@hz = common dso_local global i64 0, align 8
@V_dad_enhanced = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [97 x i8] c"%s: a looped back NS message is detected during DAD for %s.  Another DAD probes are being sent.\0A\00", align 1
@V_nd6_mmaxtries = common dso_local global i64 0, align 8
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [47 x i8] c"%s: DAD complete for %s - no duplicates found\0A\00", align 1
@.str.8 = private unnamed_addr constant [81 x i8] c"%s: DAD completed while a looped back NS message is detected during DAD for %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dadq*)* @nd6_dad_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nd6_dad_timer(%struct.dadq* %0) #0 {
  %2 = alloca %struct.dadq*, align 8
  %3 = alloca %struct.ifaddr*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.in6_ifaddr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.epoch_tracker, align 4
  store %struct.dadq* %0, %struct.dadq** %2, align 8
  %9 = load %struct.dadq*, %struct.dadq** %2, align 8
  %10 = getelementptr inbounds %struct.dadq, %struct.dadq* %9, i32 0, i32 8
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @CURVNET_SET(i32 %11)
  %13 = load %struct.dadq*, %struct.dadq** %2, align 8
  %14 = getelementptr inbounds %struct.dadq, %struct.dadq* %13, i32 0, i32 7
  %15 = load %struct.ifaddr*, %struct.ifaddr** %14, align 8
  store %struct.ifaddr* %15, %struct.ifaddr** %3, align 8
  %16 = load %struct.dadq*, %struct.dadq** %2, align 8
  %17 = getelementptr inbounds %struct.dadq, %struct.dadq* %16, i32 0, i32 7
  %18 = load %struct.ifaddr*, %struct.ifaddr** %17, align 8
  %19 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %18, i32 0, i32 0
  %20 = load %struct.ifnet*, %struct.ifnet** %19, align 8
  store %struct.ifnet* %20, %struct.ifnet** %4, align 8
  %21 = load %struct.ifaddr*, %struct.ifaddr** %3, align 8
  %22 = bitcast %struct.ifaddr* %21 to %struct.in6_ifaddr*
  store %struct.in6_ifaddr* %22, %struct.in6_ifaddr** %5, align 8
  %23 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %6, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %7, align 8
  %27 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %5, align 8
  %28 = icmp ne %struct.in6_ifaddr* %27, null
  %29 = zext i1 %28 to i32
  %30 = load %struct.dadq*, %struct.dadq** %2, align 8
  %31 = bitcast %struct.dadq* %30 to i8*
  %32 = call i32 @KASSERT(i32 %29, i8* %31)
  %33 = getelementptr inbounds %struct.epoch_tracker, %struct.epoch_tracker* %8, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @NET_EPOCH_ENTER(i32 %34)
  %36 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %37 = call %struct.TYPE_4__* @ND_IFINFO(%struct.ifnet* %36)
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @ND6_IFF_IFDISABLED, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %1
  %44 = load i32, i32* @LOG_ERR, align 4
  %45 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %46 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to i8*
  %50 = call i32 (i32, i8*, i8*, ...) @log(i32 %44, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i8* %49)
  br label %260

51:                                               ; preds = %1
  %52 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %5, align 8
  %53 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @IN6_IFF_DUPLICATED, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %77

58:                                               ; preds = %51
  %59 = load i32, i32* @LOG_ERR, align 4
  %60 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %5, align 8
  %61 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = call i8* @ip6_sprintf(i8* %26, i32* %62)
  %64 = load %struct.ifaddr*, %struct.ifaddr** %3, align 8
  %65 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %64, i32 0, i32 0
  %66 = load %struct.ifnet*, %struct.ifnet** %65, align 8
  %67 = icmp ne %struct.ifnet* %66, null
  br i1 %67, label %68, label %73

68:                                               ; preds = %58
  %69 = load %struct.ifaddr*, %struct.ifaddr** %3, align 8
  %70 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %69, i32 0, i32 0
  %71 = load %struct.ifnet*, %struct.ifnet** %70, align 8
  %72 = call i8* @if_name(%struct.ifnet* %71)
  br label %74

73:                                               ; preds = %58
  br label %74

74:                                               ; preds = %73, %68
  %75 = phi i8* [ %72, %68 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), %73 ]
  %76 = call i32 (i32, i8*, i8*, ...) @log(i32 %59, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i8* %63, i8* %75)
  br label %260

77:                                               ; preds = %51
  %78 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %5, align 8
  %79 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @IN6_IFF_TENTATIVE, align 4
  %82 = and i32 %80, %81
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %103

84:                                               ; preds = %77
  %85 = load i32, i32* @LOG_ERR, align 4
  %86 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %5, align 8
  %87 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = call i8* @ip6_sprintf(i8* %26, i32* %88)
  %90 = load %struct.ifaddr*, %struct.ifaddr** %3, align 8
  %91 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %90, i32 0, i32 0
  %92 = load %struct.ifnet*, %struct.ifnet** %91, align 8
  %93 = icmp ne %struct.ifnet* %92, null
  br i1 %93, label %94, label %99

94:                                               ; preds = %84
  %95 = load %struct.ifaddr*, %struct.ifaddr** %3, align 8
  %96 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %95, i32 0, i32 0
  %97 = load %struct.ifnet*, %struct.ifnet** %96, align 8
  %98 = call i8* @if_name(%struct.ifnet* %97)
  br label %100

99:                                               ; preds = %84
  br label %100

100:                                              ; preds = %99, %94
  %101 = phi i8* [ %98, %94 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), %99 ]
  %102 = call i32 (i32, i8*, i8*, ...) @log(i32 %85, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), i8* %89, i8* %101)
  br label %260

103:                                              ; preds = %77
  %104 = load %struct.dadq*, %struct.dadq** %2, align 8
  %105 = getelementptr inbounds %struct.dadq, %struct.dadq* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @V_dad_maxtry, align 8
  %108 = icmp sgt i64 %106, %107
  br i1 %108, label %109, label %131

109:                                              ; preds = %103
  %110 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %111 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @IFF_UP, align 4
  %114 = and i32 %112, %113
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %123, label %116

116:                                              ; preds = %109
  %117 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %118 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %121 = and i32 %119, %120
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %131

123:                                              ; preds = %116, %109
  %124 = load i32, i32* @LOG_INFO, align 4
  %125 = load %struct.ifaddr*, %struct.ifaddr** %3, align 8
  %126 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %125, i32 0, i32 0
  %127 = load %struct.ifnet*, %struct.ifnet** %126, align 8
  %128 = call i8* @if_name(%struct.ifnet* %127)
  %129 = ptrtoint i8* %128 to i32
  %130 = call i32 @nd6log(i32 %129)
  br label %260

131:                                              ; preds = %116, %103
  %132 = load %struct.dadq*, %struct.dadq** %2, align 8
  %133 = getelementptr inbounds %struct.dadq, %struct.dadq* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.dadq*, %struct.dadq** %2, align 8
  %136 = getelementptr inbounds %struct.dadq, %struct.dadq* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = icmp slt i64 %134, %137
  br i1 %138, label %139, label %151

139:                                              ; preds = %131
  %140 = load %struct.dadq*, %struct.dadq** %2, align 8
  %141 = load %struct.ifaddr*, %struct.ifaddr** %3, align 8
  %142 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %141, i32 0, i32 0
  %143 = load %struct.ifnet*, %struct.ifnet** %142, align 8
  %144 = call %struct.TYPE_4__* @ND_IFINFO(%struct.ifnet* %143)
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @hz, align 8
  %148 = mul nsw i64 %146, %147
  %149 = sdiv i64 %148, 1000
  %150 = call i32 @nd6_dad_starttimer(%struct.dadq* %140, i64 %149, i32 1)
  br label %263

151:                                              ; preds = %131
  %152 = load %struct.dadq*, %struct.dadq** %2, align 8
  %153 = getelementptr inbounds %struct.dadq, %struct.dadq* %152, i32 0, i32 3
  %154 = load i64, i64* %153, align 8
  %155 = icmp sgt i64 %154, 0
  br i1 %155, label %161, label %156

156:                                              ; preds = %151
  %157 = load %struct.dadq*, %struct.dadq** %2, align 8
  %158 = getelementptr inbounds %struct.dadq, %struct.dadq* %157, i32 0, i32 4
  %159 = load i64, i64* %158, align 8
  %160 = icmp sgt i64 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %156, %151
  %162 = load %struct.ifaddr*, %struct.ifaddr** %3, align 8
  %163 = load %struct.dadq*, %struct.dadq** %2, align 8
  %164 = call i32 @nd6_dad_duplicated(%struct.ifaddr* %162, %struct.dadq* %163)
  br label %258

165:                                              ; preds = %156
  %166 = load i64, i64* @V_dad_enhanced, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %215

168:                                              ; preds = %165
  %169 = load %struct.dadq*, %struct.dadq** %2, align 8
  %170 = getelementptr inbounds %struct.dadq, %struct.dadq* %169, i32 0, i32 5
  %171 = load i64, i64* %170, align 8
  %172 = icmp sgt i64 %171, 0
  br i1 %172, label %173, label %215

173:                                              ; preds = %168
  %174 = load %struct.dadq*, %struct.dadq** %2, align 8
  %175 = getelementptr inbounds %struct.dadq, %struct.dadq* %174, i32 0, i32 5
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.dadq*, %struct.dadq** %2, align 8
  %178 = getelementptr inbounds %struct.dadq, %struct.dadq* %177, i32 0, i32 6
  %179 = load i64, i64* %178, align 8
  %180 = icmp sgt i64 %176, %179
  br i1 %180, label %181, label %215

181:                                              ; preds = %173
  %182 = load i32, i32* @LOG_ERR, align 4
  %183 = load %struct.ifaddr*, %struct.ifaddr** %3, align 8
  %184 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %183, i32 0, i32 0
  %185 = load %struct.ifnet*, %struct.ifnet** %184, align 8
  %186 = call i8* @if_name(%struct.ifnet* %185)
  %187 = load %struct.ifaddr*, %struct.ifaddr** %3, align 8
  %188 = call i32* @IFA_IN6(%struct.ifaddr* %187)
  %189 = call i8* @ip6_sprintf(i8* %26, i32* %188)
  %190 = call i32 (i32, i8*, i8*, ...) @log(i32 %182, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.6, i64 0, i64 0), i8* %186, i8* %189)
  %191 = load %struct.dadq*, %struct.dadq** %2, align 8
  %192 = getelementptr inbounds %struct.dadq, %struct.dadq* %191, i32 0, i32 5
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.dadq*, %struct.dadq** %2, align 8
  %195 = getelementptr inbounds %struct.dadq, %struct.dadq* %194, i32 0, i32 6
  store i64 %193, i64* %195, align 8
  %196 = load %struct.dadq*, %struct.dadq** %2, align 8
  %197 = getelementptr inbounds %struct.dadq, %struct.dadq* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @V_nd6_mmaxtries, align 8
  %200 = add nsw i64 %198, %199
  %201 = sub nsw i64 %200, 1
  %202 = load %struct.dadq*, %struct.dadq** %2, align 8
  %203 = getelementptr inbounds %struct.dadq, %struct.dadq* %202, i32 0, i32 2
  store i64 %201, i64* %203, align 8
  %204 = load %struct.dadq*, %struct.dadq** %2, align 8
  %205 = load %struct.ifaddr*, %struct.ifaddr** %3, align 8
  %206 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %205, i32 0, i32 0
  %207 = load %struct.ifnet*, %struct.ifnet** %206, align 8
  %208 = call %struct.TYPE_4__* @ND_IFINFO(%struct.ifnet* %207)
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @hz, align 8
  %212 = mul nsw i64 %210, %211
  %213 = sdiv i64 %212, 1000
  %214 = call i32 @nd6_dad_starttimer(%struct.dadq* %204, i64 %213, i32 1)
  br label %263

215:                                              ; preds = %173, %168, %165
  %216 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %217 = call %struct.TYPE_4__* @ND_IFINFO(%struct.ifnet* %216)
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* @ND6_IFF_IFDISABLED, align 4
  %221 = and i32 %219, %220
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %230

223:                                              ; preds = %215
  %224 = load i32, i32* @IN6_IFF_TENTATIVE, align 4
  %225 = xor i32 %224, -1
  %226 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %5, align 8
  %227 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = and i32 %228, %225
  store i32 %229, i32* %227, align 4
  br label %230

230:                                              ; preds = %223, %215
  %231 = load i32, i32* @LOG_DEBUG, align 4
  %232 = load %struct.ifaddr*, %struct.ifaddr** %3, align 8
  %233 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %232, i32 0, i32 0
  %234 = load %struct.ifnet*, %struct.ifnet** %233, align 8
  %235 = call i8* @if_name(%struct.ifnet* %234)
  %236 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %5, align 8
  %237 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %237, i32 0, i32 0
  %239 = call i8* @ip6_sprintf(i8* %26, i32* %238)
  %240 = ptrtoint i8* %239 to i32
  %241 = call i32 @nd6log(i32 %240)
  %242 = load %struct.dadq*, %struct.dadq** %2, align 8
  %243 = getelementptr inbounds %struct.dadq, %struct.dadq* %242, i32 0, i32 5
  %244 = load i64, i64* %243, align 8
  %245 = icmp sgt i64 %244, 0
  br i1 %245, label %246, label %256

246:                                              ; preds = %230
  %247 = load i32, i32* @LOG_ERR, align 4
  %248 = load %struct.ifaddr*, %struct.ifaddr** %3, align 8
  %249 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %248, i32 0, i32 0
  %250 = load %struct.ifnet*, %struct.ifnet** %249, align 8
  %251 = call i8* @if_name(%struct.ifnet* %250)
  %252 = load %struct.ifaddr*, %struct.ifaddr** %3, align 8
  %253 = call i32* @IFA_IN6(%struct.ifaddr* %252)
  %254 = call i8* @ip6_sprintf(i8* %26, i32* %253)
  %255 = call i32 (i32, i8*, i8*, ...) @log(i32 %247, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.8, i64 0, i64 0), i8* %251, i8* %254)
  br label %256

256:                                              ; preds = %246, %230
  br label %257

257:                                              ; preds = %256
  br label %258

258:                                              ; preds = %257, %161
  br label %259

259:                                              ; preds = %258
  br label %260

260:                                              ; preds = %259, %123, %100, %74, %43
  %261 = load %struct.dadq*, %struct.dadq** %2, align 8
  %262 = call i32 @nd6_dad_del(%struct.dadq* %261)
  br label %263

263:                                              ; preds = %260, %181, %139
  %264 = getelementptr inbounds %struct.epoch_tracker, %struct.epoch_tracker* %8, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  %266 = call i32 @NET_EPOCH_EXIT(i32 %265)
  %267 = call i32 (...) @CURVNET_RESTORE()
  %268 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %268)
  ret void
}

declare dso_local i32 @CURVNET_SET(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @NET_EPOCH_ENTER(i32) #1

declare dso_local %struct.TYPE_4__* @ND_IFINFO(%struct.ifnet*) #1

declare dso_local i32 @log(i32, i8*, i8*, ...) #1

declare dso_local i8* @ip6_sprintf(i8*, i32*) #1

declare dso_local i8* @if_name(%struct.ifnet*) #1

declare dso_local i32 @nd6log(i32) #1

declare dso_local i32 @nd6_dad_starttimer(%struct.dadq*, i64, i32) #1

declare dso_local i32 @nd6_dad_duplicated(%struct.ifaddr*, %struct.dadq*) #1

declare dso_local i32* @IFA_IN6(%struct.ifaddr*) #1

declare dso_local i32 @nd6_dad_del(%struct.dadq*) #1

declare dso_local i32 @NET_EPOCH_EXIT(i32) #1

declare dso_local i32 @CURVNET_RESTORE(...) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
