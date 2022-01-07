; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_server.c_server_Read.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_server.c_server_Read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdescriptor = type { i32 }
%struct.bundle = type { i32 }
%struct.server = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sockaddr_storage = type { i32 }
%struct.sockaddr = type { i64, i32 }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr_in6 = type { i32 }
%struct.prompt = type { i32, %struct.prompt*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i8* }
%struct.ncpaddr = type { i32 }

@LogERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"server_Read: accept(): %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@LogPHASE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Connected to local client.\0A\00", align 1
@LogALERT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [62 x i8] c"Rejected client connection from %s:%u(invalid port number) !\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Connected to client from %s:%u\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Unrecognised access !\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Connection refused.\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"ip\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"%s:%u\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"ip6\00", align 1
@log_PromptListChanged = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fdescriptor*, %struct.bundle*, i32*)* @server_Read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @server_Read(%struct.fdescriptor* %0, %struct.bundle* %1, i32* %2) #0 {
  %4 = alloca %struct.fdescriptor*, align 8
  %5 = alloca %struct.bundle*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.server*, align 8
  %8 = alloca %struct.sockaddr_storage, align 4
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca %struct.sockaddr_in*, align 8
  %11 = alloca %struct.sockaddr_in6*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.prompt*, align 8
  %15 = alloca %struct.ncpaddr, align 4
  store %struct.fdescriptor* %0, %struct.fdescriptor** %4, align 8
  store %struct.bundle* %1, %struct.bundle** %5, align 8
  store i32* %2, i32** %6, align 8
  %16 = load %struct.fdescriptor*, %struct.fdescriptor** %4, align 8
  %17 = call %struct.server* @descriptor2server(%struct.fdescriptor* %16)
  store %struct.server* %17, %struct.server** %7, align 8
  %18 = bitcast %struct.sockaddr_storage* %8 to %struct.sockaddr*
  store %struct.sockaddr* %18, %struct.sockaddr** %9, align 8
  %19 = bitcast %struct.sockaddr_storage* %8 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %19, %struct.sockaddr_in** %10, align 8
  %20 = bitcast %struct.sockaddr_storage* %8 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %20, %struct.sockaddr_in6** %11, align 8
  store i32 4, i32* %12, align 4
  %21 = load %struct.server*, %struct.server** %7, align 8
  %22 = getelementptr inbounds %struct.server, %struct.server* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sge i64 %23, 0
  br i1 %24, label %25, label %55

