; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ndp/extr_ndp.c_plist.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ndp/extr_ndp.c_plist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_prefix = type { i64, i32, i32, i64, i64, i64, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.sockaddr_in6 = type { i32, i32 }
%struct.timeval = type { i64 }
%struct.in6_nbrinfo = type { i32 }
%struct.sockaddr = type { i32 }

@CTL_NET = common dso_local global i32 0, align 4
@PF_INET6 = common dso_local global i32 0, align 4
@IPPROTO_ICMPV6 = common dso_local global i32 0, align 4
@ICMPV6CTL_ND6_PRLIST = common dso_local global i32 0, align 4
@NI_NUMERICHOST = common dso_local global i8* null, align 8
@nflag = common dso_local global i64 0, align 8
@NI_MAXHOST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"sysctl(ICMPV6CTL_ND6_PRLIST)\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"%s/%d if=%s\0A\00", align 1
@ifix_buf = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"flags=%s%s%s%s%s\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@NDPRF_ONLINK = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@NDPRF_DETACHED = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@ND6_INFINITE_LIFETIME = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [17 x i8] c" vltime=infinity\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c" vltime=%lu\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c", pltime=infinity\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c", pltime=%lu\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c", expire=Never\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c", expire=%s\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c", expired\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c", ref=%d\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"  advertised by\0A\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"    %s\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c" (reachable)\0A\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c" (unreachable)\0A\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c" (no neighbor state)\0A\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"  No advertising router\0A\00", align 1
@NDPRF_HOME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @plist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @plist() #0 {
  %1 = alloca [4 x i32], align 16
  %2 = alloca i8*, align 8
  %3 = alloca %struct.in6_prefix*, align 8
  %4 = alloca %struct.in6_prefix*, align 8
  %5 = alloca %struct.in6_prefix*, align 8
  %6 = alloca %struct.sockaddr_in6*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.timeval, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.sockaddr_in6*, align 8
  %15 = alloca %struct.in6_nbrinfo*, align 8
  %16 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %17 = load i32, i32* @CTL_NET, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds i32, i32* %16, i64 1
  %19 = load i32, i32* @PF_INET6, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds i32, i32* %18, i64 1
  %21 = load i32, i32* @IPPROTO_ICMPV6, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds i32, i32* %20, i64 1
  %23 = load i32, i32* @ICMPV6CTL_ND6_PRLIST, align 4
  store i32 %23, i32* %22, align 4
  %24 = load i8*, i8** @NI_NUMERICHOST, align 8
  %25 = ptrtoint i8* %24 to i32
  store i32 %25, i32* %9, align 4
  %26 = load i64, i64* @nflag, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %0
  %29 = load i8*, i8** @NI_NUMERICHOST, align 8
  br label %31

30:                                               ; preds = %0
  br label %31

31:                                               ; preds = %30, %28
  %32 = phi i8* [ %29, %28 ], [ null, %30 ]
  %33 = ptrtoint i8* %32 to i32
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* @NI_MAXHOST, align 4
  %35 = zext i32 %34 to i64
  %36 = call i8* @llvm.stacksave()
  store i8* %36, i8** %11, align 8
  %37 = alloca i8, i64 %35, align 16
  store i64 %35, i64* %12, align 8
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %39 = call i64 @sysctl(i32* %38, i32 4, i8* null, i64* %7, i32* null, i32 0)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = call i32 @err(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %31
  %44 = load i64, i64* %7, align 8
  %45 = call i8* @malloc(i64 %44)
  store i8* %45, i8** %2, align 8
  %46 = load i8*, i8** %2, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %43
  %49 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %43
  %51 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %52 = load i8*, i8** %2, align 8
  %53 = call i64 @sysctl(i32* %51, i32 4, i8* %52, i64* %7, i32* null, i32 0)
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = call i32 @err(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %50
  %58 = load i8*, i8** %2, align 8
  %59 = load i64, i64* %7, align 8
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  %61 = bitcast i8* %60 to %struct.in6_prefix*
  store %struct.in6_prefix* %61, %struct.in6_prefix** %4, align 8
  %62 = load i8*, i8** %2, align 8
  %63 = bitcast i8* %62 to %struct.in6_prefix*
  store %struct.in6_prefix* %63, %struct.in6_prefix** %3, align 8
  br label %64

64:                                               ; preds = %249, %57
  %65 = load %struct.in6_prefix*, %struct.in6_prefix** %3, align 8
  %66 = load %struct.in6_prefix*, %struct.in6_prefix** %4, align 8
  %67 = icmp ult %struct.in6_prefix* %65, %66
  br i1 %67, label %68, label %251

68:                                               ; preds = %64
  %69 = load %struct.in6_prefix*, %struct.in6_prefix** %3, align 8
  %70 = getelementptr inbounds %struct.in6_prefix, %struct.in6_prefix* %69, i64 1
  %71 = bitcast %struct.in6_prefix* %70 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %71, %struct.sockaddr_in6** %6, align 8
  %72 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8
  %73 = load %struct.in6_prefix*, %struct.in6_prefix** %3, align 8
  %74 = getelementptr inbounds %struct.in6_prefix, %struct.in6_prefix* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %72, i64 %75
  %77 = bitcast %struct.sockaddr_in6* %76 to %struct.in6_prefix*
  store %struct.in6_prefix* %77, %struct.in6_prefix** %5, align 8
  %78 = load %struct.in6_prefix*, %struct.in6_prefix** %3, align 8
  %79 = getelementptr inbounds %struct.in6_prefix, %struct.in6_prefix* %78, i32 0, i32 9
  %80 = bitcast %struct.TYPE_3__* %79 to %struct.sockaddr*
  %81 = load %struct.in6_prefix*, %struct.in6_prefix** %3, align 8
  %82 = getelementptr inbounds %struct.in6_prefix, %struct.in6_prefix* %81, i32 0, i32 9
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = trunc i64 %35 to i32
  %86 = load i32, i32* %9, align 4
  %87 = call i64 @getnameinfo(%struct.sockaddr* %80, i32 %84, i8* %37, i32 %85, i32* null, i32 0, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %68
  %90 = trunc i64 %35 to i32
  %91 = call i32 @strlcpy(i8* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %89, %68
  %93 = load %struct.in6_prefix*, %struct.in6_prefix** %3, align 8
  %94 = getelementptr inbounds %struct.in6_prefix, %struct.in6_prefix* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.in6_prefix*, %struct.in6_prefix** %3, align 8
  %97 = getelementptr inbounds %struct.in6_prefix, %struct.in6_prefix* %96, i32 0, i32 7
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @ifix_buf, align 4
  %100 = call i8* @if_indextoname(i32 %98, i32 %99)
  %101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %37, i32 %95, i8* %100)
  %102 = call i32 @gettimeofday(%struct.timeval* %8, i32 0)
  %103 = load %struct.in6_prefix*, %struct.in6_prefix** %3, align 8
  %104 = getelementptr inbounds %struct.in6_prefix, %struct.in6_prefix* %103, i32 0, i32 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  %108 = zext i1 %107 to i64
  %109 = select i1 %107, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %110 = load %struct.in6_prefix*, %struct.in6_prefix** %3, align 8
  %111 = getelementptr inbounds %struct.in6_prefix, %struct.in6_prefix* %110, i32 0, i32 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  %115 = zext i1 %114 to i64
  %116 = select i1 %114, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %117 = load %struct.in6_prefix*, %struct.in6_prefix** %3, align 8
  %118 = getelementptr inbounds %struct.in6_prefix, %struct.in6_prefix* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @NDPRF_ONLINK, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  %123 = zext i1 %122 to i64
  %124 = select i1 %122, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %125 = load %struct.in6_prefix*, %struct.in6_prefix** %3, align 8
  %126 = getelementptr inbounds %struct.in6_prefix, %struct.in6_prefix* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @NDPRF_DETACHED, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  %131 = zext i1 %130 to i64
  %132 = select i1 %130, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* %109, i8* %116, i8* %124, i8* %132, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0))
  %134 = load %struct.in6_prefix*, %struct.in6_prefix** %3, align 8
  %135 = getelementptr inbounds %struct.in6_prefix, %struct.in6_prefix* %134, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @ND6_INFINITE_LIFETIME, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %92
  %140 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  br label %146

141:                                              ; preds = %92
  %142 = load %struct.in6_prefix*, %struct.in6_prefix** %3, align 8
  %143 = getelementptr inbounds %struct.in6_prefix, %struct.in6_prefix* %142, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i64 %144)
  br label %146

146:                                              ; preds = %141, %139
  %147 = load %struct.in6_prefix*, %struct.in6_prefix** %3, align 8
  %148 = getelementptr inbounds %struct.in6_prefix, %struct.in6_prefix* %147, i32 0, i32 4
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @ND6_INFINITE_LIFETIME, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %146
  %153 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0))
  br label %159

