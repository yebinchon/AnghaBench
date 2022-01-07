; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6_src.c_in6_selectsrc_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6_src.c_in6_selectsrc_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.in6_addr = type { i32 }
%struct.sockaddr_in6 = type { i32, i32, %struct.in6_addr, i32 }

@AF_INET6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @in6_selectsrc_addr(i32 %0, %struct.in6_addr* %1, i32 %2, %struct.ifnet* %3, %struct.in6_addr* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.in6_addr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ifnet*, align 8
  %11 = alloca %struct.in6_addr*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.ifnet*, align 8
  %14 = alloca %struct.sockaddr_in6, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.in6_addr* %1, %struct.in6_addr** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.ifnet* %3, %struct.ifnet** %10, align 8
  store %struct.in6_addr* %4, %struct.in6_addr** %11, align 8
  store i32* %5, i32** %12, align 8
  %16 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  store %struct.ifnet* %16, %struct.ifnet** %13, align 8
  %17 = call i32 @bzero(%struct.sockaddr_in6* %14, i32 16)
  %18 = load i32, i32* @AF_INET6, align 4
  %19 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %14, i32 0, i32 3
  store i32 %18, i32* %19, align 4
  %20 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %14, i32 0, i32 0
  store i32 16, i32* %20, align 4
  %21 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %14, i32 0, i32 2
  %22 = load %struct.in6_addr*, %struct.in6_addr** %8, align 8
  %23 = bitcast %struct.in6_addr* %21 to i8*
  %24 = bitcast %struct.in6_addr* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 %24, i64 4, i1 false)
  %25 = load i32, i32* %9, align 4
  %26 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %14, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = call i32 @sa6_embedscope(%struct.sockaddr_in6* %14, i32 0)
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.in6_addr*, %struct.in6_addr** %11, align 8
  %30 = call i32 @in6_selectsrc(i32 %28, %struct.sockaddr_in6* %14, i32* null, i32* null, i32* null, %struct.ifnet** %13, %struct.in6_addr* %29)
  store i32 %30, i32* %15, align 4
  %31 = load i32*, i32** %12, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %6
  %34 = load %struct.ifnet*, %struct.ifnet** %13, align 8
  %35 = call i32 @in6_selecthlim(i32* null, %struct.ifnet* %34)
  %36 = load i32*, i32** %12, align 8
  store i32 %35, i32* %36, align 4
  br label %37

37:                                               ; preds = %33, %6
  %38 = load i32, i32* %15, align 4
  ret i32 %38
}

declare dso_local i32 @bzero(%struct.sockaddr_in6*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @sa6_embedscope(%struct.sockaddr_in6*, i32) #1

declare dso_local i32 @in6_selectsrc(i32, %struct.sockaddr_in6*, i32*, i32*, i32*, %struct.ifnet**, %struct.in6_addr*) #1

declare dso_local i32 @in6_selecthlim(i32*, %struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
