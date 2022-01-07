; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pnfsdsfile/extr_pnfsdsfile.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pnfsdsfile/extr_pnfsdsfile.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, %struct.TYPE_4__*, %struct.addrinfo* }
%struct.TYPE_4__ = type { i64 }
%struct.sockaddr_in = type { i64, i64, i32, i8*, %struct.TYPE_3__, i8*, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.sockaddr_in6 = type { i64, i64, i32, i8*, %struct.TYPE_3__, i8*, i32 }
%struct.pnfsdsfile = type { i32, i8*, %struct.sockaddr_in6, %struct.sockaddr_in6, i32 }
%struct.sockaddr = type { i32 }

@NI_MAXHOST = common dso_local global i32 0, align 4
@NFSDEV_MAXMIRRORS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"c:m:qr:s:z\00", align 1
@longopts = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [71 x i8] c"-c, -m, -r, -s and -z are mutually exclusive and only can be used once\00", align 1
@optarg = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"Bad -c argument %s\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Can't get IP# for %s\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"-m %d out of range\00", align 1
@.str.5 = private unnamed_addr constant [61 x i8] c"-c, -m and -r are mutually exclusive from use with -s and -z\00", align 1
@optind = common dso_local global i64 0, align 8
@EXTATTR_NAMESPACE_SYSTEM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"pnfsd.dsfile\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"Can't get extattr pnfsd.dsfile for %s\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%s:\09\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"Must be root/su to zerofh\00", align 1
@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [26 x i8] c"Must be root/su to zerods\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"Must be root/su to replace the host addr\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"Hostname %s has no IP#\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"Can't get hostname\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"%s\09ds%d/%s\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"\090.0.0.0\09ds%d/%s\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"Can't set pnfsd.dsfile\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.addrinfo*, align 8
  %7 = alloca %struct.addrinfo*, align 8
  %8 = alloca %struct.addrinfo*, align 8
  %9 = alloca %struct.sockaddr_in*, align 8
  %10 = alloca %struct.sockaddr_in, align 8
  %11 = alloca %struct.sockaddr_in6*, align 8
  %12 = alloca %struct.sockaddr_in6, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %28 = load i32, i32* @NI_MAXHOST, align 4
  %29 = mul nsw i32 2, %28
  %30 = add nsw i32 %29, 2
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %13, align 8
  %33 = alloca i8, i64 %31, align 16
  store i64 %31, i64* %14, align 8
  %34 = load i32, i32* @NFSDEV_MAXMIRRORS, align 4
  %35 = zext i32 %34 to i64
  %36 = alloca %struct.pnfsdsfile, i64 %35, align 16
  store i64 %35, i64* %16, align 8
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %18, align 4
  store %struct.addrinfo* null, %struct.addrinfo** %6, align 8
  store %struct.addrinfo* null, %struct.addrinfo** %8, align 8
  store i8* null, i8** %15, align 8
  br label %37

37:                                               ; preds = %184, %2
  %38 = load i32, i32* %4, align 4
  %39 = load i8**, i8*** %5, align 8
  %40 = load i32, i32* @longopts, align 4
  %41 = call i32 @getopt_long(i32 %38, i8** %39, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %40, i32* null)
  store i32 %41, i32* %17, align 4
  %42 = icmp ne i32 %41, -1
  br i1 %42, label %43, label %185

43:                                               ; preds = %37
  %44 = load i32, i32* %17, align 4
  switch i32 %44, label %182 [
    i32 99, label %45
    i32 109, label %89
    i32 113, label %119
    i32 114, label %120
    i32 115, label %145
    i32 122, label %167
  ]

45:                                               ; preds = %43
  %46 = load i32, i32* %24, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %60, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %23, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %21, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %51
  %55 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %56 = icmp ne %struct.addrinfo* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %59 = icmp ne %struct.addrinfo* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %57, %54, %51, %48, %45
  %61 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %57
  %63 = load i8*, i8** @optarg, align 8
  %64 = load i32, i32* @NI_MAXHOST, align 4
  %65 = mul nsw i32 2, %64
  %66 = add nsw i32 %65, 2
  %67 = call i32 @strlcpy(i8* %33, i8* %63, i32 %66)
  %68 = call i8* @strchr(i8* %33, i8 signext 44)
  store i8* %68, i8** %15, align 8
  %69 = load i8*, i8** %15, align 8
  %70 = icmp eq i8* %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %62
  %72 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %33)
  br label %73

73:                                               ; preds = %71, %62
  %74 = load i8*, i8** %15, align 8
  store i8 0, i8* %74, align 1
  %75 = call i32 @getaddrinfo(i8* %33, i32* null, i32* null, %struct.addrinfo** %6)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %33)
  br label %79

79:                                               ; preds = %77, %73
  %80 = load i8*, i8** %15, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %15, align 8
  store i8 44, i8* %80, align 1
  %82 = load i8*, i8** %15, align 8
  %83 = call i32 @getaddrinfo(i8* %82, i32* null, i32* null, %struct.addrinfo** %8)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %79
  %86 = load i8*, i8** %15, align 8
  %87 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %86)
  br label %88

88:                                               ; preds = %85, %79
  br label %184

89:                                               ; preds = %43
  %90 = load i32, i32* %24, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %104, label %92

92:                                               ; preds = %89
  %93 = load i32, i32* %23, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %104, label %95

95:                                               ; preds = %92
  %96 = load i32, i32* %21, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %104, label %98

