; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/kttcp/extr_kttcp.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/kttcp/extr_kttcp.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kttcp_io_args = type { i32, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.addrinfo = type { i32, i32, i32, %struct.sockaddr*, i32, i32, %struct.addrinfo* }
%struct.sockaddr = type { i32 }
%struct.sockaddr_storage = type { i32 }
%struct.rusage = type { i32, i32 }
%struct.timeval = type { i64, i64 }

@NI_MAXHOST = common dso_local global i32 0, align 4
@KTTCP_PORT = common dso_local global i8* null, align 8
@KTTCP_SOCKBUF_DEFAULT = common dso_local global i32 0, align 4
@KTTCP_XMITSIZE = common dso_local global i64 0, align 8
@PF_UNSPEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"46b:n:p:qrtvw:\00", align 1
@PF_INET = common dso_local global i32 0, align 4
@PF_INET6 = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@INT_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"invalid socket buffer size: %s\0A\00", align 1
@KTTCP_IO_RECV = common dso_local global i64 0, align 8
@KTTCP_IO_SEND = common dso_local global i64 0, align 8
@optind = common dso_local global i64 0, align 8
@KTTCP_MAX_XMIT = common dso_local global i64 0, align 8
@AI_PASSIVE = common dso_local global i32 0, align 4
@KTTCP_DEVICE = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"open %s\00", align 1
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"can't create socket\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"kttcp: socket buffer size: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@NI_NUMERICHOST = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"kttcp: connected to %s\0A\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_SNDBUF = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [18 x i8] c"setsockopt sndbuf\00", align 1
@SO_REUSEADDR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [21 x i8] c"setsockopt reuseaddr\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"bind\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"listen\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"kttcp: listening on port %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"accept\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"kttcp: connect from %s\0A\00", align 1
@SO_RCVBUF = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [18 x i8] c"setsockopt rcvbuf\00", align 1
@RUSAGE_SELF = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [18 x i8] c"kttcp i/o command\00", align 1
@NBBY = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [64 x i8] c"kttcp: %llu bytes in %ld.%03ld real seconds ==> %llu bytes/sec\0A\00", align 1
@.str.18 = private unnamed_addr constant [67 x i8] c"kttcp: %llu bytes in %ld.%03ld CPU seconds ==> %llu bytes/CPU sec\0A\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"       %g (%g) Megabits/sec\0A\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"  %ld.%02lduser\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c" %ld.%02ldsys\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c" %lld.%lldreal\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c" %lld%%\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.kttcp_io_args, align 8
  %19 = alloca %struct.addrinfo, align 8
  %20 = alloca %struct.addrinfo*, align 8
  %21 = alloca %struct.addrinfo*, align 8
  %22 = alloca %struct.sockaddr_storage, align 4
  %23 = alloca %struct.rusage, align 4
  %24 = alloca %struct.rusage, align 4
  %25 = alloca %struct.timeval, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i64, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %36 = load i32, i32* @NI_MAXHOST, align 4
  %37 = zext i32 %36 to i64
  %38 = call i8* @llvm.stacksave()
  store i8* %38, i8** %31, align 8
  %39 = alloca i8, i64 %37, align 16
  store i64 %37, i64* %32, align 8
  store i32 1, i32* %34, align 4
  store i64 0, i64* %35, align 8
  %40 = load i8*, i8** @KTTCP_PORT, align 8
  store i8* %40, i8** %17, align 8
  store i32 1, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %41 = load i32, i32* @KTTCP_SOCKBUF_DEFAULT, align 4
  store i32 %41, i32* %14, align 4
  %42 = load i64, i64* @KTTCP_XMITSIZE, align 8
  store i64 %42, i64* %30, align 8
  %43 = load i32, i32* @PF_UNSPEC, align 4
  store i32 %43, i32* %13, align 4
  br label %44

44:                                               ; preds = %103, %2
  %45 = load i32, i32* %4, align 4
  %46 = load i8**, i8*** %5, align 8
  %47 = call i32 @getopt(i32 %45, i8** %46, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 %47, i32* %6, align 4
  %48 = icmp ne i32 %47, -1
  br i1 %48, label %49, label %104

49:                                               ; preds = %44
  %50 = load i32, i32* %6, align 4
  switch i32 %50, label %101 [
    i32 52, label %51
    i32 54, label %59
    i32 98, label %67
    i32 110, label %79
    i32 112, label %82
    i32 113, label %84
    i32 114, label %85
    i32 116, label %92
    i32 118, label %99
    i32 63, label %100
  ]

51:                                               ; preds = %49
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* @PF_UNSPEC, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = call i32 (...) @usage()
  br label %57

57:                                               ; preds = %55, %51
  %58 = load i32, i32* @PF_INET, align 4
  store i32 %58, i32* %13, align 4
  br label %103

59:                                               ; preds = %49
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* @PF_UNSPEC, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = call i32 (...) @usage()
  br label %65

65:                                               ; preds = %63, %59
  %66 = load i32, i32* @PF_INET6, align 4
  store i32 %66, i32* %13, align 4
  br label %103

67:                                               ; preds = %49
  %68 = load i8*, i8** @optarg, align 8
  %69 = call i64 @get_bytes(i8* %68)
  store i64 %69, i64* %26, align 8
  %70 = load i64, i64* %26, align 8
  %71 = load i64, i64* @INT_MAX, align 8
  %72 = icmp ugt i64 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load i8*, i8** @optarg, align 8
  %75 = call i32 @errx(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %74)
  br label %76

76:                                               ; preds = %73, %67
  %77 = load i64, i64* %26, align 8
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %14, align 4
  br label %103

79:                                               ; preds = %49
  %80 = load i8*, i8** @optarg, align 8
  %81 = call i64 @get_bytes(i8* %80)
  store i64 %81, i64* %30, align 8
  store i32 1, i32* %12, align 4
  br label %103

82:                                               ; preds = %49
  %83 = load i8*, i8** @optarg, align 8
  store i8* %83, i8** %17, align 8
  br label %103

84:                                               ; preds = %49
  store i32 0, i32* %9, align 4
  br label %103

85:                                               ; preds = %49
  %86 = load i64, i64* %35, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = call i32 (...) @usage()
  br label %90

90:                                               ; preds = %88, %85
  %91 = load i64, i64* @KTTCP_IO_RECV, align 8
  store i64 %91, i64* %35, align 8
  br label %103

92:                                               ; preds = %49
  %93 = load i64, i64* %35, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %92
  %96 = call i32 (...) @usage()
  br label %97

97:                                               ; preds = %95, %92
  %98 = load i64, i64* @KTTCP_IO_SEND, align 8
  store i64 %98, i64* %35, align 8
  br label %103

99:                                               ; preds = %49
  store i32 2, i32* %9, align 4
  br label %103

100:                                              ; preds = %49
  br label %101

101:                                              ; preds = %49, %100
  %102 = call i32 (...) @usage()
  br label %103

103:                                              ; preds = %101, %99, %97, %90, %84, %82, %79, %76, %65, %57
  br label %44

104:                                              ; preds = %44
  %105 = load i64, i64* %35, align 8
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %104
  %108 = call i32 (...) @usage()
  br label %109

109:                                              ; preds = %107, %104
  %110 = load i64, i64* @optind, align 8
  %111 = load i32, i32* %4, align 4
  %112 = sext i32 %111 to i64
  %113 = sub nsw i64 %112, %110
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %4, align 4
  %115 = load i64, i64* @optind, align 8
  %116 = load i8**, i8*** %5, align 8
  %117 = getelementptr inbounds i8*, i8** %116, i64 %115
  store i8** %117, i8*** %5, align 8
  %118 = load i64, i64* %35, align 8
  %119 = load i64, i64* @KTTCP_IO_SEND, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %133

121:                                              ; preds = %109
  %122 = load i64, i64* %30, align 8
  %123 = icmp ule i64 %122, 0
  br i1 %123, label %127, label %124

124:                                              ; preds = %121
  %125 = load i32, i32* %4, align 4
  %126 = icmp slt i32 %125, 1
  br i1 %126, label %127, label %129

127:                                              ; preds = %124, %121
  %128 = call i32 (...) @usage()
  br label %129

129:                                              ; preds = %127, %124
  %130 = load i8**, i8*** %5, align 8
  %131 = getelementptr inbounds i8*, i8** %130, i64 0
  %132 = load i8*, i8** %131, align 8
  store i8* %132, i8** %16, align 8
  store i32 0, i32* %15, align 4
  br label %140

133:                                              ; preds = %109
  %134 = load i32, i32* %12, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %133
  %137 = load i64, i64* @KTTCP_MAX_XMIT, align 8
  store i64 %137, i64* %30, align 8
  br label %138

138:                                              ; preds = %136, %133
  store i8* null, i8** %16, align 8
  %139 = load i32, i32* @AI_PASSIVE, align 4
  store i32 %139, i32* %15, align 4
  br label %140

140:                                              ; preds = %138, %129
  %141 = load i32, i32* @KTTCP_DEVICE, align 4
  %142 = load i32, i32* @O_RDWR, align 4
  %143 = call i32 @open(i32 %141, i32 %142, i32 666)
  store i32 %143, i32* %11, align 4
  %144 = icmp eq i32 %143, -1
  br i1 %144, label %145, label %148

145:                                              ; preds = %140
  %146 = load i32, i32* @KTTCP_DEVICE, align 4
  %147 = call i32 (i32, i8*, ...) @err(i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %146)
  br label %148

148:                                              ; preds = %145, %140
  %149 = call i32 @memset(%struct.addrinfo* %19, i32 0, i32 40)
  %150 = load i32, i32* %15, align 4
  %151 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %19, i32 0, i32 0
  store i32 %150, i32* %151, align 8
  %152 = load i32, i32* @SOCK_STREAM, align 4
  %153 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %19, i32 0, i32 5
  store i32 %152, i32* %153, align 4
  %154 = load i32, i32* %13, align 4
  %155 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %19, i32 0, i32 1
  store i32 %154, i32* %155, align 4
  %156 = load i8*, i8** %16, align 8
  %157 = load i8*, i8** %17, align 8
  %158 = call i32 @getaddrinfo(i8* %156, i8* %157, %struct.addrinfo* %19, %struct.addrinfo** %20)
  store i32 %158, i32* %7, align 4
  %159 = load i32, i32* %7, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %148
  %162 = load i32, i32* %7, align 4
  %163 = call i8* @gai_strerror(i32 %162)
  %164 = call i32 @errx(i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %163)
  br label %165

165:                                              ; preds = %161, %148
  store i32 -1, i32* %8, align 4
  %166 = load %struct.addrinfo*, %struct.addrinfo** %20, align 8
  store %struct.addrinfo* %166, %struct.addrinfo** %21, align 8
  br label %167

167:                                              ; preds = %185, %165
  %168 = load %struct.addrinfo*, %struct.addrinfo** %21, align 8
  %169 = icmp ne %struct.addrinfo* %168, null
  br i1 %169, label %170, label %189

170:                                              ; preds = %167
  %171 = load %struct.addrinfo*, %struct.addrinfo** %21, align 8
  %172 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.addrinfo*, %struct.addrinfo** %21, align 8
  %175 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %174, i32 0, i32 5
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.addrinfo*, %struct.addrinfo** %21, align 8
  %178 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @socket(i32 %173, i32 %176, i32 %179)
  store i32 %180, i32* %8, align 4
  %181 = load i32, i32* %8, align 4
  %182 = icmp sge i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %170
  br label %189

184:                                              ; preds = %170
  br label %185

185:                                              ; preds = %184
  %186 = load %struct.addrinfo*, %struct.addrinfo** %21, align 8
  %187 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %186, i32 0, i32 6
  %188 = load %struct.addrinfo*, %struct.addrinfo** %187, align 8
  store %struct.addrinfo* %188, %struct.addrinfo** %21, align 8
  br label %167

189:                                              ; preds = %183, %167
  %190 = load %struct.addrinfo*, %struct.addrinfo** %21, align 8
  %191 = icmp eq %struct.addrinfo* %190, null
  br i1 %191, label %192, label %194

192:                                              ; preds = %189
  %193 = call i32 (i32, i8*, ...) @err(i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %194

194:                                              ; preds = %192, %189
  %195 = load i32, i32* %14, align 4
  %196 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %195)
  %197 = load i64, i64* %35, align 8
  %198 = load i64, i64* @KTTCP_IO_SEND, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %200, label %237

200:                                              ; preds = %194
  %201 = load i32, i32* %8, align 4
  %202 = load %struct.addrinfo*, %struct.addrinfo** %21, align 8
  %203 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %202, i32 0, i32 3
  %204 = load %struct.sockaddr*, %struct.sockaddr** %203, align 8
  %205 = load %struct.addrinfo*, %struct.addrinfo** %21, align 8
  %206 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 8
  %208 = call i64 @connect(i32 %201, %struct.sockaddr* %204, i32 %207)
  %209 = icmp slt i64 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %200
  %211 = call i32 (i32, i8*, ...) @err(i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  br label %212

212:                                              ; preds = %210, %200
  %213 = load i32, i32* %9, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %226

215:                                              ; preds = %212
  %216 = load %struct.addrinfo*, %struct.addrinfo** %21, align 8
  %217 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %216, i32 0, i32 3
  %218 = load %struct.sockaddr*, %struct.sockaddr** %217, align 8
  %219 = load %struct.addrinfo*, %struct.addrinfo** %21, align 8
  %220 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  %222 = trunc i64 %37 to i32
  %223 = load i32, i32* @NI_NUMERICHOST, align 4
  %224 = call i32 @getnameinfo(%struct.sockaddr* %218, i32 %221, i8* %39, i32 %222, i32* null, i32 0, i32 %223)
  %225 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i8* %39)
  br label %226

226:                                              ; preds = %215, %212
  %227 = load i32, i32* %8, align 4
  %228 = load i32, i32* @SOL_SOCKET, align 4
  %229 = load i32, i32* @SO_SNDBUF, align 4
  %230 = call i64 @setsockopt(i32 %227, i32 %228, i32 %229, i32* %14, i32 4)
  %231 = icmp slt i64 %230, 0
  br i1 %231, label %232, label %234

232:                                              ; preds = %226
  %233 = call i32 (i32, i8*, ...) @err(i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  br label %234

234:                                              ; preds = %232, %226
  %235 = load i32, i32* %8, align 4
  %236 = getelementptr inbounds %struct.kttcp_io_args, %struct.kttcp_io_args* %18, i32 0, i32 0
  store i32 %235, i32* %236, align 8
  br label %299

237:                                              ; preds = %194
  %238 = load i32, i32* %8, align 4
  %239 = load i32, i32* @SOL_SOCKET, align 4
  %240 = load i32, i32* @SO_REUSEADDR, align 4
  %241 = call i64 @setsockopt(i32 %238, i32 %239, i32 %240, i32* %34, i32 4)
  %242 = icmp slt i64 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %237
  %244 = call i32 (i32, i8*, ...) @err(i32 2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  br label %245

245:                                              ; preds = %243, %237
  %246 = load i32, i32* %8, align 4
  %247 = load %struct.addrinfo*, %struct.addrinfo** %21, align 8
  %248 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %247, i32 0, i32 3
  %249 = load %struct.sockaddr*, %struct.sockaddr** %248, align 8
  %250 = load %struct.addrinfo*, %struct.addrinfo** %21, align 8
  %251 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 8
  %253 = call i64 @bind(i32 %246, %struct.sockaddr* %249, i32 %252)
  %254 = icmp slt i64 %253, 0
  br i1 %254, label %255, label %257

255:                                              ; preds = %245
  %256 = call i32 (i32, i8*, ...) @err(i32 2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  br label %257

257:                                              ; preds = %255, %245
  %258 = load i32, i32* %8, align 4
  %259 = call i64 @listen(i32 %258, i32 1)
  %260 = icmp slt i64 %259, 0
  br i1 %260, label %261, label %263

261:                                              ; preds = %257
  %262 = call i32 (i32, i8*, ...) @err(i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  br label %263

263:                                              ; preds = %261, %257
  %264 = load i32, i32* %9, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %269

266:                                              ; preds = %263
  %267 = load i8*, i8** %17, align 8
  %268 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i8* %267)
  br label %269

269:                                              ; preds = %266, %263
  store i32 4, i32* %33, align 4
  %270 = load i32, i32* %8, align 4
  %271 = bitcast %struct.sockaddr_storage* %22 to %struct.sockaddr*
  %272 = call i32 @accept(i32 %270, %struct.sockaddr* %271, i32* %33)
  store i32 %272, i32* %10, align 4
  %273 = load i32, i32* %10, align 4
  %274 = icmp slt i32 %273, 0
  br i1 %274, label %275, label %277

275:                                              ; preds = %269
  %276 = call i32 (i32, i8*, ...) @err(i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0))
  br label %277

277:                                              ; preds = %275, %269
  %278 = load i32, i32* %9, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %288

280:                                              ; preds = %277
  %281 = bitcast %struct.sockaddr_storage* %22 to %struct.sockaddr*
  %282 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %22, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = trunc i64 %37 to i32
  %285 = load i32, i32* @NI_NUMERICHOST, align 4
  %286 = call i32 @getnameinfo(%struct.sockaddr* %281, i32 %283, i8* %39, i32 %284, i32* null, i32 0, i32 %285)
  %287 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i8* %39)
  br label %288

288:                                              ; preds = %280, %277
  %289 = load i32, i32* %10, align 4
  %290 = load i32, i32* @SOL_SOCKET, align 4
  %291 = load i32, i32* @SO_RCVBUF, align 4
  %292 = call i64 @setsockopt(i32 %289, i32 %290, i32 %291, i32* %14, i32 4)
  %293 = icmp slt i64 %292, 0
  br i1 %293, label %294, label %296

294:                                              ; preds = %288
  %295 = call i32 (i32, i8*, ...) @err(i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0))
  br label %296

296:                                              ; preds = %294, %288
  %297 = load i32, i32* %10, align 4
  %298 = getelementptr inbounds %struct.kttcp_io_args, %struct.kttcp_io_args* %18, i32 0, i32 0
  store i32 %297, i32* %298, align 8
  br label %299

299:                                              ; preds = %296, %234
  %300 = load i64, i64* %30, align 8
  %301 = getelementptr inbounds %struct.kttcp_io_args, %struct.kttcp_io_args* %18, i32 0, i32 1
  store i64 %300, i64* %301, align 8
  %302 = load i32, i32* @RUSAGE_SELF, align 4
  %303 = call i32 @getrusage(i32 %302, %struct.rusage* %23)
  %304 = load i32, i32* %11, align 4
  %305 = load i64, i64* %35, align 8
  %306 = call i32 @ioctl(i32 %304, i64 %305, %struct.kttcp_io_args* %18)
  %307 = icmp eq i32 %306, -1
  br i1 %307, label %308, label %310

308:                                              ; preds = %299
  %309 = call i32 (i32, i8*, ...) @err(i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0))
  br label %310

310:                                              ; preds = %308, %299
  %311 = load i32, i32* @RUSAGE_SELF, align 4
  %312 = call i32 @getrusage(i32 %311, %struct.rusage* %24)
  %313 = getelementptr inbounds %struct.kttcp_io_args, %struct.kttcp_io_args* %18, i32 0, i32 3
  %314 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %313, i32 0, i32 1
  %315 = load i64, i64* %314, align 8
  %316 = mul i64 %315, 1000000
  store i64 %316, i64* %27, align 8
  %317 = getelementptr inbounds %struct.kttcp_io_args, %struct.kttcp_io_args* %18, i32 0, i32 3
  %318 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %317, i32 0, i32 0
  %319 = load i64, i64* %318, align 8
  %320 = load i64, i64* %27, align 8
  %321 = add i64 %320, %319
  store i64 %321, i64* %27, align 8
  %322 = getelementptr inbounds %struct.kttcp_io_args, %struct.kttcp_io_args* %18, i32 0, i32 2
  %323 = load i64, i64* %322, align 8
  %324 = mul nsw i64 %323, 1000000
  %325 = load i64, i64* %27, align 8
  %326 = udiv i64 %324, %325
  store i64 %326, i64* %28, align 8
  %327 = load i64, i64* %28, align 8
  %328 = load i64, i64* @NBBY, align 8
  %329 = mul i64 %327, %328
  store i64 %329, i64* %29, align 8
  %330 = getelementptr inbounds %struct.kttcp_io_args, %struct.kttcp_io_args* %18, i32 0, i32 2
  %331 = load i64, i64* %330, align 8
  %332 = getelementptr inbounds %struct.kttcp_io_args, %struct.kttcp_io_args* %18, i32 0, i32 3
  %333 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %332, i32 0, i32 1
  %334 = load i64, i64* %333, align 8
  %335 = getelementptr inbounds %struct.kttcp_io_args, %struct.kttcp_io_args* %18, i32 0, i32 3
  %336 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %335, i32 0, i32 0
  %337 = load i64, i64* %336, align 8
  %338 = udiv i64 %337, 1000
  %339 = load i64, i64* %28, align 8
  %340 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.17, i64 0, i64 0), i64 %331, i64 %334, i64 %338, i64 %339)
  %341 = load i32, i32* %9, align 4
  %342 = icmp sgt i32 %341, 1
  br i1 %342, label %343, label %366

