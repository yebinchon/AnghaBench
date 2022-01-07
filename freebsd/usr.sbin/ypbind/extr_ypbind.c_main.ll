; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypbind/extr_ypbind.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypbind/extr_ypbind.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._dom_binding = type { i32, i32, %struct._dom_binding*, i64, i32, i32 }
%struct.timeval = type { i32, i64 }
%struct.dirent = type { i8* }

@YPBINDLOCK = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@yplockfd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@LOCK_EX = common dso_local global i32 0, align 4
@LOCK_NB = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"another ypbind is already running. Aborting\00", align 1
@domain_name = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"domainname not set. Aborting\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"-ypset\00", align 1
@YPSET_ALL = common dso_local global i32 0, align 4
@ypsetmode = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"-ypsetme\00", align 1
@YPSET_LOCAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"-s\00", align 1
@ypsecuremode = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"-S\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"-m\00", align 1
@yp_manycast = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [19 x i8] c"unknown option: %s\00", align 1
@YPMAXDOMAIN = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [26 x i8] c"truncating domain name %s\00", align 1
@BINDINGDIR = common dso_local global i8* null, align 8
@MAXPATHLEN = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@YPBINDPROG = common dso_local global i32 0, align 4
@YPBINDVERS = common dso_local global i32 0, align 4
@RPC_ANYSOCK = common dso_local global i32 0, align 4
@udptransp = common dso_local global i32* null, align 8
@.str.13 = private unnamed_addr constant [26 x i8] c"cannot create udp service\00", align 1
@ypbindprog_2 = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [49 x i8] c"unable to register (YPBINDPROG, YPBINDVERS, udp)\00", align 1
@tcptransp = common dso_local global i32* null, align 8
@.str.15 = private unnamed_addr constant [26 x i8] c"cannot create tcp service\00", align 1
@IPPROTO_TCP = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [49 x i8] c"unable to register (YPBINDPROG, YPBINDVERS, tcp)\00", align 1
@ypbindlist = common dso_local global %struct._dom_binding* null, align 8
@.str.17 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@YPVERS = common dso_local global i32 0, align 4
@domains = common dso_local global i32 0, align 4
@SIGCHLD = common dso_local global i32 0, align 4
@reaper = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@terminate = common dso_local global i32 0, align 4
@ppid = common dso_local global i32 0, align 4
@LOG_PID = common dso_local global i32 0, align 4
@LOG_DAEMON = common dso_local global i32 0, align 4
@MADV_PROTECT = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [14 x i8] c"madvise(): %m\00", align 1
@svc_fdset = common dso_local global i32 0, align 4
@fdsr = common dso_local global i32 0, align 4
@EINTR = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [11 x i8] c"select: %m\00", align 1
@READFD = common dso_local global i32 0, align 4
@children = common dso_local global i32 0, align 4
@MAX_CHILDREN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.timeval, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.dirent*, align 8
  %10 = alloca %struct._dom_binding*, align 8
  %11 = alloca %struct._dom_binding*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %14 = load i32, i32* @YPBINDLOCK, align 4
  %15 = load i32, i32* @O_RDONLY, align 4
  %16 = load i32, i32* @O_CREAT, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @open(i32 %14, i32 %17, i32 292)
  store i32 %18, i32* @yplockfd, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @YPBINDLOCK, align 4
  %22 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %20, %2
  %24 = load i32, i32* @yplockfd, align 4
  %25 = load i32, i32* @LOCK_EX, align 4
  %26 = load i32, i32* @LOCK_NB, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @flock(i32 %24, i32 %27)
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %36

30:                                               ; preds = %23
  %31 = load i64, i64* @errno, align 8
  %32 = load i64, i64* @EWOULDBLOCK, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %30, %23
  %37 = call i32 @yp_get_default_domain(i8** @domain_name)
  %38 = load i8*, i8** @domain_name, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %36
  store i32 1, i32* %7, align 4
  br label %46

