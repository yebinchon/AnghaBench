; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/netinet/ipsockopt/extr_ipsockopt.c_test_ip_hdrincl.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/netinet/ipsockopt/extr_ipsockopt.c_test_ip_hdrincl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"test_ip_hdrincl(): socket(SOCK_STREAM)\00", align 1
@IPPROTO_IP = common dso_local global i32 0, align 4
@IP_HDRINCL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"test_ip_hdrincl(): initial getsockopt(IP_HDRINCL)\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOPROTOOPT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [82 x i8] c"test_ip_hdrincl(): initial getsockopt(IP_HDRINC) returned %d (%s) not ENOPROTOOPT\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"test_ip_hdrincl(): setsockopt(IP_HDRINCL) on TCP succeeded\0A\00", align 1
@.str.4 = private unnamed_addr constant [83 x i8] c"test_ip_hdrincl(): setsockopt(IP_HDRINCL) on TCP returned %d (%s) not ENOPROTOOPT\0A\00", align 1
@SOCK_DGRAM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"test_ip_hdrincl(): socket(SOCK_DGRAM\00", align 1
@.str.6 = private unnamed_addr constant [60 x i8] c"test_ip_hdrincl(): getsockopt(IP_HDRINCL) on UDP succeeded\0A\00", align 1
@.str.7 = private unnamed_addr constant [83 x i8] c"test_ip_hdrincl(): getsockopt(IP_HDRINCL) on UDP returned %d (%s) not ENOPROTOOPT\0A\00", align 1
@.str.8 = private unnamed_addr constant [60 x i8] c"test_ip_hdrincl(): setsockopt(IP_HDRINCL) on UDP succeeded\0A\00", align 1
@.str.9 = private unnamed_addr constant [83 x i8] c"test_ip_hdrincl(): setsockopt(IP_HDRINCL) on UDP returned %d (%s) not ENOPROTOOPT\0A\00", align 1
@SOCK_RAW = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [46 x i8] c"test_ip_hdrincl: created raw socket as uid %d\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"test_ip_hdrincl(): socket(PF_INET, SOCK_RAW)\00", align 1
@.str.12 = private unnamed_addr constant [56 x i8] c"test_ip_hdrincl(): getsockopt(IP_HDRINCL) on raw socket\00", align 1
@.str.13 = private unnamed_addr constant [53 x i8] c"test_ip_hdrincl(): %d bytes returned on initial get\0A\00", align 1
@.str.14 = private unnamed_addr constant [45 x i8] c"test_ip_hdrincl(): initial flag value of %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [45 x i8] c"test_ip_hdrincl(): setsockopt(IP_HDRINCL, 1)\00", align 1
@.str.16 = private unnamed_addr constant [52 x i8] c"test_ip_hdrincl(): getsockopt(IP_HDRINCL) after set\00", align 1
@.str.17 = private unnamed_addr constant [68 x i8] c"test_ip_hdrincl(): getsockopt(IP_HDRINCL) after set had flag of %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [93 x i8] c"test_ip_hdrincl(): WARNING: getsockopt(IP_HDRINCL) after set had non-historical value of %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [45 x i8] c"test_ip_hdrincl(): setsockopt(IP_HDRINCL, 0)\00", align 1
@.str.20 = private unnamed_addr constant [54 x i8] c"test_ip_hdrincl(): getsockopt(IP_HDRINCL) after reset\00", align 1
@HISTORICAL_INP_HDRINCL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_ip_hdrincl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_ip_hdrincl() #0 {
  %1 = alloca [2 x i32], align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @PF_INET, align 4
  %5 = load i32, i32* @SOCK_STREAM, align 4
  %6 = call i32 @socket(i32 %4, i32 %5, i32 0)
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = call i32 @err(i32 -1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %0
  %12 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 0
  store i32 -1, i32* %12, align 4
  store i32 4, i32* %3, align 4
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @IPPROTO_IP, align 4
  %15 = load i32, i32* @IP_HDRINCL, align 4
  %16 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 0
  %17 = call i64 @getsockopt(i32 %13, i32 %14, i32 %15, i32* %16, i32* %3)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = call i32 @err(i32 -1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %11
  %22 = load i64, i64* @errno, align 8
  %23 = load i64, i64* @ENOPROTOOPT, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load i64, i64* @errno, align 8
  %27 = trunc i64 %26 to i32
  %28 = load i64, i64* @errno, align 8
  %29 = call i32 @strerror(i64 %28)
  %30 = call i32 (i32, i8*, i32, ...) @errx(i32 -1, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.2, i64 0, i64 0), i32 %27, i32 %29)
  br label %31

31:                                               ; preds = %25, %21
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 0
  store i32 1, i32* %32, align 4
  %33 = load i32, i32* %2, align 4
  %34 = load i32, i32* @IPPROTO_IP, align 4
  %35 = load i32, i32* @IP_HDRINCL, align 4
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 0
  %37 = call i64 @setsockopt(i32 %33, i32 %34, i32 %35, i32* %36, i32 4)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = call i32 @err(i32 -1, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %31
  %42 = load i64, i64* @errno, align 8
  %43 = load i64, i64* @ENOPROTOOPT, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load i64, i64* @errno, align 8
  %47 = trunc i64 %46 to i32
  %48 = load i64, i64* @errno, align 8
  %49 = call i32 @strerror(i64 %48)
  %50 = call i32 (i32, i8*, i32, ...) @errx(i32 -1, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.4, i64 0, i64 0), i32 %47, i32 %49)
  br label %51

51:                                               ; preds = %45, %41
  %52 = load i32, i32* %2, align 4
  %53 = call i32 @close(i32 %52)
  %54 = load i32, i32* @PF_INET, align 4
  %55 = load i32, i32* @SOCK_DGRAM, align 4
  %56 = call i32 @socket(i32 %54, i32 %55, i32 0)
  store i32 %56, i32* %2, align 4
  %57 = load i32, i32* %2, align 4
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = call i32 @err(i32 -1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %51
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 0
  store i32 -1, i32* %62, align 4
  store i32 4, i32* %3, align 4
  %63 = load i32, i32* %2, align 4
  %64 = load i32, i32* @IPPROTO_IP, align 4
  %65 = load i32, i32* @IP_HDRINCL, align 4
  %66 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 0
  %67 = call i64 @getsockopt(i32 %63, i32 %64, i32 %65, i32* %66, i32* %3)
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %61
  %70 = call i32 @err(i32 -1, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.6, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %61
  %72 = load i64, i64* @errno, align 8
  %73 = load i64, i64* @ENOPROTOOPT, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %71
  %76 = load i64, i64* @errno, align 8
  %77 = trunc i64 %76 to i32
  %78 = load i64, i64* @errno, align 8
  %79 = call i32 @strerror(i64 %78)
  %80 = call i32 (i32, i8*, i32, ...) @errx(i32 -1, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.7, i64 0, i64 0), i32 %77, i32 %79)
  br label %81

81:                                               ; preds = %75, %71
  %82 = load i32, i32* %2, align 4
  %83 = load i32, i32* @IPPROTO_IP, align 4
  %84 = load i32, i32* @IP_HDRINCL, align 4
  %85 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 0
  %86 = call i64 @setsockopt(i32 %82, i32 %83, i32 %84, i32* %85, i32 4)
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %81
  %89 = call i32 @err(i32 -1, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.8, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88, %81
  %91 = load i64, i64* @errno, align 8
  %92 = load i64, i64* @ENOPROTOOPT, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %90
  %95 = load i64, i64* @errno, align 8
  %96 = trunc i64 %95 to i32
  %97 = load i64, i64* @errno, align 8
  %98 = call i32 @strerror(i64 %97)
  %99 = call i32 (i32, i8*, i32, ...) @errx(i32 -1, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.9, i64 0, i64 0), i32 %96, i32 %98)
  br label %100

100:                                              ; preds = %94, %90
  %101 = load i32, i32* %2, align 4
  %102 = call i32 @close(i32 %101)
  %103 = load i32, i32* @PF_INET, align 4
  %104 = load i32, i32* @SOCK_RAW, align 4
  %105 = call i32 @socket(i32 %103, i32 %104, i32 0)
  store i32 %105, i32* %2, align 4
  %106 = call i32 (...) @geteuid()
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %100
  %109 = load i32, i32* %2, align 4
  %110 = icmp ne i32 %109, -1
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = call i32 (...) @geteuid()
  %113 = call i32 (i32, i8*, i32, ...) @errx(i32 -1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i64 0, i64 0), i32 %112)
  br label %114

114:                                              ; preds = %111, %108
  br label %215

115:                                              ; preds = %100
  %116 = load i32, i32* %2, align 4
  %117 = icmp eq i32 %116, -1
  br i1 %117, label %118, label %120

118:                                              ; preds = %115
  %119 = call i32 @err(i32 -1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i64 0, i64 0))
  br label %120

