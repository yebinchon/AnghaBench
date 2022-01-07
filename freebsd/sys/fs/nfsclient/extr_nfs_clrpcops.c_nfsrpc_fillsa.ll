; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clrpcops.c_nfsrpc_fillsa.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clrpcops.c_nfsrpc_fillsa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsmount = type { i32, %struct.TYPE_5__, %struct.nfsclclient* }
%struct.TYPE_5__ = type { i32*, i64 }
%struct.nfsclclient = type { i32 }
%struct.sockaddr_in = type { i64, i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.sockaddr_in6 = type { i64, i64, i32, i32 }
%struct.nfsclds = type { i32, %struct.TYPE_6__, %struct.sockaddr*, i32, i32 }
%struct.TYPE_6__ = type { i64, i32, i32 }
%struct.sockaddr = type { i32, %struct.sockaddr*, i32, i32, i32, i32 }
%struct.nfssockreq = type { i32, %struct.nfssockreq*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"nfsrpc_fillsa: NULL nr_cred\00", align 1
@EPERM = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@NFSCLDS_DS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"fnd same addr\0A\00", align 1
@nfsclds_list = common dso_local global i32 0, align 4
@M_SONAME = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@M_NFSSOCKREQ = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"nfssock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@NFS_PROG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"DS connect=%d\0A\00", align 1
@NFS_VER4 = common dso_local global i32 0, align 4
@NFSV4EXCH_USEPNFSDS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"DS exchangeid=%d\0A\00", align 1
@M_NFSCLDS = common dso_local global i32 0, align 4
@INT32_MAX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"nfsds\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"nfssession\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"getsame ret=%d\0A\00", align 1
@NFSDSP_USETHISSESSION = common dso_local global i32 0, align 4
@nfscl_dssameconn = common dso_local global i64 0, align 8
@NFSCLDS_SAMECONN = common dso_local global i32 0, align 4
@NFSDSP_NOTFOUND = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [18 x i8] c"DS createsess=%d\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"add DS session\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfsmount*, %struct.sockaddr_in*, %struct.sockaddr_in6*, i64, i32, %struct.nfsclds**, i32*)* @nfsrpc_fillsa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsrpc_fillsa(%struct.nfsmount* %0, %struct.sockaddr_in* %1, %struct.sockaddr_in6* %2, i64 %3, i32 %4, %struct.nfsclds** %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.nfsmount*, align 8
  %10 = alloca %struct.sockaddr_in*, align 8
  %11 = alloca %struct.sockaddr_in6*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.nfsclds**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.sockaddr_in*, align 8
  %17 = alloca %struct.sockaddr_in*, align 8
  %18 = alloca %struct.sockaddr_in6*, align 8
  %19 = alloca %struct.sockaddr_in6*, align 8
  %20 = alloca %struct.nfsclclient*, align 8
  %21 = alloca %struct.nfssockreq*, align 8
  %22 = alloca %struct.nfsclds*, align 8
  %23 = alloca %struct.nfsclds*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.nfsmount* %0, %struct.nfsmount** %9, align 8
  store %struct.sockaddr_in* %1, %struct.sockaddr_in** %10, align 8
  store %struct.sockaddr_in6* %2, %struct.sockaddr_in6** %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store %struct.nfsclds** %5, %struct.nfsclds*** %14, align 8
  store i32* %6, i32** %15, align 8
  %27 = load %struct.nfsmount*, %struct.nfsmount** %9, align 8
  %28 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i32 @KASSERT(i32 %32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %34 = call i32 (...) @NFSLOCKCLSTATE()
  %35 = load %struct.nfsmount*, %struct.nfsmount** %9, align 8
  %36 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %35, i32 0, i32 2
  %37 = load %struct.nfsclclient*, %struct.nfsclclient** %36, align 8
  store %struct.nfsclclient* %37, %struct.nfsclclient** %20, align 8
  %38 = call i32 (...) @NFSUNLOCKCLSTATE()
  %39 = load %struct.nfsclclient*, %struct.nfsclclient** %20, align 8
  %40 = icmp eq %struct.nfsclclient* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %7
  %42 = load i32, i32* @EPERM, align 4
  store i32 %42, i32* %8, align 4
  br label %477

43:                                               ; preds = %7
  %44 = load i64, i64* %12, align 8
  %45 = load i64, i64* @AF_INET, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %164

47:                                               ; preds = %43
  %48 = load %struct.nfsmount*, %struct.nfsmount** %9, align 8
  %49 = call i32 @NFSLOCKMNT(%struct.nfsmount* %48)
  %50 = load %struct.nfsmount*, %struct.nfsmount** %9, align 8
  %51 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %54, %struct.sockaddr_in** %16, align 8
  %55 = load %struct.nfsmount*, %struct.nfsmount** %9, align 8
  %56 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %55, i32 0, i32 0
  %57 = call %struct.nfsclds* @TAILQ_FIRST(i32* %56)
  store %struct.nfsclds* %57, %struct.nfsclds** %23, align 8
  br label %58

58:                                               ; preds = %126, %47
  %59 = load %struct.nfsclds*, %struct.nfsclds** %23, align 8
  %60 = icmp ne %struct.nfsclds* %59, null
  br i1 %60, label %61, label %127

61:                                               ; preds = %58
  %62 = load %struct.sockaddr_in*, %struct.sockaddr_in** %16, align 8
  %63 = icmp ne %struct.sockaddr_in* %62, null
  br i1 %63, label %64, label %107

64:                                               ; preds = %61
  %65 = load %struct.sockaddr_in*, %struct.sockaddr_in** %16, align 8
  %66 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @AF_INET, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %107

70:                                               ; preds = %64
  %71 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %72 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.sockaddr_in*, %struct.sockaddr_in** %16, align 8
  %76 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %74, %78
  br i1 %79, label %80, label %107

80:                                               ; preds = %70
  %81 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %82 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.sockaddr_in*, %struct.sockaddr_in** %16, align 8
  %85 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %83, %86
  br i1 %87, label %88, label %107

88:                                               ; preds = %80
  %89 = load %struct.nfsclds*, %struct.nfsclds** %23, align 8
  %90 = getelementptr inbounds %struct.nfsclds, %struct.nfsclds* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @NFSCLDS_DS, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %107

95:                                               ; preds = %88
  %96 = load %struct.nfsclds*, %struct.nfsclds** %23, align 8
  %97 = getelementptr inbounds %struct.nfsclds, %struct.nfsclds* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %95
  %102 = load %struct.nfsclds*, %struct.nfsclds** %23, align 8
  %103 = load %struct.nfsclds**, %struct.nfsclds*** %14, align 8
  store %struct.nfsclds* %102, %struct.nfsclds** %103, align 8
  %104 = load %struct.nfsmount*, %struct.nfsmount** %9, align 8
  %105 = call i32 @NFSUNLOCKMNT(%struct.nfsmount* %104)
  %106 = call i32 (i32, i8*, ...) @NFSCL_DEBUG(i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %477

107:                                              ; preds = %95, %88, %80, %70, %64, %61
  %108 = load %struct.nfsclds*, %struct.nfsclds** %23, align 8
  %109 = load i32, i32* @nfsclds_list, align 4
  %110 = call %struct.nfsclds* @TAILQ_NEXT(%struct.nfsclds* %108, i32 %109)
  store %struct.nfsclds* %110, %struct.nfsclds** %23, align 8
  %111 = load %struct.nfsclds*, %struct.nfsclds** %23, align 8
  %112 = icmp ne %struct.nfsclds* %111, null
  br i1 %112, label %113, label %125

113:                                              ; preds = %107
  %114 = load %struct.nfsclds*, %struct.nfsclds** %23, align 8
  %115 = getelementptr inbounds %struct.nfsclds, %struct.nfsclds* %114, i32 0, i32 2
  %116 = load %struct.sockaddr*, %struct.sockaddr** %115, align 8
  %117 = icmp ne %struct.sockaddr* %116, null
  br i1 %117, label %118, label %125

118:                                              ; preds = %113
  %119 = load %struct.nfsclds*, %struct.nfsclds** %23, align 8
  %120 = getelementptr inbounds %struct.nfsclds, %struct.nfsclds* %119, i32 0, i32 2
  %121 = load %struct.sockaddr*, %struct.sockaddr** %120, align 8
  %122 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %121, i32 0, i32 1
  %123 = load %struct.sockaddr*, %struct.sockaddr** %122, align 8
  %124 = bitcast %struct.sockaddr* %123 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %124, %struct.sockaddr_in** %16, align 8
  br label %126

125:                                              ; preds = %113, %107
  store %struct.sockaddr_in* null, %struct.sockaddr_in** %16, align 8
  br label %126

126:                                              ; preds = %125, %118
  br label %58

127:                                              ; preds = %58
  %128 = load %struct.nfsmount*, %struct.nfsmount** %9, align 8
  %129 = call i32 @NFSUNLOCKMNT(%struct.nfsmount* %128)
  %130 = load i32, i32* @M_SONAME, align 4
  %131 = load i32, i32* @M_WAITOK, align 4
  %132 = load i32, i32* @M_ZERO, align 4
  %133 = or i32 %131, %132
  %134 = call i8* @malloc(i32 32, i32 %130, i32 %133)
  %135 = bitcast i8* %134 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %135, %struct.sockaddr_in** %17, align 8
  %136 = load %struct.sockaddr_in*, %struct.sockaddr_in** %17, align 8
  %137 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %136, i32 0, i32 2
  store i32 32, i32* %137, align 8
  %138 = load i64, i64* @AF_INET, align 8
  %139 = load %struct.sockaddr_in*, %struct.sockaddr_in** %17, align 8
  %140 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %139, i32 0, i32 0
  store i64 %138, i64* %140, align 8
  %141 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %142 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.sockaddr_in*, %struct.sockaddr_in** %17, align 8
  %145 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %144, i32 0, i32 1
  store i64 %143, i64* %145, align 8
  %146 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %147 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %146, i32 0, i32 3
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.sockaddr_in*, %struct.sockaddr_in** %17, align 8
  %151 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %150, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  store i64 %149, i64* %152, align 8
  %153 = load i32, i32* @M_NFSSOCKREQ, align 4
  %154 = load i32, i32* @M_WAITOK, align 4
  %155 = load i32, i32* @M_ZERO, align 4
  %156 = or i32 %154, %155
  %157 = call i8* @malloc(i32 32, i32 %153, i32 %156)
  %158 = bitcast i8* %157 to %struct.nfssockreq*
  store %struct.nfssockreq* %158, %struct.nfssockreq** %21, align 8
  %159 = load %struct.sockaddr_in*, %struct.sockaddr_in** %17, align 8
  %160 = bitcast %struct.sockaddr_in* %159 to %struct.sockaddr*
  %161 = bitcast %struct.sockaddr* %160 to %struct.nfssockreq*
  %162 = load %struct.nfssockreq*, %struct.nfssockreq** %21, align 8
  %163 = getelementptr inbounds %struct.nfssockreq, %struct.nfssockreq* %162, i32 0, i32 1
  store %struct.nfssockreq* %161, %struct.nfssockreq** %163, align 8
  br label %282

164:                                              ; preds = %43
  %165 = load i64, i64* %12, align 8
  %166 = load i64, i64* @AF_INET6, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %279

168:                                              ; preds = %164
  %169 = load %struct.nfsmount*, %struct.nfsmount** %9, align 8
  %170 = call i32 @NFSLOCKMNT(%struct.nfsmount* %169)
  %171 = load %struct.nfsmount*, %struct.nfsmount** %9, align 8
  %172 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = inttoptr i64 %174 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %175, %struct.sockaddr_in6** %18, align 8
  %176 = load %struct.nfsmount*, %struct.nfsmount** %9, align 8
  %177 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %176, i32 0, i32 0
  %178 = call %struct.nfsclds* @TAILQ_FIRST(i32* %177)
  store %struct.nfsclds* %178, %struct.nfsclds** %23, align 8
  br label %179

179:                                              ; preds = %243, %168
  %180 = load %struct.nfsclds*, %struct.nfsclds** %23, align 8
  %181 = icmp ne %struct.nfsclds* %180, null
  br i1 %181, label %182, label %244

182:                                              ; preds = %179
  %183 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %18, align 8
  %184 = icmp ne %struct.sockaddr_in6* %183, null
  br i1 %184, label %185, label %224

185:                                              ; preds = %182
  %186 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %18, align 8
  %187 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @AF_INET6, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %191, label %224

191:                                              ; preds = %185
  %192 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %11, align 8
  %193 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %192, i32 0, i32 3
  %194 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %18, align 8
  %195 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %194, i32 0, i32 3
  %196 = call i64 @IN6_ARE_ADDR_EQUAL(i32* %193, i32* %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %224

198:                                              ; preds = %191
  %199 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %11, align 8
  %200 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %18, align 8
  %203 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = icmp eq i64 %201, %204
  br i1 %205, label %206, label %224

206:                                              ; preds = %198
  %207 = load %struct.nfsclds*, %struct.nfsclds** %23, align 8
  %208 = getelementptr inbounds %struct.nfsclds, %struct.nfsclds* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @NFSCLDS_DS, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %224

213:                                              ; preds = %206
  %214 = load %struct.nfsclds*, %struct.nfsclds** %23, align 8
  %215 = getelementptr inbounds %struct.nfsclds, %struct.nfsclds* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = icmp eq i64 %217, 0
  br i1 %218, label %219, label %224

219:                                              ; preds = %213
  %220 = load %struct.nfsclds*, %struct.nfsclds** %23, align 8
  %221 = load %struct.nfsclds**, %struct.nfsclds*** %14, align 8
  store %struct.nfsclds* %220, %struct.nfsclds** %221, align 8
  %222 = load %struct.nfsmount*, %struct.nfsmount** %9, align 8
  %223 = call i32 @NFSUNLOCKMNT(%struct.nfsmount* %222)
  store i32 0, i32* %8, align 4
  br label %477

224:                                              ; preds = %213, %206, %198, %191, %185, %182
  %225 = load %struct.nfsclds*, %struct.nfsclds** %23, align 8
  %226 = load i32, i32* @nfsclds_list, align 4
  %227 = call %struct.nfsclds* @TAILQ_NEXT(%struct.nfsclds* %225, i32 %226)
  store %struct.nfsclds* %227, %struct.nfsclds** %23, align 8
  %228 = load %struct.nfsclds*, %struct.nfsclds** %23, align 8
  %229 = icmp ne %struct.nfsclds* %228, null
  br i1 %229, label %230, label %242

230:                                              ; preds = %224
  %231 = load %struct.nfsclds*, %struct.nfsclds** %23, align 8
  %232 = getelementptr inbounds %struct.nfsclds, %struct.nfsclds* %231, i32 0, i32 2
  %233 = load %struct.sockaddr*, %struct.sockaddr** %232, align 8
  %234 = icmp ne %struct.sockaddr* %233, null
  br i1 %234, label %235, label %242

235:                                              ; preds = %230
  %236 = load %struct.nfsclds*, %struct.nfsclds** %23, align 8
  %237 = getelementptr inbounds %struct.nfsclds, %struct.nfsclds* %236, i32 0, i32 2
  %238 = load %struct.sockaddr*, %struct.sockaddr** %237, align 8
  %239 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %238, i32 0, i32 1
  %240 = load %struct.sockaddr*, %struct.sockaddr** %239, align 8
  %241 = bitcast %struct.sockaddr* %240 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %241, %struct.sockaddr_in6** %18, align 8
  br label %243

242:                                              ; preds = %230, %224
  store %struct.sockaddr_in6* null, %struct.sockaddr_in6** %18, align 8
  br label %243

243:                                              ; preds = %242, %235
  br label %179

244:                                              ; preds = %179
  %245 = load %struct.nfsmount*, %struct.nfsmount** %9, align 8
  %246 = call i32 @NFSUNLOCKMNT(%struct.nfsmount* %245)
  %247 = load i32, i32* @M_SONAME, align 4
  %248 = load i32, i32* @M_WAITOK, align 4
  %249 = load i32, i32* @M_ZERO, align 4
  %250 = or i32 %248, %249
  %251 = call i8* @malloc(i32 24, i32 %247, i32 %250)
  %252 = bitcast i8* %251 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %252, %struct.sockaddr_in6** %19, align 8
  %253 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %19, align 8
  %254 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %253, i32 0, i32 2
  store i32 24, i32* %254, align 8
  %255 = load i64, i64* @AF_INET6, align 8
  %256 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %19, align 8
  %257 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %256, i32 0, i32 0
  store i64 %255, i64* %257, align 8
  %258 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %11, align 8
  %259 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %258, i32 0, i32 1
  %260 = load i64, i64* %259, align 8
  %261 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %19, align 8
  %262 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %261, i32 0, i32 1
  store i64 %260, i64* %262, align 8
  %263 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %11, align 8
  %264 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %263, i32 0, i32 3
  %265 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %19, align 8
  %266 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %265, i32 0, i32 3
  %267 = call i32 @NFSBCOPY(i32* %264, i32* %266, i32 4)
  %268 = load i32, i32* @M_NFSSOCKREQ, align 4
  %269 = load i32, i32* @M_WAITOK, align 4
  %270 = load i32, i32* @M_ZERO, align 4
  %271 = or i32 %269, %270
  %272 = call i8* @malloc(i32 32, i32 %268, i32 %271)
  %273 = bitcast i8* %272 to %struct.nfssockreq*
  store %struct.nfssockreq* %273, %struct.nfssockreq** %21, align 8
  %274 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %19, align 8
  %275 = bitcast %struct.sockaddr_in6* %274 to %struct.sockaddr*
  %276 = bitcast %struct.sockaddr* %275 to %struct.nfssockreq*
  %277 = load %struct.nfssockreq*, %struct.nfssockreq** %21, align 8
  %278 = getelementptr inbounds %struct.nfssockreq, %struct.nfssockreq* %277, i32 0, i32 1
  store %struct.nfssockreq* %276, %struct.nfssockreq** %278, align 8
  br label %281

279:                                              ; preds = %164
  %280 = load i32, i32* @EPERM, align 4
  store i32 %280, i32* %8, align 4
  br label %477

281:                                              ; preds = %244
  br label %282

282:                                              ; preds = %281, %127
  %283 = load i32, i32* @SOCK_STREAM, align 4
  %284 = load %struct.nfssockreq*, %struct.nfssockreq** %21, align 8
  %285 = getelementptr inbounds %struct.nfssockreq, %struct.nfssockreq* %284, i32 0, i32 5
  store i32 %283, i32* %285, align 4
  %286 = load %struct.nfssockreq*, %struct.nfssockreq** %21, align 8
  %287 = getelementptr inbounds %struct.nfssockreq, %struct.nfssockreq* %286, i32 0, i32 2
  %288 = load i32, i32* @MTX_DEF, align 4
  %289 = call i32 @mtx_init(i32* %287, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 %288)
  %290 = load i32, i32* @NFS_PROG, align 4
  %291 = load %struct.nfssockreq*, %struct.nfssockreq** %21, align 8
  %292 = getelementptr inbounds %struct.nfssockreq, %struct.nfssockreq* %291, i32 0, i32 4
  store i32 %290, i32* %292, align 8
  %293 = load i32, i32* %13, align 4
  %294 = load %struct.nfssockreq*, %struct.nfssockreq** %21, align 8
  %295 = getelementptr inbounds %struct.nfssockreq, %struct.nfssockreq* %294, i32 0, i32 0
  store i32 %293, i32* %295, align 8
  %296 = load %struct.nfsmount*, %struct.nfsmount** %9, align 8
  %297 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %296, i32 0, i32 1
  %298 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %297, i32 0, i32 0
  %299 = load i32*, i32** %298, align 8
  %300 = call i32 @crhold(i32* %299)
  %301 = load %struct.nfssockreq*, %struct.nfssockreq** %21, align 8
  %302 = getelementptr inbounds %struct.nfssockreq, %struct.nfssockreq* %301, i32 0, i32 3
  store i32 %300, i32* %302, align 4
  %303 = load %struct.nfsmount*, %struct.nfsmount** %9, align 8
  %304 = load %struct.nfssockreq*, %struct.nfssockreq** %21, align 8
  %305 = bitcast %struct.nfssockreq* %304 to %struct.sockaddr*
  %306 = load i32*, i32** %15, align 8
  %307 = call i32 @newnfs_connect(%struct.nfsmount* %303, %struct.sockaddr* %305, i32* null, i32* %306, i32 0)
  store i32 %307, i32* %24, align 4
  %308 = load i32, i32* %24, align 4
  %309 = call i32 (i32, i8*, ...) @NFSCL_DEBUG(i32 3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %308)
  store %struct.nfsclds* null, %struct.nfsclds** %22, align 8
  %310 = load i32, i32* %24, align 4
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %312, label %361

312:                                              ; preds = %282
  %313 = load i32, i32* %13, align 4
  %314 = load i32, i32* @NFS_VER4, align 4
  %315 = icmp eq i32 %313, %314
  br i1 %315, label %316, label %336

316:                                              ; preds = %312
  %317 = load %struct.nfsmount*, %struct.nfsmount** %9, align 8
  %318 = load %struct.nfsclclient*, %struct.nfsclclient** %20, align 8
  %319 = load %struct.nfssockreq*, %struct.nfssockreq** %21, align 8
  %320 = bitcast %struct.nfssockreq* %319 to %struct.sockaddr*
  %321 = load i32, i32* @NFSV4EXCH_USEPNFSDS, align 4
  %322 = load %struct.nfssockreq*, %struct.nfssockreq** %21, align 8
  %323 = getelementptr inbounds %struct.nfssockreq, %struct.nfssockreq* %322, i32 0, i32 3
  %324 = load i32, i32* %323, align 4
  %325 = load i32*, i32** %15, align 8
  %326 = call i32 @nfsrpc_exchangeid(%struct.nfsmount* %317, %struct.nfsclclient* %318, %struct.sockaddr* %320, i32 %321, %struct.nfsclds** %22, i32 %324, i32* %325)
  store i32 %326, i32* %24, align 4
  %327 = load i32, i32* %24, align 4
  %328 = call i32 (i32, i8*, ...) @NFSCL_DEBUG(i32 3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %327)
  %329 = load i32, i32* %24, align 4
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %335

331:                                              ; preds = %316
  %332 = load %struct.nfssockreq*, %struct.nfssockreq** %21, align 8
  %333 = bitcast %struct.nfssockreq* %332 to %struct.sockaddr*
  %334 = call i32 @newnfs_disconnect(%struct.sockaddr* %333)
  br label %335

335:                                              ; preds = %331, %316
  br label %360

336:                                              ; preds = %312
  %337 = load i32, i32* @M_NFSCLDS, align 4
  %338 = load i32, i32* @M_WAITOK, align 4
  %339 = load i32, i32* @M_ZERO, align 4
  %340 = or i32 %338, %339
  %341 = call i8* @malloc(i32 40, i32 %337, i32 %340)
  %342 = bitcast i8* %341 to %struct.nfsclds*
  store %struct.nfsclds* %342, %struct.nfsclds** %22, align 8
  %343 = load i32, i32* @NFSCLDS_DS, align 4
  %344 = load %struct.nfsclds*, %struct.nfsclds** %22, align 8
  %345 = getelementptr inbounds %struct.nfsclds, %struct.nfsclds* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 8
  %347 = or i32 %346, %343
  store i32 %347, i32* %345, align 8
  %348 = load i32, i32* @INT32_MAX, align 4
  %349 = load %struct.nfsclds*, %struct.nfsclds** %22, align 8
  %350 = getelementptr inbounds %struct.nfsclds, %struct.nfsclds* %349, i32 0, i32 4
  store i32 %348, i32* %350, align 4
  %351 = load %struct.nfsclds*, %struct.nfsclds** %22, align 8
  %352 = getelementptr inbounds %struct.nfsclds, %struct.nfsclds* %351, i32 0, i32 3
  %353 = load i32, i32* @MTX_DEF, align 4
  %354 = call i32 @mtx_init(i32* %352, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32* null, i32 %353)
  %355 = load %struct.nfsclds*, %struct.nfsclds** %22, align 8
  %356 = getelementptr inbounds %struct.nfsclds, %struct.nfsclds* %355, i32 0, i32 1
  %357 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %356, i32 0, i32 2
  %358 = load i32, i32* @MTX_DEF, align 4
  %359 = call i32 @mtx_init(i32* %357, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32* null, i32 %358)
  br label %360

360:                                              ; preds = %336, %335
  br label %361

361:                                              ; preds = %360, %282
  %362 = load i32, i32* %24, align 4
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %364, label %431

364:                                              ; preds = %361
  %365 = load %struct.nfssockreq*, %struct.nfssockreq** %21, align 8
  %366 = bitcast %struct.nfssockreq* %365 to %struct.sockaddr*
  %367 = load %struct.nfsclds*, %struct.nfsclds** %22, align 8
  %368 = getelementptr inbounds %struct.nfsclds, %struct.nfsclds* %367, i32 0, i32 2
  store %struct.sockaddr* %366, %struct.sockaddr** %368, align 8
  %369 = load i32, i32* %13, align 4
  %370 = load i32, i32* @NFS_VER4, align 4
  %371 = icmp eq i32 %369, %370
  br i1 %371, label %372, label %430

372:                                              ; preds = %364
  %373 = load %struct.nfsmount*, %struct.nfsmount** %9, align 8
  %374 = call i32 @NFSLOCKMNT(%struct.nfsmount* %373)
  %375 = load %struct.nfsmount*, %struct.nfsmount** %9, align 8
  %376 = load %struct.nfsclds*, %struct.nfsclds** %22, align 8
  %377 = call i32 @nfscl_getsameserver(%struct.nfsmount* %375, %struct.nfsclds* %376, %struct.nfsclds** %23, i32* %26)
  store i32 %377, i32* %25, align 4
  %378 = load i32, i32* %25, align 4
  %379 = call i32 (i32, i8*, ...) @NFSCL_DEBUG(i32 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 %378)
  %380 = load i32, i32* %25, align 4
  %381 = load i32, i32* @NFSDSP_USETHISSESSION, align 4
  %382 = icmp eq i32 %380, %381
  br i1 %382, label %383, label %405

383:                                              ; preds = %372
  %384 = load i64, i64* @nfscl_dssameconn, align 8
  %385 = icmp ne i64 %384, 0
  br i1 %385, label %386, label %405

386:                                              ; preds = %383
  %387 = load %struct.nfsclds*, %struct.nfsclds** %23, align 8
  %388 = call i32 @NFSLOCKDS(%struct.nfsclds* %387)
  %389 = load i32, i32* @NFSCLDS_SAMECONN, align 4
  %390 = load %struct.nfsclds*, %struct.nfsclds** %23, align 8
  %391 = getelementptr inbounds %struct.nfsclds, %struct.nfsclds* %390, i32 0, i32 0
  %392 = load i32, i32* %391, align 8
  %393 = or i32 %392, %389
  store i32 %393, i32* %391, align 8
  %394 = load %struct.nfsclds*, %struct.nfsclds** %23, align 8
  %395 = call i32 @NFSUNLOCKDS(%struct.nfsclds* %394)
  %396 = load %struct.nfsmount*, %struct.nfsmount** %9, align 8
  %397 = call i32 @NFSUNLOCKMNT(%struct.nfsmount* %396)
  %398 = load %struct.nfssockreq*, %struct.nfssockreq** %21, align 8
  %399 = bitcast %struct.nfssockreq* %398 to %struct.sockaddr*
  %400 = call i32 @newnfs_disconnect(%struct.sockaddr* %399)
  %401 = load %struct.nfsclds*, %struct.nfsclds** %22, align 8
  %402 = call i32 @nfscl_freenfsclds(%struct.nfsclds* %401)
  %403 = load %struct.nfsclds*, %struct.nfsclds** %23, align 8
  %404 = load %struct.nfsclds**, %struct.nfsclds*** %14, align 8
  store %struct.nfsclds* %403, %struct.nfsclds** %404, align 8
  store i32 0, i32* %8, align 4
  br label %477

405:                                              ; preds = %383, %372
  %406 = load i32, i32* %25, align 4
  %407 = load i32, i32* @NFSDSP_NOTFOUND, align 4
  %408 = icmp eq i32 %406, %407
  br i1 %408, label %409, label %414

409:                                              ; preds = %405
  %410 = load %struct.nfsclds*, %struct.nfsclds** %22, align 8
  %411 = getelementptr inbounds %struct.nfsclds, %struct.nfsclds* %410, i32 0, i32 1
  %412 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %411, i32 0, i32 1
  %413 = load i32, i32* %412, align 8
  store i32 %413, i32* %26, align 4
  br label %414

414:                                              ; preds = %409, %405
  %415 = load %struct.nfsmount*, %struct.nfsmount** %9, align 8
  %416 = call i32 @NFSUNLOCKMNT(%struct.nfsmount* %415)
  %417 = load %struct.nfsmount*, %struct.nfsmount** %9, align 8
  %418 = load %struct.nfsclds*, %struct.nfsclds** %22, align 8
  %419 = getelementptr inbounds %struct.nfsclds, %struct.nfsclds* %418, i32 0, i32 1
  %420 = load %struct.nfssockreq*, %struct.nfssockreq** %21, align 8
  %421 = bitcast %struct.nfssockreq* %420 to %struct.sockaddr*
  %422 = load i32, i32* %26, align 4
  %423 = load %struct.nfssockreq*, %struct.nfssockreq** %21, align 8
  %424 = getelementptr inbounds %struct.nfssockreq, %struct.nfssockreq* %423, i32 0, i32 3
  %425 = load i32, i32* %424, align 4
  %426 = load i32*, i32** %15, align 8
  %427 = call i32 @nfsrpc_createsession(%struct.nfsmount* %417, %struct.TYPE_6__* %419, %struct.sockaddr* %421, i32 %422, i32 0, i32 %425, i32* %426)
  store i32 %427, i32* %24, align 4
  %428 = load i32, i32* %24, align 4
  %429 = call i32 (i32, i8*, ...) @NFSCL_DEBUG(i32 3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32 %428)
  br label %430

430:                                              ; preds = %414, %364
  br label %449

431:                                              ; preds = %361
  %432 = load %struct.nfssockreq*, %struct.nfssockreq** %21, align 8
  %433 = getelementptr inbounds %struct.nfssockreq, %struct.nfssockreq* %432, i32 0, i32 3
  %434 = load i32, i32* %433, align 4
  %435 = call i32 @NFSFREECRED(i32 %434)
  %436 = load %struct.nfssockreq*, %struct.nfssockreq** %21, align 8
  %437 = getelementptr inbounds %struct.nfssockreq, %struct.nfssockreq* %436, i32 0, i32 2
  %438 = call i32 @NFSFREEMUTEX(i32* %437)
  %439 = load %struct.nfssockreq*, %struct.nfssockreq** %21, align 8
  %440 = getelementptr inbounds %struct.nfssockreq, %struct.nfssockreq* %439, i32 0, i32 1
  %441 = load %struct.nfssockreq*, %struct.nfssockreq** %440, align 8
  %442 = bitcast %struct.nfssockreq* %441 to %struct.sockaddr*
  %443 = load i32, i32* @M_SONAME, align 4
  %444 = call i32 @free(%struct.sockaddr* %442, i32 %443)
  %445 = load %struct.nfssockreq*, %struct.nfssockreq** %21, align 8
  %446 = bitcast %struct.nfssockreq* %445 to %struct.sockaddr*
  %447 = load i32, i32* @M_NFSSOCKREQ, align 4
  %448 = call i32 @free(%struct.sockaddr* %446, i32 %447)
  br label %449

449:                                              ; preds = %431, %430
  %450 = load i32, i32* %24, align 4
  %451 = icmp eq i32 %450, 0
  br i1 %451, label %452, label %465

452:                                              ; preds = %449
  %453 = call i32 (i32, i8*, ...) @NFSCL_DEBUG(i32 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  %454 = load %struct.nfsmount*, %struct.nfsmount** %9, align 8
  %455 = call i32 @NFSLOCKMNT(%struct.nfsmount* %454)
  %456 = load %struct.nfsmount*, %struct.nfsmount** %9, align 8
  %457 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %456, i32 0, i32 0
  %458 = load %struct.nfsclds*, %struct.nfsclds** %22, align 8
  %459 = load i32, i32* @nfsclds_list, align 4
  %460 = call i32 @TAILQ_INSERT_TAIL(i32* %457, %struct.nfsclds* %458, i32 %459)
  %461 = load %struct.nfsmount*, %struct.nfsmount** %9, align 8
  %462 = call i32 @NFSUNLOCKMNT(%struct.nfsmount* %461)
  %463 = load %struct.nfsclds*, %struct.nfsclds** %22, align 8
  %464 = load %struct.nfsclds**, %struct.nfsclds*** %14, align 8
  store %struct.nfsclds* %463, %struct.nfsclds** %464, align 8
  br label %475

465:                                              ; preds = %449
  %466 = load %struct.nfsclds*, %struct.nfsclds** %22, align 8
  %467 = icmp ne %struct.nfsclds* %466, null
  br i1 %467, label %468, label %474

468:                                              ; preds = %465
  %469 = load %struct.nfssockreq*, %struct.nfssockreq** %21, align 8
  %470 = bitcast %struct.nfssockreq* %469 to %struct.sockaddr*
  %471 = call i32 @newnfs_disconnect(%struct.sockaddr* %470)
  %472 = load %struct.nfsclds*, %struct.nfsclds** %22, align 8
  %473 = call i32 @nfscl_freenfsclds(%struct.nfsclds* %472)
  br label %474

474:                                              ; preds = %468, %465
  br label %475

475:                                              ; preds = %474, %452
  %476 = load i32, i32* %24, align 4
  store i32 %476, i32* %8, align 4
  br label %477

477:                                              ; preds = %475, %386, %279, %219, %101, %41
  %478 = load i32, i32* %8, align 4
  ret i32 %478
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @NFSLOCKCLSTATE(...) #1

declare dso_local i32 @NFSUNLOCKCLSTATE(...) #1

declare dso_local i32 @NFSLOCKMNT(%struct.nfsmount*) #1

declare dso_local %struct.nfsclds* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @NFSUNLOCKMNT(%struct.nfsmount*) #1

declare dso_local i32 @NFSCL_DEBUG(i32, i8*, ...) #1

declare dso_local %struct.nfsclds* @TAILQ_NEXT(%struct.nfsclds*, i32) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i64 @IN6_ARE_ADDR_EQUAL(i32*, i32*) #1

declare dso_local i32 @NFSBCOPY(i32*, i32*, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @crhold(i32*) #1

declare dso_local i32 @newnfs_connect(%struct.nfsmount*, %struct.sockaddr*, i32*, i32*, i32) #1

declare dso_local i32 @nfsrpc_exchangeid(%struct.nfsmount*, %struct.nfsclclient*, %struct.sockaddr*, i32, %struct.nfsclds**, i32, i32*) #1

declare dso_local i32 @newnfs_disconnect(%struct.sockaddr*) #1

declare dso_local i32 @nfscl_getsameserver(%struct.nfsmount*, %struct.nfsclds*, %struct.nfsclds**, i32*) #1

declare dso_local i32 @NFSLOCKDS(%struct.nfsclds*) #1

declare dso_local i32 @NFSUNLOCKDS(%struct.nfsclds*) #1

declare dso_local i32 @nfscl_freenfsclds(%struct.nfsclds*) #1

declare dso_local i32 @nfsrpc_createsession(%struct.nfsmount*, %struct.TYPE_6__*, %struct.sockaddr*, i32, i32, i32, i32*) #1

declare dso_local i32 @NFSFREECRED(i32) #1

declare dso_local i32 @NFSFREEMUTEX(i32*) #1

declare dso_local i32 @free(%struct.sockaddr*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.nfsclds*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
