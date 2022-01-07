; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_udp.c_udp_Create.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_udp.c_udp_Create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.physical = type { i32, %struct.TYPE_12__, %struct.TYPE_10__, %struct.TYPE_7__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i8* }
%struct.udpdevice = type { %struct.device, i32 }
%struct.stat = type { i32 }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"/udp\00", align 1
@S_IFSOCK = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_TYPE = common dso_local global i32 0, align 4
@LogPHASE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"%s: Link is a closed socket !\0A\00", align 1
@SOCK_DGRAM = common dso_local global i32 0, align 4
@LogWARN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"%s: Cannot allocate a udp device: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"%s: Link is a connected udp socket\0A\00", align 1
@UDP_CONNECTED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"%s: Link is a disconnected udp socket\0A\00", align 1
@UDP_MAYBEUNCONNECTED = common dso_local global i32 0, align 4
@OPEN_PASSIVE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [36 x i8] c"%s:   Changing openmode to PASSIVE\0A\00", align 1
@baseudpdevice = common dso_local global i32 0, align 4
@PHYSICAL_FORCE_SYNC = common dso_local global i32 0, align 4
@CD_DEFAULT = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [26 x i8] c"Carrier settings ignored\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.device* @udp_Create(%struct.physical* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.physical*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.udpdevice*, align 8
  %9 = alloca %struct.stat, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sockaddr_in, align 4
  %13 = alloca %struct.sockaddr*, align 8
  store %struct.physical* %0, %struct.physical** %3, align 8
  store %struct.udpdevice* null, %struct.udpdevice** %8, align 8
  %14 = load %struct.physical*, %struct.physical** %3, align 8
  %15 = getelementptr inbounds %struct.physical, %struct.physical* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %80

18:                                               ; preds = %1
  %19 = load %struct.physical*, %struct.physical** %3, align 8
  %20 = getelementptr inbounds %struct.physical, %struct.physical* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i8* @strchr(i8* %22, i8 signext 58)
  store i8* %23, i8** %4, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %79

25:                                               ; preds = %18
  %26 = load i8*, i8** %4, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  %28 = call i8* @strchr(i8* %27, i8 signext 58)
  %29 = icmp ne i8* %28, null
  br i1 %29, label %79, label %30

