; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_main.c_sdp_sockaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_main.c_sdp_sockaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.in_addr = type { i32 }
%struct.sockaddr_in = type { i32, i32, %struct.in_addr, i32 }

@M_SONAME = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sockaddr* (i32, %struct.in_addr*)* @sdp_sockaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sockaddr* @sdp_sockaddr(i32 %0, %struct.in_addr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.in_addr*, align 8
  %5 = alloca %struct.sockaddr_in*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.in_addr* %1, %struct.in_addr** %4, align 8
  %6 = load i32, i32* @M_SONAME, align 4
  %7 = load i32, i32* @M_WAITOK, align 4
  %8 = load i32, i32* @M_ZERO, align 4
  %9 = or i32 %7, %8
  %10 = call %struct.sockaddr_in* @malloc(i32 16, i32 %6, i32 %9)
  store %struct.sockaddr_in* %10, %struct.sockaddr_in** %5, align 8
  %11 = load i32, i32* @AF_INET, align 4
  %12 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %13 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %12, i32 0, i32 3
  store i32 %11, i32* %13, align 4
  %14 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %15 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %14, i32 0, i32 0
  store i32 16, i32* %15, align 4
  %16 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %17 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %16, i32 0, i32 2
  %18 = load %struct.in_addr*, %struct.in_addr** %4, align 8
  %19 = bitcast %struct.in_addr* %17 to i8*
  %20 = bitcast %struct.in_addr* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 %20, i64 4, i1 false)
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %23 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %25 = bitcast %struct.sockaddr_in* %24 to %struct.sockaddr*
  ret %struct.sockaddr* %25
}

declare dso_local %struct.sockaddr_in* @malloc(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