46:                                               ; preds = %124, %45
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %127

50:                                               ; preds = %46
  %51 = load i8**, i8*** %5, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %51, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = call i64 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %55)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = load i32, i32* @YPSET_ALL, align 4
  store i32 %59, i32* @ypsetmode, align 4
  br label %123

60:                                               ; preds = %50
  %61 = load i8**, i8*** %5, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %61, i64 %63
  %65 = load i8*, i8** %64, align 8
  %66 = call i64 @strcmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* %65)
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %60
  %69 = load i32, i32* @YPSET_LOCAL, align 4
  store i32 %69, i32* @ypsetmode, align 4
  br label %122

70:                                               ; preds = %60
  %71 = load i8**, i8*** %5, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %71, i64 %73
  %75 = load i8*, i8** %74, align 8
  %76 = call i64 @strcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %75)
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %70
  %79 = load i32, i32* @ypsecuremode, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* @ypsecuremode, align 4
  br label %121

81:                                               ; preds = %70
  %82 = load i8**, i8*** %5, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8*, i8** %82, i64 %84
  %86 = load i8*, i8** %85, align 8
  %87 = call i64 @strcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %86)
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %101

89:                                               ; preds = %81
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp sgt i32 %90, %91
  br i1 %92, label %93, label %101

93:                                               ; preds = %89
  %94 = load i8**, i8*** %5, align 8
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8*, i8** %94, i64 %97
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 @yp_restricted_mode(i8* %99)
  br label %120

101:                                              ; preds = %89, %81
  %102 = load i8**, i8*** %5, align 8
  %103 = load i32, i32* %7, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8*, i8** %102, i64 %104
  %106 = load i8*, i8** %105, align 8
  %107 = call i64 @strcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* %106)
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %101
  %110 = load i32, i32* @yp_manycast, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* @yp_manycast, align 4
  br label %119

112:                                              ; preds = %101
  %113 = load i8**, i8*** %5, align 8
  %114 = load i32, i32* %7, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8*, i8** %113, i64 %115
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i8* %117)
  br label %119

119:                                              ; preds = %112, %109
  br label %120

120:                                              ; preds = %119, %93
  br label %121

121:                                              ; preds = %120, %78
  br label %122

122:                                              ; preds = %121, %68
  br label %123

123:                                              ; preds = %122, %58
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %7, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %7, align 4
  br label %46

127:                                              ; preds = %46
  %128 = load i8*, i8** @domain_name, align 8
  %129 = call i64 @strlen(i8* %128)
  %130 = load i64, i64* @YPMAXDOMAIN, align 8
  %131 = icmp sgt i64 %129, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %127
  %133 = load i8*, i8** @domain_name, align 8
  %134 = call i32 @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i8* %133)
  br label %135

135:                                              ; preds = %132, %127
  %136 = load i8*, i8** @BINDINGDIR, align 8
  %137 = call i32* @opendir(i8* %136)
  store i32* %137, i32** %8, align 8
  %138 = icmp ne i32* %137, null
  br i1 %138, label %139, label %172

139:                                              ; preds = %135
  %140 = load i32, i32* @MAXPATHLEN, align 4
  %141 = zext i32 %140 to i64
  %142 = call i8* @llvm.stacksave()
  store i8* %142, i8** %12, align 8
  %143 = alloca i8, i64 %141, align 16
  store i64 %141, i64* %13, align 8
  br label %144

144:                                              ; preds = %167, %139
  %145 = load i32*, i32** %8, align 8
  %146 = call %struct.dirent* @readdir(i32* %145)
  store %struct.dirent* %146, %struct.dirent** %9, align 8
  %147 = icmp ne %struct.dirent* %146, null
  br i1 %147, label %148, label %168

