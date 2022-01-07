; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/netinet/ipsockopt/extr_ipsockopt.c_testsuite.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/netinet/ipsockopt/extr_ipsockopt.c_testsuite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"SOCK_DGRAM\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"SOCK_STREAM\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"SOCK_RAW\00", align 1
@__const.testsuite.socktypenameset = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0)], align 16
@SOCK_DGRAM = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@SOCK_RAW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"get_socket(%s, %d) for test_ip_uchar(IP_TOS)\00", align 1
@IP_TOS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"IP_TOS\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"get_socket(%s %d) for test_ip_uchar(IP_TTL)\00", align 1
@IP_TTL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"IP_TTL\00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c"get_socket(%s, %d) for test_ip_boolean(IP_RECVOPTS)\00", align 1
@IP_RECVOPTS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [12 x i8] c"IP_RECVOPTS\00", align 1
@BOOLEAN_ANYONE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [55 x i8] c"get_socket(%s, %d) for test_ip_boolean(IP_RECVRETOPTS)\00", align 1
@IP_RECVRETOPTS = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [15 x i8] c"IP_RECVRETOPTS\00", align 1
@.str.11 = private unnamed_addr constant [55 x i8] c"get_socket(%s, %d) for test_ip_boolean(IP_RECVDSTADDR)\00", align 1
@IP_RECVDSTADDR = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [15 x i8] c"IP_RECVDSTADDR\00", align 1
@.str.13 = private unnamed_addr constant [51 x i8] c"get_socket(%s, %d) for test_ip_boolean(IP_RECVTTL)\00", align 1
@IP_RECVTTL = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [11 x i8] c"IP_RECVTTL\00", align 1
@.str.15 = private unnamed_addr constant [50 x i8] c"get_socket(%s, %d) for test_ip_boolean(IP_RECVIF)\00", align 1
@IP_RECVIF = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [10 x i8] c"IP_RECVIF\00", align 1
@.str.17 = private unnamed_addr constant [49 x i8] c"get_socket(%s, %d) for test_ip_boolean(IP_FAITH)\00", align 1
@IP_FAITH = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [9 x i8] c"IP_FAITH\00", align 1
@.str.19 = private unnamed_addr constant [53 x i8] c"get_socket(%s, %d) for test_ip_boolean(IP_ONESBCAST)\00", align 1
@IP_ONESBCAST = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [13 x i8] c"IP_ONESBCAST\00", align 1
@.str.21 = private unnamed_addr constant [40 x i8] c"get_socket(%s, %d) for IP_MULTICAST_TTL\00", align 1
@IP_MULTICAST_TTL = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [17 x i8] c"IP_MULTICAST_TTL\00", align 1
@.str.23 = private unnamed_addr constant [41 x i8] c"get_socket(%s, %d) for IP_MULTICAST_LOOP\00", align 1
@IP_MULTICAST_LOOP = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [18 x i8] c"IP_MULTICAST_LOOP\00", align 1
@.str.25 = private unnamed_addr constant [39 x i8] c"get_socket(%s, %d) for test_ip_options\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @testsuite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @testsuite(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [3 x i8*], align 16
  %4 = alloca [3 x i32], align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %9 = bitcast [3 x i8*]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 bitcast ([3 x i8*]* @__const.testsuite.socktypenameset to i8*), i64 24, i1 false)
  %10 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %11 = load i32, i32* @SOCK_DGRAM, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds i32, i32* %10, i64 1
  %13 = load i32, i32* @SOCK_STREAM, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds i32, i32* %12, i64 1
  %15 = load i32, i32* @SOCK_RAW, align 4
  store i32 %15, i32* %14, align 4
  %16 = call i32 (...) @test_ip_hdrincl()
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %262, %1
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = icmp ult i64 %19, 3
  br i1 %20, label %21, label %265

21:                                               ; preds = %17
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [3 x i8*], [3 x i8*]* %3, i64 0, i64 %27
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %5, align 8
  %30 = call i64 (...) @getuid()
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %21
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @SOCK_RAW, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %262

37:                                               ; preds = %32, %21
  %38 = call i64 (...) @geteuid()
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %37
  %41 = load i32, i32* %2, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @SOCK_RAW, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %262

