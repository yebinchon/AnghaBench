; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ncpaddr.c_ncpaddr_setip6.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ncpaddr.c_ncpaddr_setip6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncpaddr = type { %struct.in6_addr, i32 }
%struct.in6_addr = type { i32 }

@AF_INET6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ncpaddr_setip6(%struct.ncpaddr* %0, %struct.in6_addr* %1) #0 {
  %3 = alloca %struct.ncpaddr*, align 8
  %4 = alloca %struct.in6_addr*, align 8
  store %struct.ncpaddr* %0, %struct.ncpaddr** %3, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %4, align 8
  %5 = load i32, i32* @AF_INET6, align 4
  %6 = load %struct.ncpaddr*, %struct.ncpaddr** %3, align 8
  %7 = getelementptr inbounds %struct.ncpaddr, %struct.ncpaddr* %6, i32 0, i32 1
  store i32 %5, i32* %7, align 4
  %8 = load %struct.ncpaddr*, %struct.ncpaddr** %3, align 8
  %9 = getelementptr inbounds %struct.ncpaddr, %struct.ncpaddr* %8, i32 0, i32 0
  %10 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %11 = bitcast %struct.in6_addr* %9 to i8*
  %12 = bitcast %struct.in6_addr* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 %12, i64 4, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
