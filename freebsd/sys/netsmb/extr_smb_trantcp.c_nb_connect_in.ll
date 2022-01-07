; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_trantcp.c_nb_connect_in.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_trantcp.c_nb_connect_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nbpcb = type { i32, i32, i32, %struct.socket* }
%struct.socket = type { i32, i32, i32, %struct.TYPE_3__, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.sockaddr_in = type { i32 }
%struct.thread = type { i32, i32 }
%struct.sockaddr = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@SO_RCV = common dso_local global i32 0, align 4
@nb_upcall = common dso_local global i32 0, align 4
@SBT_1S = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_KEEPALIVE = common dso_local global i32 0, align 4
@TCP_NODELAY = common dso_local global i32 0, align 4
@SB_NOINTR = common dso_local global i32 0, align 4
@SS_ISCONNECTING = common dso_local global i32 0, align 4
@PSOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"nbcon\00", align 1
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nbpcb*, %struct.sockaddr_in*, %struct.thread*)* @nb_connect_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nb_connect_in(%struct.nbpcb* %0, %struct.sockaddr_in* %1, %struct.thread* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nbpcb*, align 8
  %6 = alloca %struct.sockaddr_in*, align 8
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.socket*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nbpcb* %0, %struct.nbpcb** %5, align 8
  store %struct.sockaddr_in* %1, %struct.sockaddr_in** %6, align 8
  store %struct.thread* %2, %struct.thread** %7, align 8
  %11 = load i32, i32* @AF_INET, align 4
  %12 = load i32, i32* @SOCK_STREAM, align 4
  %13 = load i32, i32* @IPPROTO_TCP, align 4
  %14 = load %struct.thread*, %struct.thread** %7, align 8
  %15 = getelementptr inbounds %struct.thread, %struct.thread* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.thread*, %struct.thread** %7, align 8
  %18 = call i32 @socreate(i32 %11, %struct.socket** %8, i32 %12, i32 %13, i32 %16, %struct.thread* %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %4, align 4
  br label %176

23:                                               ; preds = %3
  %24 = load %struct.socket*, %struct.socket** %8, align 8
  %25 = load %struct.nbpcb*, %struct.nbpcb** %5, align 8
  %26 = getelementptr inbounds %struct.nbpcb, %struct.nbpcb* %25, i32 0, i32 3
  store %struct.socket* %24, %struct.socket** %26, align 8
  %27 = load %struct.socket*, %struct.socket** %8, align 8
  %28 = getelementptr inbounds %struct.socket, %struct.socket* %27, i32 0, i32 4
  %29 = call i32 @SOCKBUF_LOCK(%struct.TYPE_3__* %28)
  %30 = load %struct.socket*, %struct.socket** %8, align 8
  %31 = load i32, i32* @SO_RCV, align 4
  %32 = load i32, i32* @nb_upcall, align 4
  %33 = load %struct.nbpcb*, %struct.nbpcb** %5, align 8
  %34 = call i32 @soupcall_set(%struct.socket* %30, i32 %31, i32 %32, %struct.nbpcb* %33)
  %35 = load %struct.socket*, %struct.socket** %8, align 8
  %36 = getelementptr inbounds %struct.socket, %struct.socket* %35, i32 0, i32 4
  %37 = call i32 @SOCKBUF_UNLOCK(%struct.TYPE_3__* %36)
  %38 = load i32, i32* @SBT_1S, align 4
  %39 = mul nsw i32 5, %38
  %40 = load %struct.socket*, %struct.socket** %8, align 8
  %41 = getelementptr inbounds %struct.socket, %struct.socket* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 4
  %43 = load i32, i32* @SBT_1S, align 4
  %44 = mul nsw i32 5, %43
  %45 = load %struct.socket*, %struct.socket** %8, align 8
  %46 = getelementptr inbounds %struct.socket, %struct.socket* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 4
  %48 = load %struct.socket*, %struct.socket** %8, align 8
  %49 = load %struct.nbpcb*, %struct.nbpcb** %5, align 8
  %50 = getelementptr inbounds %struct.nbpcb, %struct.nbpcb* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.nbpcb*, %struct.nbpcb** %5, align 8
  %53 = getelementptr inbounds %struct.nbpcb, %struct.nbpcb* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @soreserve(%struct.socket* %48, i32 %51, i32 %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %23
  br label %169

59:                                               ; preds = %23
  %60 = load %struct.socket*, %struct.socket** %8, align 8
  %61 = load i32, i32* @SOL_SOCKET, align 4
  %62 = load i32, i32* @SO_KEEPALIVE, align 4
  %63 = call i32 @nb_setsockopt_int(%struct.socket* %60, i32 %61, i32 %62, i32 1)
  %64 = load %struct.socket*, %struct.socket** %8, align 8
  %65 = load i32, i32* @IPPROTO_TCP, align 4
  %66 = load i32, i32* @TCP_NODELAY, align 4
  %67 = call i32 @nb_setsockopt_int(%struct.socket* %64, i32 %65, i32 %66, i32 1)
  %68 = load %struct.socket*, %struct.socket** %8, align 8
  %69 = getelementptr inbounds %struct.socket, %struct.socket* %68, i32 0, i32 4
  %70 = call i32 @SOCKBUF_LOCK(%struct.TYPE_3__* %69)
  %71 = load i32, i32* @SB_NOINTR, align 4
  %72 = xor i32 %71, -1
  %73 = load %struct.socket*, %struct.socket** %8, align 8
  %74 = getelementptr inbounds %struct.socket, %struct.socket* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, %72
  store i32 %77, i32* %75, align 4
  %78 = load %struct.socket*, %struct.socket** %8, align 8
  %79 = getelementptr inbounds %struct.socket, %struct.socket* %78, i32 0, i32 4
  %80 = call i32 @SOCKBUF_UNLOCK(%struct.TYPE_3__* %79)
  %81 = load %struct.socket*, %struct.socket** %8, align 8
  %82 = getelementptr inbounds %struct.socket, %struct.socket* %81, i32 0, i32 3
  %83 = call i32 @SOCKBUF_LOCK(%struct.TYPE_3__* %82)
  %84 = load i32, i32* @SB_NOINTR, align 4
  %85 = xor i32 %84, -1
  %86 = load %struct.socket*, %struct.socket** %8, align 8
  %87 = getelementptr inbounds %struct.socket, %struct.socket* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, %85
  store i32 %90, i32* %88, align 4
  %91 = load %struct.socket*, %struct.socket** %8, align 8
  %92 = getelementptr inbounds %struct.socket, %struct.socket* %91, i32 0, i32 3
  %93 = call i32 @SOCKBUF_UNLOCK(%struct.TYPE_3__* %92)
  %94 = load %struct.socket*, %struct.socket** %8, align 8
  %95 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %96 = bitcast %struct.sockaddr_in* %95 to %struct.sockaddr*
  %97 = load %struct.thread*, %struct.thread** %7, align 8
  %98 = call i32 @soconnect(%struct.socket* %94, %struct.sockaddr* %96, %struct.thread* %97)
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %9, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %59
  br label %169

102:                                              ; preds = %59
  %103 = call i32 (...) @splnet()
  store i32 %103, i32* %10, align 4
  br label %104

104:                                              ; preds = %152, %102
  %105 = load %struct.socket*, %struct.socket** %8, align 8
  %106 = getelementptr inbounds %struct.socket, %struct.socket* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @SS_ISCONNECTING, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %104
  %112 = load %struct.socket*, %struct.socket** %8, align 8
  %113 = getelementptr inbounds %struct.socket, %struct.socket* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = icmp eq i32 %114, 0
  br label %116

116:                                              ; preds = %111, %104
  %117 = phi i1 [ false, %104 ], [ %115, %111 ]
  br i1 %117, label %118, label %153

118:                                              ; preds = %116
  %119 = load %struct.socket*, %struct.socket** %8, align 8
  %120 = getelementptr inbounds %struct.socket, %struct.socket* %119, i32 0, i32 2
  %121 = load i32, i32* @PSOCK, align 4
  %122 = load i32, i32* @hz, align 4
  %123 = mul nsw i32 2, %122
  %124 = call i32 @tsleep(i32* %120, i32 %121, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %123)
  %125 = load %struct.socket*, %struct.socket** %8, align 8
  %126 = getelementptr inbounds %struct.socket, %struct.socket* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @SS_ISCONNECTING, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %152

131:                                              ; preds = %118
  %132 = load %struct.socket*, %struct.socket** %8, align 8
  %133 = getelementptr inbounds %struct.socket, %struct.socket* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %152

136:                                              ; preds = %131
  %137 = load %struct.nbpcb*, %struct.nbpcb** %5, align 8
  %138 = load %struct.thread*, %struct.thread** %7, align 8
  %139 = getelementptr inbounds %struct.thread, %struct.thread* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @nb_intr(%struct.nbpcb* %137, i32 %140)
  store i32 %141, i32* %9, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %152

143:                                              ; preds = %136
  %144 = load i32, i32* @SS_ISCONNECTING, align 4
  %145 = xor i32 %144, -1
  %146 = load %struct.socket*, %struct.socket** %8, align 8
  %147 = getelementptr inbounds %struct.socket, %struct.socket* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = and i32 %148, %145
  store i32 %149, i32* %147, align 4
  %150 = load i32, i32* %10, align 4
  %151 = call i32 @splx(i32 %150)
  br label %169

152:                                              ; preds = %136, %131, %118
  br label %104

153:                                              ; preds = %116
  %154 = load %struct.socket*, %struct.socket** %8, align 8
  %155 = getelementptr inbounds %struct.socket, %struct.socket* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %166

158:                                              ; preds = %153
  %159 = load %struct.socket*, %struct.socket** %8, align 8
  %160 = getelementptr inbounds %struct.socket, %struct.socket* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  store i32 %161, i32* %9, align 4
  %162 = load %struct.socket*, %struct.socket** %8, align 8
  %163 = getelementptr inbounds %struct.socket, %struct.socket* %162, i32 0, i32 1
  store i32 0, i32* %163, align 4
  %164 = load i32, i32* %10, align 4
  %165 = call i32 @splx(i32 %164)
  br label %169

166:                                              ; preds = %153
  %167 = load i32, i32* %10, align 4
  %168 = call i32 @splx(i32 %167)
  store i32 0, i32* %4, align 4
  br label %176

169:                                              ; preds = %158, %143, %101, %58
  %170 = load %struct.nbpcb*, %struct.nbpcb** %5, align 8
  %171 = getelementptr inbounds %struct.nbpcb, %struct.nbpcb* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.thread*, %struct.thread** %7, align 8
  %174 = call i32 @smb_nbst_disconnect(i32 %172, %struct.thread* %173)
  %175 = load i32, i32* %9, align 4
  store i32 %175, i32* %4, align 4
  br label %176

176:                                              ; preds = %169, %166, %21
  %177 = load i32, i32* %4, align 4
  ret i32 %177
}

declare dso_local i32 @socreate(i32, %struct.socket**, i32, i32, i32, %struct.thread*) #1

declare dso_local i32 @SOCKBUF_LOCK(%struct.TYPE_3__*) #1

declare dso_local i32 @soupcall_set(%struct.socket*, i32, i32, %struct.nbpcb*) #1

declare dso_local i32 @SOCKBUF_UNLOCK(%struct.TYPE_3__*) #1

declare dso_local i32 @soreserve(%struct.socket*, i32, i32) #1

declare dso_local i32 @nb_setsockopt_int(%struct.socket*, i32, i32, i32) #1

declare dso_local i32 @soconnect(%struct.socket*, %struct.sockaddr*, %struct.thread*) #1

declare dso_local i32 @splnet(...) #1

declare dso_local i32 @tsleep(i32*, i32, i8*, i32) #1

declare dso_local i32 @nb_intr(%struct.nbpcb*, i32) #1

declare dso_local i32 @splx(i32) #1

declare dso_local i32 @smb_nbst_disconnect(i32, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
