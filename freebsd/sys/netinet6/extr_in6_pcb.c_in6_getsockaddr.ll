; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6_pcb.c_in6_getsockaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6_pcb.c_in6_getsockaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.sockaddr = type { i32 }
%struct.inpcb = type { %struct.in6_addr, i32 }
%struct.in6_addr = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"in6_getsockaddr: inp == NULL\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @in6_getsockaddr(%struct.socket* %0, %struct.sockaddr** %1) #0 {
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.sockaddr**, align 8
  %5 = alloca %struct.inpcb*, align 8
  %6 = alloca %struct.in6_addr, align 4
  %7 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %3, align 8
  store %struct.sockaddr** %1, %struct.sockaddr*** %4, align 8
  %8 = load %struct.socket*, %struct.socket** %3, align 8
  %9 = call %struct.inpcb* @sotoinpcb(%struct.socket* %8)
  store %struct.inpcb* %9, %struct.inpcb** %5, align 8
  %10 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %11 = icmp ne %struct.inpcb* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @KASSERT(i32 %12, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %15 = call i32 @INP_RLOCK(%struct.inpcb* %14)
  %16 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %17 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %20 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %19, i32 0, i32 0
  %21 = bitcast %struct.in6_addr* %6 to i8*
  %22 = bitcast %struct.in6_addr* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %22, i64 4, i1 false)
  %23 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %24 = call i32 @INP_RUNLOCK(%struct.inpcb* %23)
  %25 = load i32, i32* %7, align 4
  %26 = call %struct.sockaddr* @in6_sockaddr(i32 %25, %struct.in6_addr* %6)
  %27 = load %struct.sockaddr**, %struct.sockaddr*** %4, align 8
  store %struct.sockaddr* %26, %struct.sockaddr** %27, align 8
  ret i32 0
}

declare dso_local %struct.inpcb* @sotoinpcb(%struct.socket*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @INP_RLOCK(%struct.inpcb*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @INP_RUNLOCK(%struct.inpcb*) #1

declare dso_local %struct.sockaddr* @in6_sockaddr(i32, %struct.in6_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
