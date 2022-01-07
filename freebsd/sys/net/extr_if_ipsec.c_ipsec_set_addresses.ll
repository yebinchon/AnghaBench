; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_ipsec.c_ipsec_set_addresses.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_ipsec.c_ipsec_set_addresses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.ipsec_softc* }
%struct.ipsec_softc = type { i64, i64 }
%struct.sockaddr = type { i32 }
%struct.secasindex = type { i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@ipsec_ioctl_sx = common dso_local global i32 0, align 4
@SA_XLOCKED = common dso_local global i32 0, align 4
@IPSEC_DIR_OUTBOUND = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, %struct.sockaddr*, %struct.sockaddr*)* @ipsec_set_addresses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipsec_set_addresses(%struct.ifnet* %0, %struct.sockaddr* %1, %struct.sockaddr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca %struct.ipsec_softc*, align 8
  %9 = alloca %struct.secasindex*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %7, align 8
  %10 = load i32, i32* @SA_XLOCKED, align 4
  %11 = call i32 @sx_assert(i32* @ipsec_ioctl_sx, i32 %10)
  %12 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %13 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %12, i32 0, i32 0
  %14 = load %struct.ipsec_softc*, %struct.ipsec_softc** %13, align 8
  store %struct.ipsec_softc* %14, %struct.ipsec_softc** %8, align 8
  %15 = load %struct.ipsec_softc*, %struct.ipsec_softc** %8, align 8
  %16 = getelementptr inbounds %struct.ipsec_softc, %struct.ipsec_softc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %52

19:                                               ; preds = %3
  %20 = load %struct.ipsec_softc*, %struct.ipsec_softc** %8, align 8
  %21 = load i32, i32* @IPSEC_DIR_OUTBOUND, align 4
  %22 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %23 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.secasindex* @ipsec_getsaidx(%struct.ipsec_softc* %20, i32 %21, i32 %24)
  store %struct.secasindex* %25, %struct.secasindex** %9, align 8
  %26 = load %struct.secasindex*, %struct.secasindex** %9, align 8
  %27 = icmp ne %struct.secasindex* %26, null
  br i1 %27, label %28, label %51

28:                                               ; preds = %19
  %29 = load %struct.secasindex*, %struct.secasindex** %9, align 8
  %30 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.ipsec_softc*, %struct.ipsec_softc** %8, align 8
  %33 = getelementptr inbounds %struct.ipsec_softc, %struct.ipsec_softc* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %31, %34
  br i1 %35, label %36, label %51

36:                                               ; preds = %28
  %37 = load %struct.secasindex*, %struct.secasindex** %9, align 8
  %38 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %41 = call i64 @key_sockaddrcmp(i32* %39, %struct.sockaddr* %40, i32 0)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %36
  %44 = load %struct.secasindex*, %struct.secasindex** %9, align 8
  %45 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %48 = call i64 @key_sockaddrcmp(i32* %46, %struct.sockaddr* %47, i32 0)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %66

51:                                               ; preds = %43, %36, %28, %19
  br label %52

52:                                               ; preds = %51, %3
  %53 = load %struct.ipsec_softc*, %struct.ipsec_softc** %8, align 8
  %54 = call i64 @ipsec_init_reqid(%struct.ipsec_softc* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i32, i32* @EEXIST, align 4
  store i32 %57, i32* %4, align 4
  br label %66

58:                                               ; preds = %52
  %59 = load %struct.ipsec_softc*, %struct.ipsec_softc** %8, align 8
  %60 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %61 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %62 = load %struct.ipsec_softc*, %struct.ipsec_softc** %8, align 8
  %63 = getelementptr inbounds %struct.ipsec_softc, %struct.ipsec_softc* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @ipsec_set_tunnel(%struct.ipsec_softc* %59, %struct.sockaddr* %60, %struct.sockaddr* %61, i64 %64)
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %58, %56, %50
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local %struct.secasindex* @ipsec_getsaidx(%struct.ipsec_softc*, i32, i32) #1

declare dso_local i64 @key_sockaddrcmp(i32*, %struct.sockaddr*, i32) #1

declare dso_local i64 @ipsec_init_reqid(%struct.ipsec_softc*) #1

declare dso_local i32 @ipsec_set_tunnel(%struct.ipsec_softc*, %struct.sockaddr*, %struct.sockaddr*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
