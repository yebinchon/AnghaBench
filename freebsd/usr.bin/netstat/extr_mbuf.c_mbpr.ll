; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/netstat/extr_mbuf.c_mbpr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/netstat/extr_mbuf.c_mbpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memory_type_list = type { i32 }
%struct.memory_type = type { i32 }
%struct.sfstat = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [18 x i8] c"memstat_mtl_alloc\00", align 1
@live = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"memstat_sysctl_all: %s\00", align 1
@MEMSTAT_ERROR_KVM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"memstat_kvm_all: %s\00", align 1
@ALLOCATOR_UMA = common dso_local global i32 0, align 4
@MBUF_MEM_NAME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"memstat_mtl_find: zone %s not found\00", align 1
@MBUF_PACKET_MEM_NAME = common dso_local global i32 0, align 4
@MBUF_CLUSTER_MEM_NAME = common dso_local global i32 0, align 4
@ALLOCATOR_MALLOC = common dso_local global i32 0, align 4
@MBUF_TAG_MEM_NAME = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"memstat_mtl_find: malloc type %s not found\00", align 1
@MBUF_JUMBOP_MEM_NAME = common dso_local global i32 0, align 4
@MBUF_JUMBO9_MEM_NAME = common dso_local global i32 0, align 4
@MBUF_JUMBO16_MEM_NAME = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"mbuf-statistics\00", align 1
@.str.6 = private unnamed_addr constant [98 x i8] c"{:mbuf-current/%ju}/{:mbuf-cache/%ju}/{:mbuf-total/%ju} {N:mbufs in use (current\\/cache\\/total)}\0A\00", align 1
@.str.7 = private unnamed_addr constant [139 x i8] c"{:cluster-current/%ju}/{:cluster-cache/%ju}/{:cluster-total/%ju}/{:cluster-max/%ju} {N:mbuf clusters in use (current\\/cache\\/total\\/max)}\0A\00", align 1
@.str.8 = private unnamed_addr constant [111 x i8] c"{:packet-count/%ju}/{:packet-free/%ju} {N:mbuf+clusters out of packet secondary zone in use (current\\/cache)}\0A\00", align 1
@.str.9 = private unnamed_addr constant [174 x i8] c"{:jumbo-count/%ju}/{:jumbo-cache/%ju}/{:jumbo-total/%ju}/{:jumbo-max/%ju} {:jumbo-page-size/%ju}{U:k} {N:(page size)} {N:jumbo clusters in use (current\\/cache\\/total\\/max)}\0A\00", align 1
@.str.10 = private unnamed_addr constant [137 x i8] c"{:jumbo9-count/%ju}/{:jumbo9-cache/%ju}/{:jumbo9-total/%ju}/{:jumbo9-max/%ju} {N:9k jumbo clusters in use (current\\/cache\\/total\\/max)}\0A\00", align 1
@.str.11 = private unnamed_addr constant [144 x i8] c"{:jumbo16-count/%ju}/{:jumbo16-cache/%ju}/{:jumbo16-total/%ju}/{:jumbo16-limit/%ju} {N:16k jumbo clusters in use (current\\/cache\\/total\\/max)}\0A\00", align 1
@.str.12 = private unnamed_addr constant [132 x i8] c"{:bytes-in-use/%ju}{U:K}/{:bytes-in-cache/%ju}{U:K}/{:bytes-total/%ju}{U:K} {N:bytes allocated to network (current\\/cache\\/total)}\0A\00", align 1
@.str.13 = private unnamed_addr constant [132 x i8] c"{:mbuf-failures/%ju}/{:cluster-failures/%ju}/{:packet-failures/%ju} {N:requests for mbufs denied (mbufs\\/clusters\\/mbuf+clusters)}\0A\00", align 1
@.str.14 = private unnamed_addr constant [127 x i8] c"{:mbuf-sleeps/%ju}/{:cluster-sleeps/%ju}/{:packet-sleeps/%ju} {N:requests for mbufs delayed (mbufs\\/clusters\\/mbuf+clusters)}\0A\00", align 1
@.str.15 = private unnamed_addr constant [122 x i8] c"{:jumbop-sleeps/%ju}/{:jumbo9-sleeps/%ju}/{:jumbo16-sleeps/%ju} {N:/requests for jumbo clusters delayed (%juk\\/9k\\/16k)}\0A\00", align 1
@.str.16 = private unnamed_addr constant [127 x i8] c"{:jumbop-failures/%ju}/{:jumbo9-failures/%ju}/{:jumbo16-failures/%ju} {N:/requests for jumbo clusters denied (%juk\\/9k\\/16k)}\0A\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"kern.ipc.nsfbufs\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"kern.ipc.nsfbufsused\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"kern.ipc.nsfbufspeak\00", align 1
@.str.20 = private unnamed_addr constant [95 x i8] c"{:nsfbufs-current/%d}/{:nsfbufs-peak/%d}/{:nsfbufs/%d} {N:sfbufs in use (current\\/peak\\/max)}\0A\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"kern.ipc.sfstat\00", align 1
@kread_counters = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [48 x i8] c"{:sendfile-syscalls/%ju} {N:sendfile syscalls}\0A\00", align 1
@.str.23 = private unnamed_addr constant [76 x i8] c"{:sendfile-no-io/%ju} {N:sendfile syscalls completed without I\\/O request}\0A\00", align 1
@.str.24 = private unnamed_addr constant [70 x i8] c"{:sendfile-io-count/%ju} {N:requests for I\\/O initiated by sendfile}\0A\00", align 1
@.str.25 = private unnamed_addr constant [76 x i8] c"{:sendfile-pages-sent/%ju} {N:pages read by sendfile as part of a request}\0A\00", align 1
@.str.26 = private unnamed_addr constant [80 x i8] c"{:sendfile-pages-valid/%ju} {N:pages were valid at time of a sendfile request}\0A\00", align 1
@.str.27 = private unnamed_addr constant [80 x i8] c"{:sendfile-pages-bogus/%ju} {N:pages were valid and substituted to bogus page}\0A\00", align 1
@.str.28 = private unnamed_addr constant [93 x i8] c"{:sendfile-requested-readahead/%ju} {N:pages were requested for read ahead by applications}\0A\00", align 1
@.str.29 = private unnamed_addr constant [65 x i8] c"{:sendfile-readahead/%ju} {N:pages were read ahead by sendfile}\0A\00", align 1
@.str.30 = private unnamed_addr constant [85 x i8] c"{:sendfile-busy-encounters/%ju} {N:times sendfile encountered an already busy page}\0A\00", align 1
@.str.31 = private unnamed_addr constant [59 x i8] c"{:sfbufs-alloc-failed/%ju} {N:requests for sfbufs denied}\0A\00", align 1
@.str.32 = private unnamed_addr constant [58 x i8] c"{:sfbufs-alloc-wait/%ju} {N:requests for sfbufs delayed}\0A\00", align 1
@tag_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbpr(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.memory_type_list*, align 8
  %6 = alloca %struct.memory_type*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca %struct.sfstat, align 8
  %50 = alloca i64, align 8
  %51 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %52 = call %struct.memory_type_list* (...) @memstat_mtl_alloc()
  store %struct.memory_type_list* %52, %struct.memory_type_list** %5, align 8
  %53 = load %struct.memory_type_list*, %struct.memory_type_list** %5, align 8
  %54 = icmp eq %struct.memory_type_list* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %2
  %56 = call i32 @xo_warn(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %443

57:                                               ; preds = %2
  %58 = load i64, i64* @live, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %57
  %61 = load %struct.memory_type_list*, %struct.memory_type_list** %5, align 8
  %62 = call i64 @memstat_sysctl_all(%struct.memory_type_list* %61, i32 0)
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = load %struct.memory_type_list*, %struct.memory_type_list** %5, align 8
  %66 = call i32 @memstat_mtl_geterror(%struct.memory_type_list* %65)
  %67 = call i32 @memstat_strerror(i32 %66)
  %68 = call i32 @xo_warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  br label %439

69:                                               ; preds = %60
  br label %91

70:                                               ; preds = %57
  %71 = load %struct.memory_type_list*, %struct.memory_type_list** %5, align 8
  %72 = load i8*, i8** %3, align 8
  %73 = call i64 @memstat_kvm_all(%struct.memory_type_list* %71, i8* %72)
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %90

75:                                               ; preds = %70
  %76 = load %struct.memory_type_list*, %struct.memory_type_list** %5, align 8
  %77 = call i32 @memstat_mtl_geterror(%struct.memory_type_list* %76)
  store i32 %77, i32* %51, align 4
  %78 = load i32, i32* %51, align 4
  %79 = load i32, i32* @MEMSTAT_ERROR_KVM, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %75
  %82 = load i8*, i8** %3, align 8
  %83 = call i32 @kvm_geterr(i8* %82)
  %84 = call i32 @xo_warnx(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %83)
  br label %89

85:                                               ; preds = %75
  %86 = load i32, i32* %51, align 4
  %87 = call i32 @memstat_strerror(i32 %86)
  %88 = call i32 @xo_warnx(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %85, %81
  br label %439

90:                                               ; preds = %70
  br label %91

91:                                               ; preds = %90, %69
  %92 = load %struct.memory_type_list*, %struct.memory_type_list** %5, align 8
  %93 = load i32, i32* @ALLOCATOR_UMA, align 4
  %94 = load i32, i32* @MBUF_MEM_NAME, align 4
  %95 = call %struct.memory_type* @memstat_mtl_find(%struct.memory_type_list* %92, i32 %93, i32 %94)
  store %struct.memory_type* %95, %struct.memory_type** %6, align 8
  %96 = load %struct.memory_type*, %struct.memory_type** %6, align 8
  %97 = icmp eq %struct.memory_type* %96, null
  br i1 %97, label %98, label %101

98:                                               ; preds = %91
  %99 = load i32, i32* @MBUF_MEM_NAME, align 4
  %100 = call i32 @xo_warnx(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %99)
  br label %439

101:                                              ; preds = %91
  %102 = load %struct.memory_type*, %struct.memory_type** %6, align 8
  %103 = call i32 @memstat_get_count(%struct.memory_type* %102)
  store i32 %103, i32* %7, align 4
  %104 = load %struct.memory_type*, %struct.memory_type** %6, align 8
  %105 = call i32 @memstat_get_bytes(%struct.memory_type* %104)
  store i32 %105, i32* %8, align 4
  %106 = load %struct.memory_type*, %struct.memory_type** %6, align 8
  %107 = call i32 @memstat_get_free(%struct.memory_type* %106)
  store i32 %107, i32* %9, align 4
  %108 = load %struct.memory_type*, %struct.memory_type** %6, align 8
  %109 = call i32 @memstat_get_failures(%struct.memory_type* %108)
  store i32 %109, i32* %10, align 4
  %110 = load %struct.memory_type*, %struct.memory_type** %6, align 8
  %111 = call i32 @memstat_get_sleeps(%struct.memory_type* %110)
  store i32 %111, i32* %12, align 4
  %112 = load %struct.memory_type*, %struct.memory_type** %6, align 8
  %113 = call i32 @memstat_get_size(%struct.memory_type* %112)
  store i32 %113, i32* %11, align 4
  %114 = load %struct.memory_type_list*, %struct.memory_type_list** %5, align 8
  %115 = load i32, i32* @ALLOCATOR_UMA, align 4
  %116 = load i32, i32* @MBUF_PACKET_MEM_NAME, align 4
  %117 = call %struct.memory_type* @memstat_mtl_find(%struct.memory_type_list* %114, i32 %115, i32 %116)
  store %struct.memory_type* %117, %struct.memory_type** %6, align 8
  %118 = load %struct.memory_type*, %struct.memory_type** %6, align 8
  %119 = icmp eq %struct.memory_type* %118, null
  br i1 %119, label %120, label %123

120:                                              ; preds = %101
  %121 = load i32, i32* @MBUF_PACKET_MEM_NAME, align 4
  %122 = call i32 @xo_warnx(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %121)
  br label %439

123:                                              ; preds = %101
  %124 = load %struct.memory_type*, %struct.memory_type** %6, align 8
  %125 = call i32 @memstat_get_count(%struct.memory_type* %124)
  store i32 %125, i32* %19, align 4
  %126 = load %struct.memory_type*, %struct.memory_type** %6, align 8
  %127 = call i32 @memstat_get_bytes(%struct.memory_type* %126)
  store i32 %127, i32* %20, align 4
  %128 = load %struct.memory_type*, %struct.memory_type** %6, align 8
  %129 = call i32 @memstat_get_free(%struct.memory_type* %128)
  store i32 %129, i32* %21, align 4
  %130 = load %struct.memory_type*, %struct.memory_type** %6, align 8
  %131 = call i32 @memstat_get_sleeps(%struct.memory_type* %130)
  store i32 %131, i32* %23, align 4
  %132 = load %struct.memory_type*, %struct.memory_type** %6, align 8
  %133 = call i32 @memstat_get_failures(%struct.memory_type* %132)
  store i32 %133, i32* %22, align 4
  %134 = load %struct.memory_type_list*, %struct.memory_type_list** %5, align 8
  %135 = load i32, i32* @ALLOCATOR_UMA, align 4
  %136 = load i32, i32* @MBUF_CLUSTER_MEM_NAME, align 4
  %137 = call %struct.memory_type* @memstat_mtl_find(%struct.memory_type_list* %134, i32 %135, i32 %136)
  store %struct.memory_type* %137, %struct.memory_type** %6, align 8
  %138 = load %struct.memory_type*, %struct.memory_type** %6, align 8
  %139 = icmp eq %struct.memory_type* %138, null
  br i1 %139, label %140, label %143

140:                                              ; preds = %123
  %141 = load i32, i32* @MBUF_CLUSTER_MEM_NAME, align 4
  %142 = call i32 @xo_warnx(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %141)
  br label %439

143:                                              ; preds = %123
  %144 = load %struct.memory_type*, %struct.memory_type** %6, align 8
  %145 = call i32 @memstat_get_count(%struct.memory_type* %144)
  store i32 %145, i32* %13, align 4
  %146 = load %struct.memory_type*, %struct.memory_type** %6, align 8
  %147 = call i32 @memstat_get_countlimit(%struct.memory_type* %146)
  store i32 %147, i32* %14, align 4
  %148 = load %struct.memory_type*, %struct.memory_type** %6, align 8
  %149 = call i32 @memstat_get_free(%struct.memory_type* %148)
  store i32 %149, i32* %15, align 4
  %150 = load %struct.memory_type*, %struct.memory_type** %6, align 8
  %151 = call i32 @memstat_get_failures(%struct.memory_type* %150)
  store i32 %151, i32* %16, align 4
  %152 = load %struct.memory_type*, %struct.memory_type** %6, align 8
  %153 = call i32 @memstat_get_sleeps(%struct.memory_type* %152)
  store i32 %153, i32* %18, align 4
  %154 = load %struct.memory_type*, %struct.memory_type** %6, align 8
  %155 = call i32 @memstat_get_size(%struct.memory_type* %154)
  store i32 %155, i32* %17, align 4
  %156 = load %struct.memory_type_list*, %struct.memory_type_list** %5, align 8
  %157 = load i32, i32* @ALLOCATOR_MALLOC, align 4
  %158 = load i32, i32* @MBUF_TAG_MEM_NAME, align 4
  %159 = call %struct.memory_type* @memstat_mtl_find(%struct.memory_type_list* %156, i32 %157, i32 %158)
  store %struct.memory_type* %159, %struct.memory_type** %6, align 8
  %160 = load %struct.memory_type*, %struct.memory_type** %6, align 8
  %161 = icmp eq %struct.memory_type* %160, null
  br i1 %161, label %162, label %165

162:                                              ; preds = %143
  %163 = load i32, i32* @MBUF_TAG_MEM_NAME, align 4
  %164 = call i32 @xo_warnx(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %163)
  br label %439

165:                                              ; preds = %143
  %166 = load %struct.memory_type*, %struct.memory_type** %6, align 8
  %167 = call i32 @memstat_get_bytes(%struct.memory_type* %166)
  store i32 %167, i32* %24, align 4
  %168 = load %struct.memory_type_list*, %struct.memory_type_list** %5, align 8
  %169 = load i32, i32* @ALLOCATOR_UMA, align 4
  %170 = load i32, i32* @MBUF_JUMBOP_MEM_NAME, align 4
  %171 = call %struct.memory_type* @memstat_mtl_find(%struct.memory_type_list* %168, i32 %169, i32 %170)
  store %struct.memory_type* %171, %struct.memory_type** %6, align 8
  %172 = load %struct.memory_type*, %struct.memory_type** %6, align 8
  %173 = icmp eq %struct.memory_type* %172, null
  br i1 %173, label %174, label %177

174:                                              ; preds = %165
  %175 = load i32, i32* @MBUF_JUMBOP_MEM_NAME, align 4
  %176 = call i32 @xo_warnx(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %175)
  br label %439

177:                                              ; preds = %165
  %178 = load %struct.memory_type*, %struct.memory_type** %6, align 8
  %179 = call i32 @memstat_get_count(%struct.memory_type* %178)
  store i32 %179, i32* %25, align 4
  %180 = load %struct.memory_type*, %struct.memory_type** %6, align 8
  %181 = call i32 @memstat_get_countlimit(%struct.memory_type* %180)
  store i32 %181, i32* %26, align 4
  %182 = load %struct.memory_type*, %struct.memory_type** %6, align 8
  %183 = call i32 @memstat_get_free(%struct.memory_type* %182)
  store i32 %183, i32* %27, align 4
  %184 = load %struct.memory_type*, %struct.memory_type** %6, align 8
  %185 = call i32 @memstat_get_failures(%struct.memory_type* %184)
  store i32 %185, i32* %28, align 4
  %186 = load %struct.memory_type*, %struct.memory_type** %6, align 8
  %187 = call i32 @memstat_get_sleeps(%struct.memory_type* %186)
  store i32 %187, i32* %29, align 4
  %188 = load %struct.memory_type*, %struct.memory_type** %6, align 8
  %189 = call i32 @memstat_get_size(%struct.memory_type* %188)
  store i32 %189, i32* %30, align 4
  %190 = load %struct.memory_type_list*, %struct.memory_type_list** %5, align 8
  %191 = load i32, i32* @ALLOCATOR_UMA, align 4
  %192 = load i32, i32* @MBUF_JUMBO9_MEM_NAME, align 4
  %193 = call %struct.memory_type* @memstat_mtl_find(%struct.memory_type_list* %190, i32 %191, i32 %192)
  store %struct.memory_type* %193, %struct.memory_type** %6, align 8
  %194 = load %struct.memory_type*, %struct.memory_type** %6, align 8
  %195 = icmp eq %struct.memory_type* %194, null
  br i1 %195, label %196, label %199

196:                                              ; preds = %177
  %197 = load i32, i32* @MBUF_JUMBO9_MEM_NAME, align 4
  %198 = call i32 @xo_warnx(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %197)
  br label %439

199:                                              ; preds = %177
  %200 = load %struct.memory_type*, %struct.memory_type** %6, align 8
  %201 = call i32 @memstat_get_count(%struct.memory_type* %200)
  store i32 %201, i32* %31, align 4
  %202 = load %struct.memory_type*, %struct.memory_type** %6, align 8
  %203 = call i32 @memstat_get_countlimit(%struct.memory_type* %202)
  store i32 %203, i32* %32, align 4
  %204 = load %struct.memory_type*, %struct.memory_type** %6, align 8
  %205 = call i32 @memstat_get_free(%struct.memory_type* %204)
  store i32 %205, i32* %33, align 4
  %206 = load %struct.memory_type*, %struct.memory_type** %6, align 8
  %207 = call i32 @memstat_get_failures(%struct.memory_type* %206)
  store i32 %207, i32* %34, align 4
  %208 = load %struct.memory_type*, %struct.memory_type** %6, align 8
  %209 = call i32 @memstat_get_sleeps(%struct.memory_type* %208)
  store i32 %209, i32* %35, align 4
  %210 = load %struct.memory_type*, %struct.memory_type** %6, align 8
  %211 = call i32 @memstat_get_size(%struct.memory_type* %210)
  store i32 %211, i32* %36, align 4
  %212 = load %struct.memory_type_list*, %struct.memory_type_list** %5, align 8
  %213 = load i32, i32* @ALLOCATOR_UMA, align 4
  %214 = load i32, i32* @MBUF_JUMBO16_MEM_NAME, align 4
  %215 = call %struct.memory_type* @memstat_mtl_find(%struct.memory_type_list* %212, i32 %213, i32 %214)
  store %struct.memory_type* %215, %struct.memory_type** %6, align 8
  %216 = load %struct.memory_type*, %struct.memory_type** %6, align 8
  %217 = icmp eq %struct.memory_type* %216, null
  br i1 %217, label %218, label %221

218:                                              ; preds = %199
  %219 = load i32, i32* @MBUF_JUMBO16_MEM_NAME, align 4
  %220 = call i32 @xo_warnx(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %219)
  br label %439

221:                                              ; preds = %199
  %222 = load %struct.memory_type*, %struct.memory_type** %6, align 8
  %223 = call i32 @memstat_get_count(%struct.memory_type* %222)
  store i32 %223, i32* %37, align 4
  %224 = load %struct.memory_type*, %struct.memory_type** %6, align 8
  %225 = call i32 @memstat_get_countlimit(%struct.memory_type* %224)
  store i32 %225, i32* %38, align 4
  %226 = load %struct.memory_type*, %struct.memory_type** %6, align 8
  %227 = call i32 @memstat_get_free(%struct.memory_type* %226)
  store i32 %227, i32* %39, align 4
  %228 = load %struct.memory_type*, %struct.memory_type** %6, align 8
  %229 = call i32 @memstat_get_failures(%struct.memory_type* %228)
  store i32 %229, i32* %40, align 4
  %230 = load %struct.memory_type*, %struct.memory_type** %6, align 8
  %231 = call i32 @memstat_get_sleeps(%struct.memory_type* %230)
  store i32 %231, i32* %41, align 4
  %232 = load %struct.memory_type*, %struct.memory_type** %6, align 8
  %233 = call i32 @memstat_get_size(%struct.memory_type* %232)
  store i32 %233, i32* %42, align 4
  %234 = call i32 @xo_open_container(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %235 = load i32, i32* %7, align 4
  %236 = load i32, i32* %19, align 4
  %237 = add nsw i32 %235, %236
  %238 = load i32, i32* %9, align 4
  %239 = load i32, i32* %21, align 4
  %240 = add nsw i32 %238, %239
  %241 = load i32, i32* %7, align 4
  %242 = load i32, i32* %19, align 4
  %243 = add nsw i32 %241, %242
  %244 = load i32, i32* %9, align 4
  %245 = add nsw i32 %243, %244
  %246 = load i32, i32* %21, align 4
  %247 = add nsw i32 %245, %246
  %248 = call i32 (i8*, i32, ...) @xo_emit(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.6, i64 0, i64 0), i32 %237, i32 %240, i32 %247)
  %249 = load i32, i32* %13, align 4
  %250 = load i32, i32* %21, align 4
  %251 = sub nsw i32 %249, %250
  %252 = load i32, i32* %15, align 4
  %253 = load i32, i32* %21, align 4
  %254 = add nsw i32 %252, %253
  %255 = load i32, i32* %13, align 4
  %256 = load i32, i32* %15, align 4
  %257 = add nsw i32 %255, %256
  %258 = load i32, i32* %14, align 4
  %259 = call i32 (i8*, i32, ...) @xo_emit(i8* getelementptr inbounds ([139 x i8], [139 x i8]* @.str.7, i64 0, i64 0), i32 %251, i32 %254, i32 %257, i32 %258)
  %260 = load i32, i32* %19, align 4
  %261 = load i32, i32* %21, align 4
  %262 = call i32 (i8*, i32, ...) @xo_emit(i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.8, i64 0, i64 0), i32 %260, i32 %261)
  %263 = load i32, i32* %25, align 4
  %264 = load i32, i32* %27, align 4
  %265 = load i32, i32* %25, align 4
  %266 = load i32, i32* %27, align 4
  %267 = add nsw i32 %265, %266
  %268 = load i32, i32* %26, align 4
  %269 = load i32, i32* %30, align 4
  %270 = sdiv i32 %269, 1024
  %271 = call i32 (i8*, i32, ...) @xo_emit(i8* getelementptr inbounds ([174 x i8], [174 x i8]* @.str.9, i64 0, i64 0), i32 %263, i32 %264, i32 %267, i32 %268, i32 %270)
  %272 = load i32, i32* %31, align 4
  %273 = load i32, i32* %33, align 4
  %274 = load i32, i32* %31, align 4
  %275 = load i32, i32* %33, align 4
  %276 = add nsw i32 %274, %275
  %277 = load i32, i32* %32, align 4
  %278 = call i32 (i8*, i32, ...) @xo_emit(i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str.10, i64 0, i64 0), i32 %272, i32 %273, i32 %276, i32 %277)
  %279 = load i32, i32* %37, align 4
  %280 = load i32, i32* %39, align 4
  %281 = load i32, i32* %37, align 4
  %282 = load i32, i32* %39, align 4
  %283 = add nsw i32 %281, %282
  %284 = load i32, i32* %38, align 4
  %285 = call i32 (i8*, i32, ...) @xo_emit(i8* getelementptr inbounds ([144 x i8], [144 x i8]* @.str.11, i64 0, i64 0), i32 %279, i32 %280, i32 %283, i32 %284)
  %286 = load i32, i32* %8, align 4
  %287 = load i32, i32* %20, align 4
  %288 = add nsw i32 %286, %287
  %289 = load i32, i32* %19, align 4
  %290 = load i32, i32* %17, align 4
  %291 = mul nsw i32 %289, %290
  %292 = add nsw i32 %288, %291
  %293 = load i32, i32* %13, align 4
  %294 = load i32, i32* %19, align 4
  %295 = sub nsw i32 %293, %294
  %296 = load i32, i32* %21, align 4
  %297 = sub nsw i32 %295, %296
  %298 = load i32, i32* %17, align 4
  %299 = mul nsw i32 %297, %298
  %300 = add nsw i32 %292, %299
  %301 = load i32, i32* %24, align 4
  %302 = add nsw i32 %300, %301
  %303 = load i32, i32* %25, align 4
  %304 = load i32, i32* %30, align 4
  %305 = mul nsw i32 %303, %304
  %306 = add nsw i32 %302, %305
  %307 = load i32, i32* %31, align 4
  %308 = load i32, i32* %36, align 4
  %309 = mul nsw i32 %307, %308
  %310 = add nsw i32 %306, %309
  %311 = load i32, i32* %37, align 4
  %312 = load i32, i32* %42, align 4
  %313 = mul nsw i32 %311, %312
  %314 = add nsw i32 %310, %313
  store i32 %314, i32* %43, align 4
  %315 = load i32, i32* %9, align 4
  %316 = load i32, i32* %11, align 4
  %317 = mul nsw i32 %315, %316
  %318 = load i32, i32* %21, align 4
  %319 = load i32, i32* %11, align 4
  %320 = mul nsw i32 %318, %319
  %321 = add nsw i32 %317, %320
  %322 = load i32, i32* %21, align 4
  %323 = load i32, i32* %17, align 4
  %324 = mul nsw i32 %322, %323
  %325 = add nsw i32 %321, %324
  %326 = load i32, i32* %15, align 4
  %327 = load i32, i32* %17, align 4
  %328 = mul nsw i32 %326, %327
  %329 = add nsw i32 %325, %328
  %330 = load i32, i32* %27, align 4
  %331 = load i32, i32* %30, align 4
  %332 = mul nsw i32 %330, %331
  %333 = add nsw i32 %329, %332
  %334 = load i32, i32* %33, align 4
  %335 = load i32, i32* %36, align 4
  %336 = mul nsw i32 %334, %335
  %337 = add nsw i32 %333, %336
  %338 = load i32, i32* %39, align 4
  %339 = load i32, i32* %42, align 4
  %340 = mul nsw i32 %338, %339
  %341 = add nsw i32 %337, %340
  store i32 %341, i32* %44, align 4
  %342 = load i32, i32* %43, align 4
  %343 = load i32, i32* %44, align 4
  %344 = add nsw i32 %342, %343
  store i32 %344, i32* %45, align 4
  %345 = load i32, i32* %43, align 4
  %346 = sdiv i32 %345, 1024
  %347 = load i32, i32* %44, align 4
  %348 = sdiv i32 %347, 1024
  %349 = load i32, i32* %45, align 4
  %350 = sdiv i32 %349, 1024
  %351 = call i32 (i8*, i32, ...) @xo_emit(i8* getelementptr inbounds ([132 x i8], [132 x i8]* @.str.12, i64 0, i64 0), i32 %346, i32 %348, i32 %350)
  %352 = load i32, i32* %10, align 4
  %353 = load i32, i32* %16, align 4
  %354 = load i32, i32* %22, align 4
  %355 = call i32 (i8*, i32, ...) @xo_emit(i8* getelementptr inbounds ([132 x i8], [132 x i8]* @.str.13, i64 0, i64 0), i32 %352, i32 %353, i32 %354)
  %356 = load i32, i32* %12, align 4
  %357 = load i32, i32* %18, align 4
  %358 = load i32, i32* %23, align 4
  %359 = call i32 (i8*, i32, ...) @xo_emit(i8* getelementptr inbounds ([127 x i8], [127 x i8]* @.str.14, i64 0, i64 0), i32 %356, i32 %357, i32 %358)
  %360 = load i32, i32* %29, align 4
  %361 = load i32, i32* %35, align 4
  %362 = load i32, i32* %41, align 4
  %363 = load i32, i32* %30, align 4
  %364 = sdiv i32 %363, 1024
  %365 = call i32 (i8*, i32, ...) @xo_emit(i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.15, i64 0, i64 0), i32 %360, i32 %361, i32 %362, i32 %364)
  %366 = load i32, i32* %28, align 4
  %367 = load i32, i32* %34, align 4
  %368 = load i32, i32* %40, align 4
  %369 = load i32, i32* %30, align 4
  %370 = sdiv i32 %369, 1024
  %371 = call i32 (i8*, i32, ...) @xo_emit(i8* getelementptr inbounds ([127 x i8], [127 x i8]* @.str.16, i64 0, i64 0), i32 %366, i32 %367, i32 %368, i32 %370)
  store i64 4, i64* %50, align 8
  %372 = load i64, i64* @live, align 8
  %373 = icmp ne i64 %372, 0
  br i1 %373, label %374, label %388

