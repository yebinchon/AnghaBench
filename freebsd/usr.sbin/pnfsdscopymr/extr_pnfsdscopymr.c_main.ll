; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pnfsdscopymr/extr_pnfsdscopymr.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pnfsdscopymr/extr_pnfsdscopymr.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd_pnfsd_args = type { i8*, i8*, i8*, i32 }
%struct.stat = type { i32 }
%struct.statfs = type { i8*, i8*, i32 }
%struct.addrinfo = type { i64, i32, %struct.addrinfo*, i32, i8* }
%struct.sockaddr_in = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.sockaddr_in6 = type { i32, %struct.TYPE_5__ }
%struct.pnfsdsfile = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@NFSDEV_MAXMIRRORS = common dso_local global i32 0, align 4
@MNAMELEN = common dso_local global i64 0, align 8
@NI_MAXHOST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"Must be run as root/su\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"m:r:\00", align 1
@longopts = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"-r and -m are mutually exclusive\00", align 1
@optarg = common dso_local global i8* null, align 8
@optind = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"vfs.nfs.pnfsmirror\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Can't get vfs.nfs.pnfsmirror\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Can't migrate to same server\00", align 1
@EXTATTR_NAMESPACE_SYSTEM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"pnfsd.dsfile\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"Can't get extattr pnfsd.dsfile for %s\00", align 1
@AF_INET = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [14 x i8] c"Can't stat %s\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"%s is not a directory\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"Can't fsstat %s\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"nfs\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"%s is not an NFS mount\00", align 1
@.str.13 = private unnamed_addr constant [44 x i8] c"%s is not the mounted-on dir for the new DS\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"No <host>: in mount %s\00", align 1
@PF_UNSPEC = common dso_local global i8* null, align 8
@SOCK_STREAM = common dso_local global i8* null, align 8
@.str.15 = private unnamed_addr constant [25 x i8] c"Can't get address for %s\00", align 1
@AF_INET6 = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [43 x i8] c"%s is not the mounted-on dir of the cur DS\00", align 1
@PNFSDOP_COPYMR = common dso_local global i32 0, align 4
@NFSSVC_PNFSDS = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [26 x i8] c"Copymr failed for file %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.nfsd_pnfsd_args, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.stat, align 4
  %10 = alloca %struct.statfs, align 8
  %11 = alloca %struct.addrinfo, align 8
  %12 = alloca %struct.addrinfo*, align 8
  %13 = alloca %struct.addrinfo*, align 8
  %14 = alloca %struct.sockaddr_in, align 8
  %15 = alloca %struct.sockaddr_in6, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %30 = load i32, i32* @NFSDEV_MAXMIRRORS, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %7, align 8
  %33 = alloca %struct.pnfsdsfile, i64 %31, align 16
  store i64 %31, i64* %8, align 8
  %34 = load i64, i64* @MNAMELEN, align 8
  %35 = load i64, i64* @NI_MAXHOST, align 8
  %36 = add nsw i64 %34, %35
  %37 = add nsw i64 %36, 2
  %38 = alloca i8, i64 %37, align 16
  store i64 %37, i64* %28, align 8
  %39 = call i64 (...) @geteuid()
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %2
  %42 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %2
  store i32 0, i32* %23, align 4
  store i32 0, i32* %25, align 4
  %44 = getelementptr inbounds %struct.nfsd_pnfsd_args, %struct.nfsd_pnfsd_args* %6, i32 0, i32 1
  store i8* null, i8** %44, align 8
  %45 = getelementptr inbounds %struct.nfsd_pnfsd_args, %struct.nfsd_pnfsd_args* %6, i32 0, i32 0
  store i8* null, i8** %45, align 8
  br label %46

46:                                               ; preds = %72, %43
  %47 = load i32, i32* %4, align 4
  %48 = load i8**, i8*** %5, align 8
  %49 = load i32, i32* @longopts, align 4
  %50 = call i32 @getopt_long(i32 %47, i8** %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32* null)
  store i32 %50, i32* %19, align 4
  %51 = icmp ne i32 %50, -1
  br i1 %51, label %52, label %73

52:                                               ; preds = %46
  %53 = load i32, i32* %19, align 4
  switch i32 %53, label %70 [
    i32 109, label %54
    i32 114, label %62
  ]