343:                                              ; preds = %310
  %344 = getelementptr inbounds %struct.rusage, %struct.rusage* %24, i32 0, i32 0
  %345 = getelementptr inbounds %struct.rusage, %struct.rusage* %23, i32 0, i32 0
  %346 = call i32 @timersub(i32* %344, i32* %345, %struct.timeval* %25)
  %347 = getelementptr inbounds %struct.kttcp_io_args, %struct.kttcp_io_args* %18, i32 0, i32 2
  %348 = load i64, i64* %347, align 8
  %349 = mul nsw i64 %348, 1000000
  %350 = getelementptr inbounds %struct.timeval, %struct.timeval* %25, i32 0, i32 0
  %351 = load i64, i64* %350, align 8
  %352 = mul i64 %351, 1000000
  %353 = getelementptr inbounds %struct.timeval, %struct.timeval* %25, i32 0, i32 1
  %354 = load i64, i64* %353, align 8
  %355 = add i64 %352, %354
  %356 = udiv i64 %349, %355
  store i64 %356, i64* %28, align 8
  %357 = getelementptr inbounds %struct.kttcp_io_args, %struct.kttcp_io_args* %18, i32 0, i32 2
  %358 = load i64, i64* %357, align 8
  %359 = getelementptr inbounds %struct.timeval, %struct.timeval* %25, i32 0, i32 0
  %360 = load i64, i64* %359, align 8
  %361 = getelementptr inbounds %struct.timeval, %struct.timeval* %25, i32 0, i32 1
  %362 = load i64, i64* %361, align 8
  %363 = udiv i64 %362, 1000
  %364 = load i64, i64* %28, align 8
  %365 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.18, i64 0, i64 0), i64 %358, i64 %360, i64 %363, i64 %364)
  br label %366