374:                                              ; preds = %221
  %375 = call i64 @sysctlbyname(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0), i32* %46, i64* %50, i32* null, i32 0)
  %376 = icmp eq i64 %375, 0
  br i1 %376, label %377, label %388

377:                                              ; preds = %374
  %378 = call i64 @sysctlbyname(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0), i32* %48, i64* %50, i32* null, i32 0)
  %379 = icmp eq i64 %378, 0
  br i1 %379, label %380, label %388

380:                                              ; preds = %377
  %381 = call i64 @sysctlbyname(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0), i32* %47, i64* %50, i32* null, i32 0)
  %382 = icmp eq i64 %381, 0
  br i1 %382, label %383, label %388

383:                                              ; preds = %380
  %384 = load i32, i32* %48, align 4
  %385 = load i32, i32* %47, align 4
  %386 = load i32, i32* %46, align 4
  %387 = call i32 (i8*, i32, ...) @xo_emit(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.20, i64 0, i64 0), i32 %384, i32 %385, i32 %386)
  br label %388

388:                                              ; preds = %383, %380, %377, %374, %221
  %389 = load i32, i32* %4, align 4
  %390 = load i32, i32* @kread_counters, align 4
  %391 = call i64 @fetch_stats(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0), i32 %389, %struct.sfstat* %49, i32 88, i32 %390)
  %392 = icmp ne i64 %391, 0
  br i1 %392, label %393, label %394