54:                                               ; preds = %52
  %55 = load i32, i32* %25, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %54
  store i32 1, i32* %23, align 4
  %60 = load i8*, i8** @optarg, align 8
  %61 = getelementptr inbounds %struct.nfsd_pnfsd_args, %struct.nfsd_pnfsd_args* %6, i32 0, i32 1
  store i8* %60, i8** %61, align 8
  br label %72

62:                                               ; preds = %52
  %63 = load i32, i32* %23, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %62
  store i32 1, i32* %25, align 4
  %68 = load i8*, i8** @optarg, align 8
  %69 = getelementptr inbounds %struct.nfsd_pnfsd_args, %struct.nfsd_pnfsd_args* %6, i32 0, i32 0
  store i8* %68, i8** %69, align 8
  br label %72

70:                                               ; preds = %52
  %71 = call i32 (...) @usage()
  br label %72

72:                                               ; preds = %70, %67, %59
  br label %46

73:                                               ; preds = %46
  %74 = load i64, i64* @optind, align 8
  %75 = load i32, i32* %4, align 4
  %76 = sext i32 %75 to i64
  %77 = sub nsw i64 %76, %74
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %4, align 4
  %79 = load i64, i64* @optind, align 8
  %80 = load i8**, i8*** %5, align 8
  %81 = getelementptr inbounds i8*, i8** %80, i64 %79
  store i8** %81, i8*** %5, align 8
  %82 = load i32, i32* %23, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %73
  %85 = load i32, i32* %4, align 4
  %86 = icmp ne i32 %85, 2
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = call i32 (...) @usage()
  br label %89

89:                                               ; preds = %87, %84
  %90 = load i8**, i8*** %5, align 8
  %91 = getelementptr inbounds i8*, i8** %90, i32 1
  store i8** %91, i8*** %5, align 8
  %92 = load i8*, i8** %90, align 8
  %93 = getelementptr inbounds %struct.nfsd_pnfsd_args, %struct.nfsd_pnfsd_args* %6, i32 0, i32 0
  store i8* %92, i8** %93, align 8
  br label %100

94:                                               ; preds = %73
  %95 = load i32, i32* %4, align 4
  %96 = icmp ne i32 %95, 1
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = call i32 (...) @usage()
  br label %99

99:                                               ; preds = %97, %94
  br label %100

100:                                              ; preds = %99, %89
  store i64 4, i64* %18, align 8
  %101 = call i32 @sysctlbyname(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32* %27, i64* %18, i32* null, i32 0)
  store i32 %101, i32* %26, align 4
  %102 = load i32, i32* %26, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %100
  %105 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %106

106:                                              ; preds = %104, %100
  %107 = getelementptr inbounds %struct.nfsd_pnfsd_args, %struct.nfsd_pnfsd_args* %6, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %110, label %123

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.nfsd_pnfsd_args, %struct.nfsd_pnfsd_args* %6, i32 0, i32 1
  %112 = load i8*, i8** %111, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %123

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.nfsd_pnfsd_args, %struct.nfsd_pnfsd_args* %6, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = getelementptr inbounds %struct.nfsd_pnfsd_args, %struct.nfsd_pnfsd_args* %6, i32 0, i32 1
  %118 = load i8*, i8** %117, align 8
  %119 = call i64 @strcmp(i8* %116, i8* %118)
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %114
  %122 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %123

123:                                              ; preds = %121, %114, %110, %106
  %124 = load i8**, i8*** %5, align 8
  %125 = load i8*, i8** %124, align 8
  %126 = load i32, i32* @EXTATTR_NAMESPACE_SYSTEM, align 4
  %127 = mul nuw i64 24, %31
  %128 = trunc i64 %127 to i32
  %129 = call i32 @extattr_get_file(i8* %125, i32 %126, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), %struct.pnfsdsfile* %33, i32 %128)
  store i32 %129, i32* %16, align 4
  %130 = load i32, i32* %16, align 4
  %131 = sext i32 %130 to i64
  %132 = udiv i64 %131, 24
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %24, align 4
  %134 = load i32, i32* %24, align 4
  %135 = sext i32 %134 to i64
  %136 = mul i64 %135, 24
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %17, align 4
  %138 = load i32, i32* %24, align 4
  %139 = icmp slt i32 %138, 1
  br i1 %139, label %144, label %140

140:                                              ; preds = %123
  %141 = load i32, i32* %16, align 4
  %142 = load i32, i32* %17, align 4
  %143 = icmp ne i32 %141, %142
  br i1 %143, label %144, label %148

