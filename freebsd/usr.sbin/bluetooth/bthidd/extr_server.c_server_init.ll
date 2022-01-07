; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/bthidd/extr_server.c_server_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/bthidd/extr_server.c_server_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sockaddr_l2cap = type { i32, i8*, i64, i32, i32, i32 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"/dev/consolectl\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Could not open /dev/consolectl. %s (%d)\00", align 1
@errno = common dso_local global i32 0, align 4
@PF_BLUETOOTH = common dso_local global i32 0, align 4
@SOCK_SEQPACKET = common dso_local global i32 0, align 4
@BLUETOOTH_PROTO_L2CAP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"Could not create control L2CAP socket. %s (%d)\00", align 1
@AF_BLUETOOTH = common dso_local global i32 0, align 4
@BDADDR_BREDR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"Could not bind control L2CAP socket. %s (%d)\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"Could not listen on control L2CAP socket. %s (%d)\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"Could not create interrupt L2CAP socket. %s (%d)\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"Could not bind interrupt L2CAP socket. %s (%d)\00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c"Could not listen on interrupt L2CAP socket. %s (%d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @server_init(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.sockaddr_l2cap, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = icmp ne %struct.TYPE_3__* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @assert(i32 %7)
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  store i32 -1, i32* %10, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store i32 -1, i32* %12, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 4
  %15 = call i32 @FD_ZERO(i32* %14)
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 7
  %18 = call i32 @FD_ZERO(i32* %17)
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 6
  %21 = call i32 @LIST_INIT(i32* %20)
  %22 = load i32, i32* @O_RDWR, align 4
  %23 = call i32 @open(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %1
  %31 = load i32, i32* @LOG_ERR, align 4
  %32 = load i32, i32* @errno, align 4
  %33 = call i32 @strerror(i32 %32)
  %34 = load i32, i32* @errno, align 4
  %35 = call i32 @syslog(i32 %31, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %34)
  store i32 -1, i32* %2, align 4
  br label %210

36:                                               ; preds = %1
  %37 = load i32, i32* @PF_BLUETOOTH, align 4
  %38 = load i32, i32* @SOCK_SEQPACKET, align 4
  %39 = load i32, i32* @BLUETOOTH_PROTO_L2CAP, align 4
  %40 = call i8* @socket(i32 %37, i32 %38, i32 %39)
  %41 = ptrtoint i8* %40 to i32
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %36
  %49 = load i32, i32* @LOG_ERR, align 4
  %50 = load i32, i32* @errno, align 4
  %51 = call i32 @strerror(i32 %50)
  %52 = load i32, i32* @errno, align 4
  %53 = call i32 @syslog(i32 %49, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %51, i32 %52)
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @close(i32 %56)
  store i32 -1, i32* %2, align 4
  br label %210

58:                                               ; preds = %36
  %59 = getelementptr inbounds %struct.sockaddr_l2cap, %struct.sockaddr_l2cap* %4, i32 0, i32 0
  store i32 40, i32* %59, align 8
  %60 = load i32, i32* @AF_BLUETOOTH, align 4
  %61 = getelementptr inbounds %struct.sockaddr_l2cap, %struct.sockaddr_l2cap* %4, i32 0, i32 5
  store i32 %60, i32* %61, align 8
  %62 = getelementptr inbounds %struct.sockaddr_l2cap, %struct.sockaddr_l2cap* %4, i32 0, i32 4
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 5
  %65 = call i32 @memcpy(i32* %62, i32* %64, i32 4)
  %66 = call i8* @htole16(i32 17)
  %67 = getelementptr inbounds %struct.sockaddr_l2cap, %struct.sockaddr_l2cap* %4, i32 0, i32 1
  store i8* %66, i8** %67, align 8
  %68 = load i32, i32* @BDADDR_BREDR, align 4
  %69 = getelementptr inbounds %struct.sockaddr_l2cap, %struct.sockaddr_l2cap* %4, i32 0, i32 3
  store i32 %68, i32* %69, align 8
  %70 = getelementptr inbounds %struct.sockaddr_l2cap, %struct.sockaddr_l2cap* %4, i32 0, i32 2
  store i64 0, i64* %70, align 8
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = bitcast %struct.sockaddr_l2cap* %4 to %struct.sockaddr*
  %75 = call i64 @bind(i32 %73, %struct.sockaddr* %74, i32 40)
  %76 = icmp slt i64 %75, 0
  br i1 %76, label %77, label %91

77:                                               ; preds = %58
  %78 = load i32, i32* @LOG_ERR, align 4
  %79 = load i32, i32* @errno, align 4
  %80 = call i32 @strerror(i32 %79)
  %81 = load i32, i32* @errno, align 4
  %82 = call i32 @syslog(i32 %78, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %80, i32 %81)
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @close(i32 %85)
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @close(i32 %89)
  store i32 -1, i32* %2, align 4
  br label %210

91:                                               ; preds = %58
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @listen(i32 %94, i32 10)
  %96 = icmp slt i64 %95, 0
  br i1 %96, label %97, label %111

97:                                               ; preds = %91
  %98 = load i32, i32* @LOG_ERR, align 4
  %99 = load i32, i32* @errno, align 4
  %100 = call i32 @strerror(i32 %99)
  %101 = load i32, i32* @errno, align 4
  %102 = call i32 @syslog(i32 %98, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i32 %100, i32 %101)
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @close(i32 %105)
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @close(i32 %109)
  store i32 -1, i32* %2, align 4
  br label %210

111:                                              ; preds = %91
  %112 = load i32, i32* @PF_BLUETOOTH, align 4
  %113 = load i32, i32* @SOCK_SEQPACKET, align 4
  %114 = load i32, i32* @BLUETOOTH_PROTO_L2CAP, align 4
  %115 = call i8* @socket(i32 %112, i32 %113, i32 %114)
  %116 = ptrtoint i8* %115 to i32
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 4
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %137

123:                                              ; preds = %111
  %124 = load i32, i32* @LOG_ERR, align 4
  %125 = load i32, i32* @errno, align 4
  %126 = call i32 @strerror(i32 %125)
  %127 = load i32, i32* @errno, align 4
  %128 = call i32 @syslog(i32 %124, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i32 %126, i32 %127)
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @close(i32 %131)
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @close(i32 %135)
  store i32 -1, i32* %2, align 4
  br label %210

137:                                              ; preds = %111
  %138 = call i8* @htole16(i32 19)
  %139 = getelementptr inbounds %struct.sockaddr_l2cap, %struct.sockaddr_l2cap* %4, i32 0, i32 1
  store i8* %138, i8** %139, align 8
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = bitcast %struct.sockaddr_l2cap* %4 to %struct.sockaddr*
  %144 = call i64 @bind(i32 %142, %struct.sockaddr* %143, i32 40)
  %145 = icmp slt i64 %144, 0
  br i1 %145, label %146, label %164

146:                                              ; preds = %137
  %147 = load i32, i32* @LOG_ERR, align 4
  %148 = load i32, i32* @errno, align 4
  %149 = call i32 @strerror(i32 %148)
  %150 = load i32, i32* @errno, align 4
  %151 = call i32 @syslog(i32 %147, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i32 %149, i32 %150)
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @close(i32 %154)
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @close(i32 %158)
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @close(i32 %162)
  store i32 -1, i32* %2, align 4
  br label %210

164:                                              ; preds = %137
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = call i64 @listen(i32 %167, i32 10)
  %169 = icmp slt i64 %168, 0
  br i1 %169, label %170, label %188

170:                                              ; preds = %164
  %171 = load i32, i32* @LOG_ERR, align 4
  %172 = load i32, i32* @errno, align 4
  %173 = call i32 @strerror(i32 %172)
  %174 = load i32, i32* @errno, align 4
  %175 = call i32 @syslog(i32 %171, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0), i32 %173, i32 %174)
  %176 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @close(i32 %178)
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @close(i32 %182)
  %184 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @close(i32 %186)
  store i32 -1, i32* %2, align 4
  br label %210

188:                                              ; preds = %164
  %189 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 4
  %194 = call i32 @FD_SET(i32 %191, i32* %193)
  %195 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 4
  %200 = call i32 @FD_SET(i32 %197, i32* %199)
  %201 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @max(i32 %203, i32 %206)
  %208 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 3
  store i32 %207, i32* %209, align 4
  store i32 0, i32* %2, align 4
  br label %210

210:                                              ; preds = %188, %170, %146, %123, %97, %77, %48, %30
  %211 = load i32, i32* %2, align 4
  ret i32 %211
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @syslog(i32, i8*, i32, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i8* @socket(i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i8* @htole16(i32) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i64 @listen(i32, i32) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