154:                                              ; preds = %146
  %155 = load %struct.in6_prefix*, %struct.in6_prefix** %3, align 8
  %156 = getelementptr inbounds %struct.in6_prefix, %struct.in6_prefix* %155, i32 0, i32 4
  %157 = load i64, i64* %156, align 8
  %158 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i64 %157)
  br label %159

159:                                              ; preds = %154, %152
  %160 = load %struct.in6_prefix*, %struct.in6_prefix** %3, align 8
  %161 = getelementptr inbounds %struct.in6_prefix, %struct.in6_prefix* %160, i32 0, i32 5
  %162 = load i64, i64* %161, align 8
  %163 = icmp eq i64 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %159
  %165 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0))
  br label %185

166:                                              ; preds = %159
  %167 = load %struct.in6_prefix*, %struct.in6_prefix** %3, align 8
  %168 = getelementptr inbounds %struct.in6_prefix, %struct.in6_prefix* %167, i32 0, i32 5
  %169 = load i64, i64* %168, align 8
  %170 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = icmp sge i64 %169, %171
  br i1 %172, label %173, label %182

173:                                              ; preds = %166
  %174 = load %struct.in6_prefix*, %struct.in6_prefix** %3, align 8
  %175 = getelementptr inbounds %struct.in6_prefix, %struct.in6_prefix* %174, i32 0, i32 5
  %176 = load i64, i64* %175, align 8
  %177 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = sub nsw i64 %176, %178
  %180 = call i8* @sec2str(i64 %179)
  %181 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0), i8* %180)
  br label %184