366:                                              ; preds = %343, %310
  %367 = load i64, i64* %29, align 8
  %368 = uitofp i64 %367 to double
  %369 = fdiv double %368, 1.024000e+03
  %370 = fdiv double %369, 1.024000e+03
  %371 = load i64, i64* %29, align 8
  %372 = uitofp i64 %371 to double
  %373 = fdiv double %372, 1.000000e+03
  %374 = fdiv double %373, 1.000000e+03
  %375 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i64 0, i64 0), double %370, double %374)
  %376 = getelementptr inbounds %struct.rusage, %struct.rusage* %24, i32 0, i32 1
  %377 = getelementptr inbounds %struct.rusage, %struct.rusage* %23, i32 0, i32 1
  %378 = call i32 @timersub(i32* %376, i32* %377, %struct.timeval* %25)
  %379 = getelementptr inbounds %struct.timeval, %struct.timeval* %25, i32 0, i32 0
  %380 = load i64, i64* %379, align 8
  %381 = icmp ult i64 %380, 0
  br i1 %381, label %382, label %385

382:                                              ; preds = %366
  %383 = getelementptr inbounds %struct.timeval, %struct.timeval* %25, i32 0, i32 1
  store i64 0, i64* %383, align 8
  %384 = getelementptr inbounds %struct.timeval, %struct.timeval* %25, i32 0, i32 0
  store i64 0, i64* %384, align 8
  br label %385

