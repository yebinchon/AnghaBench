; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6_src.c_in6_selectsrc_socket.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6_src.c_in6_selectsrc_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in6 = type { i32 }
%struct.ip6_pktopts = type { i32 }
%struct.inpcb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ucred = type { i32 }
%struct.in6_addr = type { i32 }
%struct.ifnet = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @in6_selectsrc_socket(%struct.sockaddr_in6* %0, %struct.ip6_pktopts* %1, %struct.inpcb* %2, %struct.ucred* %3, i32 %4, %struct.in6_addr* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr_in6*, align 8
  %10 = alloca %struct.ip6_pktopts*, align 8
  %11 = alloca %struct.inpcb*, align 8
  %12 = alloca %struct.ucred*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.in6_addr*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.ifnet*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.sockaddr_in6* %0, %struct.sockaddr_in6** %9, align 8
  store %struct.ip6_pktopts* %1, %struct.ip6_pktopts** %10, align 8
  store %struct.inpcb* %2, %struct.inpcb** %11, align 8
  store %struct.ucred* %3, %struct.ucred** %12, align 8
  store i32 %4, i32* %13, align 4
  store %struct.in6_addr* %5, %struct.in6_addr** %14, align 8
  store i32* %6, i32** %15, align 8
  %19 = load %struct.inpcb*, %struct.inpcb** %11, align 8
  %20 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %17, align 4
  store %struct.ifnet* null, %struct.ifnet** %16, align 8
  %23 = load i32, i32* %17, align 4
  %24 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %25 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %10, align 8
  %26 = load %struct.inpcb*, %struct.inpcb** %11, align 8
  %27 = load %struct.ucred*, %struct.ucred** %12, align 8
  %28 = load %struct.in6_addr*, %struct.in6_addr** %14, align 8
  %29 = call i32 @in6_selectsrc(i32 %23, %struct.sockaddr_in6* %24, %struct.ip6_pktopts* %25, %struct.inpcb* %26, %struct.ucred* %27, %struct.ifnet** %16, %struct.in6_addr* %28)
  store i32 %29, i32* %18, align 4
  %30 = load i32, i32* %18, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %7
  %33 = load i32, i32* %18, align 4
  store i32 %33, i32* %8, align 4
  br label %55

34:                                               ; preds = %7
  %35 = load i32*, i32** %15, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load %struct.inpcb*, %struct.inpcb** %11, align 8
  %39 = load %struct.ifnet*, %struct.ifnet** %16, align 8
  %40 = call i32 @in6_selecthlim(%struct.inpcb* %38, %struct.ifnet* %39)
  %41 = load i32*, i32** %15, align 8
  store i32 %40, i32* %41, align 4
  br label %42

42:                                               ; preds = %37, %34
  %43 = load %struct.ifnet*, %struct.ifnet** %16, align 8
  %44 = icmp eq %struct.ifnet* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %13, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45, %42
  store i32 0, i32* %8, align 4
  br label %55

49:                                               ; preds = %45
  %50 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %51 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %50, i32 0, i32 0
  %52 = load %struct.ifnet*, %struct.ifnet** %16, align 8
  %53 = call i32 @in6_setscope(i32* %51, %struct.ifnet* %52, i32* null)
  store i32 %53, i32* %18, align 4
  %54 = load i32, i32* %18, align 4
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %49, %48, %32
  %56 = load i32, i32* %8, align 4
  ret i32 %56
}

declare dso_local i32 @in6_selectsrc(i32, %struct.sockaddr_in6*, %struct.ip6_pktopts*, %struct.inpcb*, %struct.ucred*, %struct.ifnet**, %struct.in6_addr*) #1

declare dso_local i32 @in6_selecthlim(%struct.inpcb*, %struct.ifnet*) #1

declare dso_local i32 @in6_setscope(i32*, %struct.ifnet*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