98:                                               ; preds = %95
  %99 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %100 = icmp ne %struct.addrinfo* %99, null
  br i1 %100, label %104, label %101

101:                                              ; preds = %98
  %102 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %103 = icmp ne %struct.addrinfo* %102, null
  br i1 %103, label %104, label %106

104:                                              ; preds = %101, %98, %95, %92, %89
  %105 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0))
  br label %106

106:                                              ; preds = %104, %101
  %107 = load i8*, i8** @optarg, align 8
  %108 = call i32 @atoi(i8* %107)
  store i32 %108, i32* %21, align 4
  %109 = load i32, i32* %21, align 4
  %110 = icmp slt i32 %109, 2
  br i1 %110, label %115, label %111

111:                                              ; preds = %106
  %112 = load i32, i32* %21, align 4
  %113 = load i32, i32* @NFSDEV_MAXMIRRORS, align 4
  %114 = icmp sgt i32 %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %111, %106
  %116 = load i32, i32* %21, align 4
  %117 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %116)
  br label %118

118:                                              ; preds = %115, %111
  br label %184

119:                                              ; preds = %43
  store i32 1, i32* %22, align 4
  br label %184

120:                                              ; preds = %43
  %121 = load i32, i32* %24, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %135, label %123

123:                                              ; preds = %120
  %124 = load i32, i32* %23, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %135, label %126

126:                                              ; preds = %123
  %127 = load i32, i32* %21, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %135, label %129

129:                                              ; preds = %126
  %130 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %131 = icmp ne %struct.addrinfo* %130, null
  br i1 %131, label %135, label %132

132:                                              ; preds = %129
  %133 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %134 = icmp ne %struct.addrinfo* %133, null
  br i1 %134, label %135, label %137

135:                                              ; preds = %132, %129, %126, %123, %120
  %136 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0))
  br label %137

137:                                              ; preds = %135, %132
  store i32 1, i32* %23, align 4
  %138 = load i8*, i8** @optarg, align 8
  %139 = call i32 @getaddrinfo(i8* %138, i32* null, i32* null, %struct.addrinfo** %6)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %137
  %142 = load i8*, i8** @optarg, align 8
  %143 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %142)
  br label %144

144:                                              ; preds = %141, %137
  br label %184

145:                                              ; preds = %43
  %146 = load i32, i32* %23, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %157, label %148

148:                                              ; preds = %145
  %149 = load i32, i32* %21, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %157, label %151

151:                                              ; preds = %148
  %152 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %153 = icmp ne %struct.addrinfo* %152, null
  br i1 %153, label %157, label %154

154:                                              ; preds = %151
  %155 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %156 = icmp ne %struct.addrinfo* %155, null
  br i1 %156, label %157, label %159

157:                                              ; preds = %154, %151, %148, %145
  %158 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0))
  br label %159

159:                                              ; preds = %157, %154
  %160 = load i8*, i8** @optarg, align 8
  %161 = call i32 @getaddrinfo(i8* %160, i32* null, i32* null, %struct.addrinfo** %6)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %159
  %164 = load i8*, i8** @optarg, align 8
  %165 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %164)
  br label %166

166:                                              ; preds = %163, %159
  br label %184

167:                                              ; preds = %43
  %168 = load i32, i32* %24, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %179, label %170

170:                                              ; preds = %167
  %171 = load i32, i32* %23, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %179, label %173

173:                                              ; preds = %170
  %174 = load i32, i32* %21, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %179, label %176

176:                                              ; preds = %173
  %177 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %178 = icmp ne %struct.addrinfo* %177, null
  br i1 %178, label %179, label %181

179:                                              ; preds = %176, %173, %170, %167
  %180 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0))
  br label %181

181:                                              ; preds = %179, %176
  store i32 1, i32* %24, align 4
  br label %184

182:                                              ; preds = %43
  %183 = call i32 (...) @usage()
  br label %184

184:                                              ; preds = %182, %181, %166, %144, %119, %118, %88
  br label %37

185:                                              ; preds = %37
  %186 = load i64, i64* @optind, align 8
  %187 = load i32, i32* %4, align 4
  %188 = sext i32 %187 to i64
  %189 = sub nsw i64 %188, %186
  %190 = trunc i64 %189 to i32
  store i32 %190, i32* %4, align 4
  %191 = load i32, i32* %4, align 4
  %192 = icmp ne i32 %191, 1
  br i1 %192, label %193, label %195

193:                                              ; preds = %185
  %194 = call i32 (...) @usage()
  br label %195

195:                                              ; preds = %193, %185
  %196 = load i64, i64* @optind, align 8
  %197 = load i8**, i8*** %5, align 8
  %198 = getelementptr inbounds i8*, i8** %197, i64 %196
  store i8** %198, i8*** %5, align 8
  %199 = load i8**, i8*** %5, align 8
  %200 = load i8*, i8** %199, align 8
  %201 = load i32, i32* @EXTATTR_NAMESPACE_SYSTEM, align 4
  %202 = mul nuw i64 136, %35
  %203 = trunc i64 %202 to i32
  %204 = call i32 @extattr_get_file(i8* %200, i32 %201, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), %struct.pnfsdsfile* %36, i32 %203)
  store i32 %204, i32* %26, align 4
  %205 = load i32, i32* %26, align 4
  %206 = sext i32 %205 to i64
  %207 = udiv i64 %206, 136
  %208 = trunc i64 %207 to i32
  store i32 %208, i32* %20, align 4
  %209 = load i32, i32* %20, align 4
  %210 = sext i32 %209 to i64
  %211 = mul i64 %210, 136
  %212 = trunc i64 %211 to i32
  store i32 %212, i32* %27, align 4
  %213 = load i32, i32* %20, align 4
  %214 = icmp slt i32 %213, 1
  br i1 %214, label %219, label %215