30:                                               ; preds = %25
  %31 = load i8*, i8** %4, align 8
  store i8 0, i8* %31, align 1
  %32 = load %struct.physical*, %struct.physical** %3, align 8
  %33 = getelementptr inbounds %struct.physical, %struct.physical* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %5, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  store i8* %37, i8** %6, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = call i8* @strchr(i8* %38, i8 signext 47)
  store i8* %39, i8** %7, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %30
  %43 = load i8*, i8** %7, align 8
  %44 = call i64 @strcasecmp(i8* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i8*, i8** %4, align 8
  store i8 58, i8* %47, align 1
  store %struct.device* null, %struct.device** %2, align 8
  br label %214

48:                                               ; preds = %42, %30
  %49 = load i8*, i8** %7, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load %struct.physical*, %struct.physical** %3, align 8
  %53 = getelementptr inbounds %struct.physical, %struct.physical* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %53, align 8
  %56 = load i8*, i8** %7, align 8
  store i8 0, i8* %56, align 1
  br label %57

57:                                               ; preds = %51, %48
  %58 = load i8*, i8** %5, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %57
  %63 = load i8*, i8** %6, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load %struct.physical*, %struct.physical** %3, align 8
  %69 = load i8*, i8** %5, align 8
  %70 = load i8*, i8** %6, align 8
  %71 = call %struct.udpdevice* @udp_CreateDevice(%struct.physical* %68, i8* %69, i8* %70)
  store %struct.udpdevice* %71, %struct.udpdevice** %8, align 8
  br label %72

72:                                               ; preds = %67, %62, %57
  %73 = load i8*, i8** %4, align 8
  store i8 58, i8* %73, align 1
  %74 = load i8*, i8** %7, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = load i8*, i8** %7, align 8
  store i8 47, i8* %77, align 1
  br label %78

78:                                               ; preds = %76, %72
  br label %79

79:                                               ; preds = %78, %25, %18
  br label %186

80:                                               ; preds = %1
  %81 = load %struct.physical*, %struct.physical** %3, align 8
  %82 = getelementptr inbounds %struct.physical, %struct.physical* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @fstat(i32 %83, %struct.stat* %9)
  %85 = icmp ne i32 %84, -1
  br i1 %85, label %86, label %185

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @S_IFSOCK, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %185

92:                                               ; preds = %86
  store i32 4, i32* %11, align 4
  %93 = load %struct.physical*, %struct.physical** %3, align 8
  %94 = getelementptr inbounds %struct.physical, %struct.physical* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @SOL_SOCKET, align 4
  %97 = load i32, i32* @SO_TYPE, align 4
  %98 = call i32 @getsockopt(i32 %95, i32 %96, i32 %97, i32* %10, i32* %11)
  %99 = icmp eq i32 %98, -1
  br i1 %99, label %100, label %113

100:                                              ; preds = %92
  %101 = load i32, i32* @LogPHASE, align 4
  %102 = load %struct.physical*, %struct.physical** %3, align 8
  %103 = getelementptr inbounds %struct.physical, %struct.physical* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = call i32 (i32, i8*, ...) @log_Printf(i32 %101, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %105)
  %107 = load %struct.physical*, %struct.physical** %3, align 8
  %108 = getelementptr inbounds %struct.physical, %struct.physical* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @close(i32 %109)
  %111 = load %struct.physical*, %struct.physical** %3, align 8
  %112 = getelementptr inbounds %struct.physical, %struct.physical* %111, i32 0, i32 0
  store i32 -1, i32* %112, align 8
  store %struct.device* null, %struct.device** %2, align 8
  br label %214

113:                                              ; preds = %92
  %114 = load i32, i32* %11, align 4
  %115 = sext i32 %114 to i64
  %116 = icmp eq i64 %115, 4
  br i1 %116, label %117, label %184

117:                                              ; preds = %113
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* @SOCK_DGRAM, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %184

121:                                              ; preds = %117
  %122 = bitcast %struct.sockaddr_in* %12 to %struct.sockaddr*
  store %struct.sockaddr* %122, %struct.sockaddr** %13, align 8
  %123 = call %struct.udpdevice* @malloc(i32 8)
  store %struct.udpdevice* %123, %struct.udpdevice** %8, align 8
  %124 = icmp eq %struct.udpdevice* %123, null
  br i1 %124, label %125, label %134

125:                                              ; preds = %121
  %126 = load i32, i32* @LogWARN, align 4
  %127 = load %struct.physical*, %struct.physical** %3, align 8
  %128 = getelementptr inbounds %struct.physical, %struct.physical* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @errno, align 4
  %132 = call i32 @strerror(i32 %131)
  %133 = call i32 (i32, i8*, ...) @log_Printf(i32 %126, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %130, i32 %132)
  store %struct.device* null, %struct.device** %2, align 8
  br label %214

134:                                              ; preds = %121
  %135 = load %struct.physical*, %struct.physical** %3, align 8
  %136 = getelementptr inbounds %struct.physical, %struct.physical* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.sockaddr*, %struct.sockaddr** %13, align 8
  %139 = call i64 @getpeername(i32 %137, %struct.sockaddr* %138, i32* %11)
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %151

141:                                              ; preds = %134
  %142 = load i32, i32* @LogPHASE, align 4
  %143 = load %struct.physical*, %struct.physical** %3, align 8
  %144 = getelementptr inbounds %struct.physical, %struct.physical* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = call i32 (i32, i8*, ...) @log_Printf(i32 %142, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %146)
  %148 = load i32, i32* @UDP_CONNECTED, align 4
  %149 = load %struct.udpdevice*, %struct.udpdevice** %8, align 8
  %150 = getelementptr inbounds %struct.udpdevice, %struct.udpdevice* %149, i32 0, i32 1
  store i32 %148, i32* %150, align 4
  br label %183

151:                                              ; preds = %134
  %152 = load i32, i32* @LogPHASE, align 4
  %153 = load %struct.physical*, %struct.physical** %3, align 8
  %154 = getelementptr inbounds %struct.physical, %struct.physical* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = call i32 (i32, i8*, ...) @log_Printf(i32 %152, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %156)
  %158 = load i32, i32* @UDP_MAYBEUNCONNECTED, align 4
  %159 = load %struct.udpdevice*, %struct.udpdevice** %8, align 8
  %160 = getelementptr inbounds %struct.udpdevice, %struct.udpdevice* %159, i32 0, i32 1
  store i32 %158, i32* %160, align 4
  %161 = load %struct.physical*, %struct.physical** %3, align 8
  %162 = getelementptr inbounds %struct.physical, %struct.physical* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @OPEN_PASSIVE, align 8
  %168 = icmp ne i64 %166, %167
  br i1 %168, label %169, label %182

169:                                              ; preds = %151
  %170 = load i32, i32* @LogPHASE, align 4
  %171 = load %struct.physical*, %struct.physical** %3, align 8
  %172 = getelementptr inbounds %struct.physical, %struct.physical* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = call i32 (i32, i8*, ...) @log_Printf(i32 %170, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %174)
  %176 = load i64, i64* @OPEN_PASSIVE, align 8
  %177 = load %struct.physical*, %struct.physical** %3, align 8
  %178 = getelementptr inbounds %struct.physical, %struct.physical* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 0
  store i64 %176, i64* %181, align 8
  br label %182

182:                                              ; preds = %169, %151
  br label %183

183:                                              ; preds = %182, %141
  br label %184

184:                                              ; preds = %183, %117, %113
  br label %185

185:                                              ; preds = %184, %86, %80
  br label %186

186:                                              ; preds = %185, %79
  %187 = load %struct.udpdevice*, %struct.udpdevice** %8, align 8
  %188 = icmp ne %struct.udpdevice* %187, null
  br i1 %188, label %189, label %213

189:                                              ; preds = %186
  %190 = load %struct.udpdevice*, %struct.udpdevice** %8, align 8
  %191 = getelementptr inbounds %struct.udpdevice, %struct.udpdevice* %190, i32 0, i32 0
  %192 = call i32 @memcpy(%struct.device* %191, i32* @baseudpdevice, i32 4)
  %193 = load %struct.physical*, %struct.physical** %3, align 8
  %194 = load %struct.udpdevice*, %struct.udpdevice** %8, align 8
  %195 = getelementptr inbounds %struct.udpdevice, %struct.udpdevice* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.device, %struct.device* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @PHYSICAL_FORCE_SYNC, align 4
  %199 = call i32 @physical_SetupStack(%struct.physical* %193, i32 %197, i32 %198)
  %200 = load %struct.physical*, %struct.physical** %3, align 8
  %201 = getelementptr inbounds %struct.physical, %struct.physical* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* @CD_DEFAULT, align 8
  %206 = icmp ne i64 %204, %205
  br i1 %206, label %207, label %210

207:                                              ; preds = %189
  %208 = load i32, i32* @LogWARN, align 4
  %209 = call i32 (i32, i8*, ...) @log_Printf(i32 %208, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  br label %210

210:                                              ; preds = %207, %189
  %211 = load %struct.udpdevice*, %struct.udpdevice** %8, align 8
  %212 = getelementptr inbounds %struct.udpdevice, %struct.udpdevice* %211, i32 0, i32 0
  store %struct.device* %212, %struct.device** %2, align 8
  br label %214

213:                                              ; preds = %186
  store %struct.device* null, %struct.device** %2, align 8
  br label %214

214:                                              ; preds = %213, %210, %125, %100, %46
  %215 = load %struct.device*, %struct.device** %2, align 8
  ret %struct.device* %215
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local %struct.udpdevice* @udp_CreateDevice(%struct.physical*, i8*, i8*) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @getsockopt(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @log_Printf(i32, i8*, ...) #1

declare dso_local i32 @close(i32) #1

declare dso_local %struct.udpdevice* @malloc(i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @getpeername(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @memcpy(%struct.device*, i32*, i32) #1

declare dso_local i32 @physical_SetupStack(%struct.physical*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
