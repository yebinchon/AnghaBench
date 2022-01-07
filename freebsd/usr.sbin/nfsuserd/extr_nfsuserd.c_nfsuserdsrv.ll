; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nfsuserd/extr_nfsuserd.c_nfsuserdsrv.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nfsuserd/extr_nfsuserd.c_nfsuserdsrv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.svc_req = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i64 }
%struct.passwd = type { i32, i32, i32 }
%struct.group = type { i32, i32 }
%struct.info = type { i32, i32, i32 }
%struct.nfsd_idargs = type { i32, i32, i32, i32, i32, i32*, i8*, i32 }

@NGROUPS = common dso_local global i32 0, align 4
@fromip = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@xdr_void = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Can't send reply\00", align 1
@xdr_getid = common dso_local global i32 0, align 4
@defusertimeout = common dso_local global i8* null, align 8
@manage_gids = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Group list too small\00", align 1
@defaultuser = common dso_local global i32 0, align 4
@NFSID_ADDUID = common dso_local global i32 0, align 4
@NFSSVC_IDNAME = common dso_local global i32 0, align 4
@NFSSVC_NEWSTRUCT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Can't add user %s\0A\00", align 1
@verbose = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"Added uid=%d name=%s\0A\00", align 1
@xdr_retval = common dso_local global i32 0, align 4
@defaultgroup = common dso_local global i32 0, align 4
@NFSID_ADDGID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"Can't add group %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Added gid=%d name=%s\0A\00", align 1
@xdr_getname = common dso_local global i32 0, align 4
@defaultuid = common dso_local global i32 0, align 4
@NFSID_ADDUSERNAME = common dso_local global i32 0, align 4
@defaultgid = common dso_local global i32 0, align 4
@NFSID_ADDGROUPNAME = common dso_local global i32 0, align 4
@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@IPPORT_RESERVED = common dso_local global i32 0, align 4
@IPV6PORT_RESERVED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.svc_req*, %struct.TYPE_13__*)* @nfsuserdsrv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfsuserdsrv(%struct.svc_req* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca %struct.svc_req*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.passwd*, align 8
  %6 = alloca %struct.group*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.info, align 4
  %9 = alloca %struct.nfsd_idargs, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.svc_req* %0, %struct.svc_req** %3, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  %14 = load i32, i32* @NGROUPS, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %10, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %11, align 8
  %18 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %19 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 132
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @fromip, i32 0, i32 0), align 4
  switch i32 %23, label %24 [
  ]

24:                                               ; preds = %22
  br label %25

25:                                               ; preds = %24, %2
  %26 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %27 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %377 [
    i32 132, label %29
    i32 129, label %38
    i32 131, label %140
    i32 128, label %219
    i32 130, label %298
  ]