215:                                              ; preds = %195
  %216 = load i32, i32* %26, align 4
  %217 = load i32, i32* %27, align 4
  %218 = icmp ne i32 %216, %217
  br i1 %218, label %219, label %223

219:                                              ; preds = %215, %195
  %220 = load i8**, i8*** %5, align 8
  %221 = load i8*, i8** %220, align 8
  %222 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i8* %221)
  br label %223

223:                                              ; preds = %219, %215
  %224 = load i32, i32* %22, align 4
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %230

226:                                              ; preds = %223
  %227 = load i8**, i8*** %5, align 8
  %228 = load i8*, i8** %227, align 8
  %229 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* %228)
  br label %230

230:                                              ; preds = %226, %223
  store i32 0, i32* %19, align 4
  br label %231

231:                                              ; preds = %673, %230
  %232 = load i32, i32* %19, align 4
  %233 = load i32, i32* %20, align 4
  %234 = icmp slt i32 %232, %233
  br i1 %234, label %235, label %676

235:                                              ; preds = %231
  %236 = load i32, i32* %19, align 4
  %237 = icmp sgt i32 %236, 0
  br i1 %237, label %238, label %243

238:                                              ; preds = %235
  %239 = load i32, i32* %22, align 4
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %243

241:                                              ; preds = %238
  %242 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %243

243:                                              ; preds = %241, %238, %235
  %244 = load i32, i32* %24, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %350

246:                                              ; preds = %243
  %247 = call i64 (...) @geteuid()
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %251

249:                                              ; preds = %246
  %250 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  br label %251

251:                                              ; preds = %249, %246
  %252 = load i32, i32* %19, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.pnfsdsfile, %struct.pnfsdsfile* %36, i64 %253
  %255 = getelementptr inbounds %struct.pnfsdsfile, %struct.pnfsdsfile* %254, i32 0, i32 2
  %256 = bitcast %struct.sockaddr_in6* %255 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %256, %struct.sockaddr_in** %9, align 8
  %257 = load i32, i32* %19, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.pnfsdsfile, %struct.pnfsdsfile* %36, i64 %258
  %260 = getelementptr inbounds %struct.pnfsdsfile, %struct.pnfsdsfile* %259, i32 0, i32 3
  store %struct.sockaddr_in6* %260, %struct.sockaddr_in6** %11, align 8
  %261 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  store %struct.addrinfo* %261, %struct.addrinfo** %7, align 8
  br label %262

262:                                              ; preds = %333, %251
  %263 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %264 = icmp ne %struct.addrinfo* %263, null
  br i1 %264, label %265, label %337

265:                                              ; preds = %262
  %266 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %267 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %266, i32 0, i32 1
  %268 = load %struct.TYPE_4__*, %struct.TYPE_4__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %268, i32 0, i32 0
  %270 = load i64, i64* %269, align 8
  %271 = load i64, i64* @AF_INET, align 8
  %272 = icmp eq i64 %270, %271
  br i1 %272, label %273, label %301

273:                                              ; preds = %265
  %274 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %275 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = load i64, i64* @AF_INET, align 8
  %278 = icmp eq i64 %276, %277
  br i1 %278, label %279, label %301

279:                                              ; preds = %273
  %280 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %281 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = sext i32 %282 to i64
  %284 = icmp uge i64 %283, 56
  br i1 %284, label %285, label %301

285:                                              ; preds = %279
  %286 = bitcast %struct.sockaddr_in* %10 to %struct.sockaddr_in6*
  %287 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %288 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %287, i32 0, i32 1
  %289 = load %struct.TYPE_4__*, %struct.TYPE_4__** %288, align 8
  %290 = call i32 @memcpy(%struct.sockaddr_in6* %286, %struct.TYPE_4__* %289, i32 56)
  %291 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %292 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %291, i32 0, i32 4
  %293 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %292, i32 0, i32 0
  %294 = load i64, i64* %293, align 8
  %295 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 4
  %296 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %295, i32 0, i32 0
  %297 = load i64, i64* %296, align 8
  %298 = icmp eq i64 %294, %297
  br i1 %298, label %299, label %300

299:                                              ; preds = %285
  br label %337

300:                                              ; preds = %285
  br label %301

301:                                              ; preds = %300, %279, %273, %265
  %302 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %303 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %302, i32 0, i32 1
  %304 = load %struct.TYPE_4__*, %struct.TYPE_4__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %304, i32 0, i32 0
  %306 = load i64, i64* %305, align 8
  %307 = load i64, i64* @AF_INET6, align 8
  %308 = icmp eq i64 %306, %307
  br i1 %308, label %309, label %333

309:                                              ; preds = %301
  %310 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %11, align 8
  %311 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %310, i32 0, i32 1
  %312 = load i64, i64* %311, align 8
  %313 = load i64, i64* @AF_INET6, align 8
  %314 = icmp eq i64 %312, %313
  br i1 %314, label %315, label %333

315:                                              ; preds = %309
  %316 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %317 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = sext i32 %318 to i64
  %320 = icmp uge i64 %319, 56
  br i1 %320, label %321, label %333

