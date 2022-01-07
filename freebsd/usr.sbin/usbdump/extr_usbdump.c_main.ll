; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/usbdump/extr_usbdump.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/usbdump/extr_usbdump.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbcap = type { i32, i32, i32, i32, i32, i32* }
%struct.timeval = type { i32, i64 }
%struct.bpf_program = type { i32 }
%struct.bpf_stat = type { i32, i32 }
%struct.bpf_version = type { i64, i64 }
%struct.ifreq = type { i32 }

@uc = common dso_local global %struct.usbcap zeroinitializer, align 8
@.str = private unnamed_addr constant [15 x i8] c"b:hi:r:s:vw:f:\00", align 1
@optarg = common dso_local global i8* null, align 8
@i_arg = common dso_local global i8* null, align 8
@r_arg = common dso_local global i8* null, align 8
@errno = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@b_arg = common dso_local global i8* null, align 8
@verbose = common dso_local global i32 0, align 4
@w_arg = common dso_local global i8* null, align 8
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Could not open '%s' for write\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"/dev/bpf\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Could not open BPF device\00", align 1
@BIOCVERSION = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"BIOCVERSION ioctl failed\00", align 1
@BPF_MAJOR_VERSION = common dso_local global i64 0, align 8
@BPF_MINOR_VERSION = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [30 x i8] c"Kernel BPF filter out of date\00", align 1
@AF_LOCAL = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"Could not open a socket\00", align 1
@SIOCIFCREATE2 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"Invalid bus interface: %s\00", align 1
@USBPF_HDR_LEN = common dso_local global i32 0, align 4
@BIOCSBLEN = common dso_local global i32 0, align 4
@BIOCSETIF = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [23 x i8] c"No buffer size worked.\00", align 1
@BIOCGBLEN = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [23 x i8] c"BIOCGBLEN ioctl failed\00", align 1
@EX_SOFTWARE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [15 x i8] c"Out of memory.\00", align 1
@BIOCSETF = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [22 x i8] c"BIOCSETF ioctl failed\00", align 1
@BIOCSRTIMEOUT = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [27 x i8] c"BIOCSRTIMEOUT ioctl failed\00", align 1
@SIGINT = common dso_local global i32 0, align 4
@handle_sigint = common dso_local global i32 0, align 4
@BIOCGSTATS = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [24 x i8] c"BIOCGSTATS ioctl failed\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"%d packets captured\0A\00", align 1
@pkt_captured = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [31 x i8] c"%d packets received by filter\0A\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"%d packets dropped by kernel\0A\00", align 1
@SIOCIFDESTROY = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [27 x i8] c"SIOCIFDESTROY ioctl failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.timeval, align 8
  %7 = alloca %struct.bpf_program, align 4
  %8 = alloca %struct.bpf_stat, align 4
  %9 = alloca %struct.bpf_version, align 8
  %10 = alloca %struct.usbcap*, align 8
  %11 = alloca %struct.ifreq, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.usbcap* @uc, %struct.usbcap** %10, align 8
  store i64 192, i64* %12, align 8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %20, align 8
  br label %22

22:                                               ; preds = %113, %2
  %23 = load i32, i32* %4, align 4
  %24 = load i8**, i8*** %5, align 8
  %25 = load i8*, i8** %20, align 8
  %26 = call i32 @getopt(i32 %23, i8** %24, i8* %25)
  store i32 %26, i32* %15, align 4
  %27 = icmp ne i32 %26, -1
  br i1 %27, label %28, label %114

28:                                               ; preds = %22
  %29 = load i32, i32* %15, align 4
  switch i32 %29, label %111 [
    i32 105, label %30
    i32 114, label %32
    i32 115, label %36
    i32 98, label %63
    i32 118, label %65
    i32 119, label %68
    i32 102, label %72
  ]

30:                                               ; preds = %28
  %31 = load i8*, i8** @optarg, align 8
  store i8* %31, i8** @i_arg, align 8
  br label %113

32:                                               ; preds = %28
  %33 = load i8*, i8** @optarg, align 8
  store i8* %33, i8** @r_arg, align 8
  %34 = load %struct.usbcap*, %struct.usbcap** %10, align 8
  %35 = call i32 @init_rfile(%struct.usbcap* %34)
  br label %113