148:                                              ; preds = %144
  %149 = load %struct.dirent*, %struct.dirent** %9, align 8
  %150 = getelementptr inbounds %struct.dirent, %struct.dirent* %149, i32 0, i32 0
  %151 = load i8*, i8** %150, align 8
  %152 = call i64 @strcmp(i8* %151, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %167

154:                                              ; preds = %148
  %155 = load %struct.dirent*, %struct.dirent** %9, align 8
  %156 = getelementptr inbounds %struct.dirent, %struct.dirent* %155, i32 0, i32 0
  %157 = load i8*, i8** %156, align 8
  %158 = call i64 @strcmp(i8* %157, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %167

160:                                              ; preds = %154
  %161 = load i8*, i8** @BINDINGDIR, align 8
  %162 = load %struct.dirent*, %struct.dirent** %9, align 8
  %163 = getelementptr inbounds %struct.dirent, %struct.dirent* %162, i32 0, i32 0
  %164 = load i8*, i8** %163, align 8
  %165 = call i32 @sprintf(i8* %143, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* %161, i8* %164)
  %166 = call i32 @unlink(i8* %143)
  br label %167

167:                                              ; preds = %160, %154, %148
  br label %144

168:                                              ; preds = %144
  %169 = load i32*, i32** %8, align 8
  %170 = call i32 @closedir(i32* %169)
  %171 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %171)
  br label %172

172:                                              ; preds = %168, %135
  %173 = load i32, i32* @YPBINDPROG, align 4
  %174 = load i32, i32* @YPBINDVERS, align 4
  %175 = call i32 @pmap_unset(i32 %173, i32 %174)
  %176 = load i32, i32* @RPC_ANYSOCK, align 4
  %177 = call i32* @svcudp_create(i32 %176)
  store i32* %177, i32** @udptransp, align 8
  %178 = load i32*, i32** @udptransp, align 8
  %179 = icmp eq i32* %178, null
  br i1 %179, label %180, label %182

180:                                              ; preds = %172
  %181 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0))
  br label %182

182:                                              ; preds = %180, %172
  %183 = load i32*, i32** @udptransp, align 8
  %184 = load i32, i32* @YPBINDPROG, align 4
  %185 = load i32, i32* @YPBINDVERS, align 4
  %186 = load i32, i32* @ypbindprog_2, align 4
  %187 = load i32, i32* @IPPROTO_UDP, align 4
  %188 = call i32 @svc_register(i32* %183, i32 %184, i32 %185, i32 %186, i32 %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %192, label %190

190:                                              ; preds = %182
  %191 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.14, i64 0, i64 0))
  br label %192

192:                                              ; preds = %190, %182
  %193 = load i32, i32* @RPC_ANYSOCK, align 4
  %194 = call i32* @svctcp_create(i32 %193, i32 0, i32 0)
  store i32* %194, i32** @tcptransp, align 8
  %195 = load i32*, i32** @tcptransp, align 8
  %196 = icmp eq i32* %195, null
  br i1 %196, label %197, label %199

197:                                              ; preds = %192
  %198 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0))
  br label %199

199:                                              ; preds = %197, %192
  %200 = load i32*, i32** @tcptransp, align 8
  %201 = load i32, i32* @YPBINDPROG, align 4
  %202 = load i32, i32* @YPBINDVERS, align 4
  %203 = load i32, i32* @ypbindprog_2, align 4
  %204 = load i32, i32* @IPPROTO_TCP, align 4
  %205 = call i32 @svc_register(i32* %200, i32 %201, i32 %202, i32 %203, i32 %204)
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %209, label %207

207:                                              ; preds = %199
  %208 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.16, i64 0, i64 0))
  br label %209

209:                                              ; preds = %207, %199
  %210 = call %struct._dom_binding* @malloc(i32 32)
  store %struct._dom_binding* %210, %struct._dom_binding** @ypbindlist, align 8
  %211 = load %struct._dom_binding*, %struct._dom_binding** @ypbindlist, align 8
  %212 = icmp eq %struct._dom_binding* %211, null
  br i1 %212, label %213, label %215

