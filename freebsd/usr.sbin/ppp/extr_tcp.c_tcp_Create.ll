; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_tcp.c_tcp_Create.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_tcp.c_tcp_Create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.physical = type { i32, %struct.TYPE_8__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i8*, i8* }
%struct.TYPE_5__ = type { i32 }
%struct.stat = type { i32 }
%struct.sockaddr_in = type { i64, i32, i32 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"/tcp\00", align 1
@LogDEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"%s: Opened tcp socket %s\0A\00", align 1
@S_IFSOCK = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_TYPE = common dso_local global i32 0, align 4
@LogPHASE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"%s: Link is a closed socket !\0A\00", align 1
@SOCK_STREAM = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [39 x i8] c"%s: Link is SOCK_STREAM, but not inet\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"%s: Link is a tcp socket\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"%s:%d/tcp\00", align 1
@tcpdevice = common dso_local global %struct.device zeroinitializer, align 4
@PHYSICAL_FORCE_ASYNC = common dso_local global i32 0, align 4
@CD_DEFAULT = common dso_local global i64 0, align 8
@LogWARN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"Carrier settings ignored\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.device* @tcp_Create(%struct.physical* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.physical*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.stat, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sockaddr_in, align 8
  %12 = alloca %struct.sockaddr*, align 8
  store %struct.physical* %0, %struct.physical** %3, align 8
  %13 = load %struct.physical*, %struct.physical** %3, align 8
  %14 = getelementptr inbounds %struct.physical, %struct.physical* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %107

17:                                               ; preds = %1
  %18 = load %struct.physical*, %struct.physical** %3, align 8
  %19 = getelementptr inbounds %struct.physical, %struct.physical* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i8* @strchr(i8* %21, i8 signext 58)
  store i8* %22, i8** %4, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %106

24:                                               ; preds = %17
  %25 = load i8*, i8** %4, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  %27 = call i8* @strchr(i8* %26, i8 signext 58)
  %28 = icmp ne i8* %27, null
  br i1 %28, label %106, label %29

29:                                               ; preds = %24
  %30 = load i8*, i8** %4, align 8
  store i8 0, i8* %30, align 1
  %31 = load %struct.physical*, %struct.physical** %3, align 8
  %32 = getelementptr inbounds %struct.physical, %struct.physical* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %5, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  store i8* %36, i8** %6, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = call i8* @strchr(i8* %37, i8 signext 47)
  store i8* %38, i8** %7, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %29
  %42 = load i8*, i8** %7, align 8
  %43 = call i64 @strcasecmp(i8* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i8*, i8** %4, align 8
  store i8 58, i8* %46, align 1
  store %struct.device* null, %struct.device** %2, align 8
  br label %229

47:                                               ; preds = %41, %29
  %48 = load i8*, i8** %7, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load %struct.physical*, %struct.physical** %3, align 8
  %52 = getelementptr inbounds %struct.physical, %struct.physical* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %52, align 8
  %55 = load i8*, i8** %7, align 8
  store i8 0, i8* %55, align 1
  br label %56

56:                                               ; preds = %50, %47
  %57 = load i8*, i8** %5, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %98

61:                                               ; preds = %56
  %62 = load i8*, i8** %6, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %98

66:                                               ; preds = %61
  %67 = load %struct.physical*, %struct.physical** %3, align 8
  %68 = getelementptr inbounds %struct.physical, %struct.physical* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i8*, i8** %5, align 8
  %72 = load i8*, i8** %6, align 8
  %73 = call i32 @tcp_OpenConnection(i32 %70, i8* %71, i8* %72)
  %74 = load %struct.physical*, %struct.physical** %3, align 8
  %75 = getelementptr inbounds %struct.physical, %struct.physical* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load i8*, i8** %4, align 8
  store i8 58, i8* %76, align 1
  %77 = load i8*, i8** %7, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %66
  %80 = load i8*, i8** %7, align 8
  store i8 47, i8* %80, align 1
  br label %81

81:                                               ; preds = %79, %66
  %82 = load %struct.physical*, %struct.physical** %3, align 8
  %83 = getelementptr inbounds %struct.physical, %struct.physical* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp sge i32 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %81
  %87 = load i32, i32* @LogDEBUG, align 4
  %88 = load %struct.physical*, %struct.physical** %3, align 8
  %89 = getelementptr inbounds %struct.physical, %struct.physical* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.physical*, %struct.physical** %3, align 8
  %93 = getelementptr inbounds %struct.physical, %struct.physical* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 (i32, i8*, ...) @log_Printf(i32 %87, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %91, i8* %95)
  br label %97

97:                                               ; preds = %86, %81
  br label %105

98:                                               ; preds = %61, %56
  %99 = load i8*, i8** %7, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = load i8*, i8** %7, align 8
  store i8 47, i8* %102, align 1
  br label %103

103:                                              ; preds = %101, %98
  %104 = load i8*, i8** %4, align 8
  store i8 58, i8* %104, align 1
  br label %105

105:                                              ; preds = %103, %97
  br label %106

106:                                              ; preds = %105, %24, %17
  br label %107

107:                                              ; preds = %106, %1
  %108 = load %struct.physical*, %struct.physical** %3, align 8
  %109 = getelementptr inbounds %struct.physical, %struct.physical* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp sge i32 %110, 0
  br i1 %111, label %112, label %228

112:                                              ; preds = %107
  %113 = load %struct.physical*, %struct.physical** %3, align 8
  %114 = getelementptr inbounds %struct.physical, %struct.physical* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @fstat(i32 %115, %struct.stat* %8)
  %117 = icmp ne i32 %116, -1
  br i1 %117, label %118, label %227

118:                                              ; preds = %112
  %119 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @S_IFSOCK, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %227

124:                                              ; preds = %118
  store i32 4, i32* %10, align 4
  %125 = load %struct.physical*, %struct.physical** %3, align 8
  %126 = getelementptr inbounds %struct.physical, %struct.physical* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @SOL_SOCKET, align 4
  %129 = load i32, i32* @SO_TYPE, align 4
  %130 = call i32 @getsockopt(i32 %127, i32 %128, i32 %129, i32* %9, i32* %10)
  %131 = icmp eq i32 %130, -1
  br i1 %131, label %132, label %145

132:                                              ; preds = %124
  %133 = load i32, i32* @LogPHASE, align 4
  %134 = load %struct.physical*, %struct.physical** %3, align 8
  %135 = getelementptr inbounds %struct.physical, %struct.physical* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i32 (i32, i8*, ...) @log_Printf(i32 %133, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %137)
  %139 = load %struct.physical*, %struct.physical** %3, align 8
  %140 = getelementptr inbounds %struct.physical, %struct.physical* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @close(i32 %141)
  %143 = load %struct.physical*, %struct.physical** %3, align 8
  %144 = getelementptr inbounds %struct.physical, %struct.physical* %143, i32 0, i32 0
  store i32 -1, i32* %144, align 8
  store %struct.device* null, %struct.device** %2, align 8
  br label %229

145:                                              ; preds = %124
  %146 = load i32, i32* %10, align 4
  %147 = sext i32 %146 to i64
  %148 = icmp eq i64 %147, 4
  br i1 %148, label %149, label %226

149:                                              ; preds = %145
  %150 = load i32, i32* %9, align 4
  %151 = load i32, i32* @SOCK_STREAM, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %226

153:                                              ; preds = %149
  %154 = bitcast %struct.sockaddr_in* %11 to %struct.sockaddr*
  store %struct.sockaddr* %154, %struct.sockaddr** %12, align 8
  %155 = load %struct.physical*, %struct.physical** %3, align 8
  %156 = getelementptr inbounds %struct.physical, %struct.physical* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  %158 = load i8*, i8** %157, align 8
  %159 = load i8, i8* %158, align 1
  %160 = sext i8 %159 to i32
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %210

162:                                              ; preds = %153
  store i32 16, i32* %10, align 4
  %163 = load %struct.physical*, %struct.physical** %3, align 8
  %164 = getelementptr inbounds %struct.physical, %struct.physical* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %167 = call i64 @getpeername(i32 %165, %struct.sockaddr* %166, i32* %10)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %178, label %169

169:                                              ; preds = %162
  %170 = load i32, i32* %10, align 4
  %171 = sext i32 %170 to i64
  %172 = icmp ne i64 %171, 16
  br i1 %172, label %178, label %173

173:                                              ; preds = %169
  %174 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %11, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @AF_INET, align 8
  %177 = icmp ne i64 %175, %176
  br i1 %177, label %178, label %185

178:                                              ; preds = %173, %169, %162
  %179 = load i32, i32* @LogDEBUG, align 4
  %180 = load %struct.physical*, %struct.physical** %3, align 8
  %181 = getelementptr inbounds %struct.physical, %struct.physical* %180, i32 0, i32 3
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = call i32 (i32, i8*, ...) @log_Printf(i32 %179, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %183)
  store %struct.device* null, %struct.device** %2, align 8
  br label %229

185:                                              ; preds = %173
  %186 = load i32, i32* @LogPHASE, align 4
  %187 = load %struct.physical*, %struct.physical** %3, align 8
  %188 = getelementptr inbounds %struct.physical, %struct.physical* %187, i32 0, i32 3
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = call i32 (i32, i8*, ...) @log_Printf(i32 %186, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %190)
  %192 = load %struct.physical*, %struct.physical** %3, align 8
  %193 = getelementptr inbounds %struct.physical, %struct.physical* %192, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 0
  %195 = load i8*, i8** %194, align 8
  %196 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %11, i32 0, i32 2
  %197 = load i32, i32* %196, align 4
  %198 = call i8* @inet_ntoa(i32 %197)
  %199 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %11, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  %201 = call i32 @ntohs(i32 %200)
  %202 = call i32 @snprintf(i8* %195, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %198, i32 %201)
  %203 = load %struct.physical*, %struct.physical** %3, align 8
  %204 = getelementptr inbounds %struct.physical, %struct.physical* %203, i32 0, i32 2
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 0
  %206 = load i8*, i8** %205, align 8
  %207 = load %struct.physical*, %struct.physical** %3, align 8
  %208 = getelementptr inbounds %struct.physical, %struct.physical* %207, i32 0, i32 2
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 1
  store i8* %206, i8** %209, align 8
  br label %210

210:                                              ; preds = %185, %153
  %211 = load %struct.physical*, %struct.physical** %3, align 8
  %212 = load i32, i32* getelementptr inbounds (%struct.device, %struct.device* @tcpdevice, i32 0, i32 0), align 4
  %213 = load i32, i32* @PHYSICAL_FORCE_ASYNC, align 4
  %214 = call i32 @physical_SetupStack(%struct.physical* %211, i32 %212, i32 %213)
  %215 = load %struct.physical*, %struct.physical** %3, align 8
  %216 = getelementptr inbounds %struct.physical, %struct.physical* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* @CD_DEFAULT, align 8
  %221 = icmp ne i64 %219, %220
  br i1 %221, label %222, label %225

222:                                              ; preds = %210
  %223 = load i32, i32* @LogWARN, align 4
  %224 = call i32 (i32, i8*, ...) @log_Printf(i32 %223, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  br label %225

225:                                              ; preds = %222, %210
  store %struct.device* @tcpdevice, %struct.device** %2, align 8
  br label %229

226:                                              ; preds = %149, %145
  br label %227

227:                                              ; preds = %226, %118, %112
  br label %228

228:                                              ; preds = %227, %107
  store %struct.device* null, %struct.device** %2, align 8
  br label %229

229:                                              ; preds = %228, %225, %178, %132, %45
  %230 = load %struct.device*, %struct.device** %2, align 8
  ret %struct.device* %230
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @tcp_OpenConnection(i32, i8*, i8*) #1

declare dso_local i32 @log_Printf(i32, i8*, ...) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @getsockopt(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @getpeername(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #1

declare dso_local i8* @inet_ntoa(i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @physical_SetupStack(%struct.physical*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