36:                                               ; preds = %28
  %37 = load i8*, i8** @optarg, align 8
  %38 = call i8* @strtol(i8* %37, i8** %21, i32 10)
  %39 = ptrtoint i8* %38 to i64
  store i64 %39, i64* %12, align 8
  store i32 0, i32* @errno, align 4
  %40 = load i8*, i8** %21, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load i8*, i8** %21, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = call i32 (...) @usage()
  br label %49

49:                                               ; preds = %47, %42, %36
  %50 = load i64, i64* %12, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load i32, i32* @errno, align 4
  %54 = load i32, i32* @EINVAL, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = call i32 (...) @usage()
  br label %58

58:                                               ; preds = %56, %52, %49
  %59 = load i64, i64* %12, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  store i64 -1, i64* %12, align 8
  br label %62

62:                                               ; preds = %61, %58
  br label %113

63:                                               ; preds = %28
  %64 = load i8*, i8** @optarg, align 8
  store i8* %64, i8** @b_arg, align 8
  br label %113

65:                                               ; preds = %28
  %66 = load i32, i32* @verbose, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* @verbose, align 4
  br label %113

68:                                               ; preds = %28
  %69 = load i8*, i8** @optarg, align 8
  store i8* %69, i8** @w_arg, align 8
  %70 = load %struct.usbcap*, %struct.usbcap** %10, align 8
  %71 = call i32 @init_wfile(%struct.usbcap* %70)
  br label %113

72:                                               ; preds = %28
  %73 = load i8*, i8** @optarg, align 8
  %74 = call i8* @strtol(i8* %73, i8** %21, i32 10)
  %75 = ptrtoint i8* %74 to i32
  store i32 %75, i32* %16, align 4
  store i32 -1, i32* %17, align 4
  %76 = load i8*, i8** %21, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %107

78:                                               ; preds = %72
  %79 = load i8*, i8** %21, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 46
  br i1 %82, label %83, label %98

83:                                               ; preds = %78
  %84 = load i8*, i8** %21, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 1
  %86 = call i8* @strtol(i8* %85, i8** %21, i32 10)
  %87 = ptrtoint i8* %86 to i32
  store i32 %87, i32* %17, align 4
  %88 = load i8*, i8** %21, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %97

90:                                               ; preds = %83
  %91 = load i8*, i8** %21, align 8
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %90
  %96 = call i32 (...) @usage()
  br label %97

97:                                               ; preds = %95, %90, %83
  br label %106

98:                                               ; preds = %78
  %99 = load i8*, i8** %21, align 8
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %98
  %104 = call i32 (...) @usage()
  br label %105

105:                                              ; preds = %103, %98
  br label %106

106:                                              ; preds = %105, %97
  br label %107

107:                                              ; preds = %106, %72
  %108 = load i32, i32* %16, align 4
  %109 = load i32, i32* %17, align 4
  %110 = call i32 @add_filter(i32 %108, i32 %109)
  br label %113

111:                                              ; preds = %28
  %112 = call i32 (...) @usage()
  br label %113

113:                                              ; preds = %111, %107, %68, %65, %63, %62, %32, %30
  br label %22

114:                                              ; preds = %22
  %115 = load i8*, i8** @b_arg, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %117, label %140

117:                                              ; preds = %114
  %118 = load i8*, i8** @b_arg, align 8
  %119 = load i32, i32* @O_CREAT, align 4
  %120 = load i32, i32* @O_TRUNC, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* @O_WRONLY, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* @S_IRUSR, align 4
  %125 = load i32, i32* @S_IWUSR, align 4
  %126 = or i32 %124, %125
  %127 = call i8* (i8*, i32, ...) @open(i8* %118, i32 %123, i32 %126)
  %128 = ptrtoint i8* %127 to i32
  %129 = load %struct.usbcap*, %struct.usbcap** %10, align 8
  %130 = getelementptr inbounds %struct.usbcap, %struct.usbcap* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  %131 = load %struct.usbcap*, %struct.usbcap** %10, align 8
  %132 = getelementptr inbounds %struct.usbcap, %struct.usbcap* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %117
  %136 = load i32, i32* @EXIT_FAILURE, align 4
  %137 = load i8*, i8** @b_arg, align 8
  %138 = call i32 (i32, i8*, ...) @err(i32 %136, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %137)
  br label %139