144:                                              ; preds = %140, %123
  %145 = load i8**, i8*** %5, align 8
  %146 = load i8*, i8** %145, align 8
  %147 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i8* %146)
  br label %148

148:                                              ; preds = %144, %140
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  br label %149

149:                                              ; preds = %173, %148
  %150 = load i32, i32* %22, align 4
  %151 = load i32, i32* %24, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %176

153:                                              ; preds = %149
  %154 = load i32, i32* %22, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.pnfsdsfile, %struct.pnfsdsfile* %33, i64 %155
  %157 = getelementptr inbounds %struct.pnfsdsfile, %struct.pnfsdsfile* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @AF_INET, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %172

162:                                              ; preds = %153
  %163 = load i32, i32* %22, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.pnfsdsfile, %struct.pnfsdsfile* %33, i64 %164
  %166 = getelementptr inbounds %struct.pnfsdsfile, %struct.pnfsdsfile* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = icmp eq i64 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %162
  store i32 1, i32* %21, align 4
  br label %172

172:                                              ; preds = %171, %162, %153
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %22, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %22, align 4
  br label %149

176:                                              ; preds = %149
  %177 = load i32, i32* %25, align 4
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %201

179:                                              ; preds = %176
  %180 = load i32, i32* %23, align 4
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %201

182:                                              ; preds = %179
  %183 = load i32, i32* %27, align 4
  %184 = icmp slt i32 %183, 2
  br i1 %184, label %199, label %185

185:                                              ; preds = %182
  %186 = load i32, i32* %21, align 4
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %185
  %189 = load i32, i32* %24, align 4
  %190 = load i32, i32* %27, align 4
  %191 = icmp sge i32 %189, %190
  br i1 %191, label %199, label %192

192:                                              ; preds = %188, %185
  %193 = load i32, i32* %21, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %201

195:                                              ; preds = %192
  %196 = load i32, i32* %24, align 4
  %197 = load i32, i32* %27, align 4
  %198 = icmp sgt i32 %196, %197
  br i1 %198, label %199, label %201

199:                                              ; preds = %195, %188, %182
  %200 = call i32 @exit(i32 0) #4
  unreachable

201:                                              ; preds = %195, %192, %179, %176
  %202 = load i32, i32* %25, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %219

204:                                              ; preds = %201
  %205 = load i32, i32* %21, align 4
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %217, label %207

207:                                              ; preds = %204
  %208 = load i32, i32* %27, align 4
  %209 = icmp slt i32 %208, 2
  br i1 %209, label %217, label %210

210:                                              ; preds = %207
  %211 = load i32, i32* %24, align 4
  %212 = icmp slt i32 %211, 2
  br i1 %212, label %217, label %213

213:                                              ; preds = %210
  %214 = load i32, i32* %24, align 4
  %215 = load i32, i32* %27, align 4
  %216 = icmp sgt i32 %214, %215
  br i1 %216, label %217, label %219

217:                                              ; preds = %213, %210, %207, %204
  %218 = call i32 @exit(i32 0) #4
  unreachable

219:                                              ; preds = %213, %201
  %220 = getelementptr inbounds %struct.nfsd_pnfsd_args, %struct.nfsd_pnfsd_args* %6, i32 0, i32 0
  %221 = load i8*, i8** %220, align 8
  %222 = icmp ne i8* %221, null
  br i1 %222, label %223, label %386

223:                                              ; preds = %219
  %224 = getelementptr inbounds %struct.nfsd_pnfsd_args, %struct.nfsd_pnfsd_args* %6, i32 0, i32 0
  %225 = load i8*, i8** %224, align 8
  %226 = call i64 @stat(i8* %225, %struct.stat* %9)
  %227 = icmp slt i64 %226, 0
  br i1 %227, label %228, label %232

228:                                              ; preds = %223
  %229 = getelementptr inbounds %struct.nfsd_pnfsd_args, %struct.nfsd_pnfsd_args* %6, i32 0, i32 0
  %230 = load i8*, i8** %229, align 8
  %231 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* %230)
  br label %232

232:                                              ; preds = %228, %223
  %233 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @S_ISDIR(i32 %234)
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %241, label %237

237:                                              ; preds = %232
  %238 = getelementptr inbounds %struct.nfsd_pnfsd_args, %struct.nfsd_pnfsd_args* %6, i32 0, i32 0
  %239 = load i8*, i8** %238, align 8
  %240 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i8* %239)
  br label %241