213:                                              ; preds = %209
  %214 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0))
  br label %215

215:                                              ; preds = %213, %209
  %216 = load %struct._dom_binding*, %struct._dom_binding** @ypbindlist, align 8
  %217 = call i32 @bzero(%struct._dom_binding* %216, i32 32)
  %218 = load %struct._dom_binding*, %struct._dom_binding** @ypbindlist, align 8
  %219 = getelementptr inbounds %struct._dom_binding, %struct._dom_binding* %218, i32 0, i32 5
  %220 = load i32, i32* %219, align 4
  %221 = load i8*, i8** @domain_name, align 8
  %222 = call i32 @strlcpy(i32 %220, i8* %221, i32 4)
  %223 = load i32, i32* @YPVERS, align 4
  %224 = load %struct._dom_binding*, %struct._dom_binding** @ypbindlist, align 8
  %225 = getelementptr inbounds %struct._dom_binding, %struct._dom_binding* %224, i32 0, i32 4
  store i32 %223, i32* %225, align 8
  %226 = load %struct._dom_binding*, %struct._dom_binding** @ypbindlist, align 8
  %227 = getelementptr inbounds %struct._dom_binding, %struct._dom_binding* %226, i32 0, i32 3
  store i64 0, i64* %227, align 8
  %228 = load %struct._dom_binding*, %struct._dom_binding** @ypbindlist, align 8
  %229 = getelementptr inbounds %struct._dom_binding, %struct._dom_binding* %228, i32 0, i32 0
  store i32 -1, i32* %229, align 8
  %230 = load %struct._dom_binding*, %struct._dom_binding** @ypbindlist, align 8
  %231 = getelementptr inbounds %struct._dom_binding, %struct._dom_binding* %230, i32 0, i32 1
  store i32 1, i32* %231, align 4
  %232 = load i32, i32* @domains, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* @domains, align 4
  %234 = load i32, i32* @SIGCHLD, align 4
  %235 = load i32, i32* @reaper, align 4
  %236 = call i32 @signal(i32 %234, i32 %235)
  %237 = load i32, i32* @SIGTERM, align 4
  %238 = load i32, i32* @terminate, align 4
  %239 = call i32 @signal(i32 %237, i32 %238)
  %240 = call i32 (...) @getpid()
  store i32 %240, i32* @ppid, align 4
  %241 = load i8**, i8*** %5, align 8
  %242 = getelementptr inbounds i8*, i8** %241, i64 0
  %243 = load i8*, i8** %242, align 8
  %244 = load i32, i32* @LOG_PID, align 4
  %245 = load i32, i32* @LOG_DAEMON, align 4
  %246 = call i32 @openlog(i8* %243, i32 %244, i32 %245)
  %247 = load i32, i32* @MADV_PROTECT, align 4
  %248 = call i64 @madvise(i32* null, i32 0, i32 %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %253

250:                                              ; preds = %215
  %251 = load i32, i32* @LOG_WARNING, align 4
  %252 = call i32 @syslog(i32 %251, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0))
  br label %253

253:                                              ; preds = %250, %215
  %254 = load %struct._dom_binding*, %struct._dom_binding** @ypbindlist, align 8
  %255 = call i32 @broadcast(%struct._dom_binding* %254)
  br label %256

256:                                              ; preds = %253, %302
  %257 = load i32, i32* @svc_fdset, align 4
  store i32 %257, i32* @fdsr, align 4
  %258 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  store i32 60, i32* %258, align 8
  %259 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 1
  store i64 0, i64* %259, align 8
  %260 = call i32 (...) @_rpc_dtablesize()
  %261 = call i32 @select(i32 %260, i32* @fdsr, i32* null, i32* null, %struct.timeval* %6)
  switch i32 %261, label %272 [
    i32 0, label %262
    i32 -1, label %264
  ]