139:                                              ; preds = %135, %117
  br label %140

140:                                              ; preds = %139, %114
  %141 = load i8*, i8** @w_arg, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %146, label %143

143:                                              ; preds = %140
  %144 = load i8*, i8** @b_arg, align 8
  %145 = icmp ne i8* %144, null
  br i1 %145, label %146, label %149

146:                                              ; preds = %143, %140
  %147 = load i32, i32* @verbose, align 4
  %148 = add nsw i32 %147, -1
  store i32 %148, i32* @verbose, align 4
  br label %149

149:                                              ; preds = %146, %143
  %150 = load i8*, i8** @r_arg, align 8
  %151 = icmp ne i8* %150, null
  br i1 %151, label %152, label %157

152:                                              ; preds = %149
  %153 = load %struct.usbcap*, %struct.usbcap** %10, align 8
  %154 = call i32 @read_file(%struct.usbcap* %153)
  %155 = load i32, i32* @EXIT_SUCCESS, align 4
  %156 = call i32 @exit(i32 %155) #3
  unreachable

157:                                              ; preds = %149
  %158 = call i32 (...) @check_usb_pf_sysctl()
  %159 = load i32, i32* @O_RDONLY, align 4
  %160 = call i8* (i8*, i32, ...) @open(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %159)
  %161 = ptrtoint i8* %160 to i32
  store i32 %161, i32* %14, align 4
  %162 = load %struct.usbcap*, %struct.usbcap** %10, align 8
  %163 = getelementptr inbounds %struct.usbcap, %struct.usbcap* %162, i32 0, i32 1
  store i32 %161, i32* %163, align 4
  %164 = load %struct.usbcap*, %struct.usbcap** %10, align 8
  %165 = getelementptr inbounds %struct.usbcap, %struct.usbcap* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %157
  %169 = load i32, i32* @EXIT_FAILURE, align 4
  %170 = call i32 (i32, i8*, ...) @err(i32 %169, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %171

171:                                              ; preds = %168, %157
  %172 = load i32, i32* %14, align 4
  %173 = load i32, i32* @BIOCVERSION, align 4
  %174 = bitcast %struct.bpf_version* %9 to %struct.ifreq*
  %175 = call i64 @ioctl(i32 %172, i32 %173, %struct.ifreq* %174)
  %176 = icmp slt i64 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %171
  %178 = load i32, i32* @EXIT_FAILURE, align 4
  %179 = call i32 (i32, i8*, ...) @err(i32 %178, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %180

180:                                              ; preds = %177, %171
  %181 = getelementptr inbounds %struct.bpf_version, %struct.bpf_version* %9, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @BPF_MAJOR_VERSION, align 8
  %184 = icmp ne i64 %182, %183
  br i1 %184, label %190, label %185

185:                                              ; preds = %180
  %186 = getelementptr inbounds %struct.bpf_version, %struct.bpf_version* %9, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @BPF_MINOR_VERSION, align 8
  %189 = icmp slt i64 %187, %188
  br i1 %189, label %190, label %193

190:                                              ; preds = %185, %180
  %191 = load i32, i32* @EXIT_FAILURE, align 4
  %192 = call i32 (i32, i8*, ...) @errx(i32 %191, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  br label %193

193:                                              ; preds = %190, %185
  store i32 65536, i32* %13, align 4
  %194 = call i32 @memset(%struct.ifreq* %11, i32 0, i32 4)
  %195 = load i32, i32* @AF_LOCAL, align 4
  %196 = load i32, i32* @SOCK_DGRAM, align 4
  %197 = call i32 @socket(i32 %195, i32 %196, i32 0)
  store i32 %197, i32* %18, align 4
  %198 = load i32, i32* %18, align 4
  %199 = icmp slt i32 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %193
  %201 = load i32, i32* @EXIT_FAILURE, align 4
  %202 = call i32 (i32, i8*, ...) @errx(i32 %201, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  br label %203

203:                                              ; preds = %200, %193
  %204 = load i8*, i8** @i_arg, align 8
  %205 = call i32 @if_nametoindex(i8* %204)
  store i32 %205, i32* %19, align 4
  %206 = load i32, i32* %19, align 4
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %222

208:                                              ; preds = %203
  %209 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %11, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = load i8*, i8** @i_arg, align 8
  %212 = call i32 @strlcpy(i32 %210, i8* %211, i32 4)
  %213 = load i32, i32* %18, align 4
  %214 = load i32, i32* @SIOCIFCREATE2, align 4
  %215 = call i64 @ioctl(i32 %213, i32 %214, %struct.ifreq* %11)
  %216 = icmp slt i64 %215, 0
  br i1 %216, label %217, label %221

217:                                              ; preds = %208
  %218 = load i32, i32* @EXIT_FAILURE, align 4
  %219 = load i8*, i8** @i_arg, align 8
  %220 = call i32 (i32, i8*, ...) @errx(i32 %218, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* %219)
  br label %221

221:                                              ; preds = %217, %208
  br label %222

222:                                              ; preds = %221, %203
  br label %223

223:                                              ; preds = %242, %222
  %224 = load i32, i32* %13, align 4
  %225 = load i32, i32* @USBPF_HDR_LEN, align 4
  %226 = icmp sge i32 %224, %225
  br i1 %226, label %227, label %245

227:                                              ; preds = %223
  %228 = load i32, i32* %14, align 4
  %229 = load i32, i32* @BIOCSBLEN, align 4
  %230 = bitcast i32* %13 to %struct.ifreq*
  %231 = call i64 @ioctl(i32 %228, i32 %229, %struct.ifreq* %230)
  %232 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %11, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = load i8*, i8** @i_arg, align 8
  %235 = call i32 @strlcpy(i32 %233, i8* %234, i32 4)
  %236 = load i32, i32* %14, align 4
  %237 = load i32, i32* @BIOCSETIF, align 4
  %238 = call i64 @ioctl(i32 %236, i32 %237, %struct.ifreq* %11)
  %239 = icmp sge i64 %238, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %227
  br label %245

241:                                              ; preds = %227
  br label %242

242:                                              ; preds = %241
  %243 = load i32, i32* %13, align 4
  %244 = ashr i32 %243, 1
  store i32 %244, i32* %13, align 4
  br label %223

245:                                              ; preds = %240, %223
  %246 = load i32, i32* %13, align 4
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %251

248:                                              ; preds = %245
  %249 = load i32, i32* @EXIT_FAILURE, align 4
  %250 = call i32 (i32, i8*, ...) @errx(i32 %249, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  br label %251

251:                                              ; preds = %248, %245
  %252 = load i32, i32* %14, align 4
  %253 = load i32, i32* @BIOCGBLEN, align 4
  %254 = bitcast i32* %13 to %struct.ifreq*
  %255 = call i64 @ioctl(i32 %252, i32 %253, %struct.ifreq* %254)
  %256 = icmp slt i64 %255, 0
  br i1 %256, label %257, label %260

257:                                              ; preds = %251
  %258 = load i32, i32* @EXIT_FAILURE, align 4
  %259 = call i32 (i32, i8*, ...) @err(i32 %258, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  br label %260

260:                                              ; preds = %257, %251
  %261 = load i32, i32* %13, align 4
  %262 = load %struct.usbcap*, %struct.usbcap** %10, align 8
  %263 = getelementptr inbounds %struct.usbcap, %struct.usbcap* %262, i32 0, i32 2
  store i32 %261, i32* %263, align 8
  %264 = load %struct.usbcap*, %struct.usbcap** %10, align 8
  %265 = getelementptr inbounds %struct.usbcap, %struct.usbcap* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 8
  %267 = call i64 @malloc(i32 %266)
  %268 = inttoptr i64 %267 to i32*
  %269 = load %struct.usbcap*, %struct.usbcap** %10, align 8
  %270 = getelementptr inbounds %struct.usbcap, %struct.usbcap* %269, i32 0, i32 5
  store i32* %268, i32** %270, align 8
  %271 = load %struct.usbcap*, %struct.usbcap** %10, align 8
  %272 = getelementptr inbounds %struct.usbcap, %struct.usbcap* %271, i32 0, i32 5
  %273 = load i32*, i32** %272, align 8
  %274 = icmp eq i32* %273, null
  br i1 %274, label %275, label %278

275:                                              ; preds = %260
  %276 = load i32, i32* @EX_SOFTWARE, align 4
  %277 = call i32 (i32, i8*, ...) @errx(i32 %276, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  br label %278

278:                                              ; preds = %275, %260
  %279 = load i64, i64* %12, align 8
  %280 = call i32 @make_filter(%struct.bpf_program* %7, i64 %279)
  %281 = load %struct.usbcap*, %struct.usbcap** %10, align 8
  %282 = getelementptr inbounds %struct.usbcap, %struct.usbcap* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 4
  %284 = load i32, i32* @BIOCSETF, align 4
  %285 = bitcast %struct.bpf_program* %7 to %struct.ifreq*
  %286 = call i64 @ioctl(i32 %283, i32 %284, %struct.ifreq* %285)
  %287 = icmp slt i64 %286, 0
  br i1 %287, label %288, label %291

288:                                              ; preds = %278
  %289 = load i32, i32* @EXIT_FAILURE, align 4
  %290 = call i32 (i32, i8*, ...) @err(i32 %289, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0))
  br label %291

291:                                              ; preds = %288, %278
  %292 = call i32 @free_filter(%struct.bpf_program* %7)
  %293 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  store i32 1, i32* %293, align 8
  %294 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 1
  store i64 0, i64* %294, align 8
  %295 = load %struct.usbcap*, %struct.usbcap** %10, align 8
  %296 = getelementptr inbounds %struct.usbcap, %struct.usbcap* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = load i32, i32* @BIOCSRTIMEOUT, align 4
  %299 = bitcast %struct.timeval* %6 to %struct.ifreq*
  %300 = call i64 @ioctl(i32 %297, i32 %298, %struct.ifreq* %299)
  %301 = icmp slt i64 %300, 0
  br i1 %301, label %302, label %305

302:                                              ; preds = %291
  %303 = load i32, i32* @EXIT_FAILURE, align 4
  %304 = call i32 (i32, i8*, ...) @err(i32 %303, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0))
  br label %305

305:                                              ; preds = %302, %291
  %306 = load i32, i32* @SIGINT, align 4
  %307 = load i32, i32* @handle_sigint, align 4
  %308 = call i32 @signal(i32 %306, i32 %307)
  %309 = load %struct.usbcap*, %struct.usbcap** %10, align 8
  %310 = call i32 @do_loop(%struct.usbcap* %309)
  %311 = load i32, i32* %14, align 4
  %312 = load i32, i32* @BIOCGSTATS, align 4
  %313 = bitcast %struct.bpf_stat* %8 to %struct.ifreq*
  %314 = call i64 @ioctl(i32 %311, i32 %312, %struct.ifreq* %313)
  %315 = icmp slt i64 %314, 0
  br i1 %315, label %316, label %319

316:                                              ; preds = %305
  %317 = load i32, i32* @EXIT_FAILURE, align 4
  %318 = call i32 (i32, i8*, ...) @err(i32 %317, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0))
  br label %319

319:                                              ; preds = %316, %305
  %320 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  %321 = load i32, i32* @pkt_captured, align 4
  %322 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0), i32 %321)
  %323 = getelementptr inbounds %struct.bpf_stat, %struct.bpf_stat* %8, i32 0, i32 0
  %324 = load i32, i32* %323, align 4
  %325 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0), i32 %324)
  %326 = getelementptr inbounds %struct.bpf_stat, %struct.bpf_stat* %8, i32 0, i32 1
  %327 = load i32, i32* %326, align 4
  %328 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i64 0, i64 0), i32 %327)
  %329 = load i32, i32* %19, align 4
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %331, label %347