241:                                              ; preds = %237, %232
  %242 = getelementptr inbounds %struct.nfsd_pnfsd_args, %struct.nfsd_pnfsd_args* %6, i32 0, i32 0
  %243 = load i8*, i8** %242, align 8
  %244 = call i64 @statfs(i8* %243, %struct.statfs* %10)
  %245 = icmp slt i64 %244, 0
  br i1 %245, label %246, label %250

246:                                              ; preds = %241
  %247 = getelementptr inbounds %struct.nfsd_pnfsd_args, %struct.nfsd_pnfsd_args* %6, i32 0, i32 0
  %248 = load i8*, i8** %247, align 8
  %249 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8* %248)
  br label %250

250:                                              ; preds = %246, %241
  %251 = getelementptr inbounds %struct.statfs, %struct.statfs* %10, i32 0, i32 0
  %252 = load i8*, i8** %251, align 8
  %253 = call i64 @strcmp(i8* %252, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %259

255:                                              ; preds = %250
  %256 = getelementptr inbounds %struct.nfsd_pnfsd_args, %struct.nfsd_pnfsd_args* %6, i32 0, i32 0
  %257 = load i8*, i8** %256, align 8
  %258 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i8* %257)
  br label %259

259:                                              ; preds = %255, %250
  %260 = getelementptr inbounds %struct.statfs, %struct.statfs* %10, i32 0, i32 1
  %261 = load i8*, i8** %260, align 8
  %262 = getelementptr inbounds %struct.nfsd_pnfsd_args, %struct.nfsd_pnfsd_args* %6, i32 0, i32 0
  %263 = load i8*, i8** %262, align 8
  %264 = call i64 @strcmp(i8* %261, i8* %263)
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %270

266:                                              ; preds = %259
  %267 = getelementptr inbounds %struct.nfsd_pnfsd_args, %struct.nfsd_pnfsd_args* %6, i32 0, i32 0
  %268 = load i8*, i8** %267, align 8
  %269 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13, i64 0, i64 0), i8* %268)
  br label %270

270:                                              ; preds = %266, %259
  %271 = getelementptr inbounds %struct.statfs, %struct.statfs* %10, i32 0, i32 2
  %272 = load i32, i32* %271, align 8
  %273 = trunc i64 %37 to i32
  %274 = call i32 @strlcpy(i8* %38, i32 %272, i32 %273)
  %275 = call i8* @strchr(i8* %38, i8 signext 58)
  store i8* %275, i8** %29, align 8
  %276 = load i8*, i8** %29, align 8
  %277 = icmp eq i8* %276, null
  br i1 %277, label %278, label %280

278:                                              ; preds = %270
  %279 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i8* %38)
  br label %280

280:                                              ; preds = %278, %270
  %281 = load i8*, i8** %29, align 8
  store i8 0, i8* %281, align 1
  %282 = call i32 @memset(%struct.addrinfo* %11, i32 0, i32 40)
  %283 = load i8*, i8** @PF_UNSPEC, align 8
  %284 = ptrtoint i8* %283 to i64
  %285 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 0
  store i64 %284, i64* %285, align 8
  %286 = load i8*, i8** @SOCK_STREAM, align 8
  %287 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 4
  store i8* %286, i8** %287, align 8
  %288 = call i64 @getaddrinfo(i8* %38, i32* null, %struct.addrinfo* %11, %struct.addrinfo** %12)
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %292

290:                                              ; preds = %280
  %291 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i8* %38)
  br label %292

292:                                              ; preds = %290, %280
  store i32 0, i32* %22, align 4
  br label %293

293:                                              ; preds = %380, %292
  %294 = load i32, i32* %22, align 4
  %295 = load i32, i32* %24, align 4
  %296 = icmp slt i32 %294, %295
  br i1 %296, label %297, label %383

297:                                              ; preds = %293
  %298 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  store %struct.addrinfo* %298, %struct.addrinfo** %13, align 8
  br label %299

299:                                              ; preds = %375, %297
  %300 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %301 = icmp ne %struct.addrinfo* %300, null
  br i1 %301, label %302, label %379

302:                                              ; preds = %299
  %303 = load i32, i32* %22, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.pnfsdsfile, %struct.pnfsdsfile* %33, i64 %304
  %306 = getelementptr inbounds %struct.pnfsdsfile, %struct.pnfsdsfile* %305, i32 0, i32 1
  %307 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %306, i32 0, i32 0
  %308 = load i64, i64* %307, align 8
  %309 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %310 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %309, i32 0, i32 0
  %311 = load i64, i64* %310, align 8
  %312 = icmp eq i64 %308, %311
  br i1 %312, label %313, label %375