29:                                               ; preds = %25
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %31 = load i32, i32* @xdr_void, align 4
  %32 = call i32 @svc_sendreply(%struct.TYPE_13__* %30, i32 %31, i32* null)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @LOG_ERR, align 4
  %36 = call i32 (i32, i8*, ...) @syslog(i32 %35, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %29
  store i32 1, i32* %13, align 4
  br label %380

38:                                               ; preds = %25
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %40 = load i32, i32* @xdr_getid, align 4
  %41 = bitcast %struct.info* %8 to i32*
  %42 = call i32 @svc_getargs(%struct.TYPE_13__* %39, i32 %40, i32* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %38
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %46 = call i32 @svcerr_decode(%struct.TYPE_13__* %45)
  store i32 1, i32* %13, align 4
  br label %380

47:                                               ; preds = %38
  %48 = getelementptr inbounds %struct.info, %struct.info* %8, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call %struct.passwd* @getpwuid(i32 %49)
  store %struct.passwd* %50, %struct.passwd** %5, align 8
  %51 = getelementptr inbounds %struct.info, %struct.info* %8, i32 0, i32 0
  store i32 0, i32* %51, align 4
  %52 = load %struct.passwd*, %struct.passwd** %5, align 8
  %53 = icmp ne %struct.passwd* %52, null
  br i1 %53, label %54, label %89

54:                                               ; preds = %47
  %55 = load i8*, i8** @defusertimeout, align 8
  %56 = ptrtoint i8* %55 to i32
  %57 = getelementptr inbounds %struct.nfsd_idargs, %struct.nfsd_idargs* %9, i32 0, i32 0
  store i32 %56, i32* %57, align 8
  %58 = load %struct.passwd*, %struct.passwd** %5, align 8
  %59 = getelementptr inbounds %struct.passwd, %struct.passwd* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.nfsd_idargs, %struct.nfsd_idargs* %9, i32 0, i32 7
  store i32 %60, i32* %61, align 8
  %62 = load %struct.passwd*, %struct.passwd** %5, align 8
  %63 = getelementptr inbounds %struct.passwd, %struct.passwd* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.nfsd_idargs, %struct.nfsd_idargs* %9, i32 0, i32 2
  store i32 %64, i32* %65, align 8
  %66 = load i32, i32* @manage_gids, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %85

68:                                               ; preds = %54
  %69 = load i32, i32* @NGROUPS, align 4
  store i32 %69, i32* %12, align 4
  %70 = load %struct.passwd*, %struct.passwd** %5, align 8
  %71 = getelementptr inbounds %struct.passwd, %struct.passwd* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.passwd*, %struct.passwd** %5, align 8
  %74 = getelementptr inbounds %struct.passwd, %struct.passwd* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @getgrouplist(i32 %72, i32 %75, i32* %17, i32* %12)
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %68
  %79 = load i32, i32* @LOG_ERR, align 4
  %80 = call i32 (i32, i8*, ...) @syslog(i32 %79, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %81

81:                                               ; preds = %78, %68
  %82 = load i32, i32* %12, align 4
  %83 = getelementptr inbounds %struct.nfsd_idargs, %struct.nfsd_idargs* %9, i32 0, i32 1
  store i32 %82, i32* %83, align 4
  %84 = getelementptr inbounds %struct.nfsd_idargs, %struct.nfsd_idargs* %9, i32 0, i32 5
  store i32* %17, i32** %84, align 8
  br label %88

85:                                               ; preds = %54
  %86 = getelementptr inbounds %struct.nfsd_idargs, %struct.nfsd_idargs* %9, i32 0, i32 1
  store i32 0, i32* %86, align 4
  %87 = getelementptr inbounds %struct.nfsd_idargs, %struct.nfsd_idargs* %9, i32 0, i32 5
  store i32* null, i32** %87, align 8
  br label %88

88:                                               ; preds = %85, %81
  br label %98

89:                                               ; preds = %47
  %90 = getelementptr inbounds %struct.nfsd_idargs, %struct.nfsd_idargs* %9, i32 0, i32 0
  store i32 5, i32* %90, align 8
  %91 = getelementptr inbounds %struct.info, %struct.info* %8, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.nfsd_idargs, %struct.nfsd_idargs* %9, i32 0, i32 7
  store i32 %92, i32* %93, align 8
  %94 = load i32, i32* @defaultuser, align 4
  %95 = getelementptr inbounds %struct.nfsd_idargs, %struct.nfsd_idargs* %9, i32 0, i32 2
  store i32 %94, i32* %95, align 8
  %96 = getelementptr inbounds %struct.nfsd_idargs, %struct.nfsd_idargs* %9, i32 0, i32 1
  store i32 0, i32* %96, align 4
  %97 = getelementptr inbounds %struct.nfsd_idargs, %struct.nfsd_idargs* %9, i32 0, i32 5
  store i32* null, i32** %97, align 8
  br label %98

98:                                               ; preds = %89, %88
  %99 = getelementptr inbounds %struct.nfsd_idargs, %struct.nfsd_idargs* %9, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = call i8* @strlen(i32 %100)
  %102 = getelementptr inbounds %struct.nfsd_idargs, %struct.nfsd_idargs* %9, i32 0, i32 6
  store i8* %101, i8** %102, align 8
  %103 = load i32, i32* @NFSID_ADDUID, align 4
  %104 = getelementptr inbounds %struct.nfsd_idargs, %struct.nfsd_idargs* %9, i32 0, i32 4
  store i32 %103, i32* %104, align 8
  %105 = load i32, i32* @NFSSVC_IDNAME, align 4
  %106 = load i32, i32* @NFSSVC_NEWSTRUCT, align 4
  %107 = or i32 %105, %106
  %108 = call i32 @nfssvc(i32 %107, %struct.nfsd_idargs* %9)
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %7, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %98
  %112 = load i32, i32* %7, align 4
  %113 = getelementptr inbounds %struct.info, %struct.info* %8, i32 0, i32 0
  store i32 %112, i32* %113, align 4
  %114 = load i32, i32* @LOG_ERR, align 4
  %115 = load %struct.passwd*, %struct.passwd** %5, align 8
  %116 = getelementptr inbounds %struct.passwd, %struct.passwd* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 (i32, i8*, ...) @syslog(i32 %114, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %117)
  br label %130

119:                                              ; preds = %98
  %120 = load i32, i32* @verbose, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %119
  %123 = load i32, i32* @LOG_ERR, align 4
  %124 = getelementptr inbounds %struct.nfsd_idargs, %struct.nfsd_idargs* %9, i32 0, i32 7
  %125 = load i32, i32* %124, align 8
  %126 = getelementptr inbounds %struct.nfsd_idargs, %struct.nfsd_idargs* %9, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = call i32 (i32, i8*, ...) @syslog(i32 %123, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %125, i32 %127)
  br label %129

129:                                              ; preds = %122, %119
  br label %130

130:                                              ; preds = %129, %111
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %132 = load i32, i32* @xdr_retval, align 4
  %133 = bitcast %struct.info* %8 to i32*
  %134 = call i32 @svc_sendreply(%struct.TYPE_13__* %131, i32 %132, i32* %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %130
  %137 = load i32, i32* @LOG_ERR, align 4
  %138 = call i32 (i32, i8*, ...) @syslog(i32 %137, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %139

139:                                              ; preds = %136, %130
  store i32 1, i32* %13, align 4
  br label %380

140:                                              ; preds = %25
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %142 = load i32, i32* @xdr_getid, align 4
  %143 = bitcast %struct.info* %8 to i32*
  %144 = call i32 @svc_getargs(%struct.TYPE_13__* %141, i32 %142, i32* %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %149, label %146

146:                                              ; preds = %140
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %148 = call i32 @svcerr_decode(%struct.TYPE_13__* %147)
  store i32 1, i32* %13, align 4
  br label %380

149:                                              ; preds = %140
  %150 = getelementptr inbounds %struct.info, %struct.info* %8, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = call %struct.group* @getgrgid(i32 %151)
  store %struct.group* %152, %struct.group** %6, align 8
  %153 = getelementptr inbounds %struct.info, %struct.info* %8, i32 0, i32 0
  store i32 0, i32* %153, align 4
  %154 = load %struct.group*, %struct.group** %6, align 8
  %155 = icmp ne %struct.group* %154, null
  br i1 %155, label %156, label %168

156:                                              ; preds = %149
  %157 = load i8*, i8** @defusertimeout, align 8
  %158 = ptrtoint i8* %157 to i32
  %159 = getelementptr inbounds %struct.nfsd_idargs, %struct.nfsd_idargs* %9, i32 0, i32 0
  store i32 %158, i32* %159, align 8
  %160 = load %struct.group*, %struct.group** %6, align 8
  %161 = getelementptr inbounds %struct.group, %struct.group* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = getelementptr inbounds %struct.nfsd_idargs, %struct.nfsd_idargs* %9, i32 0, i32 3
  store i32 %162, i32* %163, align 4
  %164 = load %struct.group*, %struct.group** %6, align 8
  %165 = getelementptr inbounds %struct.group, %struct.group* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = getelementptr inbounds %struct.nfsd_idargs, %struct.nfsd_idargs* %9, i32 0, i32 2
  store i32 %166, i32* %167, align 8
  br label %175

168:                                              ; preds = %149
  %169 = getelementptr inbounds %struct.nfsd_idargs, %struct.nfsd_idargs* %9, i32 0, i32 0
  store i32 5, i32* %169, align 8
  %170 = getelementptr inbounds %struct.info, %struct.info* %8, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = getelementptr inbounds %struct.nfsd_idargs, %struct.nfsd_idargs* %9, i32 0, i32 3
  store i32 %171, i32* %172, align 4
  %173 = load i32, i32* @defaultgroup, align 4
  %174 = getelementptr inbounds %struct.nfsd_idargs, %struct.nfsd_idargs* %9, i32 0, i32 2
  store i32 %173, i32* %174, align 8
  br label %175

175:                                              ; preds = %168, %156
  %176 = getelementptr inbounds %struct.nfsd_idargs, %struct.nfsd_idargs* %9, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = call i8* @strlen(i32 %177)
  %179 = getelementptr inbounds %struct.nfsd_idargs, %struct.nfsd_idargs* %9, i32 0, i32 6
  store i8* %178, i8** %179, align 8
  %180 = getelementptr inbounds %struct.nfsd_idargs, %struct.nfsd_idargs* %9, i32 0, i32 1
  store i32 0, i32* %180, align 4
  %181 = getelementptr inbounds %struct.nfsd_idargs, %struct.nfsd_idargs* %9, i32 0, i32 5
  store i32* null, i32** %181, align 8
  %182 = load i32, i32* @NFSID_ADDGID, align 4
  %183 = getelementptr inbounds %struct.nfsd_idargs, %struct.nfsd_idargs* %9, i32 0, i32 4
  store i32 %182, i32* %183, align 8
  %184 = load i32, i32* @NFSSVC_IDNAME, align 4
  %185 = load i32, i32* @NFSSVC_NEWSTRUCT, align 4
  %186 = or i32 %184, %185
  %187 = call i32 @nfssvc(i32 %186, %struct.nfsd_idargs* %9)
  store i32 %187, i32* %7, align 4
  %188 = load i32, i32* %7, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %198

190:                                              ; preds = %175
  %191 = load i32, i32* %7, align 4
  %192 = getelementptr inbounds %struct.info, %struct.info* %8, i32 0, i32 0
  store i32 %191, i32* %192, align 4
  %193 = load i32, i32* @LOG_ERR, align 4
  %194 = load %struct.group*, %struct.group** %6, align 8
  %195 = getelementptr inbounds %struct.group, %struct.group* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = call i32 (i32, i8*, ...) @syslog(i32 %193, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %196)
  br label %209

198:                                              ; preds = %175
  %199 = load i32, i32* @verbose, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %208

201:                                              ; preds = %198
  %202 = load i32, i32* @LOG_ERR, align 4
  %203 = getelementptr inbounds %struct.nfsd_idargs, %struct.nfsd_idargs* %9, i32 0, i32 3
  %204 = load i32, i32* %203, align 4
  %205 = getelementptr inbounds %struct.nfsd_idargs, %struct.nfsd_idargs* %9, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = call i32 (i32, i8*, ...) @syslog(i32 %202, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %204, i32 %206)
  br label %208

208:                                              ; preds = %201, %198
  br label %209

209:                                              ; preds = %208, %190
  %210 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %211 = load i32, i32* @xdr_retval, align 4
  %212 = bitcast %struct.info* %8 to i32*
  %213 = call i32 @svc_sendreply(%struct.TYPE_13__* %210, i32 %211, i32* %212)
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %218, label %215

215:                                              ; preds = %209
  %216 = load i32, i32* @LOG_ERR, align 4
  %217 = call i32 (i32, i8*, ...) @syslog(i32 %216, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %218

218:                                              ; preds = %215, %209
  store i32 1, i32* %13, align 4
  br label %380

219:                                              ; preds = %25
  %220 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %221 = load i32, i32* @xdr_getname, align 4
  %222 = bitcast %struct.info* %8 to i32*
  %223 = call i32 @svc_getargs(%struct.TYPE_13__* %220, i32 %221, i32* %222)
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %228, label %225

225:                                              ; preds = %219
  %226 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %227 = call i32 @svcerr_decode(%struct.TYPE_13__* %226)
  store i32 1, i32* %13, align 4
  br label %380

228:                                              ; preds = %219
  %229 = getelementptr inbounds %struct.info, %struct.info* %8, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = call %struct.passwd* @getpwnam(i32 %230)
  store %struct.passwd* %231, %struct.passwd** %5, align 8
  %232 = getelementptr inbounds %struct.info, %struct.info* %8, i32 0, i32 0
  store i32 0, i32* %232, align 4
  %233 = load %struct.passwd*, %struct.passwd** %5, align 8
  %234 = icmp ne %struct.passwd* %233, null
  br i1 %234, label %235, label %247

235:                                              ; preds = %228
  %236 = load i8*, i8** @defusertimeout, align 8
  %237 = ptrtoint i8* %236 to i32
  %238 = getelementptr inbounds %struct.nfsd_idargs, %struct.nfsd_idargs* %9, i32 0, i32 0
  store i32 %237, i32* %238, align 8
  %239 = load %struct.passwd*, %struct.passwd** %5, align 8
  %240 = getelementptr inbounds %struct.passwd, %struct.passwd* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = getelementptr inbounds %struct.nfsd_idargs, %struct.nfsd_idargs* %9, i32 0, i32 7
  store i32 %241, i32* %242, align 8
  %243 = load %struct.passwd*, %struct.passwd** %5, align 8
  %244 = getelementptr inbounds %struct.passwd, %struct.passwd* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = getelementptr inbounds %struct.nfsd_idargs, %struct.nfsd_idargs* %9, i32 0, i32 2
  store i32 %245, i32* %246, align 8
  br label %254

247:                                              ; preds = %228
  %248 = getelementptr inbounds %struct.nfsd_idargs, %struct.nfsd_idargs* %9, i32 0, i32 0
  store i32 5, i32* %248, align 8
  %249 = load i32, i32* @defaultuid, align 4
  %250 = getelementptr inbounds %struct.nfsd_idargs, %struct.nfsd_idargs* %9, i32 0, i32 7
  store i32 %249, i32* %250, align 8
  %251 = getelementptr inbounds %struct.info, %struct.info* %8, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = getelementptr inbounds %struct.nfsd_idargs, %struct.nfsd_idargs* %9, i32 0, i32 2
  store i32 %252, i32* %253, align 8
  br label %254

254:                                              ; preds = %247, %235
  %255 = getelementptr inbounds %struct.nfsd_idargs, %struct.nfsd_idargs* %9, i32 0, i32 2
  %256 = load i32, i32* %255, align 8
  %257 = call i8* @strlen(i32 %256)
  %258 = getelementptr inbounds %struct.nfsd_idargs, %struct.nfsd_idargs* %9, i32 0, i32 6
  store i8* %257, i8** %258, align 8
  %259 = getelementptr inbounds %struct.nfsd_idargs, %struct.nfsd_idargs* %9, i32 0, i32 1
  store i32 0, i32* %259, align 4
  %260 = getelementptr inbounds %struct.nfsd_idargs, %struct.nfsd_idargs* %9, i32 0, i32 5
  store i32* null, i32** %260, align 8
  %261 = load i32, i32* @NFSID_ADDUSERNAME, align 4
  %262 = getelementptr inbounds %struct.nfsd_idargs, %struct.nfsd_idargs* %9, i32 0, i32 4
  store i32 %261, i32* %262, align 8
  %263 = load i32, i32* @NFSSVC_IDNAME, align 4
  %264 = load i32, i32* @NFSSVC_NEWSTRUCT, align 4
  %265 = or i32 %263, %264
  %266 = call i32 @nfssvc(i32 %265, %struct.nfsd_idargs* %9)
  store i32 %266, i32* %7, align 4
  %267 = load i32, i32* %7, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %277

269:                                              ; preds = %254
  %270 = load i32, i32* %7, align 4
  %271 = getelementptr inbounds %struct.info, %struct.info* %8, i32 0, i32 0
  store i32 %270, i32* %271, align 4
  %272 = load i32, i32* @LOG_ERR, align 4
  %273 = load %struct.passwd*, %struct.passwd** %5, align 8
  %274 = getelementptr inbounds %struct.passwd, %struct.passwd* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = call i32 (i32, i8*, ...) @syslog(i32 %272, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %275)
  br label %288

277:                                              ; preds = %254
  %278 = load i32, i32* @verbose, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %287

280:                                              ; preds = %277
  %281 = load i32, i32* @LOG_ERR, align 4
  %282 = getelementptr inbounds %struct.nfsd_idargs, %struct.nfsd_idargs* %9, i32 0, i32 7
  %283 = load i32, i32* %282, align 8
  %284 = getelementptr inbounds %struct.nfsd_idargs, %struct.nfsd_idargs* %9, i32 0, i32 2
  %285 = load i32, i32* %284, align 8
  %286 = call i32 (i32, i8*, ...) @syslog(i32 %281, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %283, i32 %285)
  br label %287

287:                                              ; preds = %280, %277
  br label %288

288:                                              ; preds = %287, %269
  %289 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %290 = load i32, i32* @xdr_retval, align 4
  %291 = bitcast %struct.info* %8 to i32*
  %292 = call i32 @svc_sendreply(%struct.TYPE_13__* %289, i32 %290, i32* %291)
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %297, label %294

294:                                              ; preds = %288
  %295 = load i32, i32* @LOG_ERR, align 4
  %296 = call i32 (i32, i8*, ...) @syslog(i32 %295, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %297

297:                                              ; preds = %294, %288
  store i32 1, i32* %13, align 4
  br label %380

298:                                              ; preds = %25
  %299 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %300 = load i32, i32* @xdr_getname, align 4
  %301 = bitcast %struct.info* %8 to i32*
  %302 = call i32 @svc_getargs(%struct.TYPE_13__* %299, i32 %300, i32* %301)
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %307, label %304

304:                                              ; preds = %298
  %305 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %306 = call i32 @svcerr_decode(%struct.TYPE_13__* %305)
  store i32 1, i32* %13, align 4
  br label %380

307:                                              ; preds = %298
  %308 = getelementptr inbounds %struct.info, %struct.info* %8, i32 0, i32 1
  %309 = load i32, i32* %308, align 4
  %310 = call %struct.group* @getgrnam(i32 %309)
  store %struct.group* %310, %struct.group** %6, align 8
  %311 = getelementptr inbounds %struct.info, %struct.info* %8, i32 0, i32 0
  store i32 0, i32* %311, align 4
  %312 = load %struct.group*, %struct.group** %6, align 8
  %313 = icmp ne %struct.group* %312, null
  br i1 %313, label %314, label %326

314:                                              ; preds = %307
  %315 = load i8*, i8** @defusertimeout, align 8
  %316 = ptrtoint i8* %315 to i32
  %317 = getelementptr inbounds %struct.nfsd_idargs, %struct.nfsd_idargs* %9, i32 0, i32 0
  store i32 %316, i32* %317, align 8
  %318 = load %struct.group*, %struct.group** %6, align 8
  %319 = getelementptr inbounds %struct.group, %struct.group* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 4
  %321 = getelementptr inbounds %struct.nfsd_idargs, %struct.nfsd_idargs* %9, i32 0, i32 3
  store i32 %320, i32* %321, align 4
  %322 = load %struct.group*, %struct.group** %6, align 8
  %323 = getelementptr inbounds %struct.group, %struct.group* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 4
  %325 = getelementptr inbounds %struct.nfsd_idargs, %struct.nfsd_idargs* %9, i32 0, i32 2
  store i32 %324, i32* %325, align 8
  br label %333

326:                                              ; preds = %307
  %327 = getelementptr inbounds %struct.nfsd_idargs, %struct.nfsd_idargs* %9, i32 0, i32 0
  store i32 5, i32* %327, align 8
  %328 = load i32, i32* @defaultgid, align 4
  %329 = getelementptr inbounds %struct.nfsd_idargs, %struct.nfsd_idargs* %9, i32 0, i32 3
  store i32 %328, i32* %329, align 4
  %330 = getelementptr inbounds %struct.info, %struct.info* %8, i32 0, i32 1
  %331 = load i32, i32* %330, align 4
  %332 = getelementptr inbounds %struct.nfsd_idargs, %struct.nfsd_idargs* %9, i32 0, i32 2
  store i32 %331, i32* %332, align 8
  br label %333

333:                                              ; preds = %326, %314
  %334 = getelementptr inbounds %struct.nfsd_idargs, %struct.nfsd_idargs* %9, i32 0, i32 2
  %335 = load i32, i32* %334, align 8
  %336 = call i8* @strlen(i32 %335)
  %337 = getelementptr inbounds %struct.nfsd_idargs, %struct.nfsd_idargs* %9, i32 0, i32 6
  store i8* %336, i8** %337, align 8
  %338 = getelementptr inbounds %struct.nfsd_idargs, %struct.nfsd_idargs* %9, i32 0, i32 1
  store i32 0, i32* %338, align 4
  %339 = getelementptr inbounds %struct.nfsd_idargs, %struct.nfsd_idargs* %9, i32 0, i32 5
  store i32* null, i32** %339, align 8
  %340 = load i32, i32* @NFSID_ADDGROUPNAME, align 4
  %341 = getelementptr inbounds %struct.nfsd_idargs, %struct.nfsd_idargs* %9, i32 0, i32 4
  store i32 %340, i32* %341, align 8
  %342 = load i32, i32* @NFSSVC_IDNAME, align 4
  %343 = load i32, i32* @NFSSVC_NEWSTRUCT, align 4
  %344 = or i32 %342, %343
  %345 = call i32 @nfssvc(i32 %344, %struct.nfsd_idargs* %9)
  store i32 %345, i32* %7, align 4
  %346 = load i32, i32* %7, align 4
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %356

348:                                              ; preds = %333
  %349 = load i32, i32* %7, align 4
  %350 = getelementptr inbounds %struct.info, %struct.info* %8, i32 0, i32 0
  store i32 %349, i32* %350, align 4
  %351 = load i32, i32* @LOG_ERR, align 4
  %352 = load %struct.group*, %struct.group** %6, align 8
  %353 = getelementptr inbounds %struct.group, %struct.group* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 4
  %355 = call i32 (i32, i8*, ...) @syslog(i32 %351, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %354)
  br label %367

356:                                              ; preds = %333
  %357 = load i32, i32* @verbose, align 4
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %366

359:                                              ; preds = %356
  %360 = load i32, i32* @LOG_ERR, align 4
  %361 = getelementptr inbounds %struct.nfsd_idargs, %struct.nfsd_idargs* %9, i32 0, i32 3
  %362 = load i32, i32* %361, align 4
  %363 = getelementptr inbounds %struct.nfsd_idargs, %struct.nfsd_idargs* %9, i32 0, i32 2
  %364 = load i32, i32* %363, align 8
  %365 = call i32 (i32, i8*, ...) @syslog(i32 %360, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %362, i32 %364)
  br label %366

366:                                              ; preds = %359, %356
  br label %367

367:                                              ; preds = %366, %348
  %368 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %369 = load i32, i32* @xdr_retval, align 4
  %370 = bitcast %struct.info* %8 to i32*
  %371 = call i32 @svc_sendreply(%struct.TYPE_13__* %368, i32 %369, i32* %370)
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %376, label %373

373:                                              ; preds = %367
  %374 = load i32, i32* @LOG_ERR, align 4
  %375 = call i32 (i32, i8*, ...) @syslog(i32 %374, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %376

376:                                              ; preds = %373, %367
  store i32 1, i32* %13, align 4
  br label %380

377:                                              ; preds = %25
  %378 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %379 = call i32 @svcerr_noproc(%struct.TYPE_13__* %378)
  store i32 1, i32* %13, align 4
  br label %380

380:                                              ; preds = %377, %376, %304, %297, %225, %218, %146, %139, %44, %37
  %381 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %381)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @svc_sendreply(%struct.TYPE_13__*, i32, i32*) #2

declare dso_local i32 @syslog(i32, i8*, ...) #2

declare dso_local i32 @svc_getargs(%struct.TYPE_13__*, i32, i32*) #2

declare dso_local i32 @svcerr_decode(%struct.TYPE_13__*) #2

declare dso_local %struct.passwd* @getpwuid(i32) #2

declare dso_local i32 @getgrouplist(i32, i32, i32*, i32*) #2

declare dso_local i8* @strlen(i32) #2

declare dso_local i32 @nfssvc(i32, %struct.nfsd_idargs*) #2

declare dso_local %struct.group* @getgrgid(i32) #2

declare dso_local %struct.passwd* @getpwnam(i32) #2

declare dso_local %struct.group* @getgrnam(i32) #2

declare dso_local i32 @svcerr_noproc(%struct.TYPE_13__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