321:                                              ; preds = %315
  %322 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %323 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %322, i32 0, i32 1
  %324 = load %struct.TYPE_4__*, %struct.TYPE_4__** %323, align 8
  %325 = call i32 @memcpy(%struct.sockaddr_in6* %12, %struct.TYPE_4__* %324, i32 56)
  %326 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %11, align 8
  %327 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %326, i32 0, i32 6
  %328 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %12, i32 0, i32 6
  %329 = call i64 @IN6_ARE_ADDR_EQUAL(i32* %327, i32* %328)
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %332

331:                                              ; preds = %321
  br label %337

332:                                              ; preds = %321
  br label %333

333:                                              ; preds = %332, %315, %309, %301
  %334 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %335 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %334, i32 0, i32 2
  %336 = load %struct.addrinfo*, %struct.addrinfo** %335, align 8
  store %struct.addrinfo* %336, %struct.addrinfo** %7, align 8
  br label %262

337:                                              ; preds = %331, %299, %262
  %338 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %339 = icmp eq %struct.addrinfo* %338, null
  br i1 %339, label %343, label %340

340:                                              ; preds = %337
  %341 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %342 = icmp ne %struct.addrinfo* %341, null
  br i1 %342, label %343, label %349

343:                                              ; preds = %340, %337
  %344 = load i32, i32* %19, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds %struct.pnfsdsfile, %struct.pnfsdsfile* %36, i64 %345
  %347 = getelementptr inbounds %struct.pnfsdsfile, %struct.pnfsdsfile* %346, i32 0, i32 4
  %348 = call i32 @memset(i32* %347, i32 0, i32 4)
  store i32 1, i32* %18, align 4
  br label %349

349:                                              ; preds = %343, %340
  br label %350

350:                                              ; preds = %349, %243
  %351 = load i32, i32* %23, align 4
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %462

353:                                              ; preds = %350
  %354 = load i32, i32* %20, align 4
  %355 = icmp sgt i32 %354, 1
  br i1 %355, label %356, label %462

356:                                              ; preds = %353
  %357 = call i64 (...) @geteuid()
  %358 = icmp ne i64 %357, 0
  br i1 %358, label %359, label %361

359:                                              ; preds = %356
  %360 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0))
  br label %361

361:                                              ; preds = %359, %356
  %362 = load i32, i32* %19, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds %struct.pnfsdsfile, %struct.pnfsdsfile* %36, i64 %363
  %365 = getelementptr inbounds %struct.pnfsdsfile, %struct.pnfsdsfile* %364, i32 0, i32 2
  %366 = bitcast %struct.sockaddr_in6* %365 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %366, %struct.sockaddr_in** %9, align 8
  %367 = load i32, i32* %19, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds %struct.pnfsdsfile, %struct.pnfsdsfile* %36, i64 %368
  %370 = getelementptr inbounds %struct.pnfsdsfile, %struct.pnfsdsfile* %369, i32 0, i32 3
  store %struct.sockaddr_in6* %370, %struct.sockaddr_in6** %11, align 8
  %371 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  store %struct.addrinfo* %371, %struct.addrinfo** %7, align 8
  br label %372

372:                                              ; preds = %443, %361
  %373 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %374 = icmp ne %struct.addrinfo* %373, null
  br i1 %374, label %375, label %447

375:                                              ; preds = %372
  %376 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %377 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %376, i32 0, i32 1
  %378 = load %struct.TYPE_4__*, %struct.TYPE_4__** %377, align 8
  %379 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %378, i32 0, i32 0
  %380 = load i64, i64* %379, align 8
  %381 = load i64, i64* @AF_INET, align 8
  %382 = icmp eq i64 %380, %381
  br i1 %382, label %383, label %411

383:                                              ; preds = %375
  %384 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %385 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %384, i32 0, i32 0
  %386 = load i64, i64* %385, align 8
  %387 = load i64, i64* @AF_INET, align 8
  %388 = icmp eq i64 %386, %387
  br i1 %388, label %389, label %411

389:                                              ; preds = %383
  %390 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %391 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %390, i32 0, i32 0
  %392 = load i32, i32* %391, align 8
  %393 = sext i32 %392 to i64
  %394 = icmp uge i64 %393, 56
  br i1 %394, label %395, label %411

395:                                              ; preds = %389
  %396 = bitcast %struct.sockaddr_in* %10 to %struct.sockaddr_in6*
  %397 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %398 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %397, i32 0, i32 1
  %399 = load %struct.TYPE_4__*, %struct.TYPE_4__** %398, align 8
  %400 = call i32 @memcpy(%struct.sockaddr_in6* %396, %struct.TYPE_4__* %399, i32 56)
  %401 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %402 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %401, i32 0, i32 4
  %403 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %402, i32 0, i32 0
  %404 = load i64, i64* %403, align 8
  %405 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 4
  %406 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %405, i32 0, i32 0
  %407 = load i64, i64* %406, align 8
  %408 = icmp eq i64 %404, %407
  br i1 %408, label %409, label %410

409:                                              ; preds = %395
  br label %447

410:                                              ; preds = %395
  br label %411

411:                                              ; preds = %410, %389, %383, %375
  %412 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %413 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %412, i32 0, i32 1
  %414 = load %struct.TYPE_4__*, %struct.TYPE_4__** %413, align 8
  %415 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %414, i32 0, i32 0
  %416 = load i64, i64* %415, align 8
  %417 = load i64, i64* @AF_INET6, align 8
  %418 = icmp eq i64 %416, %417
  br i1 %418, label %419, label %443

