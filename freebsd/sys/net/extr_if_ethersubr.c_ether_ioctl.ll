; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_ethersubr.c_ether_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_ethersubr.c_ether_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, i32, i32 (i32)*, i32 }
%struct.ifaddr = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ifreq = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@IFF_UP = common dso_local global i32 0, align 4
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@ETHERMTU = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@PRIV_NET_SETLANPCP = common dso_local global i32 0, align 4
@IFNET_PCP_NONE = common dso_local global i32 0, align 4
@ifnet_event = common dso_local global i32 0, align 4
@IFNET_EVENT_PCP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ether_ioctl(%struct.ifnet* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.ifaddr*, align 8
  %8 = alloca %struct.ifreq*, align 8
  %9 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = inttoptr i64 %10 to %struct.ifaddr*
  store %struct.ifaddr* %11, %struct.ifaddr** %7, align 8
  %12 = load i64, i64* %6, align 8
  %13 = inttoptr i64 %12 to %struct.ifreq*
  store %struct.ifreq* %13, %struct.ifreq** %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %97 [
    i32 130, label %15
    i32 132, label %35
    i32 129, label %45
    i32 128, label %60
    i32 131, label %91
  ]

15:                                               ; preds = %3
  %16 = load i32, i32* @IFF_UP, align 4
  %17 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %18 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 8
  %21 = load %struct.ifaddr*, %struct.ifaddr** %7, align 8
  %22 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %26 [
  ]

26:                                               ; preds = %15
  %27 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %28 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %27, i32 0, i32 3
  %29 = load i32 (i32)*, i32 (i32)** %28, align 8
  %30 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %31 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 %29(i32 %32)
  br label %34

34:                                               ; preds = %26
  br label %99

35:                                               ; preds = %3
  %36 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %37 = call i32 @IF_LLADDR(%struct.ifnet* %36)
  %38 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %39 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %44 = call i32 @bcopy(i32 %37, i32* %42, i32 %43)
  br label %99

45:                                               ; preds = %3
  %46 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %47 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @ETHERMTU, align 4
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* @EINVAL, align 4
  store i32 %52, i32* %9, align 4
  br label %59

53:                                               ; preds = %45
  %54 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %55 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %58 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  br label %59

59:                                               ; preds = %53, %51
  br label %99

60:                                               ; preds = %3
  %61 = load i32, i32* @curthread, align 4
  %62 = load i32, i32* @PRIV_NET_SETLANPCP, align 4
  %63 = call i32 @priv_check(i32 %61, i32 %62)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  br label %99

67:                                               ; preds = %60
  %68 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %69 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp sgt i32 %70, 7
  br i1 %71, label %72, label %80

72:                                               ; preds = %67
  %73 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %74 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @IFNET_PCP_NONE, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = load i32, i32* @EINVAL, align 4
  store i32 %79, i32* %9, align 4
  br label %90

80:                                               ; preds = %72, %67
  %81 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %82 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %85 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load i32, i32* @ifnet_event, align 4
  %87 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %88 = load i32, i32* @IFNET_EVENT_PCP, align 4
  %89 = call i32 @EVENTHANDLER_INVOKE(i32 %86, %struct.ifnet* %87, i32 %88)
  br label %90

90:                                               ; preds = %80, %78
  br label %99

91:                                               ; preds = %3
  %92 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %93 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %96 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  br label %99

97:                                               ; preds = %3
  %98 = load i32, i32* @EINVAL, align 4
  store i32 %98, i32* %9, align 4
  br label %99

99:                                               ; preds = %97, %91, %90, %66, %59, %35, %34
  %100 = load i32, i32* %9, align 4
  ret i32 %100
}

declare dso_local i32 @bcopy(i32, i32*, i32) #1

declare dso_local i32 @IF_LLADDR(%struct.ifnet*) #1

declare dso_local i32 @priv_check(i32, i32) #1

declare dso_local i32 @EVENTHANDLER_INVOKE(i32, %struct.ifnet*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
