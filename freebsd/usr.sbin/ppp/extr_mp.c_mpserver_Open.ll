; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_mp.c_mpserver_Open.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_mp.c_mpserver_Open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpserver = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.peerid = type { i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i64 }
%struct.sockaddr = type { i32 }

@LogALERT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Internal error !  mpserver already open\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"%sppp-%s-%02x-\00", align 1
@_PATH_VARRUN = common dso_local global i8* null, align 8
@LogERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"mpserver: snprintf(): %s\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@MPSERVER_FAILED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@AF_LOCAL = common dso_local global i32 0, align 4
@PF_LOCAL = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"mpserver: socket(): %s\0A\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@EADDRINUSE = common dso_local global i64 0, align 8
@LogPHASE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [46 x i8] c"mpserver: can't create bundle socket %s (%s)\0A\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"mpserver: can't connect to bundle socket %s (%s)\0A\00", align 1
@ECONNREFUSED = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [44 x i8] c"          The previous server died badly !\0A\00", align 1
@MPSERVER_CONNECTED = common dso_local global i32 0, align 4
@MPSERVER_LISTENING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpserver_Open(%struct.mpserver* %0, %struct.peerid* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mpserver*, align 8
  %5 = alloca %struct.peerid*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mpserver* %0, %struct.mpserver** %4, align 8
  store %struct.peerid* %1, %struct.peerid** %5, align 8
  %9 = load %struct.mpserver*, %struct.mpserver** %4, align 8
  %10 = getelementptr inbounds %struct.mpserver, %struct.mpserver* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, -1
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load i32, i32* @LogALERT, align 4
  %15 = call i32 (i32, i8*, ...) @log_Printf(i32 %14, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.mpserver*, %struct.mpserver** %4, align 8
  %17 = call i32 @mpserver_Close(%struct.mpserver* %16)
  br label %18

18:                                               ; preds = %13, %2
  %19 = load %struct.mpserver*, %struct.mpserver** %4, align 8
  %20 = getelementptr inbounds %struct.mpserver, %struct.mpserver* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i8*, i8** @_PATH_VARRUN, align 8
  %24 = load %struct.peerid*, %struct.peerid** %5, align 8
  %25 = getelementptr inbounds %struct.peerid, %struct.peerid* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = load %struct.peerid*, %struct.peerid** %5, align 8
  %28 = getelementptr inbounds %struct.peerid, %struct.peerid* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %22, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %23, i8* %26, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %18
  %35 = load i32, i32* @LogERROR, align 4
  %36 = load i64, i64* @errno, align 8
  %37 = call i32 @strerror(i64 %36)
  %38 = call i32 (i32, i8*, ...) @log_Printf(i32 %35, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @MPSERVER_FAILED, align 4
  store i32 %39, i32* %3, align 4
  br label %180

40:                                               ; preds = %18
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %77, %40
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.peerid*, %struct.peerid** %5, align 8
  %44 = getelementptr inbounds %struct.peerid, %struct.peerid* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %42, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = icmp ult i64 %50, 2
  br label %52

52:                                               ; preds = %48, %41
  %53 = phi i1 [ false, %41 ], [ %51, %48 ]
  br i1 %53, label %54, label %80

54:                                               ; preds = %52
  %55 = load %struct.mpserver*, %struct.mpserver** %4, align 8
  %56 = getelementptr inbounds %struct.mpserver, %struct.mpserver* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %58, %59
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = sub i64 4, %62
  %64 = trunc i64 %63 to i32
  %65 = load %struct.peerid*, %struct.peerid** %5, align 8
  %66 = getelementptr inbounds %struct.peerid, %struct.peerid* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %68, %70
  %72 = inttoptr i64 %71 to i32*
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %60, i32 %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 2
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %54
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %6, align 4
  br label %41

80:                                               ; preds = %52
  %81 = load i32, i32* @AF_LOCAL, align 4
  %82 = load %struct.mpserver*, %struct.mpserver** %4, align 8
  %83 = getelementptr inbounds %struct.mpserver, %struct.mpserver* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 2
  store i32 %81, i32* %84, align 4
  %85 = load %struct.mpserver*, %struct.mpserver** %4, align 8
  %86 = getelementptr inbounds %struct.mpserver, %struct.mpserver* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  store i32 12, i32* %87, align 4
  %88 = load i32, i32* @PF_LOCAL, align 4
  %89 = load i32, i32* @SOCK_DGRAM, align 4
  %90 = call i32 @ID0socket(i32 %88, i32 %89, i32 0)
  %91 = load %struct.mpserver*, %struct.mpserver** %4, align 8
  %92 = getelementptr inbounds %struct.mpserver, %struct.mpserver* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 4
  %93 = load %struct.mpserver*, %struct.mpserver** %4, align 8
  %94 = getelementptr inbounds %struct.mpserver, %struct.mpserver* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %80
  %98 = load i32, i32* @LogERROR, align 4
  %99 = load i64, i64* @errno, align 8
  %100 = call i32 @strerror(i64 %99)
  %101 = call i32 (i32, i8*, ...) @log_Printf(i32 %98, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* @MPSERVER_FAILED, align 4
  store i32 %102, i32* %3, align 4
  br label %180

103:                                              ; preds = %80
  %104 = load %struct.mpserver*, %struct.mpserver** %4, align 8
  %105 = getelementptr inbounds %struct.mpserver, %struct.mpserver* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @SOL_SOCKET, align 4
  %108 = load i32, i32* @SO_REUSEADDR, align 4
  %109 = load %struct.mpserver*, %struct.mpserver** %4, align 8
  %110 = getelementptr inbounds %struct.mpserver, %struct.mpserver* %109, i32 0, i32 1
  %111 = bitcast %struct.TYPE_5__* %110 to %struct.sockaddr*
  %112 = call i32 @setsockopt(i32 %106, i32 %107, i32 %108, %struct.sockaddr* %111, i32 12)
  %113 = call i32 @umask(i32 127)
  store i32 %113, i32* %8, align 4
  %114 = load %struct.mpserver*, %struct.mpserver** %4, align 8
  %115 = getelementptr inbounds %struct.mpserver, %struct.mpserver* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.mpserver*, %struct.mpserver** %4, align 8
  %118 = getelementptr inbounds %struct.mpserver, %struct.mpserver* %117, i32 0, i32 1
  %119 = call i64 @ID0bind_un(i32 %116, %struct.TYPE_5__* %118)
  %120 = icmp slt i64 %119, 0
  br i1 %120, label %121, label %178

121:                                              ; preds = %103
  %122 = load i64, i64* @errno, align 8
  %123 = load i64, i64* @EADDRINUSE, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %143

125:                                              ; preds = %121
  %126 = load i32, i32* @LogPHASE, align 4
  %127 = load %struct.mpserver*, %struct.mpserver** %4, align 8
  %128 = getelementptr inbounds %struct.mpserver, %struct.mpserver* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i64, i64* @errno, align 8
  %132 = call i32 @strerror(i64 %131)
  %133 = call i32 (i32, i8*, ...) @log_Printf(i32 %126, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i32 %130, i32 %132)
  %134 = load i32, i32* %8, align 4
  %135 = call i32 @umask(i32 %134)
  %136 = load %struct.mpserver*, %struct.mpserver** %4, align 8
  %137 = getelementptr inbounds %struct.mpserver, %struct.mpserver* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @close(i32 %138)
  %140 = load %struct.mpserver*, %struct.mpserver** %4, align 8
  %141 = getelementptr inbounds %struct.mpserver, %struct.mpserver* %140, i32 0, i32 0
  store i32 -1, i32* %141, align 4
  %142 = load i32, i32* @MPSERVER_FAILED, align 4
  store i32 %142, i32* %3, align 4
  br label %180

143:                                              ; preds = %121
  %144 = load i32, i32* %8, align 4
  %145 = call i32 @umask(i32 %144)
  %146 = load %struct.mpserver*, %struct.mpserver** %4, align 8
  %147 = getelementptr inbounds %struct.mpserver, %struct.mpserver* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.mpserver*, %struct.mpserver** %4, align 8
  %150 = getelementptr inbounds %struct.mpserver, %struct.mpserver* %149, i32 0, i32 1
  %151 = call i64 @ID0connect_un(i32 %148, %struct.TYPE_5__* %150)
  %152 = icmp slt i64 %151, 0
  br i1 %152, label %153, label %176

153:                                              ; preds = %143
  %154 = load i32, i32* @LogPHASE, align 4
  %155 = load %struct.mpserver*, %struct.mpserver** %4, align 8
  %156 = getelementptr inbounds %struct.mpserver, %struct.mpserver* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load i64, i64* @errno, align 8
  %160 = call i32 @strerror(i64 %159)
  %161 = call i32 (i32, i8*, ...) @log_Printf(i32 %154, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i32 %158, i32 %160)
  %162 = load i64, i64* @errno, align 8
  %163 = load i64, i64* @ECONNREFUSED, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %168

165:                                              ; preds = %153
  %166 = load i32, i32* @LogPHASE, align 4
  %167 = call i32 (i32, i8*, ...) @log_Printf(i32 %166, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0))
  br label %168

168:                                              ; preds = %165, %153
  %169 = load %struct.mpserver*, %struct.mpserver** %4, align 8
  %170 = getelementptr inbounds %struct.mpserver, %struct.mpserver* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @close(i32 %171)
  %173 = load %struct.mpserver*, %struct.mpserver** %4, align 8
  %174 = getelementptr inbounds %struct.mpserver, %struct.mpserver* %173, i32 0, i32 0
  store i32 -1, i32* %174, align 4
  %175 = load i32, i32* @MPSERVER_FAILED, align 4
  store i32 %175, i32* %3, align 4
  br label %180

176:                                              ; preds = %143
  %177 = load i32, i32* @MPSERVER_CONNECTED, align 4
  store i32 %177, i32* %3, align 4
  br label %180

178:                                              ; preds = %103
  %179 = load i32, i32* @MPSERVER_LISTENING, align 4
  store i32 %179, i32* %3, align 4
  br label %180

180:                                              ; preds = %178, %176, %168, %125, %97, %34
  %181 = load i32, i32* %3, align 4
  ret i32 %181
}

declare dso_local i32 @log_Printf(i32, i8*, ...) #1

declare dso_local i32 @mpserver_Close(%struct.mpserver*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, ...) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i32 @ID0socket(i32, i32, i32) #1

declare dso_local i32 @setsockopt(i32, i32, i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @umask(i32) #1

declare dso_local i64 @ID0bind_un(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @ID0connect_un(i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
