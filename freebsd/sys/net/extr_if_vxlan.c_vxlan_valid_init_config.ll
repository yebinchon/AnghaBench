; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_vxlan.c_vxlan_valid_init_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_vxlan.c_vxlan_valid_init_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxlan_softc = type { i8*, i32, %struct.TYPE_7__, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [45 x i8] c"invalid virtual network identifier specified\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"source address type is not supported\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"destination address type is not supported\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"no valid destination address specified\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"can only specify interface with a group address\00", align 1
@.str.5 = private unnamed_addr constant [64 x i8] c"source and destination address must both be either IPv4 or IPv6\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"local port not specified\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"remote port not specified\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"cannot initialize interface: %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vxlan_softc*)* @vxlan_valid_init_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxlan_valid_init_config(%struct.vxlan_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vxlan_softc*, align 8
  %4 = alloca i8*, align 8
  store %struct.vxlan_softc* %0, %struct.vxlan_softc** %3, align 8
  %5 = load %struct.vxlan_softc*, %struct.vxlan_softc** %3, align 8
  %6 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 8
  %8 = call i64 @vxlan_check_vni(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %76

11:                                               ; preds = %1
  %12 = load %struct.vxlan_softc*, %struct.vxlan_softc** %3, align 8
  %13 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %12, i32 0, i32 3
  %14 = call i64 @vxlan_sockaddr_supported(%struct.TYPE_7__* %13, i32 1)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %76

17:                                               ; preds = %11
  %18 = load %struct.vxlan_softc*, %struct.vxlan_softc** %3, align 8
  %19 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %18, i32 0, i32 2
  %20 = call i64 @vxlan_sockaddr_supported(%struct.TYPE_7__* %19, i32 0)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  br label %76

23:                                               ; preds = %17
  %24 = load %struct.vxlan_softc*, %struct.vxlan_softc** %3, align 8
  %25 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %24, i32 0, i32 2
  %26 = call i64 @vxlan_sockaddr_in_any(%struct.TYPE_7__* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8** %4, align 8
  br label %76

29:                                               ; preds = %23
  %30 = load %struct.vxlan_softc*, %struct.vxlan_softc** %3, align 8
  %31 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %30, i32 0, i32 2
  %32 = call i64 @vxlan_sockaddr_in_multicast(%struct.TYPE_7__* %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %29
  %35 = load %struct.vxlan_softc*, %struct.vxlan_softc** %3, align 8
  %36 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i8** %4, align 8
  br label %76

43:                                               ; preds = %34, %29
  %44 = load %struct.vxlan_softc*, %struct.vxlan_softc** %3, align 8
  %45 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %44, i32 0, i32 3
  %46 = call i64 @vxlan_sockaddr_in_any(%struct.TYPE_7__* %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %43
  %49 = load %struct.vxlan_softc*, %struct.vxlan_softc** %3, align 8
  %50 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %49, i32 0, i32 3
  %51 = call i32 @VXLAN_SOCKADDR_IS_IPV4(%struct.TYPE_7__* %50)
  %52 = load %struct.vxlan_softc*, %struct.vxlan_softc** %3, align 8
  %53 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %52, i32 0, i32 2
  %54 = call i32 @VXLAN_SOCKADDR_IS_IPV4(%struct.TYPE_7__* %53)
  %55 = xor i32 %51, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i64 0, i64 0), i8** %4, align 8
  br label %76

58:                                               ; preds = %48
  br label %59

59:                                               ; preds = %58, %43
  %60 = load %struct.vxlan_softc*, %struct.vxlan_softc** %3, align 8
  %61 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i8** %4, align 8
  br label %76

67:                                               ; preds = %59
  %68 = load %struct.vxlan_softc*, %struct.vxlan_softc** %3, align 8
  %69 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8** %4, align 8
  br label %76

75:                                               ; preds = %67
  store i32 0, i32* %2, align 4
  br label %83

76:                                               ; preds = %74, %66, %57, %42, %28, %22, %16, %10
  %77 = load %struct.vxlan_softc*, %struct.vxlan_softc** %3, align 8
  %78 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load i8*, i8** %4, align 8
  %81 = call i32 @if_printf(i32 %79, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i8* %80)
  %82 = load i32, i32* @EINVAL, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %76, %75
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i64 @vxlan_check_vni(i32) #1

declare dso_local i64 @vxlan_sockaddr_supported(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @vxlan_sockaddr_in_any(%struct.TYPE_7__*) #1

declare dso_local i64 @vxlan_sockaddr_in_multicast(%struct.TYPE_7__*) #1

declare dso_local i32 @VXLAN_SOCKADDR_IS_IPV4(%struct.TYPE_7__*) #1

declare dso_local i32 @if_printf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