120:                                              ; preds = %118, %115
  %121 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 0
  store i32 -1, i32* %121, align 4
  %122 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 1
  store i32 -1, i32* %122, align 4
  store i32 8, i32* %3, align 4
  %123 = load i32, i32* %2, align 4
  %124 = load i32, i32* @IPPROTO_IP, align 4
  %125 = load i32, i32* @IP_HDRINCL, align 4
  %126 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 0
  %127 = call i64 @getsockopt(i32 %123, i32 %124, i32 %125, i32* %126, i32* %3)
  %128 = icmp slt i64 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %120
  %130 = call i32 @err(i32 -1, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.12, i64 0, i64 0))
  br label %131

131:                                              ; preds = %129, %120
  %132 = load i32, i32* %3, align 4
  %133 = sext i32 %132 to i64
  %134 = icmp ne i64 %133, 4
  br i1 %134, label %135, label %138

135:                                              ; preds = %131
  %136 = load i32, i32* %3, align 4
  %137 = call i32 (i32, i8*, i32, ...) @errx(i32 -1, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.13, i64 0, i64 0), i32 %136)
  br label %138

138:                                              ; preds = %135, %131
  %139 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 0
  %140 = load i32, i32* %139, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %138
  %143 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 (i32, i8*, i32, ...) @errx(i32 -1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.14, i64 0, i64 0), i32 %144)
  br label %146