331:                                              ; preds = %319
  %332 = load i8*, i8** @i_arg, align 8
  %333 = call i32 @if_nametoindex(i8* %332)
  %334 = icmp sgt i32 %333, 0
  br i1 %334, label %335, label %347

335:                                              ; preds = %331
  %336 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %11, i32 0, i32 0
  %337 = load i32, i32* %336, align 4
  %338 = load i8*, i8** @i_arg, align 8
  %339 = call i32 @strlcpy(i32 %337, i8* %338, i32 4)
  %340 = load i32, i32* %18, align 4
  %341 = load i32, i32* @SIOCIFDESTROY, align 4
  %342 = call i64 @ioctl(i32 %340, i32 %341, %struct.ifreq* %11)
  %343 = icmp slt i64 %342, 0
  br i1 %343, label %344, label %346

344:                                              ; preds = %335
  %345 = call i32 @warn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i64 0, i64 0))
  br label %346

346:                                              ; preds = %344, %335
  br label %347

347:                                              ; preds = %346, %331, %319
  %348 = load i32, i32* %18, align 4
  %349 = call i32 @close(i32 %348)
  %350 = load %struct.usbcap*, %struct.usbcap** %10, align 8
  %351 = getelementptr inbounds %struct.usbcap, %struct.usbcap* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 4
  %353 = icmp sgt i32 %352, 0
  br i1 %353, label %354, label %359