393:                                              ; preds = %388
  br label %439

394:                                              ; preds = %388
  %395 = getelementptr inbounds %struct.sfstat, %struct.sfstat* %49, i32 0, i32 10
  %396 = load i64, i64* %395, align 8
  %397 = trunc i64 %396 to i32
  %398 = call i32 (i8*, i32, ...) @xo_emit(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.22, i64 0, i64 0), i32 %397)
  %399 = getelementptr inbounds %struct.sfstat, %struct.sfstat* %49, i32 0, i32 9
  %400 = load i64, i64* %399, align 8
  %401 = trunc i64 %400 to i32
  %402 = call i32 (i8*, i32, ...) @xo_emit(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.23, i64 0, i64 0), i32 %401)
  %403 = getelementptr inbounds %struct.sfstat, %struct.sfstat* %49, i32 0, i32 8
  %404 = load i64, i64* %403, align 8
  %405 = trunc i64 %404 to i32
  %406 = call i32 (i8*, i32, ...) @xo_emit(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.24, i64 0, i64 0), i32 %405)
  %407 = getelementptr inbounds %struct.sfstat, %struct.sfstat* %49, i32 0, i32 7
  %408 = load i64, i64* %407, align 8
  %409 = trunc i64 %408 to i32
  %410 = call i32 (i8*, i32, ...) @xo_emit(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.25, i64 0, i64 0), i32 %409)
  %411 = getelementptr inbounds %struct.sfstat, %struct.sfstat* %49, i32 0, i32 6
  %412 = load i64, i64* %411, align 8
  %413 = trunc i64 %412 to i32
  %414 = call i32 (i8*, i32, ...) @xo_emit(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.26, i64 0, i64 0), i32 %413)
  %415 = getelementptr inbounds %struct.sfstat, %struct.sfstat* %49, i32 0, i32 5
  %416 = load i64, i64* %415, align 8
  %417 = trunc i64 %416 to i32
  %418 = call i32 (i8*, i32, ...) @xo_emit(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.27, i64 0, i64 0), i32 %417)
  %419 = getelementptr inbounds %struct.sfstat, %struct.sfstat* %49, i32 0, i32 4
  %420 = load i64, i64* %419, align 8
  %421 = trunc i64 %420 to i32
  %422 = call i32 (i8*, i32, ...) @xo_emit(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.28, i64 0, i64 0), i32 %421)
  %423 = getelementptr inbounds %struct.sfstat, %struct.sfstat* %49, i32 0, i32 3
  %424 = load i64, i64* %423, align 8
  %425 = trunc i64 %424 to i32
  %426 = call i32 (i8*, i32, ...) @xo_emit(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.29, i64 0, i64 0), i32 %425)
  %427 = getelementptr inbounds %struct.sfstat, %struct.sfstat* %49, i32 0, i32 2
  %428 = load i64, i64* %427, align 8
  %429 = trunc i64 %428 to i32
  %430 = call i32 (i8*, i32, ...) @xo_emit(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.30, i64 0, i64 0), i32 %429)
  %431 = getelementptr inbounds %struct.sfstat, %struct.sfstat* %49, i32 0, i32 1
  %432 = load i64, i64* %431, align 8
  %433 = trunc i64 %432 to i32
  %434 = call i32 (i8*, i32, ...) @xo_emit(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.31, i64 0, i64 0), i32 %433)
  %435 = getelementptr inbounds %struct.sfstat, %struct.sfstat* %49, i32 0, i32 0
  %436 = load i64, i64* %435, align 8
  %437 = trunc i64 %436 to i32
  %438 = call i32 (i8*, i32, ...) @xo_emit(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.32, i64 0, i64 0), i32 %437)
  br label %439