313:                                              ; preds = %302
  %314 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %315 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %314, i32 0, i32 0
  %316 = load i64, i64* %315, align 8
  %317 = load i64, i64* @AF_INET, align 8
  %318 = icmp eq i64 %316, %317
  br i1 %318, label %319, label %345

319:                                              ; preds = %313
  %320 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %321 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %320, i32 0, i32 1
  %322 = load i32, i32* %321, align 8
  %323 = sext i32 %322 to i64
  %324 = icmp uge i64 %323, 16
  br i1 %324, label %325, label %345

325:                                              ; preds = %319
  %326 = bitcast %struct.sockaddr_in* %14 to %struct.sockaddr_in6*
  %327 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %328 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %327, i32 0, i32 3
  %329 = load i32, i32* %328, align 8
  %330 = call i32 @memcpy(%struct.sockaddr_in6* %326, i32 %329, i32 16)
  %331 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %14, i32 0, i32 1
  %332 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %331, i32 0, i32 0
  %333 = load i64, i64* %332, align 8
  %334 = load i32, i32* %22, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds %struct.pnfsdsfile, %struct.pnfsdsfile* %33, i64 %335
  %337 = getelementptr inbounds %struct.pnfsdsfile, %struct.pnfsdsfile* %336, i32 0, i32 1
  %338 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %337, i32 0, i32 1
  %339 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %338, i32 0, i32 0
  %340 = load i64, i64* %339, align 8
  %341 = icmp eq i64 %333, %340
  br i1 %341, label %342, label %344

342:                                              ; preds = %325
  %343 = call i32 @exit(i32 0) #4
  unreachable

344:                                              ; preds = %325
  br label %374

345:                                              ; preds = %319, %313
  %346 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %347 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %346, i32 0, i32 0
  %348 = load i64, i64* %347, align 8
  %349 = load i64, i64* @AF_INET6, align 8
  %350 = icmp eq i64 %348, %349
  br i1 %350, label %351, label %373

351:                                              ; preds = %345
  %352 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %353 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %352, i32 0, i32 1
  %354 = load i32, i32* %353, align 8
  %355 = sext i32 %354 to i64
  %356 = icmp uge i64 %355, 16
  br i1 %356, label %357, label %373

357:                                              ; preds = %351
  %358 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %359 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %358, i32 0, i32 3
  %360 = load i32, i32* %359, align 8
  %361 = call i32 @memcpy(%struct.sockaddr_in6* %15, i32 %360, i32 16)
  %362 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %15, i32 0, i32 0
  %363 = load i32, i32* %22, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds %struct.pnfsdsfile, %struct.pnfsdsfile* %33, i64 %364
  %366 = getelementptr inbounds %struct.pnfsdsfile, %struct.pnfsdsfile* %365, i32 0, i32 0
  %367 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %366, i32 0, i32 0
  %368 = call i64 @IN6_ARE_ADDR_EQUAL(i32* %362, i32* %367)
  %369 = icmp ne i64 %368, 0
  br i1 %369, label %370, label %372

370:                                              ; preds = %357
  %371 = call i32 @exit(i32 0) #4
  unreachable

372:                                              ; preds = %357
  br label %373

373:                                              ; preds = %372, %351, %345
  br label %374

374:                                              ; preds = %373, %344
  br label %375

375:                                              ; preds = %374, %302
  %376 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %377 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %376, i32 0, i32 2
  %378 = load %struct.addrinfo*, %struct.addrinfo** %377, align 8
  store %struct.addrinfo* %378, %struct.addrinfo** %13, align 8
  br label %299

379:                                              ; preds = %299
  br label %380

380:                                              ; preds = %379
  %381 = load i32, i32* %22, align 4
  %382 = add nsw i32 %381, 1
  store i32 %382, i32* %22, align 4
  br label %293

383:                                              ; preds = %293
  %384 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %385 = call i32 @freeaddrinfo(%struct.addrinfo* %384)
  br label %386

386:                                              ; preds = %383, %219
  %387 = getelementptr inbounds %struct.nfsd_pnfsd_args, %struct.nfsd_pnfsd_args* %6, i32 0, i32 1
  %388 = load i8*, i8** %387, align 8
  %389 = icmp ne i8* %388, null
  br i1 %389, label %390, label %561