354:                                              ; preds = %347
  %355 = load %struct.usbcap*, %struct.usbcap** %10, align 8
  %356 = getelementptr inbounds %struct.usbcap, %struct.usbcap* %355, i32 0, i32 1
  %357 = load i32, i32* %356, align 4
  %358 = call i32 @close(i32 %357)
  br label %359

359:                                              ; preds = %354, %347
  %360 = load %struct.usbcap*, %struct.usbcap** %10, align 8
  %361 = getelementptr inbounds %struct.usbcap, %struct.usbcap* %360, i32 0, i32 3
  %362 = load i32, i32* %361, align 4
  %363 = icmp sgt i32 %362, 0
  br i1 %363, label %364, label %369

364:                                              ; preds = %359
  %365 = load %struct.usbcap*, %struct.usbcap** %10, align 8
  %366 = getelementptr inbounds %struct.usbcap, %struct.usbcap* %365, i32 0, i32 3
  %367 = load i32, i32* %366, align 4
  %368 = call i32 @close(i32 %367)
  br label %369

369:                                              ; preds = %364, %359
  %370 = load %struct.usbcap*, %struct.usbcap** %10, align 8
  %371 = getelementptr inbounds %struct.usbcap, %struct.usbcap* %370, i32 0, i32 4
  %372 = load i32, i32* %371, align 8
  %373 = icmp sgt i32 %372, 0
  br i1 %373, label %374, label %379