25:                                               ; preds = %3
  %26 = load %struct.server*, %struct.server** %7, align 8
  %27 = getelementptr inbounds %struct.server, %struct.server* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = call i64 @FD_ISSET(i64 %28, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %55

32:                                               ; preds = %25
  %33 = load %struct.server*, %struct.server** %7, align 8
  %34 = getelementptr inbounds %struct.server, %struct.server* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %37 = call i32 @accept(i64 %35, %struct.sockaddr* %36, i32* %12)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %32
  %41 = load i32, i32* @LogERROR, align 4
  %42 = load i32, i32* @errno, align 4
  %43 = call i32 @strerror(i32 %42)
  %44 = call i32 (i32, i8*, ...) @log_Printf(i32 %41, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %54

45:                                               ; preds = %32
  %46 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %47 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32, i32* %13, align 4
  %52 = call i32 @close(i32 %51)
  store i32 -1, i32* %13, align 4
  br label %53

53:                                               ; preds = %50, %45
  br label %54

54:                                               ; preds = %53, %40
  br label %56

55:                                               ; preds = %25, %3
  store i32 -1, i32* %13, align 4
  br label %56

56:                                               ; preds = %55, %54
  %57 = load i32, i32* %13, align 4
  %58 = icmp sge i32 %57, 0
  br i1 %58, label %59, label %124

59:                                               ; preds = %56
  %60 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %61 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  switch i32 %62, label %118 [
    i32 128, label %63
    i32 130, label %66
    i32 129, label %92
  ]

63:                                               ; preds = %59
  %64 = load i32, i32* @LogPHASE, align 4
  %65 = call i32 (i32, i8*, ...) @log_Printf(i32 %64, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %123

66:                                               ; preds = %59
  %67 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %68 = call i32 @ncpaddr_setsa(%struct.ncpaddr* %15, %struct.sockaddr* %67)
  %69 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %70 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @ntohs(i32 %71)
  %73 = icmp slt i32 %72, 1024
  br i1 %73, label %74, label %84

74:                                               ; preds = %66
  %75 = load i32, i32* @LogALERT, align 4
  %76 = call i8* @ncpaddr_ntoa(%struct.ncpaddr* %15)
  %77 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %78 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @ntohs(i32 %79)
  %81 = call i32 (i32, i8*, ...) @log_Printf(i32 %75, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i8* %76, i32 %80)
  %82 = load i32, i32* %13, align 4
  %83 = call i32 @close(i32 %82)
  store i32 -1, i32* %13, align 4
  br label %123

84:                                               ; preds = %66
  %85 = load i32, i32* @LogPHASE, align 4
  %86 = call i8* @ncpaddr_ntoa(%struct.ncpaddr* %15)
  %87 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %88 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @ntohs(i32 %89)
  %91 = call i32 (i32, i8*, ...) @log_Printf(i32 %85, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* %86, i32 %90)
  br label %123

92:                                               ; preds = %59
  %93 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %94 = call i32 @ncpaddr_setsa(%struct.ncpaddr* %15, %struct.sockaddr* %93)
  %95 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %11, align 8
  %96 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @ntohs(i32 %97)
  %99 = icmp slt i32 %98, 1024
  br i1 %99, label %100, label %110

100:                                              ; preds = %92
  %101 = load i32, i32* @LogALERT, align 4
  %102 = call i8* @ncpaddr_ntoa(%struct.ncpaddr* %15)
  %103 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %11, align 8
  %104 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @ntohs(i32 %105)
  %107 = call i32 (i32, i8*, ...) @log_Printf(i32 %101, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i8* %102, i32 %106)
  %108 = load i32, i32* %13, align 4
  %109 = call i32 @close(i32 %108)
  store i32 -1, i32* %13, align 4
  br label %123

110:                                              ; preds = %92
  %111 = load i32, i32* @LogPHASE, align 4
  %112 = call i8* @ncpaddr_ntoa(%struct.ncpaddr* %15)
  %113 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %11, align 8
  %114 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @ntohs(i32 %115)
  %117 = call i32 (i32, i8*, ...) @log_Printf(i32 %111, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* %112, i32 %116)
  br label %123

118:                                              ; preds = %59
  %119 = load i32, i32* %13, align 4
  %120 = call i32 @write(i32 %119, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 22)
  %121 = load i32, i32* %13, align 4
  %122 = call i32 @close(i32 %121)
  store i32 -1, i32* %13, align 4
  br label %123

123:                                              ; preds = %118, %110, %100, %84, %74, %63
  br label %124

124:                                              ; preds = %123, %56
  %125 = load i32, i32* %13, align 4
  %126 = icmp sge i32 %125, 0
  br i1 %126, label %127, label %194

127:                                              ; preds = %124
  %128 = load %struct.server*, %struct.server** %7, align 8
  %129 = load %struct.bundle*, %struct.bundle** %5, align 8
  %130 = load i32, i32* %13, align 4
  %131 = call %struct.prompt* @prompt_Create(%struct.server* %128, %struct.bundle* %129, i32 %130)
  store %struct.prompt* %131, %struct.prompt** %14, align 8
  %132 = icmp eq %struct.prompt* %131, null
  br i1 %132, label %133, label %138

133:                                              ; preds = %127
  %134 = load i32, i32* %13, align 4
  %135 = call i32 @write(i32 %134, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 20)
  %136 = load i32, i32* %13, align 4
  %137 = call i32 @close(i32 %136)
  br label %193

138:                                              ; preds = %127
  %139 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %140 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  switch i32 %141, label %188 [
    i32 128, label %142
    i32 130, label %160
    i32 129, label %174
  ]

142:                                              ; preds = %138
  %143 = load %struct.prompt*, %struct.prompt** %14, align 8
  %144 = getelementptr inbounds %struct.prompt, %struct.prompt* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8** %145, align 8
  %146 = load %struct.prompt*, %struct.prompt** %14, align 8
  %147 = getelementptr inbounds %struct.prompt, %struct.prompt* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 1
  %149 = load i8*, i8** %148, align 8
  %150 = load %struct.server*, %struct.server** %7, align 8
  %151 = getelementptr inbounds %struct.server, %struct.server* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @strncpy(i8* %149, i32 %153, i32 7)
  %155 = load %struct.prompt*, %struct.prompt** %14, align 8
  %156 = getelementptr inbounds %struct.prompt, %struct.prompt* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 1
  %158 = load i8*, i8** %157, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 7
  store i8 0, i8* %159, align 1
  br label %188

160:                                              ; preds = %138
  %161 = load %struct.prompt*, %struct.prompt** %14, align 8
  %162 = getelementptr inbounds %struct.prompt, %struct.prompt* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8** %163, align 8
  %164 = load %struct.prompt*, %struct.prompt** %14, align 8
  %165 = getelementptr inbounds %struct.prompt, %struct.prompt* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 1
  %167 = load i8*, i8** %166, align 8
  %168 = call i8* @ncpaddr_ntoa(%struct.ncpaddr* %15)
  %169 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %170 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @ntohs(i32 %171)
  %173 = call i32 @snprintf(i8* %167, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* %168, i32 %172)
  br label %188

174:                                              ; preds = %138
  %175 = load %struct.prompt*, %struct.prompt** %14, align 8
  %176 = getelementptr inbounds %struct.prompt, %struct.prompt* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8** %177, align 8
  %178 = load %struct.prompt*, %struct.prompt** %14, align 8
  %179 = getelementptr inbounds %struct.prompt, %struct.prompt* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 1
  %181 = load i8*, i8** %180, align 8
  %182 = call i8* @ncpaddr_ntoa(%struct.ncpaddr* %15)
  %183 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %11, align 8
  %184 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @ntohs(i32 %185)
  %187 = call i32 @snprintf(i8* %181, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* %182, i32 %186)
  br label %188

188:                                              ; preds = %138, %174, %160, %142
  %189 = load %struct.prompt*, %struct.prompt** %14, align 8
  %190 = call i32 @prompt_TtyCommandMode(%struct.prompt* %189)
  %191 = load %struct.prompt*, %struct.prompt** %14, align 8
  %192 = call i32 @prompt_Required(%struct.prompt* %191)
  br label %193

193:                                              ; preds = %188, %133
  br label %194

194:                                              ; preds = %193, %124
  store i64 0, i64* @log_PromptListChanged, align 8
  %195 = call %struct.prompt* (...) @log_PromptList()
  store %struct.prompt* %195, %struct.prompt** %14, align 8
  br label %196

196:                                              ; preds = %216, %194
  %197 = load %struct.prompt*, %struct.prompt** %14, align 8
  %198 = icmp ne %struct.prompt* %197, null
  br i1 %198, label %199, label %220

199:                                              ; preds = %196
  %200 = load %struct.prompt*, %struct.prompt** %14, align 8
  %201 = getelementptr inbounds %struct.prompt, %struct.prompt* %200, i32 0, i32 0
  %202 = load i32*, i32** %6, align 8
  %203 = call i64 @descriptor_IsSet(i32* %201, i32* %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %215

205:                                              ; preds = %199
  %206 = load %struct.prompt*, %struct.prompt** %14, align 8
  %207 = getelementptr inbounds %struct.prompt, %struct.prompt* %206, i32 0, i32 0
  %208 = load %struct.bundle*, %struct.bundle** %5, align 8
  %209 = load i32*, i32** %6, align 8
  %210 = call i32 @descriptor_Read(i32* %207, %struct.bundle* %208, i32* %209)
  %211 = load i64, i64* @log_PromptListChanged, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %205
  br label %220

214:                                              ; preds = %205
  br label %215

215:                                              ; preds = %214, %199
  br label %216

216:                                              ; preds = %215
  %217 = load %struct.prompt*, %struct.prompt** %14, align 8
  %218 = getelementptr inbounds %struct.prompt, %struct.prompt* %217, i32 0, i32 1
  %219 = load %struct.prompt*, %struct.prompt** %218, align 8
  store %struct.prompt* %219, %struct.prompt** %14, align 8
  br label %196

220:                                              ; preds = %213, %196
  ret void
}

declare dso_local %struct.server* @descriptor2server(%struct.fdescriptor*) #1

declare dso_local i64 @FD_ISSET(i64, i32*) #1

declare dso_local i32 @accept(i64, %struct.sockaddr*, i32*) #1

declare dso_local i32 @log_Printf(i32, i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @ncpaddr_setsa(%struct.ncpaddr*, %struct.sockaddr*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i8* @ncpaddr_ntoa(%struct.ncpaddr*) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local %struct.prompt* @prompt_Create(%struct.server*, %struct.bundle*, i32) #1

declare dso_local i32 @strncpy(i8*, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #1

declare dso_local i32 @prompt_TtyCommandMode(%struct.prompt*) #1

declare dso_local i32 @prompt_Required(%struct.prompt*) #1

declare dso_local %struct.prompt* @log_PromptList(...) #1

declare dso_local i64 @descriptor_IsSet(i32*, i32*) #1

declare dso_local i32 @descriptor_Read(i32*, %struct.bundle*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
