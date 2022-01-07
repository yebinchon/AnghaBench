; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_nd6_rtr.c_in6_tmpifadd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_nd6_rtr.c_in6_tmpifadd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_ifaddr = type { i64, %struct.TYPE_13__, %struct.TYPE_20__*, %struct.TYPE_17__, %struct.TYPE_19__, %struct.TYPE_15__ }
%struct.TYPE_13__ = type { %struct.ifnet* }
%struct.ifnet = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_17__ = type { i64, i64 }
%struct.TYPE_19__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32*, i32* }
%struct.TYPE_15__ = type { i32 }
%struct.in6_aliasreq = type { i32, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_16__ }
%struct.TYPE_18__ = type { i64, i64 }
%struct.TYPE_16__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32* }

@LOG_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"in6_tmpifadd: failed to find a good random IFID\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"in6_tmpifadd: failed to find a unique random IFID\0A\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@ND6_INFINITE_LIFETIME = common dso_local global i64 0, align 8
@time_uptime = common dso_local global i64 0, align 8
@V_ip6_temp_valid_lifetime = common dso_local global i64 0, align 8
@V_ip6_temp_preferred_lifetime = common dso_local global i64 0, align 8
@V_ip6_desync_factor = common dso_local global i64 0, align 8
@V_ip6_temp_regen_advance = common dso_local global i64 0, align 8
@IN6_IFF_AUTOCONF = common dso_local global i32 0, align 4
@IN6_IFF_TEMPORARY = common dso_local global i32 0, align 4
@IN6_IFAUPDATE_DADDELAY = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [58 x i8] c"in6_tmpifadd: ifa update succeeded, but we got no ifaddr\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @in6_tmpifadd(%struct.in6_ifaddr* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.in6_ifaddr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ifnet*, align 8
  %9 = alloca %struct.in6_ifaddr*, align 8
  %10 = alloca %struct.in6_aliasreq, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [2 x i32], align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.in6_ifaddr* %0, %struct.in6_ifaddr** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %17 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %5, align 8
  %18 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load %struct.ifnet*, %struct.ifnet** %19, align 8
  store %struct.ifnet* %20, %struct.ifnet** %8, align 8
  store i32 3, i32* %12, align 4
  %21 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %5, align 8
  %22 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 0
  %24 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %5, align 8
  %25 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %24, i32 0, i32 5
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = call i32 @in6_prepare_ifra(%struct.in6_aliasreq* %10, %struct.TYPE_21__* %23, i32* %26)
  %28 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %10, i32 0, i32 1
  %29 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %5, align 8
  %30 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %29, i32 0, i32 4
  %31 = bitcast %struct.TYPE_19__* %28 to i8*
  %32 = bitcast %struct.TYPE_19__* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 16, i1 false)
  %33 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %10, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %10, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  %37 = call i32 @IN6_MASK_ADDR(%struct.TYPE_21__* %34, %struct.TYPE_14__* %36)
  br label %38