390:                                              ; preds = %386
  %391 = getelementptr inbounds %struct.nfsd_pnfsd_args, %struct.nfsd_pnfsd_args* %6, i32 0, i32 1
  %392 = load i8*, i8** %391, align 8
  %393 = call i64 @stat(i8* %392, %struct.stat* %9)
  %394 = icmp slt i64 %393, 0
  br i1 %394, label %395, label %399

395:                                              ; preds = %390
  %396 = getelementptr inbounds %struct.nfsd_pnfsd_args, %struct.nfsd_pnfsd_args* %6, i32 0, i32 1
  %397 = load i8*, i8** %396, align 8
  %398 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* %397)
  br label %399

399:                                              ; preds = %395, %390
  %400 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %401 = load i32, i32* %400, align 4
  %402 = call i32 @S_ISDIR(i32 %401)
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %408, label %404

404:                                              ; preds = %399
  %405 = getelementptr inbounds %struct.nfsd_pnfsd_args, %struct.nfsd_pnfsd_args* %6, i32 0, i32 1
  %406 = load i8*, i8** %405, align 8
  %407 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i8* %406)
  br label %408

408:                                              ; preds = %404, %399
  %409 = getelementptr inbounds %struct.nfsd_pnfsd_args, %struct.nfsd_pnfsd_args* %6, i32 0, i32 1
  %410 = load i8*, i8** %409, align 8
  %411 = call i64 @statfs(i8* %410, %struct.statfs* %10)
  %412 = icmp slt i64 %411, 0
  br i1 %412, label %413, label %417

413:                                              ; preds = %408
  %414 = getelementptr inbounds %struct.nfsd_pnfsd_args, %struct.nfsd_pnfsd_args* %6, i32 0, i32 1
  %415 = load i8*, i8** %414, align 8
  %416 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8* %415)
  br label %417

417:                                              ; preds = %413, %408
  %418 = getelementptr inbounds %struct.statfs, %struct.statfs* %10, i32 0, i32 0
  %419 = load i8*, i8** %418, align 8
  %420 = call i64 @strcmp(i8* %419, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  %421 = icmp ne i64 %420, 0
  br i1 %421, label %422, label %426

422:                                              ; preds = %417
  %423 = getelementptr inbounds %struct.nfsd_pnfsd_args, %struct.nfsd_pnfsd_args* %6, i32 0, i32 1
  %424 = load i8*, i8** %423, align 8
  %425 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i8* %424)
  br label %426

426:                                              ; preds = %422, %417
  %427 = getelementptr inbounds %struct.statfs, %struct.statfs* %10, i32 0, i32 1
  %428 = load i8*, i8** %427, align 8
  %429 = getelementptr inbounds %struct.nfsd_pnfsd_args, %struct.nfsd_pnfsd_args* %6, i32 0, i32 1
  %430 = load i8*, i8** %429, align 8
  %431 = call i64 @strcmp(i8* %428, i8* %430)
  %432 = icmp ne i64 %431, 0
  br i1 %432, label %433, label %437

433:                                              ; preds = %426
  %434 = getelementptr inbounds %struct.nfsd_pnfsd_args, %struct.nfsd_pnfsd_args* %6, i32 0, i32 1
  %435 = load i8*, i8** %434, align 8
  %436 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.16, i64 0, i64 0), i8* %435)
  br label %437

437:                                              ; preds = %433, %426
  %438 = getelementptr inbounds %struct.statfs, %struct.statfs* %10, i32 0, i32 2
  %439 = load i32, i32* %438, align 8
  %440 = trunc i64 %37 to i32
  %441 = call i32 @strlcpy(i8* %38, i32 %439, i32 %440)
  %442 = call i8* @strchr(i8* %38, i8 signext 58)
  store i8* %442, i8** %29, align 8
  %443 = load i8*, i8** %29, align 8
  %444 = icmp eq i8* %443, null
  br i1 %444, label %445, label %447

445:                                              ; preds = %437
  %446 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i8* %38)
  br label %447

447:                                              ; preds = %445, %437
  %448 = load i8*, i8** %29, align 8
  store i8 0, i8* %448, align 1
  %449 = call i32 @memset(%struct.addrinfo* %11, i32 0, i32 40)
  %450 = load i8*, i8** @PF_UNSPEC, align 8
  %451 = ptrtoint i8* %450 to i64
  %452 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 0
  store i64 %451, i64* %452, align 8
  %453 = load i8*, i8** @SOCK_STREAM, align 8
  %454 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 4
  store i8* %453, i8** %454, align 8
  %455 = call i64 @getaddrinfo(i8* %38, i32* null, %struct.addrinfo* %11, %struct.addrinfo** %12)
  %456 = icmp ne i64 %455, 0
  br i1 %456, label %457, label %459

