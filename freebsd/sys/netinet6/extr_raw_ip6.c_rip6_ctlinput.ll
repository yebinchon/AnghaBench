; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_raw_ip6.c_rip6_ctlinput.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_raw_ip6.c_rip6_ctlinput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in6 = type { i32 }
%struct.sockaddr = type { i64, i32 }
%struct.ip6ctlparam = type { %struct.sockaddr_in6*, i8* }
%struct.inpcb = type opaque
%struct.inpcb.0 = type opaque

@AF_INET6 = common dso_local global i64 0, align 8
@PRC_NCMDS = common dso_local global i32 0, align 4
@PRC_HOSTDEAD = common dso_local global i32 0, align 4
@inet6ctlerrmap = common dso_local global i64* null, align 8
@sa6_any = common dso_local global %struct.sockaddr_in6 zeroinitializer, align 4
@V_ripcbinfo = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rip6_ctlinput(i32 %0, %struct.sockaddr* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ip6ctlparam*, align 8
  %8 = alloca %struct.sockaddr_in6*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.inpcb* (%struct.inpcb*, i32)*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.sockaddr* %1, %struct.sockaddr** %5, align 8
  store i8* %2, i8** %6, align 8
  store %struct.ip6ctlparam* null, %struct.ip6ctlparam** %7, align 8
  store %struct.sockaddr_in6* null, %struct.sockaddr_in6** %8, align 8
  store %struct.inpcb* (%struct.inpcb*, i32)* @in6_rtchange, %struct.inpcb* (%struct.inpcb*, i32)** %10, align 8
  %11 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %12 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @AF_INET6, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %22, label %16

16:                                               ; preds = %3
  %17 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %18 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = icmp ne i64 %20, 4
  br i1 %21, label %22, label %23

22:                                               ; preds = %16, %3
  br label %70

23:                                               ; preds = %16
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @PRC_NCMDS, align 4
  %26 = icmp uge i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %70

28:                                               ; preds = %23
  %29 = load i32, i32* %4, align 4
  %30 = call i64 @PRC_IS_REDIRECT(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store %struct.inpcb* (%struct.inpcb*, i32)* @in6_rtchange, %struct.inpcb* (%struct.inpcb*, i32)** %10, align 8
  store i8* null, i8** %6, align 8
  br label %48

33:                                               ; preds = %28
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @PRC_HOSTDEAD, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i8* null, i8** %6, align 8
  br label %47

38:                                               ; preds = %33
  %39 = load i64*, i64** @inet6ctlerrmap, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %70

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %46, %37
  br label %48

48:                                               ; preds = %47, %32
  %49 = load i8*, i8** %6, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %60

51:                                               ; preds = %48
  %52 = load i8*, i8** %6, align 8
  %53 = bitcast i8* %52 to %struct.ip6ctlparam*
  store %struct.ip6ctlparam* %53, %struct.ip6ctlparam** %7, align 8
  %54 = load %struct.ip6ctlparam*, %struct.ip6ctlparam** %7, align 8
  %55 = getelementptr inbounds %struct.ip6ctlparam, %struct.ip6ctlparam* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  store i8* %56, i8** %9, align 8
  %57 = load %struct.ip6ctlparam*, %struct.ip6ctlparam** %7, align 8
  %58 = getelementptr inbounds %struct.ip6ctlparam, %struct.ip6ctlparam* %57, i32 0, i32 0
  %59 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %58, align 8
  store %struct.sockaddr_in6* %59, %struct.sockaddr_in6** %8, align 8
  br label %61

60:                                               ; preds = %48
  store i8* null, i8** %9, align 8
  store %struct.sockaddr_in6* @sa6_any, %struct.sockaddr_in6** %8, align 8
  br label %61

61:                                               ; preds = %60, %51
  %62 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %63 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %64 = bitcast %struct.sockaddr_in6* %63 to %struct.sockaddr*
  %65 = load i32, i32* %4, align 4
  %66 = load i8*, i8** %9, align 8
  %67 = load %struct.inpcb* (%struct.inpcb*, i32)*, %struct.inpcb* (%struct.inpcb*, i32)** %10, align 8
  %68 = bitcast %struct.inpcb* (%struct.inpcb*, i32)* %67 to %struct.inpcb.0* (%struct.inpcb.0*, i32)*
  %69 = call i32 @in6_pcbnotify(i32* @V_ripcbinfo, %struct.sockaddr* %62, i32 0, %struct.sockaddr* %64, i32 0, i32 %65, i8* %66, %struct.inpcb.0* (%struct.inpcb.0*, i32)* %68)
  br label %70

70:                                               ; preds = %61, %45, %27, %22
  ret void
}

declare dso_local %struct.inpcb* @in6_rtchange(%struct.inpcb*, i32) #1

declare dso_local i64 @PRC_IS_REDIRECT(i32) #1

declare dso_local i32 @in6_pcbnotify(i32*, %struct.sockaddr*, i32, %struct.sockaddr*, i32, i32, i8*, %struct.inpcb.0* (%struct.inpcb.0*, i32)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
