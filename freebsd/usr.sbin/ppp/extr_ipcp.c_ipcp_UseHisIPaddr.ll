; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ipcp.c_ipcp_UseHisIPaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ipcp.c_ipcp_UseHisIPaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bundle = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ipcp }
%struct.ipcp = type { %struct.TYPE_4__, %struct.in_addr }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.in_addr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipcp_UseHisIPaddr(%struct.bundle* %0, i32 %1) #0 {
  %3 = alloca %struct.in_addr, align 4
  %4 = alloca %struct.bundle*, align 8
  %5 = alloca %struct.ipcp*, align 8
  %6 = alloca %struct.in_addr, align 4
  %7 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %3, i32 0, i32 0
  store i32 %1, i32* %7, align 4
  store %struct.bundle* %0, %struct.bundle** %4, align 8
  %8 = load %struct.bundle*, %struct.bundle** %4, align 8
  %9 = getelementptr inbounds %struct.bundle, %struct.bundle* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store %struct.ipcp* %10, %struct.ipcp** %5, align 8
  %11 = load %struct.ipcp*, %struct.ipcp** %5, align 8
  %12 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = call i32 @memset(i32* %13, i8 signext 0, i32 4)
  %15 = load %struct.ipcp*, %struct.ipcp** %5, align 8
  %16 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  %18 = call i32 @iplist_reset(i32* %17)
  %19 = load %struct.ipcp*, %struct.ipcp** %5, align 8
  %20 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %19, i32 0, i32 1
  %21 = bitcast %struct.in_addr* %20 to i8*
  %22 = bitcast %struct.in_addr* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %22, i64 4, i1 false)
  %23 = load %struct.ipcp*, %struct.ipcp** %5, align 8
  %24 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %3, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ncprange_setip4host(i32* %25, i32 %27)
  %29 = load %struct.ipcp*, %struct.ipcp** %5, align 8
  %30 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = call i32 @ncprange_getip4addr(i32* %31, %struct.in_addr* %6)
  %33 = load %struct.ipcp*, %struct.ipcp** %5, align 8
  %34 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %6, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %3, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ipcp_SetIPaddress(%struct.ipcp* %33, i32 %35, i32 %37)
  ret i32 %38
}

declare dso_local i32 @memset(i32*, i8 signext, i32) #1

declare dso_local i32 @iplist_reset(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ncprange_setip4host(i32*, i32) #1

declare dso_local i32 @ncprange_getip4addr(i32*, %struct.in_addr*) #1

declare dso_local i32 @ipcp_SetIPaddress(%struct.ipcp*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
