; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_udp.c_udp_CreateDevice.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_udp.c_udp_CreateDevice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udpdevice = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.physical = type { i32, %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_5__ = type { i8* }
%struct.servent = type { i64 }
%struct.sockaddr = type { i32 }

@LogWARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"%s: Cannot allocate a udp device: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@INADDR_NONE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"%s: %s: unknown host\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"%s: %s: unknown service\0A\00", align 1
@LogPHASE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"%s: Connecting to %s:%s/udp\0A\00", align 1
@PF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@LogDEBUG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"%s: Opened udp socket %s\0A\00", align 1
@UDP_CONNECTED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"%s: connect: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"%s: socket: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.udpdevice* (%struct.physical*, i8*, i8*)* @udp_CreateDevice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.udpdevice* @udp_CreateDevice(%struct.physical* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.udpdevice*, align 8
  %5 = alloca %struct.physical*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.udpdevice*, align 8
  %9 = alloca %struct.servent*, align 8
  %10 = alloca %struct.TYPE_8__, align 8
  store %struct.physical* %0, %struct.physical** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = call %struct.udpdevice* @malloc(i32 32)
  store %struct.udpdevice* %11, %struct.udpdevice** %8, align 8
  %12 = icmp eq %struct.udpdevice* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %3
  %14 = load i32, i32* @LogWARN, align 4
  %15 = load %struct.physical*, %struct.physical** %5, align 8
  %16 = getelementptr inbounds %struct.physical, %struct.physical* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = load i32, i32* @errno, align 4
  %20 = call i8* @strerror(i32 %19)
  %21 = call i32 (i32, i8*, i8*, i8*, ...) @log_Printf(i32 %14, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %18, i8* %20)
  store %struct.udpdevice* null, %struct.udpdevice** %4, align 8
  br label %157

22:                                               ; preds = %3
  %23 = load i32, i32* @AF_INET, align 4
  %24 = load %struct.udpdevice*, %struct.udpdevice** %8, align 8
  %25 = getelementptr inbounds %struct.udpdevice, %struct.udpdevice* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 2
  store i32 %23, i32* %26, align 8
  %27 = load %struct.udpdevice*, %struct.udpdevice** %8, align 8
  %28 = getelementptr inbounds %struct.udpdevice, %struct.udpdevice* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i8*, i8** %6, align 8
  %31 = call i64 @GetIpAddr(i8* %30)
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  store i64 %31, i64* %32, align 8
  %33 = bitcast %struct.TYPE_8__* %29 to i8*
  %34 = bitcast %struct.TYPE_8__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 8 %34, i64 8, i1 false)
  %35 = load %struct.udpdevice*, %struct.udpdevice** %8, align 8
  %36 = getelementptr inbounds %struct.udpdevice, %struct.udpdevice* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @INADDR_NONE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %22
  %43 = load i32, i32* @LogWARN, align 4
  %44 = load %struct.physical*, %struct.physical** %5, align 8
  %45 = getelementptr inbounds %struct.physical, %struct.physical* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 (i32, i8*, i8*, i8*, ...) @log_Printf(i32 %43, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %47, i8* %48)
  %50 = load %struct.udpdevice*, %struct.udpdevice** %8, align 8
  %51 = call i32 @free(%struct.udpdevice* %50)
  store %struct.udpdevice* null, %struct.udpdevice** %4, align 8
  br label %157

52:                                               ; preds = %22
  %53 = load i8*, i8** %7, align 8
  %54 = call i32 @atoi(i8* %53)
  %55 = call i64 @htons(i32 %54)
  %56 = load %struct.udpdevice*, %struct.udpdevice** %8, align 8
  %57 = getelementptr inbounds %struct.udpdevice, %struct.udpdevice* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  store i64 %55, i64* %58, align 8
  %59 = load %struct.udpdevice*, %struct.udpdevice** %8, align 8
  %60 = getelementptr inbounds %struct.udpdevice, %struct.udpdevice* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %87

64:                                               ; preds = %52
  %65 = load i8*, i8** %7, align 8
  %66 = call %struct.servent* @getservbyname(i8* %65, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store %struct.servent* %66, %struct.servent** %9, align 8
  %67 = load %struct.servent*, %struct.servent** %9, align 8
  %68 = icmp ne %struct.servent* %67, null
  br i1 %68, label %69, label %76

69:                                               ; preds = %64
  %70 = load %struct.servent*, %struct.servent** %9, align 8
  %71 = getelementptr inbounds %struct.servent, %struct.servent* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.udpdevice*, %struct.udpdevice** %8, align 8
  %74 = getelementptr inbounds %struct.udpdevice, %struct.udpdevice* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  store i64 %72, i64* %75, align 8
  br label %86

76:                                               ; preds = %64
  %77 = load i32, i32* @LogWARN, align 4
  %78 = load %struct.physical*, %struct.physical** %5, align 8
  %79 = getelementptr inbounds %struct.physical, %struct.physical* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = call i32 (i32, i8*, i8*, i8*, ...) @log_Printf(i32 %77, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %81, i8* %82)
  %84 = load %struct.udpdevice*, %struct.udpdevice** %8, align 8
  %85 = call i32 @free(%struct.udpdevice* %84)
  store %struct.udpdevice* null, %struct.udpdevice** %4, align 8
  br label %157

86:                                               ; preds = %69
  br label %87

87:                                               ; preds = %86, %52
  %88 = load i32, i32* @LogPHASE, align 4
  %89 = load %struct.physical*, %struct.physical** %5, align 8
  %90 = getelementptr inbounds %struct.physical, %struct.physical* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = load i8*, i8** %6, align 8
  %94 = load i8*, i8** %7, align 8
  %95 = call i32 (i32, i8*, i8*, i8*, ...) @log_Printf(i32 %88, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %92, i8* %93, i8* %94)
  %96 = load i32, i32* @PF_INET, align 4
  %97 = load i32, i32* @SOCK_DGRAM, align 4
  %98 = call i32 @socket(i32 %96, i32 %97, i32 0)
  %99 = load %struct.physical*, %struct.physical** %5, align 8
  %100 = getelementptr inbounds %struct.physical, %struct.physical* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load %struct.physical*, %struct.physical** %5, align 8
  %102 = getelementptr inbounds %struct.physical, %struct.physical* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp sge i32 %103, 0
  br i1 %104, label %105, label %139

105:                                              ; preds = %87
  %106 = load i32, i32* @LogDEBUG, align 4
  %107 = load %struct.physical*, %struct.physical** %5, align 8
  %108 = getelementptr inbounds %struct.physical, %struct.physical* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = load %struct.physical*, %struct.physical** %5, align 8
  %112 = getelementptr inbounds %struct.physical, %struct.physical* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = call i32 (i32, i8*, i8*, i8*, ...) @log_Printf(i32 %106, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* %110, i8* %114)
  %116 = load %struct.physical*, %struct.physical** %5, align 8
  %117 = getelementptr inbounds %struct.physical, %struct.physical* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.udpdevice*, %struct.udpdevice** %8, align 8
  %120 = getelementptr inbounds %struct.udpdevice, %struct.udpdevice* %119, i32 0, i32 1
  %121 = bitcast %struct.TYPE_6__* %120 to %struct.sockaddr*
  %122 = call i64 @connect(i32 %118, %struct.sockaddr* %121, i32 24)
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %105
  %125 = load i32, i32* @UDP_CONNECTED, align 4
  %126 = load %struct.udpdevice*, %struct.udpdevice** %8, align 8
  %127 = getelementptr inbounds %struct.udpdevice, %struct.udpdevice* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 8
  %128 = load %struct.udpdevice*, %struct.udpdevice** %8, align 8
  store %struct.udpdevice* %128, %struct.udpdevice** %4, align 8
  br label %157

129:                                              ; preds = %105
  %130 = load i32, i32* @LogWARN, align 4
  %131 = load %struct.physical*, %struct.physical** %5, align 8
  %132 = getelementptr inbounds %struct.physical, %struct.physical* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = load i8*, i8** %133, align 8
  %135 = load i32, i32* @errno, align 4
  %136 = call i8* @strerror(i32 %135)
  %137 = call i32 (i32, i8*, i8*, i8*, ...) @log_Printf(i32 %130, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* %134, i8* %136)
  br label %138

138:                                              ; preds = %129
  br label %148

139:                                              ; preds = %87
  %140 = load i32, i32* @LogWARN, align 4
  %141 = load %struct.physical*, %struct.physical** %5, align 8
  %142 = getelementptr inbounds %struct.physical, %struct.physical* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = load i32, i32* @errno, align 4
  %146 = call i8* @strerror(i32 %145)
  %147 = call i32 (i32, i8*, i8*, i8*, ...) @log_Printf(i32 %140, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8* %144, i8* %146)
  br label %148

148:                                              ; preds = %139, %138
  %149 = load %struct.physical*, %struct.physical** %5, align 8
  %150 = getelementptr inbounds %struct.physical, %struct.physical* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @close(i32 %151)
  %153 = load %struct.physical*, %struct.physical** %5, align 8
  %154 = getelementptr inbounds %struct.physical, %struct.physical* %153, i32 0, i32 0
  store i32 -1, i32* %154, align 8
  %155 = load %struct.udpdevice*, %struct.udpdevice** %8, align 8
  %156 = call i32 @free(%struct.udpdevice* %155)
  store %struct.udpdevice* null, %struct.udpdevice** %4, align 8
  br label %157

157:                                              ; preds = %148, %124, %76, %42, %13
  %158 = load %struct.udpdevice*, %struct.udpdevice** %4, align 8
  ret %struct.udpdevice* %158
}

declare dso_local %struct.udpdevice* @malloc(i32) #1

declare dso_local i32 @log_Printf(i32, i8*, i8*, i8*, ...) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i64 @GetIpAddr(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @free(%struct.udpdevice*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local %struct.servent* @getservbyname(i8*, i8*) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i64 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