48:                                               ; preds = %43, %40, %37
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %2, align 4
  %51 = call i32 @get_socket(i32 %49, i32 %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load i8*, i8** %5, align 8
  %56 = load i32, i32* %2, align 4
  %57 = call i32 @err(i32 -1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i8* %55, i32 %56)
  br label %58

58:                                               ; preds = %54, %48
  %59 = load i32, i32* %7, align 4
  %60 = load i8*, i8** %5, align 8
  %61 = load i32, i32* @IP_TOS, align 4
  %62 = call i32 @test_ip_uchar(i32 %59, i8* %60, i32 %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 0)
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @close(i32 %63)
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %2, align 4
  %67 = call i32 @get_socket(i32 %65, i32 %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %70, label %74

70:                                               ; preds = %58
  %71 = load i8*, i8** %5, align 8
  %72 = load i32, i32* %2, align 4
  %73 = call i32 @err(i32 -1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i8* %71, i32 %72)
  br label %74

74:                                               ; preds = %70, %58
  %75 = load i32, i32* %7, align 4
  %76 = load i8*, i8** %5, align 8
  %77 = load i32, i32* @IP_TTL, align 4
  %78 = call i32 @test_ip_uchar(i32 %75, i8* %76, i32 %77, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 64)
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @close(i32 %79)
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %2, align 4
  %83 = call i32 @get_socket(i32 %81, i32 %82)
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp eq i32 %84, -1
  br i1 %85, label %86, label %90

86:                                               ; preds = %74
  %87 = load i8*, i8** %5, align 8
  %88 = load i32, i32* %2, align 4
  %89 = call i32 @err(i32 -1, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0), i8* %87, i32 %88)
  br label %90

90:                                               ; preds = %86, %74
  %91 = load i32, i32* %7, align 4
  %92 = load i8*, i8** %5, align 8
  %93 = load i32, i32* @IP_RECVOPTS, align 4
  %94 = load i32, i32* @BOOLEAN_ANYONE, align 4
  %95 = call i32 @test_ip_boolean(i32 %91, i8* %92, i32 %93, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 0, i32 %94)
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @close(i32 %96)
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %2, align 4
  %100 = call i32 @get_socket(i32 %98, i32 %99)
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* %7, align 4
  %102 = icmp eq i32 %101, -1
  br i1 %102, label %103, label %107

103:                                              ; preds = %90
  %104 = load i8*, i8** %5, align 8
  %105 = load i32, i32* %2, align 4
  %106 = call i32 @err(i32 -1, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.9, i64 0, i64 0), i8* %104, i32 %105)
  br label %107

107:                                              ; preds = %103, %90
  %108 = load i32, i32* %7, align 4
  %109 = load i8*, i8** %5, align 8
  %110 = load i32, i32* @IP_RECVRETOPTS, align 4
  %111 = load i32, i32* @BOOLEAN_ANYONE, align 4
  %112 = call i32 @test_ip_boolean(i32 %108, i8* %109, i32 %110, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 0, i32 %111)
  %113 = load i32, i32* %7, align 4
  %114 = call i32 @close(i32 %113)
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* %2, align 4
  %117 = call i32 @get_socket(i32 %115, i32 %116)
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %7, align 4
  %119 = icmp eq i32 %118, -1
  br i1 %119, label %120, label %124

120:                                              ; preds = %107
  %121 = load i8*, i8** %5, align 8
  %122 = load i32, i32* %2, align 4
  %123 = call i32 @err(i32 -1, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.11, i64 0, i64 0), i8* %121, i32 %122)
  br label %124

124:                                              ; preds = %120, %107
  %125 = load i32, i32* %7, align 4
  %126 = load i8*, i8** %5, align 8
  %127 = load i32, i32* @IP_RECVDSTADDR, align 4
  %128 = load i32, i32* @BOOLEAN_ANYONE, align 4
  %129 = call i32 @test_ip_boolean(i32 %125, i8* %126, i32 %127, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 0, i32 %128)
  %130 = load i32, i32* %7, align 4
  %131 = call i32 @close(i32 %130)
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* %2, align 4
  %134 = call i32 @get_socket(i32 %132, i32 %133)
  store i32 %134, i32* %7, align 4
  %135 = load i32, i32* %7, align 4
  %136 = icmp eq i32 %135, -1
  br i1 %136, label %137, label %141

137:                                              ; preds = %124
  %138 = load i8*, i8** %5, align 8
  %139 = load i32, i32* %2, align 4
  %140 = call i32 @err(i32 -1, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.13, i64 0, i64 0), i8* %138, i32 %139)
  br label %141