419:                                              ; preds = %411
  %420 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %11, align 8
  %421 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %420, i32 0, i32 1
  %422 = load i64, i64* %421, align 8
  %423 = load i64, i64* @AF_INET6, align 8
  %424 = icmp eq i64 %422, %423
  br i1 %424, label %425, label %443

425:                                              ; preds = %419
  %426 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %427 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %426, i32 0, i32 0
  %428 = load i32, i32* %427, align 8
  %429 = sext i32 %428 to i64
  %430 = icmp uge i64 %429, 56
  br i1 %430, label %431, label %443

431:                                              ; preds = %425
  %432 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %433 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %432, i32 0, i32 1
  %434 = load %struct.TYPE_4__*, %struct.TYPE_4__** %433, align 8
  %435 = call i32 @memcpy(%struct.sockaddr_in6* %12, %struct.TYPE_4__* %434, i32 56)
  %436 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %11, align 8
  %437 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %436, i32 0, i32 6
  %438 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %12, i32 0, i32 6
  %439 = call i64 @IN6_ARE_ADDR_EQUAL(i32* %437, i32* %438)
  %440 = icmp ne i64 %439, 0
  br i1 %440, label %441, label %442

441:                                              ; preds = %431
  br label %447

442:                                              ; preds = %431
  br label %443

443:                                              ; preds = %442, %425, %419, %411
  %444 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %445 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %444, i32 0, i32 2
  %446 = load %struct.addrinfo*, %struct.addrinfo** %445, align 8
  store %struct.addrinfo* %446, %struct.addrinfo** %7, align 8
  br label %372

447:                                              ; preds = %441, %409, %372
  %448 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %449 = icmp ne %struct.addrinfo* %448, null
  br i1 %449, label %450, label %461

450:                                              ; preds = %447
  %451 = load i64, i64* @AF_INET, align 8
  %452 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %453 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %452, i32 0, i32 0
  store i64 %451, i64* %453, align 8
  %454 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %455 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %454, i32 0, i32 2
  store i32 56, i32* %455, align 8
  %456 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %457 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %456, i32 0, i32 3
  store i8* null, i8** %457, align 8
  %458 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %459 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %458, i32 0, i32 4
  %460 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %459, i32 0, i32 0
  store i64 0, i64* %460, align 8
  store i32 1, i32* %18, align 4
  br label %461

461:                                              ; preds = %450, %447
  br label %462

462:                                              ; preds = %461, %353, %350
  %463 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %464 = icmp ne %struct.addrinfo* %463, null
  br i1 %464, label %465, label %640

465:                                              ; preds = %462
  %466 = call i64 (...) @geteuid()
  %467 = icmp ne i64 %466, 0
  br i1 %467, label %468, label %470

468:                                              ; preds = %465
  %469 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0))
  br label %470

470:                                              ; preds = %468, %465
  %471 = load i32, i32* %19, align 4
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds %struct.pnfsdsfile, %struct.pnfsdsfile* %36, i64 %472
  %474 = getelementptr inbounds %struct.pnfsdsfile, %struct.pnfsdsfile* %473, i32 0, i32 2
  %475 = bitcast %struct.sockaddr_in6* %474 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %475, %struct.sockaddr_in** %9, align 8
  %476 = load i32, i32* %19, align 4
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds %struct.pnfsdsfile, %struct.pnfsdsfile* %36, i64 %477
  %479 = getelementptr inbounds %struct.pnfsdsfile, %struct.pnfsdsfile* %478, i32 0, i32 3
  store %struct.sockaddr_in6* %479, %struct.sockaddr_in6** %11, align 8
  %480 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  store %struct.addrinfo* %480, %struct.addrinfo** %7, align 8
  br label %481

481:                                              ; preds = %552, %470
  %482 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %483 = icmp ne %struct.addrinfo* %482, null
  br i1 %483, label %484, label %556

484:                                              ; preds = %481
  %485 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %486 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %485, i32 0, i32 1
  %487 = load %struct.TYPE_4__*, %struct.TYPE_4__** %486, align 8
  %488 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %487, i32 0, i32 0
  %489 = load i64, i64* %488, align 8
  %490 = load i64, i64* @AF_INET, align 8
  %491 = icmp eq i64 %489, %490
  br i1 %491, label %492, label %520

492:                                              ; preds = %484
  %493 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %494 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %493, i32 0, i32 0
  %495 = load i64, i64* %494, align 8
  %496 = load i64, i64* @AF_INET, align 8
  %497 = icmp eq i64 %495, %496
  br i1 %497, label %498, label %520

498:                                              ; preds = %492
  %499 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %500 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %499, i32 0, i32 0
  %501 = load i32, i32* %500, align 8
  %502 = sext i32 %501 to i64
  %503 = icmp uge i64 %502, 56
  br i1 %503, label %504, label %520

504:                                              ; preds = %498
  %505 = bitcast %struct.sockaddr_in* %10 to %struct.sockaddr_in6*
  %506 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %507 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %506, i32 0, i32 1
  %508 = load %struct.TYPE_4__*, %struct.TYPE_4__** %507, align 8
  %509 = call i32 @memcpy(%struct.sockaddr_in6* %505, %struct.TYPE_4__* %508, i32 56)
  %510 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %511 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %510, i32 0, i32 4
  %512 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %511, i32 0, i32 0
  %513 = load i64, i64* %512, align 8
  %514 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 4
  %515 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %514, i32 0, i32 0
  %516 = load i64, i64* %515, align 8
  %517 = icmp eq i64 %513, %516
  br i1 %517, label %518, label %519