146:                                              ; preds = %142, %138
  %147 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 0
  store i32 1, i32* %147, align 4
  %148 = load i32, i32* %2, align 4
  %149 = load i32, i32* @IPPROTO_IP, align 4
  %150 = load i32, i32* @IP_HDRINCL, align 4
  %151 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 0
  %152 = call i64 @setsockopt(i32 %148, i32 %149, i32 %150, i32* %151, i32 4)
  %153 = icmp slt i64 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %146
  %155 = call i32 @err(i32 -1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.15, i64 0, i64 0))
  br label %156

156:                                              ; preds = %154, %146
  %157 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 0
  store i32 -1, i32* %157, align 4
  %158 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 1
  store i32 -1, i32* %158, align 4
  store i32 8, i32* %3, align 4
  %159 = load i32, i32* %2, align 4
  %160 = load i32, i32* @IPPROTO_IP, align 4
  %161 = load i32, i32* @IP_HDRINCL, align 4
  %162 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 0
  %163 = call i64 @getsockopt(i32 %159, i32 %160, i32 %161, i32* %162, i32* %3)
  %164 = icmp slt i64 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %156
  %166 = call i32 @err(i32 -1, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.16, i64 0, i64 0))
  br label %167

167:                                              ; preds = %165, %156
  %168 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 0
  %169 = load i32, i32* %168, align 4
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %167
  %172 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 0
  %173 = load i32, i32* %172, align 4
  %174 = call i32 (i32, i8*, i32, ...) @errx(i32 -1, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.17, i64 0, i64 0), i32 %173)
  br label %175

175:                                              ; preds = %171, %167
  %176 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 0
  %177 = load i32, i32* %176, align 4
  %178 = icmp ne i32 %177, 8
  br i1 %178, label %179, label %183

179:                                              ; preds = %175
  %180 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 0
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @warnx(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.18, i64 0, i64 0), i32 %181)
  br label %183

183:                                              ; preds = %179, %175
  %184 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 0
  store i32 0, i32* %184, align 4
  %185 = load i32, i32* %2, align 4
  %186 = load i32, i32* @IPPROTO_IP, align 4
  %187 = load i32, i32* @IP_HDRINCL, align 4
  %188 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 0
  %189 = call i64 @setsockopt(i32 %185, i32 %186, i32 %187, i32* %188, i32 4)
  %190 = icmp slt i64 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %183
  %192 = call i32 @err(i32 -1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.19, i64 0, i64 0))
  br label %193

193:                                              ; preds = %191, %183
  %194 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 0
  store i32 -1, i32* %194, align 4
  %195 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 1
  store i32 -1, i32* %195, align 4
  store i32 8, i32* %3, align 4
  %196 = load i32, i32* %2, align 4
  %197 = load i32, i32* @IPPROTO_IP, align 4
  %198 = load i32, i32* @IP_HDRINCL, align 4
  %199 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 0
  %200 = call i64 @getsockopt(i32 %196, i32 %197, i32 %198, i32* %199, i32* %3)
  %201 = icmp slt i64 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %193
  %203 = call i32 @err(i32 -1, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.20, i64 0, i64 0))
  br label %204

204:                                              ; preds = %202, %193
  %205 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 0
  %206 = load i32, i32* %205, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %212

208:                                              ; preds = %204
  %209 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 0
  %210 = load i32, i32* %209, align 4
  %211 = call i32 (i32, i8*, i32, ...) @errx(i32 -1, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.17, i64 0, i64 0), i32 %210)
  br label %212

212:                                              ; preds = %208, %204
  %213 = load i32, i32* %2, align 4
  %214 = call i32 @close(i32 %213)
  br label %215

215:                                              ; preds = %212, %114
  ret void
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @getsockopt(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @errx(i32, i8*, i32, ...) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i64 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @geteuid(...) #1

declare dso_local i32 @warnx(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