38:                                               ; preds = %97, %3
  %39 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %41 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %5, align 8
  %42 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 8
  %47 = load i32, i32* %6, align 4
  %48 = call i64 @in6_get_tmpifid(%struct.ifnet* %39, i32* %40, i32* %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %38
  %51 = load i32, i32* @LOG_NOTICE, align 4
  %52 = call i32 @nd6log(i32 ptrtoint ([49 x i8]* @.str to i32))
  %53 = load i32, i32* @EINVAL, align 4
  store i32 %53, i32* %4, align 4
  br label %234

54:                                               ; preds = %38
  %55 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %10, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 2
  %62 = load i32, i32* %61, align 4
  %63 = xor i32 %62, -1
  %64 = and i32 %56, %63
  %65 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %10, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 2
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %64
  store i32 %71, i32* %69, align 4
  %72 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %10, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 3
  %79 = load i32, i32* %78, align 4
  %80 = xor i32 %79, -1
  %81 = and i32 %73, %80
  %82 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %10, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 3
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %81
  store i32 %88, i32* %86, align 4
  %89 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %10, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 0
  %91 = call i64 @in6_localip(%struct.TYPE_21__* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %54
  %94 = load i32, i32* %12, align 4
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* %12, align 4
  %96 = icmp sgt i32 %94, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  store i32 1, i32* %6, align 4
  br label %38

98:                                               ; preds = %93
  %99 = load i32, i32* @LOG_NOTICE, align 4
  %100 = call i32 @nd6log(i32 ptrtoint ([51 x i8]* @.str.1 to i32))
  %101 = load i32, i32* @EEXIST, align 4
  store i32 %101, i32* %4, align 4
  br label %234

102:                                              ; preds = %54
  %103 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %5, align 8
  %104 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @ND6_INFINITE_LIFETIME, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %133

109:                                              ; preds = %102
  %110 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %5, align 8
  %111 = call i64 @IFA6_IS_INVALID(%struct.in6_ifaddr* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %109
  br label %125

114:                                              ; preds = %109
  %115 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %5, align 8
  %116 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @time_uptime, align 8
  %120 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %5, align 8
  %121 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = sub nsw i64 %119, %122
  %124 = sub nsw i64 %118, %123
  br label %125

125:                                              ; preds = %114, %113
  %126 = phi i64 [ 0, %113 ], [ %124, %114 ]
  store i64 %126, i64* %15, align 8
  %127 = load i64, i64* %15, align 8
  %128 = load i64, i64* @V_ip6_temp_valid_lifetime, align 8
  %129 = icmp sgt i64 %127, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %125
  %131 = load i64, i64* @V_ip6_temp_valid_lifetime, align 8
  store i64 %131, i64* %15, align 8
  br label %132

132:                                              ; preds = %130, %125
  br label %135

133:                                              ; preds = %102
  %134 = load i64, i64* @V_ip6_temp_valid_lifetime, align 8
  store i64 %134, i64* %15, align 8
  br label %135

135:                                              ; preds = %133, %132
  %136 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %5, align 8
  %137 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @ND6_INFINITE_LIFETIME, align 8
  %141 = icmp ne i64 %139, %140
  br i1 %141, label %142, label %170

142:                                              ; preds = %135
  %143 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %5, align 8
  %144 = call i64 @IFA6_IS_DEPRECATED(%struct.in6_ifaddr* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %142
  br label %158

147:                                              ; preds = %142
  %148 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %5, align 8
  %149 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @time_uptime, align 8
  %153 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %5, align 8
  %154 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = sub nsw i64 %152, %155
  %157 = sub nsw i64 %151, %156
  br label %158

158:                                              ; preds = %147, %146
  %159 = phi i64 [ 0, %146 ], [ %157, %147 ]
  store i64 %159, i64* %16, align 8
  %160 = load i64, i64* %16, align 8
  %161 = load i64, i64* @V_ip6_temp_preferred_lifetime, align 8
  %162 = load i64, i64* @V_ip6_desync_factor, align 8
  %163 = sub nsw i64 %161, %162
  %164 = icmp sgt i64 %160, %163
  br i1 %164, label %165, label %169

165:                                              ; preds = %158
  %166 = load i64, i64* @V_ip6_temp_preferred_lifetime, align 8
  %167 = load i64, i64* @V_ip6_desync_factor, align 8
  %168 = sub nsw i64 %166, %167
  store i64 %168, i64* %16, align 8
  br label %169

169:                                              ; preds = %165, %158
  br label %174

170:                                              ; preds = %135
  %171 = load i64, i64* @V_ip6_temp_preferred_lifetime, align 8
  %172 = load i64, i64* @V_ip6_desync_factor, align 8
  %173 = sub nsw i64 %171, %172
  store i64 %173, i64* %16, align 8
  br label %174

174:                                              ; preds = %170, %169
  %175 = load i64, i64* %15, align 8
  %176 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %10, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %176, i32 0, i32 1
  store i64 %175, i64* %177, align 8
  %178 = load i64, i64* %16, align 8
  %179 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %10, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %179, i32 0, i32 0
  store i64 %178, i64* %180, align 8
  %181 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %10, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @V_ip6_temp_regen_advance, align 8
  %185 = icmp sle i64 %183, %184
  br i1 %185, label %186, label %187

186:                                              ; preds = %174
  store i32 0, i32* %4, align 4
  br label %234

187:                                              ; preds = %174
  %188 = load i32, i32* @IN6_IFF_AUTOCONF, align 4
  %189 = load i32, i32* @IN6_IFF_TEMPORARY, align 4
  %190 = or i32 %188, %189
  %191 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %10, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = or i32 %192, %190
  store i32 %193, i32* %191, align 8
  store i32 0, i32* %13, align 4
  %194 = load i32, i32* %7, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %200

196:                                              ; preds = %187
  %197 = load i32, i32* @IN6_IFAUPDATE_DADDELAY, align 4
  %198 = load i32, i32* %13, align 4
  %199 = or i32 %198, %197
  store i32 %199, i32* %13, align 4
  br label %200

200:                                              ; preds = %196, %187
  %201 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %202 = load i32, i32* %13, align 4
  %203 = call i32 @in6_update_ifa(%struct.ifnet* %201, %struct.in6_aliasreq* %10, i32* null, i32 %202)
  store i32 %203, i32* %11, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %200
  %206 = load i32, i32* %11, align 4
  store i32 %206, i32* %4, align 4
  br label %234

207:                                              ; preds = %200
  %208 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %209 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %10, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %209, i32 0, i32 0
  %211 = call %struct.in6_ifaddr* @in6ifa_ifpwithaddr(%struct.ifnet* %208, %struct.TYPE_21__* %210)
  store %struct.in6_ifaddr* %211, %struct.in6_ifaddr** %9, align 8
  %212 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %9, align 8
  %213 = icmp eq %struct.in6_ifaddr* %212, null
  br i1 %213, label %214, label %218

214:                                              ; preds = %207
  %215 = load i32, i32* @LOG_ERR, align 4
  %216 = call i32 @nd6log(i32 ptrtoint ([58 x i8]* @.str.2 to i32))
  %217 = load i32, i32* @EINVAL, align 4
  store i32 %217, i32* %4, align 4
  br label %234

218:                                              ; preds = %207
  %219 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %5, align 8
  %220 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %219, i32 0, i32 2
  %221 = load %struct.TYPE_20__*, %struct.TYPE_20__** %220, align 8
  %222 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %9, align 8
  %223 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %222, i32 0, i32 2
  store %struct.TYPE_20__* %221, %struct.TYPE_20__** %223, align 8
  %224 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %9, align 8
  %225 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %224, i32 0, i32 2
  %226 = load %struct.TYPE_20__*, %struct.TYPE_20__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %227, align 4
  %230 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %9, align 8
  %231 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %230, i32 0, i32 1
  %232 = call i32 @ifa_free(%struct.TYPE_13__* %231)
  %233 = call i32 (...) @pfxlist_onlink_check()
  store i32 0, i32* %4, align 4
  br label %234

234:                                              ; preds = %218, %214, %205, %186, %98, %50
  %235 = load i32, i32* %4, align 4
  ret i32 %235
}

declare dso_local i32 @in6_prepare_ifra(%struct.in6_aliasreq*, %struct.TYPE_21__*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @IN6_MASK_ADDR(%struct.TYPE_21__*, %struct.TYPE_14__*) #1

declare dso_local i64 @in6_get_tmpifid(%struct.ifnet*, i32*, i32*, i32) #1

declare dso_local i32 @nd6log(i32) #1

declare dso_local i64 @in6_localip(%struct.TYPE_21__*) #1

declare dso_local i64 @IFA6_IS_INVALID(%struct.in6_ifaddr*) #1

declare dso_local i64 @IFA6_IS_DEPRECATED(%struct.in6_ifaddr*) #1

declare dso_local i32 @in6_update_ifa(%struct.ifnet*, %struct.in6_aliasreq*, i32*, i32) #1

declare dso_local %struct.in6_ifaddr* @in6ifa_ifpwithaddr(%struct.ifnet*, %struct.TYPE_21__*) #1

declare dso_local i32 @ifa_free(%struct.TYPE_13__*) #1

declare dso_local i32 @pfxlist_onlink_check(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