518:                                              ; preds = %504
  br label %556

519:                                              ; preds = %504
  br label %520

520:                                              ; preds = %519, %498, %492, %484
  %521 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %522 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %521, i32 0, i32 1
  %523 = load %struct.TYPE_4__*, %struct.TYPE_4__** %522, align 8
  %524 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %523, i32 0, i32 0
  %525 = load i64, i64* %524, align 8
  %526 = load i64, i64* @AF_INET6, align 8
  %527 = icmp eq i64 %525, %526
  br i1 %527, label %528, label %552

528:                                              ; preds = %520
  %529 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %11, align 8
  %530 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %529, i32 0, i32 1
  %531 = load i64, i64* %530, align 8
  %532 = load i64, i64* @AF_INET6, align 8
  %533 = icmp eq i64 %531, %532
  br i1 %533, label %534, label %552

534:                                              ; preds = %528
  %535 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %536 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %535, i32 0, i32 0
  %537 = load i32, i32* %536, align 8
  %538 = sext i32 %537 to i64
  %539 = icmp uge i64 %538, 56
  br i1 %539, label %540, label %552

540:                                              ; preds = %534
  %541 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %542 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %541, i32 0, i32 1
  %543 = load %struct.TYPE_4__*, %struct.TYPE_4__** %542, align 8
  %544 = call i32 @memcpy(%struct.sockaddr_in6* %12, %struct.TYPE_4__* %543, i32 56)
  %545 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %11, align 8
  %546 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %545, i32 0, i32 6
  %547 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %12, i32 0, i32 6
  %548 = call i64 @IN6_ARE_ADDR_EQUAL(i32* %546, i32* %547)
  %549 = icmp ne i64 %548, 0
  br i1 %549, label %550, label %551

550:                                              ; preds = %540
  br label %556

551:                                              ; preds = %540
  br label %552

552:                                              ; preds = %551, %534, %528, %520
  %553 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %554 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %553, i32 0, i32 2
  %555 = load %struct.addrinfo*, %struct.addrinfo** %554, align 8
  store %struct.addrinfo* %555, %struct.addrinfo** %7, align 8
  br label %481

556:                                              ; preds = %550, %518, %481
  %557 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %558 = icmp ne %struct.addrinfo* %557, null
  br i1 %558, label %559, label %639

559:                                              ; preds = %556
  %560 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %561 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %560, i32 0, i32 0
  %562 = load i64, i64* %561, align 8
  %563 = load i64, i64* @AF_INET, align 8
  %564 = icmp eq i64 %562, %563
  br i1 %564, label %565, label %569

565:                                              ; preds = %559
  %566 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %567 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %566, i32 0, i32 3
  %568 = load i8*, i8** %567, align 8
  store i8* %568, i8** %25, align 8
  br label %573

569:                                              ; preds = %559
  %570 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %11, align 8
  %571 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %570, i32 0, i32 5
  %572 = load i8*, i8** %571, align 8
  store i8* %572, i8** %25, align 8
  br label %573

573:                                              ; preds = %569, %565
  br label %574

574:                                              ; preds = %601, %573
  %575 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %576 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %575, i32 0, i32 1
  %577 = load %struct.TYPE_4__*, %struct.TYPE_4__** %576, align 8
  %578 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %577, i32 0, i32 0
  %579 = load i64, i64* %578, align 8
  %580 = load i64, i64* @AF_INET, align 8
  %581 = icmp ne i64 %579, %580
  br i1 %581, label %582, label %590

582:                                              ; preds = %574
  %583 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %584 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %583, i32 0, i32 1
  %585 = load %struct.TYPE_4__*, %struct.TYPE_4__** %584, align 8
  %586 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %585, i32 0, i32 0
  %587 = load i64, i64* %586, align 8
  %588 = load i64, i64* @AF_INET6, align 8
  %589 = icmp ne i64 %587, %588
  br label %590

590:                                              ; preds = %582, %574
  %591 = phi i1 [ false, %574 ], [ %589, %582 ]
  br i1 %591, label %592, label %602

592:                                              ; preds = %590
  %593 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %594 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %593, i32 0, i32 2
  %595 = load %struct.addrinfo*, %struct.addrinfo** %594, align 8
  store %struct.addrinfo* %595, %struct.addrinfo** %8, align 8
  %596 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %597 = icmp eq %struct.addrinfo* %596, null
  br i1 %597, label %598, label %601

598:                                              ; preds = %592
  %599 = load i8*, i8** %15, align 8
  %600 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0), i8* %599)
  br label %601

601:                                              ; preds = %598, %592
  br label %574

602:                                              ; preds = %590
  %603 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %604 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %603, i32 0, i32 1
  %605 = load %struct.TYPE_4__*, %struct.TYPE_4__** %604, align 8
  %606 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %605, i32 0, i32 0
  %607 = load i64, i64* %606, align 8
  %608 = load i64, i64* @AF_INET, align 8
  %609 = icmp eq i64 %607, %608
  br i1 %609, label %610, label %620