385:                                              ; preds = %382, %366
  %386 = getelementptr inbounds %struct.timeval, %struct.timeval* %25, i32 0, i32 0
  %387 = load i64, i64* %386, align 8
  %388 = getelementptr inbounds %struct.timeval, %struct.timeval* %25, i32 0, i32 1
  %389 = load i64, i64* %388, align 8
  %390 = udiv i64 %389, 10000
  %391 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), i64 %387, i64 %390)
  %392 = getelementptr inbounds %struct.timeval, %struct.timeval* %25, i32 0, i32 0
  %393 = load i64, i64* %392, align 8
  %394 = mul i64 %393, 1000000
  %395 = getelementptr inbounds %struct.timeval, %struct.timeval* %25, i32 0, i32 1
  %396 = load i64, i64* %395, align 8
  %397 = add i64 %394, %396
  store i64 %397, i64* %26, align 8
  %398 = getelementptr inbounds %struct.rusage, %struct.rusage* %24, i32 0, i32 0
  %399 = getelementptr inbounds %struct.rusage, %struct.rusage* %23, i32 0, i32 0
  %400 = call i32 @timersub(i32* %398, i32* %399, %struct.timeval* %25)
  %401 = getelementptr inbounds %struct.timeval, %struct.timeval* %25, i32 0, i32 0
  %402 = load i64, i64* %401, align 8
  %403 = getelementptr inbounds %struct.timeval, %struct.timeval* %25, i32 0, i32 1
  %404 = load i64, i64* %403, align 8
  %405 = udiv i64 %404, 10000
  %406 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i64 %402, i64 %405)
  %407 = getelementptr inbounds %struct.timeval, %struct.timeval* %25, i32 0, i32 0
  %408 = load i64, i64* %407, align 8
  %409 = mul i64 %408, 1000000
  %410 = getelementptr inbounds %struct.timeval, %struct.timeval* %25, i32 0, i32 1
  %411 = load i64, i64* %410, align 8
  %412 = add i64 %409, %411
  %413 = load i64, i64* %26, align 8
  %414 = add i64 %413, %412
  store i64 %414, i64* %26, align 8
  %415 = load i64, i64* %27, align 8
  %416 = udiv i64 %415, 1000000
  %417 = load i64, i64* %27, align 8
  %418 = urem i64 %417, 1000000
  %419 = udiv i64 %418, 10000
  %420 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0), i64 %416, i64 %419)
  %421 = load i64, i64* %26, align 8
  %422 = mul i64 %421, 100
  %423 = load i64, i64* %27, align 8
  %424 = udiv i64 %422, %423
  %425 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0), i64 %424)
  %426 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0))
  %427 = getelementptr inbounds %struct.kttcp_io_args, %struct.kttcp_io_args* %18, i32 0, i32 0
  %428 = load i32, i32* %427, align 8
  %429 = call i32 @close(i32 %428)
  %430 = load i64, i64* %35, align 8
  %431 = load i64, i64* @KTTCP_IO_RECV, align 8
  %432 = icmp eq i64 %430, %431
  br i1 %432, label %433, label %436