457:                                              ; preds = %447
  %458 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i8* %38)
  br label %459

459:                                              ; preds = %457, %447
  store i32 0, i32* %20, align 4
  store i32 0, i32* %22, align 4
  br label %460

460:                                              ; preds = %550, %459
  %461 = load i32, i32* %22, align 4
  %462 = load i32, i32* %24, align 4
  %463 = icmp slt i32 %461, %462
  br i1 %463, label %464, label %467

464:                                              ; preds = %460
  %465 = load i32, i32* %20, align 4
  %466 = icmp eq i32 %465, 0
  br label %467

467:                                              ; preds = %464, %460
  %468 = phi i1 [ false, %460 ], [ %466, %464 ]
  br i1 %468, label %469, label %553

469:                                              ; preds = %467
  %470 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  store %struct.addrinfo* %470, %struct.addrinfo** %13, align 8
  br label %471

471:                                              ; preds = %545, %469
  %472 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %473 = icmp ne %struct.addrinfo* %472, null
  br i1 %473, label %474, label %549

474:                                              ; preds = %471
  %475 = load i32, i32* %22, align 4
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds %struct.pnfsdsfile, %struct.pnfsdsfile* %33, i64 %476
  %478 = getelementptr inbounds %struct.pnfsdsfile, %struct.pnfsdsfile* %477, i32 0, i32 1
  %479 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %478, i32 0, i32 0
  %480 = load i64, i64* %479, align 8
  %481 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %482 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %481, i32 0, i32 0
  %483 = load i64, i64* %482, align 8
  %484 = icmp eq i64 %480, %483
  br i1 %484, label %485, label %545

485:                                              ; preds = %474
  %486 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %487 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %486, i32 0, i32 0
  %488 = load i64, i64* %487, align 8
  %489 = load i64, i64* @AF_INET, align 8
  %490 = icmp eq i64 %488, %489
  br i1 %490, label %491, label %516

491:                                              ; preds = %485
  %492 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %493 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %492, i32 0, i32 1
  %494 = load i32, i32* %493, align 8
  %495 = sext i32 %494 to i64
  %496 = icmp uge i64 %495, 16
  br i1 %496, label %497, label %516

497:                                              ; preds = %491
  %498 = bitcast %struct.sockaddr_in* %14 to %struct.sockaddr_in6*
  %499 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %500 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %499, i32 0, i32 3
  %501 = load i32, i32* %500, align 8
  %502 = call i32 @memcpy(%struct.sockaddr_in6* %498, i32 %501, i32 16)
  %503 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %14, i32 0, i32 1
  %504 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %503, i32 0, i32 0
  %505 = load i64, i64* %504, align 8
  %506 = load i32, i32* %22, align 4
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds %struct.pnfsdsfile, %struct.pnfsdsfile* %33, i64 %507
  %509 = getelementptr inbounds %struct.pnfsdsfile, %struct.pnfsdsfile* %508, i32 0, i32 1
  %510 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %509, i32 0, i32 1
  %511 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %510, i32 0, i32 0
  %512 = load i64, i64* %511, align 8
  %513 = icmp eq i64 %505, %512
  br i1 %513, label %514, label %515

514:                                              ; preds = %497
  store i32 1, i32* %20, align 4
  br label %549

515:                                              ; preds = %497
  br label %544

516:                                              ; preds = %491, %485
  %517 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %518 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %517, i32 0, i32 0
  %519 = load i64, i64* %518, align 8
  %520 = load i64, i64* @AF_INET6, align 8
  %521 = icmp eq i64 %519, %520
  br i1 %521, label %522, label %543

522:                                              ; preds = %516
  %523 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %524 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %523, i32 0, i32 1
  %525 = load i32, i32* %524, align 8
  %526 = sext i32 %525 to i64
  %527 = icmp uge i64 %526, 16
  br i1 %527, label %528, label %543