182:                                              ; preds = %166
  %183 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0))
  br label %184

184:                                              ; preds = %182, %173
  br label %185

185:                                              ; preds = %184, %164
  %186 = load %struct.in6_prefix*, %struct.in6_prefix** %3, align 8
  %187 = getelementptr inbounds %struct.in6_prefix, %struct.in6_prefix* %186, i32 0, i32 6
  %188 = load i32, i32* %187, align 8
  %189 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i32 %188)
  %190 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  %191 = load %struct.in6_prefix*, %struct.in6_prefix** %3, align 8
  %192 = getelementptr inbounds %struct.in6_prefix, %struct.in6_prefix* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %246

195:                                              ; preds = %185
  %196 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8
  store %struct.sockaddr_in6* %196, %struct.sockaddr_in6** %14, align 8
  %197 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  br label %198

198:                                              ; preds = %242, %195
  %199 = load i32, i32* %13, align 4
  %200 = sext i32 %199 to i64
  %201 = load %struct.in6_prefix*, %struct.in6_prefix** %3, align 8
  %202 = getelementptr inbounds %struct.in6_prefix, %struct.in6_prefix* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = icmp ult i64 %200, %203
  br i1 %204, label %205, label %245

205:                                              ; preds = %198
  %206 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %14, align 8
  %207 = bitcast %struct.sockaddr_in6* %206 to %struct.sockaddr*
  %208 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %14, align 8
  %209 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = trunc i64 %35 to i32
  %212 = load i32, i32* %10, align 4
  %213 = call i64 @getnameinfo(%struct.sockaddr* %207, i32 %210, i8* %37, i32 %211, i32* null, i32 0, i32 %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %205
  %216 = trunc i64 %35 to i32
  %217 = call i32 @strlcpy(i8* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %216)
  br label %218

218:                                              ; preds = %215, %205
  %219 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i8* %37)
  %220 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %14, align 8
  %221 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %220, i32 0, i32 0
  %222 = load %struct.in6_prefix*, %struct.in6_prefix** %3, align 8
  %223 = getelementptr inbounds %struct.in6_prefix, %struct.in6_prefix* %222, i32 0, i32 7
  %224 = load i32, i32* %223, align 4
  %225 = call %struct.in6_nbrinfo* @getnbrinfo(i32* %221, i32 %224, i32 0)
  store %struct.in6_nbrinfo* %225, %struct.in6_nbrinfo** %15, align 8
  %226 = load %struct.in6_nbrinfo*, %struct.in6_nbrinfo** %15, align 8
  %227 = icmp ne %struct.in6_nbrinfo* %226, null
  br i1 %227, label %228, label %237

228:                                              ; preds = %218
  %229 = load %struct.in6_nbrinfo*, %struct.in6_nbrinfo** %15, align 8
  %230 = getelementptr inbounds %struct.in6_nbrinfo, %struct.in6_nbrinfo* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  switch i32 %231, label %234 [
    i32 129, label %232
    i32 128, label %232
    i32 131, label %232
    i32 130, label %232
  ]

232:                                              ; preds = %228, %228, %228, %228
  %233 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0))
  br label %236

234:                                              ; preds = %228
  %235 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0))
  br label %236

236:                                              ; preds = %234, %232
  br label %239

237:                                              ; preds = %218
  %238 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i64 0, i64 0))
  br label %239

239:                                              ; preds = %237, %236
  %240 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %14, align 8
  %241 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %240, i32 1
  store %struct.sockaddr_in6* %241, %struct.sockaddr_in6** %14, align 8
  br label %242

242:                                              ; preds = %239
  %243 = load i32, i32* %13, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %13, align 4
  br label %198

245:                                              ; preds = %198
  br label %248

246:                                              ; preds = %185
  %247 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i64 0, i64 0))
  br label %248

248:                                              ; preds = %246, %245
  br label %249

249:                                              ; preds = %248
  %250 = load %struct.in6_prefix*, %struct.in6_prefix** %5, align 8
  store %struct.in6_prefix* %250, %struct.in6_prefix** %3, align 8
  br label %64

251:                                              ; preds = %64
  %252 = load i8*, i8** %2, align 8
  %253 = call i32 @free(i8* %252)
  %254 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %254)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @sysctl(i32*, i32, i8*, i64*, i32*, i32) #2

declare dso_local i32 @err(i32, i8*) #2

declare dso_local i8* @malloc(i64) #2

declare dso_local i64 @getnameinfo(%struct.sockaddr*, i32, i8*, i32, i32*, i32, i32) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i8* @if_indextoname(i32, i32) #2

declare dso_local i32 @gettimeofday(%struct.timeval*, i32) #2

declare dso_local i8* @sec2str(i64) #2

declare dso_local %struct.in6_nbrinfo* @getnbrinfo(i32*, i32, i32) #2

declare dso_local i32 @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