141:                                              ; preds = %137, %124
  %142 = load i32, i32* %7, align 4
  %143 = load i8*, i8** %5, align 8
  %144 = load i32, i32* @IP_RECVTTL, align 4
  %145 = load i32, i32* @BOOLEAN_ANYONE, align 4
  %146 = call i32 @test_ip_boolean(i32 %142, i8* %143, i32 %144, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i32 0, i32 %145)
  %147 = load i32, i32* %7, align 4
  %148 = call i32 @close(i32 %147)
  %149 = load i32, i32* %8, align 4
  %150 = load i32, i32* %2, align 4
  %151 = call i32 @get_socket(i32 %149, i32 %150)
  store i32 %151, i32* %7, align 4
  %152 = load i32, i32* %7, align 4
  %153 = icmp eq i32 %152, -1
  br i1 %153, label %154, label %158

154:                                              ; preds = %141
  %155 = load i8*, i8** %5, align 8
  %156 = load i32, i32* %2, align 4
  %157 = call i32 @err(i32 -1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.15, i64 0, i64 0), i8* %155, i32 %156)
  br label %158

158:                                              ; preds = %154, %141
  %159 = load i32, i32* %7, align 4
  %160 = load i8*, i8** %5, align 8
  %161 = load i32, i32* @IP_RECVIF, align 4
  %162 = load i32, i32* @BOOLEAN_ANYONE, align 4
  %163 = call i32 @test_ip_boolean(i32 %159, i8* %160, i32 %161, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i32 0, i32 %162)
  %164 = load i32, i32* %7, align 4
  %165 = call i32 @close(i32 %164)
  %166 = load i32, i32* %8, align 4
  %167 = load i32, i32* %2, align 4
  %168 = call i32 @get_socket(i32 %166, i32 %167)
  store i32 %168, i32* %7, align 4
  %169 = load i32, i32* %7, align 4
  %170 = icmp eq i32 %169, -1
  br i1 %170, label %171, label %175

171:                                              ; preds = %158
  %172 = load i8*, i8** %5, align 8
  %173 = load i32, i32* %2, align 4
  %174 = call i32 @err(i32 -1, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.17, i64 0, i64 0), i8* %172, i32 %173)
  br label %175

175:                                              ; preds = %171, %158
  %176 = load i32, i32* %7, align 4
  %177 = load i8*, i8** %5, align 8
  %178 = load i32, i32* @IP_FAITH, align 4
  %179 = load i32, i32* @BOOLEAN_ANYONE, align 4
  %180 = call i32 @test_ip_boolean(i32 %176, i8* %177, i32 %178, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0), i32 0, i32 %179)
  %181 = load i32, i32* %7, align 4
  %182 = call i32 @close(i32 %181)
  %183 = load i32, i32* %8, align 4
  %184 = load i32, i32* %2, align 4
  %185 = call i32 @get_socket(i32 %183, i32 %184)
  store i32 %185, i32* %7, align 4
  %186 = load i32, i32* %7, align 4
  %187 = icmp eq i32 %186, -1
  br i1 %187, label %188, label %192

188:                                              ; preds = %175
  %189 = load i8*, i8** %5, align 8
  %190 = load i32, i32* %2, align 4
  %191 = call i32 @err(i32 -1, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.19, i64 0, i64 0), i8* %189, i32 %190)
  br label %192

192:                                              ; preds = %188, %175
  %193 = load i32, i32* %7, align 4
  %194 = load i8*, i8** %5, align 8
  %195 = load i32, i32* @IP_ONESBCAST, align 4
  %196 = load i32, i32* @BOOLEAN_ANYONE, align 4
  %197 = call i32 @test_ip_boolean(i32 %193, i8* %194, i32 %195, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0), i32 0, i32 %196)
  %198 = load i32, i32* %7, align 4
  %199 = call i32 @close(i32 %198)
  %200 = load i32, i32* %8, align 4
  %201 = load i32, i32* %2, align 4
  %202 = call i32 @get_socket(i32 %200, i32 %201)
  store i32 %202, i32* %7, align 4
  %203 = load i32, i32* %7, align 4
  %204 = icmp eq i32 %203, -1
  br i1 %204, label %205, label %209