610:                                              ; preds = %602
  %611 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %612 = bitcast %struct.sockaddr_in* %611 to %struct.sockaddr_in6*
  %613 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %614 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %613, i32 0, i32 1
  %615 = load %struct.TYPE_4__*, %struct.TYPE_4__** %614, align 8
  %616 = call i32 @memcpy(%struct.sockaddr_in6* %612, %struct.TYPE_4__* %615, i32 56)
  %617 = load i8*, i8** %25, align 8
  %618 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %619 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %618, i32 0, i32 3
  store i8* %617, i8** %619, align 8
  br label %638

620:                                              ; preds = %602
  %621 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %622 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %621, i32 0, i32 1
  %623 = load %struct.TYPE_4__*, %struct.TYPE_4__** %622, align 8
  %624 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %623, i32 0, i32 0
  %625 = load i64, i64* %624, align 8
  %626 = load i64, i64* @AF_INET6, align 8
  %627 = icmp eq i64 %625, %626
  br i1 %627, label %628, label %637

628:                                              ; preds = %620
  %629 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %11, align 8
  %630 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %631 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %630, i32 0, i32 1
  %632 = load %struct.TYPE_4__*, %struct.TYPE_4__** %631, align 8
  %633 = call i32 @memcpy(%struct.sockaddr_in6* %629, %struct.TYPE_4__* %632, i32 56)
  %634 = load i8*, i8** %25, align 8
  %635 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %11, align 8
  %636 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %635, i32 0, i32 5
  store i8* %634, i8** %636, align 8
  br label %637

637:                                              ; preds = %628, %620
  br label %638

638:                                              ; preds = %637, %610
  store i32 1, i32* %18, align 4
  br label %639

639:                                              ; preds = %638, %556
  br label %640

640:                                              ; preds = %639, %462
  %641 = load i32, i32* %22, align 4
  %642 = icmp eq i32 %641, 0
  br i1 %642, label %643, label %672

643:                                              ; preds = %640
  %644 = load i32, i32* %19, align 4
  %645 = sext i32 %644 to i64
  %646 = getelementptr inbounds %struct.pnfsdsfile, %struct.pnfsdsfile* %36, i64 %645
  %647 = getelementptr inbounds %struct.pnfsdsfile, %struct.pnfsdsfile* %646, i32 0, i32 2
  %648 = bitcast %struct.sockaddr_in6* %647 to %struct.sockaddr*
  %649 = load i32, i32* %19, align 4
  %650 = sext i32 %649 to i64
  %651 = getelementptr inbounds %struct.pnfsdsfile, %struct.pnfsdsfile* %36, i64 %650
  %652 = getelementptr inbounds %struct.pnfsdsfile, %struct.pnfsdsfile* %651, i32 0, i32 2
  %653 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %652, i32 0, i32 2
  %654 = load i32, i32* %653, align 8
  %655 = trunc i64 %31 to i32
  %656 = call i64 @getnameinfo(%struct.sockaddr* %648, i32 %654, i8* %33, i32 %655, i32* null, i32 0, i32 0)
  %657 = icmp slt i64 %656, 0
  br i1 %657, label %658, label %660

658:                                              ; preds = %643
  %659 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0))
  br label %660

660:                                              ; preds = %658, %643
  %661 = load i32, i32* %19, align 4
  %662 = sext i32 %661 to i64
  %663 = getelementptr inbounds %struct.pnfsdsfile, %struct.pnfsdsfile* %36, i64 %662
  %664 = getelementptr inbounds %struct.pnfsdsfile, %struct.pnfsdsfile* %663, i32 0, i32 0
  %665 = load i32, i32* %664, align 8
  %666 = load i32, i32* %19, align 4
  %667 = sext i32 %666 to i64
  %668 = getelementptr inbounds %struct.pnfsdsfile, %struct.pnfsdsfile* %36, i64 %667
  %669 = getelementptr inbounds %struct.pnfsdsfile, %struct.pnfsdsfile* %668, i32 0, i32 1
  %670 = load i8*, i8** %669, align 8
  %671 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i8* %33, i32 %665, i8* %670)
  br label %672

672:                                              ; preds = %660, %640
  br label %673

673:                                              ; preds = %672
  %674 = load i32, i32* %19, align 4
  %675 = add nsw i32 %674, 1
  store i32 %675, i32* %19, align 4
  br label %231

676:                                              ; preds = %231
  %677 = load i32, i32* %20, align 4
  store i32 %677, i32* %19, align 4
  br label %678

678:                                              ; preds = %726, %676
  %679 = load i32, i32* %19, align 4
  %680 = load i32, i32* %21, align 4
  %681 = icmp slt i32 %679, %680
  br i1 %681, label %682, label %729