374:                                              ; preds = %369
  %375 = load %struct.usbcap*, %struct.usbcap** %10, align 8
  %376 = getelementptr inbounds %struct.usbcap, %struct.usbcap* %375, i32 0, i32 4
  %377 = load i32, i32* %376, align 8
  %378 = call i32 @close(i32 %377)
  br label %379

379:                                              ; preds = %374, %369
  %380 = load %struct.usbcap*, %struct.usbcap** %10, align 8
  %381 = getelementptr inbounds %struct.usbcap, %struct.usbcap* %380, i32 0, i32 0
  %382 = load i32, i32* %381, align 8
  %383 = icmp sgt i32 %382, 0
  br i1 %383, label %384, label %389

384:                                              ; preds = %379
  %385 = load %struct.usbcap*, %struct.usbcap** %10, align 8
  %386 = getelementptr inbounds %struct.usbcap, %struct.usbcap* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 8
  %388 = call i32 @close(i32 %387)
  br label %389

389:                                              ; preds = %384, %379
  %390 = load i32, i32* @EXIT_SUCCESS, align 4
  ret i32 %390
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @init_rfile(%struct.usbcap*) #1

declare dso_local i8* @strtol(i8*, i8**, i32) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @init_wfile(%struct.usbcap*) #1

declare dso_local i32 @add_filter(i32, i32) #1

declare dso_local i8* @open(i8*, i32, ...) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @read_file(%struct.usbcap*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @check_usb_pf_sysctl(...) #1

declare dso_local i64 @ioctl(i32, i32, %struct.ifreq*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @memset(%struct.ifreq*, i32, i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @if_nametoindex(i8*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @make_filter(%struct.bpf_program*, i64) #1

declare dso_local i32 @free_filter(%struct.bpf_program*) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @do_loop(%struct.usbcap*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
