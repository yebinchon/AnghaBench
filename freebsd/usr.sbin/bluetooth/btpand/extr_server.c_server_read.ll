; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/btpand/extr_server.c_server_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/btpand/extr_server.c_server_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_l2cap = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.sockaddr = type { i32 }

@FIONBIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Could not set NonBlocking IO: %m\00", align 1
@SOL_L2CAP = common dso_local global i32 0, align 4
@SO_L2CAP_IMTU = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Could not get L2CAP IMTU: %m\00", align 1
@BNEP_MTU_MIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"L2CAP IMTU too small (%d)\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_RCVBUF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Could not read SO_RCVBUF\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Could not increase SO_RCVBUF (from %d)\00", align 1
@SO_L2CAP_OMTU = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"Could not get L2CAP OMTU: %m\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"L2CAP OMTU too small (%d)\00", align 1
@SO_SNDBUF = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [42 x i8] c"Could not get socket send buffer size: %m\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"Could not set socket send buffer size (%d): %m\00", align 1
@SO_SNDLOWAT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [45 x i8] c"Could not set socket low water mark (%d): %m\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"Could not get socket address: %m\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"Accepted connection from %s\00", align 1
@bnep_send = common dso_local global i32 0, align 4
@bnep_recv = common dso_local global i32 0, align 4
@CHANNEL_WAIT_CONNECT_REQ = common dso_local global i32 0, align 4
@CHANNEL_CLOSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i16, i8*)* @server_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @server_read(i32 %0, i16 signext %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sockaddr_l2cap, align 4
  %8 = alloca %struct.sockaddr_l2cap, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i16 %1, i16* %5, align 2
  store i8* %2, i8** %6, align 8
  store i32 4, i32* %10, align 4
  %15 = load i32, i32* %4, align 4
  %16 = bitcast %struct.sockaddr_l2cap* %7 to %struct.sockaddr*
  %17 = call i32 @accept(i32 %15, %struct.sockaddr* %16, i32* %10)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %195

21:                                               ; preds = %3
  store i32 1, i32* %12, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* @FIONBIO, align 4
  %24 = call i32 @ioctl(i32 %22, i32 %23, i32* %12)
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @close(i32 %28)
  br label %195

30:                                               ; preds = %21
  store i32 4, i32* %10, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @SOL_L2CAP, align 4
  %33 = load i32, i32* @SO_L2CAP_IMTU, align 4
  %34 = call i32 @getsockopt(i32 %31, i32 %32, i32 %33, i32* %13, i32* %10)
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @close(i32 %38)
  br label %195

40:                                               ; preds = %30
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* @BNEP_MTU_MIN, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load i32, i32* %13, align 4
  %46 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @close(i32 %47)
  br label %195

49:                                               ; preds = %40
  store i32 4, i32* %10, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* @SOL_SOCKET, align 4
  %52 = load i32, i32* @SO_RCVBUF, align 4
  %53 = call i32 @getsockopt(i32 %50, i32 %51, i32 %52, i32* %12, i32* %10)
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @close(i32 %57)
  br label %195

59:                                               ; preds = %49
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %13, align 4
  %62 = mul nsw i32 %61, 10
  %63 = icmp slt i32 %60, %62
  br i1 %63, label %64, label %76

64:                                               ; preds = %59
  %65 = load i32, i32* %13, align 4
  %66 = mul nsw i32 %65, 10
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* @SOL_SOCKET, align 4
  %69 = load i32, i32* @SO_RCVBUF, align 4
  %70 = call i32 @setsockopt(i32 %67, i32 %68, i32 %69, i32* %12, i32 4)
  %71 = icmp eq i32 %70, -1
  br i1 %71, label %72, label %75

72:                                               ; preds = %64
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @log_info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %72, %64
  br label %76

76:                                               ; preds = %75, %59
  store i32 4, i32* %10, align 4
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* @SOL_L2CAP, align 4
  %79 = load i32, i32* @SO_L2CAP_OMTU, align 4
  %80 = call i32 @getsockopt(i32 %77, i32 %78, i32 %79, i32* %14, i32* %10)
  %81 = icmp eq i32 %80, -1
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @close(i32 %84)
  br label %195

86:                                               ; preds = %76
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* @BNEP_MTU_MIN, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %86
  %91 = load i32, i32* %14, align 4
  %92 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @close(i32 %93)
  br label %195

95:                                               ; preds = %86
  store i32 4, i32* %10, align 4
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* @SOL_SOCKET, align 4
  %98 = load i32, i32* @SO_SNDBUF, align 4
  %99 = call i32 @getsockopt(i32 %96, i32 %97, i32 %98, i32* %12, i32* %10)
  %100 = icmp eq i32 %99, -1
  br i1 %100, label %101, label %105

101:                                              ; preds = %95
  %102 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0))
  %103 = load i32, i32* %11, align 4
  %104 = call i32 @close(i32 %103)
  br label %195

105:                                              ; preds = %95
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* %14, align 4
  %108 = mul nsw i32 %107, 2
  %109 = icmp slt i32 %106, %108
  br i1 %109, label %110, label %124