528:                                              ; preds = %522
  %529 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %530 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %529, i32 0, i32 3
  %531 = load i32, i32* %530, align 8
  %532 = call i32 @memcpy(%struct.sockaddr_in6* %15, i32 %531, i32 16)
  %533 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %15, i32 0, i32 0
  %534 = load i32, i32* %22, align 4
  %535 = sext i32 %534 to i64
  %536 = getelementptr inbounds %struct.pnfsdsfile, %struct.pnfsdsfile* %33, i64 %535
  %537 = getelementptr inbounds %struct.pnfsdsfile, %struct.pnfsdsfile* %536, i32 0, i32 0
  %538 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %537, i32 0, i32 0
  %539 = call i64 @IN6_ARE_ADDR_EQUAL(i32* %533, i32* %538)
  %540 = icmp ne i64 %539, 0
  br i1 %540, label %541, label %542

541:                                              ; preds = %528
  store i32 1, i32* %20, align 4
  br label %549

542:                                              ; preds = %528
  br label %543

543:                                              ; preds = %542, %522, %516
  br label %544

544:                                              ; preds = %543, %515
  br label %545

545:                                              ; preds = %544, %474
  %546 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %547 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %546, i32 0, i32 2
  %548 = load %struct.addrinfo*, %struct.addrinfo** %547, align 8
  store %struct.addrinfo* %548, %struct.addrinfo** %13, align 8
  br label %471

549:                                              ; preds = %541, %514, %471
  br label %550

550:                                              ; preds = %549
  %551 = load i32, i32* %22, align 4
  %552 = add nsw i32 %551, 1
  store i32 %552, i32* %22, align 4
  br label %460

553:                                              ; preds = %467
  %554 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %555 = call i32 @freeaddrinfo(%struct.addrinfo* %554)
  %556 = load i32, i32* %20, align 4
  %557 = icmp eq i32 %556, 0
  br i1 %557, label %558, label %560

558:                                              ; preds = %553
  %559 = call i32 @exit(i32 0) #4
  unreachable

560:                                              ; preds = %553
  br label %561

561:                                              ; preds = %560, %386
  %562 = load i32, i32* @PNFSDOP_COPYMR, align 4
  %563 = getelementptr inbounds %struct.nfsd_pnfsd_args, %struct.nfsd_pnfsd_args* %6, i32 0, i32 3
  store i32 %562, i32* %563, align 8
  %564 = load i8**, i8*** %5, align 8
  %565 = load i8*, i8** %564, align 8
  %566 = getelementptr inbounds %struct.nfsd_pnfsd_args, %struct.nfsd_pnfsd_args* %6, i32 0, i32 2
  store i8* %565, i8** %566, align 8
  %567 = load i32, i32* @NFSSVC_PNFSDS, align 4
  %568 = call i32 @nfssvc(i32 %567, %struct.nfsd_pnfsd_args* %6)
  store i32 %568, i32* %26, align 4
  %569 = load i32, i32* %26, align 4
  %570 = icmp slt i32 %569, 0
  br i1 %570, label %571, label %579

571:                                              ; preds = %561
  %572 = load i64, i64* @errno, align 8
  %573 = load i64, i64* @EEXIST, align 8
  %574 = icmp ne i64 %572, %573
  br i1 %574, label %575, label %579

575:                                              ; preds = %571
  %576 = load i8**, i8*** %5, align 8
  %577 = load i8*, i8** %576, align 8
  %578 = call i32 @err(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i64 0, i64 0), i8* %577)
  br label %579

579:                                              ; preds = %575, %571, %561
  %580 = call i32 @exit(i32 0) #4
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @geteuid(...) #2

declare dso_local i32 @errx(i32, i8*, ...) #2

declare dso_local i32 @getopt_long(i32, i8**, i8*, i32, i32*) #2

declare dso_local i32 @usage(...) #2

declare dso_local i32 @sysctlbyname(i8*, i32*, i64*, i32*, i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @extattr_get_file(i8*, i32, i8*, %struct.pnfsdsfile*, i32) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i64 @stat(i8*, %struct.stat*) #2

declare dso_local i32 @S_ISDIR(i32) #2

declare dso_local i64 @statfs(i8*, %struct.statfs*) #2

declare dso_local i32 @strlcpy(i8*, i32, i32) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #2

declare dso_local i64 @getaddrinfo(i8*, i32*, %struct.addrinfo*, %struct.addrinfo**) #2

declare dso_local i32 @memcpy(%struct.sockaddr_in6*, i32, i32) #2

declare dso_local i64 @IN6_ARE_ADDR_EQUAL(i32*, i32*) #2

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #2

declare dso_local i32 @nfssvc(i32, %struct.nfsd_pnfsd_args*) #2

declare dso_local i32 @err(i32, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
