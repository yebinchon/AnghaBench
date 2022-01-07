; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6.c_in6_prepare_ifra.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6.c_in6_prepare_ifra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_aliasreq = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, %struct.in6_addr, i8* }
%struct.in6_addr = type { i32 }
%struct.TYPE_4__ = type { i32, %struct.in6_addr, i8* }

@AF_INET6 = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @in6_prepare_ifra(%struct.in6_aliasreq* %0, %struct.in6_addr* %1, %struct.in6_addr* %2) #0 {
  %4 = alloca %struct.in6_aliasreq*, align 8
  %5 = alloca %struct.in6_addr*, align 8
  %6 = alloca %struct.in6_addr*, align 8
  store %struct.in6_aliasreq* %0, %struct.in6_aliasreq** %4, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %5, align 8
  store %struct.in6_addr* %2, %struct.in6_addr** %6, align 8
  %7 = load %struct.in6_aliasreq*, %struct.in6_aliasreq** %4, align 8
  %8 = call i32 @memset(%struct.in6_aliasreq* %7, i32 0, i32 32)
  %9 = load i8*, i8** @AF_INET6, align 8
  %10 = load %struct.in6_aliasreq*, %struct.in6_aliasreq** %4, align 8
  %11 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  store i8* %9, i8** %12, align 8
  %13 = load %struct.in6_aliasreq*, %struct.in6_aliasreq** %4, align 8
  %14 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store i32 4, i32* %15, align 8
  %16 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %17 = icmp ne %struct.in6_addr* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %3
  %19 = load %struct.in6_aliasreq*, %struct.in6_aliasreq** %4, align 8
  %20 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %23 = bitcast %struct.in6_addr* %21 to i8*
  %24 = bitcast %struct.in6_addr* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 %24, i64 4, i1 false)
  br label %25

25:                                               ; preds = %18, %3
  %26 = load i8*, i8** @AF_INET6, align 8
  %27 = load %struct.in6_aliasreq*, %struct.in6_aliasreq** %4, align 8
  %28 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  store i8* %26, i8** %29, align 8
  %30 = load %struct.in6_aliasreq*, %struct.in6_aliasreq** %4, align 8
  %31 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32 4, i32* %32, align 8
  %33 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %34 = icmp ne %struct.in6_addr* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %25
  %36 = load %struct.in6_aliasreq*, %struct.in6_aliasreq** %4, align 8
  %37 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %40 = bitcast %struct.in6_addr* %38 to i8*
  %41 = bitcast %struct.in6_addr* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %40, i8* align 4 %41, i64 4, i1 false)
  br label %42

42:                                               ; preds = %35, %25
  ret void
}

declare dso_local i32 @memset(%struct.in6_aliasreq*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