110:                                              ; preds = %105
  %111 = load i32, i32* %14, align 4
  %112 = mul nsw i32 %111, 2
  store i32 %112, i32* %12, align 4
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* @SOL_SOCKET, align 4
  %115 = load i32, i32* @SO_SNDBUF, align 4
  %116 = call i32 @setsockopt(i32 %113, i32 %114, i32 %115, i32* %12, i32 4)
  %117 = icmp eq i32 %116, -1
  br i1 %117, label %118, label %123

118:                                              ; preds = %110
  %119 = load i32, i32* %12, align 4
  %120 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i64 0, i64 0), i32 %119)
  %121 = load i32, i32* %11, align 4
  %122 = call i32 @close(i32 %121)
  br label %195

123:                                              ; preds = %110
  br label %124

124:                                              ; preds = %123, %105
  %125 = load i32, i32* %14, align 4
  store i32 %125, i32* %12, align 4
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* @SOL_SOCKET, align 4
  %128 = load i32, i32* @SO_SNDLOWAT, align 4
  %129 = call i32 @setsockopt(i32 %126, i32 %127, i32 %128, i32* %12, i32 4)
  %130 = icmp eq i32 %129, -1
  br i1 %130, label %131, label %136

131:                                              ; preds = %124
  %132 = load i32, i32* %12, align 4
  %133 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0), i32 %132)
  %134 = load i32, i32* %11, align 4
  %135 = call i32 @close(i32 %134)
  br label %195

136:                                              ; preds = %124
  store i32 4, i32* %10, align 4
  %137 = load i32, i32* %11, align 4
  %138 = bitcast %struct.sockaddr_l2cap* %8 to %struct.sockaddr*
  %139 = call i32 @getsockname(i32 %137, %struct.sockaddr* %138, i32* %10)
  %140 = icmp eq i32 %139, -1
  br i1 %140, label %141, label %145

141:                                              ; preds = %136
  %142 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0))
  %143 = load i32, i32* %11, align 4
  %144 = call i32 @close(i32 %143)
  br label %195

145:                                              ; preds = %136
  %146 = getelementptr inbounds %struct.sockaddr_l2cap, %struct.sockaddr_l2cap* %7, i32 0, i32 0
  %147 = call i32 @bt_ntoa(i32* %146, i32* null)
  %148 = call i32 @log_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i32 %147)
  %149 = call %struct.TYPE_6__* (...) @channel_alloc()
  store %struct.TYPE_6__* %149, %struct.TYPE_6__** %9, align 8
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %151 = icmp eq %struct.TYPE_6__* %150, null
  br i1 %151, label %152, label %155

152:                                              ; preds = %145
  %153 = load i32, i32* %11, align 4
  %154 = call i32 @close(i32 %153)
  br label %195

155:                                              ; preds = %145
  %156 = load i32, i32* @bnep_send, align 4
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 6
  store i32 %156, i32* %158, align 4
  %159 = load i32, i32* @bnep_recv, align 4
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 5
  store i32 %159, i32* %161, align 4
  %162 = load i32, i32* %13, align 4
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 0
  store i32 %162, i32* %164, align 4
  %165 = load i32, i32* %14, align 4
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 1
  store i32 %165, i32* %167, align 4
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 4
  %170 = load i32, i32* %169, align 4
  %171 = getelementptr inbounds %struct.sockaddr_l2cap, %struct.sockaddr_l2cap* %7, i32 0, i32 0
  %172 = call i32 @b2eaddr(i32 %170, i32* %171)
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = getelementptr inbounds %struct.sockaddr_l2cap, %struct.sockaddr_l2cap* %8, i32 0, i32 0
  %177 = call i32 @b2eaddr(i32 %175, i32* %176)
  %178 = load i32, i32* @CHANNEL_WAIT_CONNECT_REQ, align 4
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 2
  store i32 %178, i32* %180, align 4
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %182 = call i32 @channel_timeout(%struct.TYPE_6__* %181, i32 10)
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %184 = load i32, i32* %11, align 4
  %185 = call i32 @channel_open(%struct.TYPE_6__* %183, i32 %184)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %195, label %187

187:                                              ; preds = %155
  %188 = load i32, i32* @CHANNEL_CLOSED, align 4
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 2
  store i32 %188, i32* %190, align 4
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %192 = call i32 @channel_free(%struct.TYPE_6__* %191)
  %193 = load i32, i32* %11, align 4
  %194 = call i32 @close(i32 %193)
  br label %195

195:                                              ; preds = %20, %26, %36, %44, %55, %82, %90, %101, %118, %131, %141, %152, %187, %155
  ret void
}

declare dso_local i32 @accept(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @ioctl(i32, i32, i32*) #1

declare dso_local i32 @log_err(i8*, ...) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @getsockopt(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @log_info(i8*, i32) #1

declare dso_local i32 @getsockname(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @bt_ntoa(i32*, i32*) #1

declare dso_local %struct.TYPE_6__* @channel_alloc(...) #1

declare dso_local i32 @b2eaddr(i32, i32*) #1

declare dso_local i32 @channel_timeout(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @channel_open(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @channel_free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