262:                                              ; preds = %256
  %263 = call i32 (...) @checkwork()
  br label %302

264:                                              ; preds = %256
  %265 = load i64, i64* @errno, align 8
  %266 = load i64, i64* @EINTR, align 8
  %267 = icmp ne i64 %265, %266
  br i1 %267, label %268, label %271

268:                                              ; preds = %264
  %269 = load i32, i32* @LOG_WARNING, align 4
  %270 = call i32 @syslog(i32 %269, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0))
  br label %271

271:                                              ; preds = %268, %264
  br label %302

272:                                              ; preds = %256
  %273 = load %struct._dom_binding*, %struct._dom_binding** @ypbindlist, align 8
  store %struct._dom_binding* %273, %struct._dom_binding** %10, align 8
  br label %274

274:                                              ; preds = %298, %272
  %275 = load %struct._dom_binding*, %struct._dom_binding** %10, align 8
  %276 = icmp ne %struct._dom_binding* %275, null
  br i1 %276, label %277, label %300

277:                                              ; preds = %274
  %278 = load %struct._dom_binding*, %struct._dom_binding** %10, align 8
  %279 = getelementptr inbounds %struct._dom_binding, %struct._dom_binding* %278, i32 0, i32 2
  %280 = load %struct._dom_binding*, %struct._dom_binding** %279, align 8
  store %struct._dom_binding* %280, %struct._dom_binding** %11, align 8
  %281 = load i32, i32* @READFD, align 4
  %282 = icmp sgt i32 %281, 0
  br i1 %282, label %283, label %297

283:                                              ; preds = %277
  %284 = load i32, i32* @READFD, align 4
  %285 = call i32 @FD_ISSET(i32 %284, i32* @fdsr)
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %297

287:                                              ; preds = %283
  %288 = load %struct._dom_binding*, %struct._dom_binding** %10, align 8
  %289 = call i32 @handle_children(%struct._dom_binding* %288)
  %290 = load i32, i32* @children, align 4
  %291 = load i32, i32* @MAX_CHILDREN, align 4
  %292 = sub nsw i32 %291, 1
  %293 = icmp eq i32 %290, %292
  br i1 %293, label %294, label %296

294:                                              ; preds = %287
  %295 = call i32 (...) @checkwork()
  br label %296

296:                                              ; preds = %294, %287
  br label %297

297:                                              ; preds = %296, %283, %277
  br label %298

298:                                              ; preds = %297
  %299 = load %struct._dom_binding*, %struct._dom_binding** %11, align 8
  store %struct._dom_binding* %299, %struct._dom_binding** %10, align 8
  br label %274

300:                                              ; preds = %274
  %301 = call i32 @svc_getreqset(i32* @fdsr)
  br label %302

302:                                              ; preds = %300, %271, %262
  br label %256
}

declare dso_local i32 @open(i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @flock(i32, i32) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @yp_get_default_domain(i8**) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @yp_restricted_mode(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i32* @opendir(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @closedir(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @pmap_unset(i32, i32) #1

declare dso_local i32* @svcudp_create(i32) #1

declare dso_local i32 @svc_register(i32*, i32, i32, i32, i32) #1

declare dso_local i32* @svctcp_create(i32, i32, i32) #1

declare dso_local %struct._dom_binding* @malloc(i32) #1

declare dso_local i32 @bzero(%struct._dom_binding*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @openlog(i8*, i32, i32) #1

declare dso_local i64 @madvise(i32*, i32, i32) #1

declare dso_local i32 @syslog(i32, i8*) #1

declare dso_local i32 @broadcast(%struct._dom_binding*) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @_rpc_dtablesize(...) #1

declare dso_local i32 @checkwork(...) #1

declare dso_local i32 @FD_ISSET(i32, i32*) #1

declare dso_local i32 @handle_children(%struct._dom_binding*) #1

declare dso_local i32 @svc_getreqset(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