205:                                              ; preds = %192
  %206 = load i8*, i8** %5, align 8
  %207 = load i32, i32* %2, align 4
  %208 = call i32 @err(i32 -1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21, i64 0, i64 0), i8* %206, i32 %207)
  br label %209

209:                                              ; preds = %205, %192
  %210 = load i32, i32* %7, align 4
  %211 = load i8*, i8** %5, align 8
  %212 = load i32, i32* @IP_MULTICAST_TTL, align 4
  %213 = call i32 @test_ip_uchar(i32 %210, i8* %211, i32 %212, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0), i32 1)
  %214 = load i32, i32* %7, align 4
  %215 = call i32 @close(i32 %214)
  %216 = load i32, i32* %8, align 4
  %217 = load i32, i32* %2, align 4
  %218 = call i32 @get_socket(i32 %216, i32 %217)
  store i32 %218, i32* %7, align 4
  %219 = load i32, i32* %7, align 4
  %220 = icmp eq i32 %219, -1
  br i1 %220, label %221, label %225

221:                                              ; preds = %209
  %222 = load i8*, i8** %5, align 8
  %223 = load i32, i32* %2, align 4
  %224 = call i32 @err(i32 -1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.23, i64 0, i64 0), i8* %222, i32 %223)
  br label %225

225:                                              ; preds = %221, %209
  %226 = load i32, i32* %7, align 4
  %227 = load i8*, i8** %5, align 8
  %228 = load i32, i32* @IP_MULTICAST_LOOP, align 4
  %229 = load i32, i32* @BOOLEAN_ANYONE, align 4
  %230 = call i32 @test_ip_boolean(i32 %226, i8* %227, i32 %228, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i64 0, i64 0), i32 1, i32 %229)
  %231 = load i32, i32* %7, align 4
  %232 = call i32 @close(i32 %231)
  %233 = load i32, i32* %8, align 4
  %234 = load i32, i32* %2, align 4
  %235 = call i32 @get_socket(i32 %233, i32 %234)
  store i32 %235, i32* %7, align 4
  %236 = load i32, i32* %7, align 4
  %237 = icmp eq i32 %236, -1
  br i1 %237, label %238, label %242

238:                                              ; preds = %225
  %239 = load i8*, i8** %5, align 8
  %240 = load i32, i32* %2, align 4
  %241 = call i32 @err(i32 -1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.25, i64 0, i64 0), i8* %239, i32 %240)
  br label %242

242:                                              ; preds = %238, %225
  %243 = load i32, i32* %7, align 4
  %244 = call i32 @close(i32 %243)
  %245 = load i32, i32* %8, align 4
  %246 = load i32, i32* %2, align 4
  %247 = call i32 @get_socket(i32 %245, i32 %246)
  store i32 %247, i32* %7, align 4
  %248 = load i32, i32* %7, align 4
  %249 = icmp eq i32 %248, -1
  br i1 %249, label %250, label %254

250:                                              ; preds = %242
  %251 = load i8*, i8** %5, align 8
  %252 = load i32, i32* %2, align 4
  %253 = call i32 @err(i32 -1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.25, i64 0, i64 0), i8* %251, i32 %252)
  br label %254

254:                                              ; preds = %250, %242
  %255 = load i32, i32* %7, align 4
  %256 = load i8*, i8** %5, align 8
  %257 = call i32 @test_ip_multicast_membership(i32 %255, i8* %256)
  %258 = load i32, i32* %7, align 4
  %259 = call i32 @close(i32 %258)
  %260 = call i32 @test_ip_multicast_if(i32 0, i32* null)
  %261 = call i32 @test_ip_multicast_vif(i32 0, i32* null)
  br label %262

262:                                              ; preds = %254, %47, %36
  %263 = load i32, i32* %6, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %6, align 4
  br label %17

265:                                              ; preds = %17
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @test_ip_hdrincl(...) #2

declare dso_local i64 @getuid(...) #2

declare dso_local i64 @geteuid(...) #2

declare dso_local i32 @get_socket(i32, i32) #2

declare dso_local i32 @err(i32, i8*, i8*, i32) #2

declare dso_local i32 @test_ip_uchar(i32, i8*, i32, i8*, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @test_ip_boolean(i32, i8*, i32, i8*, i32, i32) #2

declare dso_local i32 @test_ip_multicast_membership(i32, i8*) #2

declare dso_local i32 @test_ip_multicast_if(i32, i32*) #2

declare dso_local i32 @test_ip_multicast_vif(i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