439:                                              ; preds = %394, %393, %218, %196, %174, %162, %140, %120, %98, %89, %64
  %440 = call i32 @xo_close_container(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %441 = load %struct.memory_type_list*, %struct.memory_type_list** %5, align 8
  %442 = call i32 @memstat_mtl_free(%struct.memory_type_list* %441)
  br label %443

443:                                              ; preds = %439, %55
  ret void
}

declare dso_local %struct.memory_type_list* @memstat_mtl_alloc(...) #1

declare dso_local i32 @xo_warn(i8*) #1

declare dso_local i64 @memstat_sysctl_all(%struct.memory_type_list*, i32) #1

declare dso_local i32 @xo_warnx(i8*, i32) #1

declare dso_local i32 @memstat_strerror(i32) #1

declare dso_local i32 @memstat_mtl_geterror(%struct.memory_type_list*) #1

declare dso_local i64 @memstat_kvm_all(%struct.memory_type_list*, i8*) #1

declare dso_local i32 @kvm_geterr(i8*) #1

declare dso_local %struct.memory_type* @memstat_mtl_find(%struct.memory_type_list*, i32, i32) #1

declare dso_local i32 @memstat_get_count(%struct.memory_type*) #1

declare dso_local i32 @memstat_get_bytes(%struct.memory_type*) #1

declare dso_local i32 @memstat_get_free(%struct.memory_type*) #1

declare dso_local i32 @memstat_get_failures(%struct.memory_type*) #1

declare dso_local i32 @memstat_get_sleeps(%struct.memory_type*) #1

declare dso_local i32 @memstat_get_size(%struct.memory_type*) #1

declare dso_local i32 @memstat_get_countlimit(%struct.memory_type*) #1

declare dso_local i32 @xo_open_container(i8*) #1

declare dso_local i32 @xo_emit(i8*, i32, ...) #1

declare dso_local i64 @sysctlbyname(i8*, i32*, i64*, i32*, i32) #1

declare dso_local i64 @fetch_stats(i8*, i32, %struct.sfstat*, i32, i32) #1

declare dso_local i32 @xo_close_container(i8*) #1

declare dso_local i32 @memstat_mtl_free(%struct.memory_type_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
