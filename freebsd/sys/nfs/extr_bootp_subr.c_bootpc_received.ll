; ModuleID = '/home/carl/AnghaBench/freebsd/sys/nfs/extr_bootp_subr.c_bootpc_received.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/nfs/extr_bootp_subr.c_bootpc_received.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bootpc_globalcontext = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.bootpc_ifcontext = type { i32, i64, i32, i32, i32, i32, i32, i32, i32 }

@TAG_END = common dso_local global i32 0, align 4
@TAG_DHCP_MSGTYPE = common dso_local global i32 0, align 4
@DHCP_OFFER = common dso_local global i8 0, align 1
@DHCP_ACK = common dso_local global i8 0, align 1
@IF_BOOTP_RESOLVED = common dso_local global i64 0, align 8
@IF_DHCP_OFFERED = common dso_local global i64 0, align 8
@IF_DHCP_RESOLVED = common dso_local global i64 0, align 8
@TAG_ROOT = common dso_local global i32 0, align 4
@IF_BOOTP_UNRESOLVED = common dso_local global i64 0, align 8
@IF_DHCP_UNRESOLVED = common dso_local global i64 0, align 8
@TAG_DHCP_SERVERID = common dso_local global i32 0, align 4
@TAG_ROUTERS = common dso_local global i32 0, align 4
@TAG_SUBNETMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bootpc_globalcontext*, %struct.bootpc_ifcontext*)* @bootpc_received to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bootpc_received(%struct.bootpc_globalcontext* %0, %struct.bootpc_ifcontext* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bootpc_globalcontext*, align 8
  %5 = alloca %struct.bootpc_ifcontext*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  store %struct.bootpc_globalcontext* %0, %struct.bootpc_globalcontext** %4, align 8
  store %struct.bootpc_ifcontext* %1, %struct.bootpc_ifcontext** %5, align 8
  %8 = load %struct.bootpc_globalcontext*, %struct.bootpc_globalcontext** %4, align 8
  %9 = getelementptr inbounds %struct.bootpc_globalcontext, %struct.bootpc_globalcontext* %8, i32 0, i32 0
  %10 = load %struct.bootpc_globalcontext*, %struct.bootpc_globalcontext** %4, align 8
  %11 = getelementptr inbounds %struct.bootpc_globalcontext, %struct.bootpc_globalcontext* %10, i32 0, i32 2
  %12 = load %struct.bootpc_globalcontext*, %struct.bootpc_globalcontext** %4, align 8
  %13 = getelementptr inbounds %struct.bootpc_globalcontext, %struct.bootpc_globalcontext* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @TAG_END, align 4
  %16 = call i8* @bootpc_tag(%struct.TYPE_2__* %9, i32* %11, i32 %14, i32 %15)
  %17 = load %struct.bootpc_globalcontext*, %struct.bootpc_globalcontext** %4, align 8
  %18 = getelementptr inbounds %struct.bootpc_globalcontext, %struct.bootpc_globalcontext* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %256

23:                                               ; preds = %2
  %24 = load %struct.bootpc_globalcontext*, %struct.bootpc_globalcontext** %4, align 8
  %25 = getelementptr inbounds %struct.bootpc_globalcontext, %struct.bootpc_globalcontext* %24, i32 0, i32 0
  %26 = load %struct.bootpc_globalcontext*, %struct.bootpc_globalcontext** %4, align 8
  %27 = getelementptr inbounds %struct.bootpc_globalcontext, %struct.bootpc_globalcontext* %26, i32 0, i32 2
  %28 = load %struct.bootpc_globalcontext*, %struct.bootpc_globalcontext** %4, align 8
  %29 = getelementptr inbounds %struct.bootpc_globalcontext, %struct.bootpc_globalcontext* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @TAG_DHCP_MSGTYPE, align 4
  %32 = call i8* @bootpc_tag(%struct.TYPE_2__* %25, i32* %27, i32 %30, i32 %31)
  store i8* %32, i8** %7, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %23
  %36 = load i8*, i8** %7, align 8
  %37 = load i8, i8* %36, align 1
  store i8 %37, i8* %6, align 1
  br label %39

38:                                               ; preds = %23
  store i8 -127, i8* %6, align 1
  br label %39

39:                                               ; preds = %38, %35
  %40 = load %struct.bootpc_ifcontext*, %struct.bootpc_ifcontext** %5, align 8
  %41 = getelementptr inbounds %struct.bootpc_ifcontext, %struct.bootpc_ifcontext* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  switch i32 %42, label %64 [
    i32 130, label %43
    i32 128, label %55
    i32 129, label %63
  ]

43:                                               ; preds = %39
  %44 = load i8, i8* %6, align 1
  %45 = zext i8 %44 to i32
  %46 = load i8, i8* @DHCP_OFFER, align 1
  %47 = zext i8 %46 to i32
  %48 = icmp ne i32 %45, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = load i8, i8* %6, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp ne i32 %51, 129
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %256

54:                                               ; preds = %49, %43
  br label %64

55:                                               ; preds = %39
  %56 = load i8, i8* %6, align 1
  %57 = zext i8 %56 to i32
  %58 = load i8, i8* @DHCP_ACK, align 1
  %59 = zext i8 %58 to i32
  %60 = icmp ne i32 %57, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %256

62:                                               ; preds = %55
  br label %63

63:                                               ; preds = %39, %62
  br label %64

64:                                               ; preds = %39, %63, %54
  %65 = load %struct.bootpc_ifcontext*, %struct.bootpc_ifcontext** %5, align 8
  %66 = getelementptr inbounds %struct.bootpc_ifcontext, %struct.bootpc_ifcontext* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @IF_BOOTP_RESOLVED, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %87, label %70

70:                                               ; preds = %64
  %71 = load %struct.bootpc_ifcontext*, %struct.bootpc_ifcontext** %5, align 8
  %72 = getelementptr inbounds %struct.bootpc_ifcontext, %struct.bootpc_ifcontext* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp eq i32 %73, 130
  br i1 %74, label %75, label %110

75:                                               ; preds = %70
  %76 = load %struct.bootpc_ifcontext*, %struct.bootpc_ifcontext** %5, align 8
  %77 = getelementptr inbounds %struct.bootpc_ifcontext, %struct.bootpc_ifcontext* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @IF_DHCP_OFFERED, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %87, label %81

81:                                               ; preds = %75
  %82 = load %struct.bootpc_ifcontext*, %struct.bootpc_ifcontext** %5, align 8
  %83 = getelementptr inbounds %struct.bootpc_ifcontext, %struct.bootpc_ifcontext* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @IF_DHCP_RESOLVED, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %110

87:                                               ; preds = %81, %75, %64
  %88 = load %struct.bootpc_globalcontext*, %struct.bootpc_globalcontext** %4, align 8
  %89 = getelementptr inbounds %struct.bootpc_globalcontext, %struct.bootpc_globalcontext* %88, i32 0, i32 0
  %90 = load %struct.bootpc_ifcontext*, %struct.bootpc_ifcontext** %5, align 8
  %91 = getelementptr inbounds %struct.bootpc_ifcontext, %struct.bootpc_ifcontext* %90, i32 0, i32 4
  %92 = load %struct.bootpc_ifcontext*, %struct.bootpc_ifcontext** %5, align 8
  %93 = getelementptr inbounds %struct.bootpc_ifcontext, %struct.bootpc_ifcontext* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @TAG_ROOT, align 4
  %96 = call i8* @bootpc_tag(%struct.TYPE_2__* %89, i32* %91, i32 %94, i32 %95)
  %97 = icmp ne i8* %96, null
  br i1 %97, label %109, label %98

98:                                               ; preds = %87
  %99 = load %struct.bootpc_globalcontext*, %struct.bootpc_globalcontext** %4, align 8
  %100 = getelementptr inbounds %struct.bootpc_globalcontext, %struct.bootpc_globalcontext* %99, i32 0, i32 0
  %101 = load %struct.bootpc_globalcontext*, %struct.bootpc_globalcontext** %4, align 8
  %102 = getelementptr inbounds %struct.bootpc_globalcontext, %struct.bootpc_globalcontext* %101, i32 0, i32 2
  %103 = load %struct.bootpc_globalcontext*, %struct.bootpc_globalcontext** %4, align 8
  %104 = getelementptr inbounds %struct.bootpc_globalcontext, %struct.bootpc_globalcontext* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @TAG_ROOT, align 4
  %107 = call i8* @bootpc_tag(%struct.TYPE_2__* %100, i32* %102, i32 %105, i32 %106)
  %108 = icmp eq i8* %107, null
  br i1 %108, label %109, label %110

109:                                              ; preds = %98, %87
  store i32 0, i32* %3, align 4
  br label %256

110:                                              ; preds = %98, %81, %70
  %111 = load %struct.bootpc_globalcontext*, %struct.bootpc_globalcontext** %4, align 8
  %112 = getelementptr inbounds %struct.bootpc_globalcontext, %struct.bootpc_globalcontext* %111, i32 0, i32 2
  %113 = load %struct.bootpc_ifcontext*, %struct.bootpc_ifcontext** %5, align 8
  %114 = getelementptr inbounds %struct.bootpc_ifcontext, %struct.bootpc_ifcontext* %113, i32 0, i32 4
  %115 = load %struct.bootpc_globalcontext*, %struct.bootpc_globalcontext** %4, align 8
  %116 = getelementptr inbounds %struct.bootpc_globalcontext, %struct.bootpc_globalcontext* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @bcopy(i32* %112, i32* %114, i32 %117)
  %119 = load %struct.bootpc_globalcontext*, %struct.bootpc_globalcontext** %4, align 8
  %120 = getelementptr inbounds %struct.bootpc_globalcontext, %struct.bootpc_globalcontext* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.bootpc_ifcontext*, %struct.bootpc_ifcontext** %5, align 8
  %123 = getelementptr inbounds %struct.bootpc_ifcontext, %struct.bootpc_ifcontext* %122, i32 0, i32 3
  store i32 %121, i32* %123, align 4
  %124 = load %struct.bootpc_ifcontext*, %struct.bootpc_ifcontext** %5, align 8
  %125 = getelementptr inbounds %struct.bootpc_ifcontext, %struct.bootpc_ifcontext* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @IF_BOOTP_UNRESOLVED, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %133

129:                                              ; preds = %110
  %130 = load i64, i64* @IF_BOOTP_RESOLVED, align 8
  %131 = load %struct.bootpc_ifcontext*, %struct.bootpc_ifcontext** %5, align 8
  %132 = getelementptr inbounds %struct.bootpc_ifcontext, %struct.bootpc_ifcontext* %131, i32 0, i32 1
  store i64 %130, i64* %132, align 8
  br label %176

133:                                              ; preds = %110
  %134 = load %struct.bootpc_ifcontext*, %struct.bootpc_ifcontext** %5, align 8
  %135 = getelementptr inbounds %struct.bootpc_ifcontext, %struct.bootpc_ifcontext* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @IF_DHCP_UNRESOLVED, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %159

139:                                              ; preds = %133
  %140 = load %struct.bootpc_ifcontext*, %struct.bootpc_ifcontext** %5, align 8
  %141 = getelementptr inbounds %struct.bootpc_ifcontext, %struct.bootpc_ifcontext* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = icmp eq i32 %142, 130
  br i1 %143, label %144, label %159

144:                                              ; preds = %139
  %145 = load i8, i8* %6, align 1
  %146 = zext i8 %145 to i32
  %147 = load i8, i8* @DHCP_OFFER, align 1
  %148 = zext i8 %147 to i32
  %149 = icmp eq i32 %146, %148
  br i1 %149, label %150, label %154

150:                                              ; preds = %144
  %151 = load i64, i64* @IF_DHCP_OFFERED, align 8
  %152 = load %struct.bootpc_ifcontext*, %struct.bootpc_ifcontext** %5, align 8
  %153 = getelementptr inbounds %struct.bootpc_ifcontext, %struct.bootpc_ifcontext* %152, i32 0, i32 1
  store i64 %151, i64* %153, align 8
  br label %158

154:                                              ; preds = %144
  %155 = load i64, i64* @IF_BOOTP_RESOLVED, align 8
  %156 = load %struct.bootpc_ifcontext*, %struct.bootpc_ifcontext** %5, align 8
  %157 = getelementptr inbounds %struct.bootpc_ifcontext, %struct.bootpc_ifcontext* %156, i32 0, i32 1
  store i64 %155, i64* %157, align 8
  br label %158

158:                                              ; preds = %154, %150
  br label %175

159:                                              ; preds = %139, %133
  %160 = load %struct.bootpc_ifcontext*, %struct.bootpc_ifcontext** %5, align 8
  %161 = getelementptr inbounds %struct.bootpc_ifcontext, %struct.bootpc_ifcontext* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @IF_DHCP_OFFERED, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %174

165:                                              ; preds = %159
  %166 = load %struct.bootpc_ifcontext*, %struct.bootpc_ifcontext** %5, align 8
  %167 = getelementptr inbounds %struct.bootpc_ifcontext, %struct.bootpc_ifcontext* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = icmp eq i32 %168, 128
  br i1 %169, label %170, label %174

170:                                              ; preds = %165
  %171 = load i64, i64* @IF_DHCP_RESOLVED, align 8
  %172 = load %struct.bootpc_ifcontext*, %struct.bootpc_ifcontext** %5, align 8
  %173 = getelementptr inbounds %struct.bootpc_ifcontext, %struct.bootpc_ifcontext* %172, i32 0, i32 1
  store i64 %171, i64* %173, align 8
  br label %174

174:                                              ; preds = %170, %165, %159
  br label %175

175:                                              ; preds = %174, %158
  br label %176

176:                                              ; preds = %175, %129
  %177 = load %struct.bootpc_ifcontext*, %struct.bootpc_ifcontext** %5, align 8
  %178 = getelementptr inbounds %struct.bootpc_ifcontext, %struct.bootpc_ifcontext* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = icmp eq i32 %179, 130
  br i1 %180, label %181, label %216

181:                                              ; preds = %176
  %182 = load %struct.bootpc_ifcontext*, %struct.bootpc_ifcontext** %5, align 8
  %183 = getelementptr inbounds %struct.bootpc_ifcontext, %struct.bootpc_ifcontext* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @IF_BOOTP_RESOLVED, align 8
  %186 = icmp ne i64 %184, %185
  br i1 %186, label %187, label %216

187:                                              ; preds = %181
  %188 = load %struct.bootpc_globalcontext*, %struct.bootpc_globalcontext** %4, align 8
  %189 = getelementptr inbounds %struct.bootpc_globalcontext, %struct.bootpc_globalcontext* %188, i32 0, i32 0
  %190 = load %struct.bootpc_ifcontext*, %struct.bootpc_ifcontext** %5, align 8
  %191 = getelementptr inbounds %struct.bootpc_ifcontext, %struct.bootpc_ifcontext* %190, i32 0, i32 4
  %192 = load %struct.bootpc_ifcontext*, %struct.bootpc_ifcontext** %5, align 8
  %193 = getelementptr inbounds %struct.bootpc_ifcontext, %struct.bootpc_ifcontext* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @TAG_DHCP_SERVERID, align 4
  %196 = call i8* @bootpc_tag(%struct.TYPE_2__* %189, i32* %191, i32 %194, i32 %195)
  store i8* %196, i8** %7, align 8
  %197 = load i8*, i8** %7, align 8
  %198 = icmp ne i8* %197, null
  br i1 %198, label %199, label %212

199:                                              ; preds = %187
  %200 = load %struct.bootpc_globalcontext*, %struct.bootpc_globalcontext** %4, align 8
  %201 = getelementptr inbounds %struct.bootpc_globalcontext, %struct.bootpc_globalcontext* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 8
  %204 = icmp eq i32 %203, 4
  br i1 %204, label %205, label %212

205:                                              ; preds = %199
  %206 = load %struct.bootpc_ifcontext*, %struct.bootpc_ifcontext** %5, align 8
  %207 = getelementptr inbounds %struct.bootpc_ifcontext, %struct.bootpc_ifcontext* %206, i32 0, i32 8
  %208 = load i8*, i8** %7, align 8
  %209 = call i32 @memcpy(i32* %207, i8* %208, i32 4)
  %210 = load %struct.bootpc_ifcontext*, %struct.bootpc_ifcontext** %5, align 8
  %211 = getelementptr inbounds %struct.bootpc_ifcontext, %struct.bootpc_ifcontext* %210, i32 0, i32 2
  store i32 1, i32* %211, align 8
  br label %215

212:                                              ; preds = %199, %187
  %213 = load %struct.bootpc_ifcontext*, %struct.bootpc_ifcontext** %5, align 8
  %214 = getelementptr inbounds %struct.bootpc_ifcontext, %struct.bootpc_ifcontext* %213, i32 0, i32 2
  store i32 0, i32* %214, align 8
  br label %215

215:                                              ; preds = %212, %205
  store i32 1, i32* %3, align 4
  br label %256

216:                                              ; preds = %181, %176
  %217 = load %struct.bootpc_globalcontext*, %struct.bootpc_globalcontext** %4, align 8
  %218 = getelementptr inbounds %struct.bootpc_globalcontext, %struct.bootpc_globalcontext* %217, i32 0, i32 0
  %219 = load %struct.bootpc_ifcontext*, %struct.bootpc_ifcontext** %5, align 8
  %220 = getelementptr inbounds %struct.bootpc_ifcontext, %struct.bootpc_ifcontext* %219, i32 0, i32 4
  %221 = load %struct.bootpc_ifcontext*, %struct.bootpc_ifcontext** %5, align 8
  %222 = getelementptr inbounds %struct.bootpc_ifcontext, %struct.bootpc_ifcontext* %221, i32 0, i32 3
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* @TAG_ROOT, align 4
  %225 = call i8* @bootpc_tag(%struct.TYPE_2__* %218, i32* %220, i32 %223, i32 %224)
  %226 = icmp ne i8* %225, null
  %227 = zext i1 %226 to i32
  %228 = load %struct.bootpc_ifcontext*, %struct.bootpc_ifcontext** %5, align 8
  %229 = getelementptr inbounds %struct.bootpc_ifcontext, %struct.bootpc_ifcontext* %228, i32 0, i32 7
  store i32 %227, i32* %229, align 4
  %230 = load %struct.bootpc_globalcontext*, %struct.bootpc_globalcontext** %4, align 8
  %231 = getelementptr inbounds %struct.bootpc_globalcontext, %struct.bootpc_globalcontext* %230, i32 0, i32 0
  %232 = load %struct.bootpc_ifcontext*, %struct.bootpc_ifcontext** %5, align 8
  %233 = getelementptr inbounds %struct.bootpc_ifcontext, %struct.bootpc_ifcontext* %232, i32 0, i32 4
  %234 = load %struct.bootpc_ifcontext*, %struct.bootpc_ifcontext** %5, align 8
  %235 = getelementptr inbounds %struct.bootpc_ifcontext, %struct.bootpc_ifcontext* %234, i32 0, i32 3
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* @TAG_ROUTERS, align 4
  %238 = call i8* @bootpc_tag(%struct.TYPE_2__* %231, i32* %233, i32 %236, i32 %237)
  %239 = icmp ne i8* %238, null
  %240 = zext i1 %239 to i32
  %241 = load %struct.bootpc_ifcontext*, %struct.bootpc_ifcontext** %5, align 8
  %242 = getelementptr inbounds %struct.bootpc_ifcontext, %struct.bootpc_ifcontext* %241, i32 0, i32 6
  store i32 %240, i32* %242, align 8
  %243 = load %struct.bootpc_globalcontext*, %struct.bootpc_globalcontext** %4, align 8
  %244 = getelementptr inbounds %struct.bootpc_globalcontext, %struct.bootpc_globalcontext* %243, i32 0, i32 0
  %245 = load %struct.bootpc_ifcontext*, %struct.bootpc_ifcontext** %5, align 8
  %246 = getelementptr inbounds %struct.bootpc_ifcontext, %struct.bootpc_ifcontext* %245, i32 0, i32 4
  %247 = load %struct.bootpc_ifcontext*, %struct.bootpc_ifcontext** %5, align 8
  %248 = getelementptr inbounds %struct.bootpc_ifcontext, %struct.bootpc_ifcontext* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* @TAG_SUBNETMASK, align 4
  %251 = call i8* @bootpc_tag(%struct.TYPE_2__* %244, i32* %246, i32 %249, i32 %250)
  %252 = icmp ne i8* %251, null
  %253 = zext i1 %252 to i32
  %254 = load %struct.bootpc_ifcontext*, %struct.bootpc_ifcontext** %5, align 8
  %255 = getelementptr inbounds %struct.bootpc_ifcontext, %struct.bootpc_ifcontext* %254, i32 0, i32 5
  store i32 %253, i32* %255, align 4
  store i32 1, i32* %3, align 4
  br label %256

256:                                              ; preds = %216, %215, %109, %61, %53, %22
  %257 = load i32, i32* %3, align 4
  ret i32 %257
}

declare dso_local i8* @bootpc_tag(%struct.TYPE_2__*, i32*, i32, i32) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