682:                                              ; preds = %678
  %683 = load i32, i32* %19, align 4
  %684 = sext i32 %683 to i64
  %685 = getelementptr inbounds %struct.pnfsdsfile, %struct.pnfsdsfile* %36, i64 %684
  %686 = getelementptr inbounds %struct.pnfsdsfile, %struct.pnfsdsfile* %36, i64 0
  %687 = bitcast %struct.pnfsdsfile* %685 to i8*
  %688 = bitcast %struct.pnfsdsfile* %686 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %687, i8* align 16 %688, i64 136, i1 false)
  %689 = load i64, i64* @AF_INET, align 8
  %690 = load i32, i32* %19, align 4
  %691 = sext i32 %690 to i64
  %692 = getelementptr inbounds %struct.pnfsdsfile, %struct.pnfsdsfile* %36, i64 %691
  %693 = getelementptr inbounds %struct.pnfsdsfile, %struct.pnfsdsfile* %692, i32 0, i32 2
  %694 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %693, i32 0, i32 0
  store i64 %689, i64* %694, align 8
  %695 = load i32, i32* %19, align 4
  %696 = sext i32 %695 to i64
  %697 = getelementptr inbounds %struct.pnfsdsfile, %struct.pnfsdsfile* %36, i64 %696
  %698 = getelementptr inbounds %struct.pnfsdsfile, %struct.pnfsdsfile* %697, i32 0, i32 2
  %699 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %698, i32 0, i32 2
  store i32 56, i32* %699, align 8
  %700 = load i32, i32* %19, align 4
  %701 = sext i32 %700 to i64
  %702 = getelementptr inbounds %struct.pnfsdsfile, %struct.pnfsdsfile* %36, i64 %701
  %703 = getelementptr inbounds %struct.pnfsdsfile, %struct.pnfsdsfile* %702, i32 0, i32 2
  %704 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %703, i32 0, i32 4
  %705 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %704, i32 0, i32 0
  store i64 0, i64* %705, align 8
  %706 = load i32, i32* %19, align 4
  %707 = sext i32 %706 to i64
  %708 = getelementptr inbounds %struct.pnfsdsfile, %struct.pnfsdsfile* %36, i64 %707
  %709 = getelementptr inbounds %struct.pnfsdsfile, %struct.pnfsdsfile* %708, i32 0, i32 2
  %710 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %709, i32 0, i32 3
  store i8* null, i8** %710, align 8
  %711 = load i32, i32* %22, align 4
  %712 = icmp eq i32 %711, 0
  br i1 %712, label %713, label %725

713:                                              ; preds = %682
  %714 = load i32, i32* %19, align 4
  %715 = sext i32 %714 to i64
  %716 = getelementptr inbounds %struct.pnfsdsfile, %struct.pnfsdsfile* %36, i64 %715
  %717 = getelementptr inbounds %struct.pnfsdsfile, %struct.pnfsdsfile* %716, i32 0, i32 0
  %718 = load i32, i32* %717, align 8
  %719 = load i32, i32* %19, align 4
  %720 = sext i32 %719 to i64
  %721 = getelementptr inbounds %struct.pnfsdsfile, %struct.pnfsdsfile* %36, i64 %720
  %722 = getelementptr inbounds %struct.pnfsdsfile, %struct.pnfsdsfile* %721, i32 0, i32 1
  %723 = load i8*, i8** %722, align 8
  %724 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0), i32 %718, i8* %723)
  br label %725

725:                                              ; preds = %713, %682
  br label %726

726:                                              ; preds = %725
  %727 = load i32, i32* %19, align 4
  %728 = add nsw i32 %727, 1
  store i32 %728, i32* %19, align 4
  br label %678

729:                                              ; preds = %678
  %730 = load i32, i32* %21, align 4
  %731 = load i32, i32* %20, align 4
  %732 = icmp sgt i32 %730, %731
  br i1 %732, label %733, label %738

733:                                              ; preds = %729
  %734 = load i32, i32* %21, align 4
  %735 = sext i32 %734 to i64
  %736 = mul i64 %735, 136
  %737 = trunc i64 %736 to i32
  store i32 %737, i32* %26, align 4
  store i32 1, i32* %18, align 4
  br label %738

738:                                              ; preds = %733, %729
  %739 = load i32, i32* %22, align 4
  %740 = icmp eq i32 %739, 0
  br i1 %740, label %741, label %743

741:                                              ; preds = %738
  %742 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  br label %743

743:                                              ; preds = %741, %738
  %744 = load i32, i32* %18, align 4
  %745 = icmp ne i32 %744, 0
  br i1 %745, label %746, label %756

746:                                              ; preds = %743
  %747 = load i8**, i8*** %5, align 8
  %748 = load i8*, i8** %747, align 8
  %749 = load i32, i32* @EXTATTR_NAMESPACE_SYSTEM, align 4
  %750 = load i32, i32* %26, align 4
  %751 = call i32 @extattr_set_file(i8* %748, i32 %749, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), %struct.pnfsdsfile* %36, i32 %750)
  %752 = load i32, i32* %26, align 4
  %753 = icmp ne i32 %751, %752
  br i1 %753, label %754, label %756

754:                                              ; preds = %746
  %755 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0))
  br label %756

756:                                              ; preds = %754, %746, %743
  %757 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %757)
  %758 = load i32, i32* %3, align 4
  ret i32 %758
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @getopt_long(i32, i8**, i8*, i32, i32*) #2

declare dso_local i32 @errx(i32, i8*, ...) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @getaddrinfo(i8*, i32*, i32*, %struct.addrinfo**) #2

declare dso_local i32 @atoi(i8*) #2

declare dso_local i32 @usage(...) #2

declare dso_local i32 @extattr_get_file(i8*, i32, i8*, %struct.pnfsdsfile*, i32) #2

declare dso_local i32 @err(i32, i8*, ...) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i64 @geteuid(...) #2

declare dso_local i32 @memcpy(%struct.sockaddr_in6*, %struct.TYPE_4__*, i32) #2

declare dso_local i64 @IN6_ARE_ADDR_EQUAL(i32*, i32*) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i64 @getnameinfo(%struct.sockaddr*, i32, i8*, i32, i32*, i32, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @extattr_set_file(i8*, i32, i8*, %struct.pnfsdsfile*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