433:                                              ; preds = %385
  %434 = load i32, i32* %8, align 4
  %435 = call i32 @close(i32 %434)
  br label %436

436:                                              ; preds = %433, %385
  %437 = load i32, i32* %11, align 4
  %438 = call i32 @close(i32 %437)
  %439 = load %struct.addrinfo*, %struct.addrinfo** %20, align 8
  %440 = call i32 @freeaddrinfo(%struct.addrinfo* %439)
  store i32 0, i32* %3, align 4
  %441 = load i8*, i8** %31, align 8
  call void @llvm.stackrestore(i8* %441)
  %442 = load i32, i32* %3, align 4
  ret i32 %442
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i32 @usage(...) #2

declare dso_local i64 @get_bytes(i8*) #2

declare dso_local i32 @errx(i32, i8*, i8*) #2

declare dso_local i32 @open(i32, i32, i32) #2

declare dso_local i32 @err(i32, i8*, ...) #2

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #2

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #2

declare dso_local i8* @gai_strerror(i32) #2

declare dso_local i32 @socket(i32, i32, i32) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i64 @connect(i32, %struct.sockaddr*, i32) #2

declare dso_local i32 @getnameinfo(%struct.sockaddr*, i32, i8*, i32, i32*, i32, i32) #2

declare dso_local i64 @setsockopt(i32, i32, i32, i32*, i32) #2

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #2

declare dso_local i64 @listen(i32, i32) #2

declare dso_local i32 @accept(i32, %struct.sockaddr*, i32*) #2

declare dso_local i32 @getrusage(i32, %struct.rusage*) #2

declare dso_local i32 @ioctl(i32, i64, %struct.kttcp_io_args*) #2

declare dso_local i32 @timersub(i32*, i32*, %struct.timeval*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
