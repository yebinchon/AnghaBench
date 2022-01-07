; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_loop.c_loioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_loop.c_loioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, i32, i32, i32 }
%struct.ifreq = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IFF_UP = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@LINK_STATE_UP = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@LINK_STATE_DOWN = common dso_local global i32 0, align 4
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@IFCAP_TXCSUM = common dso_local global i32 0, align 4
@IFCAP_RXCSUM_IPV6 = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@IFCAP_TXCSUM_IPV6 = common dso_local global i32 0, align 4
@LO_CSUM_FEATURES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@LO_CSUM_FEATURES6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @loioctl(%struct.ifnet* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.ifreq*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = inttoptr i64 %10 to %struct.ifreq*
  store %struct.ifreq* %11, %struct.ifreq** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %118 [
    i32 131, label %13
    i32 133, label %27
    i32 132, label %27
    i32 128, label %40
    i32 129, label %46
    i32 130, label %61
  ]

13:                                               ; preds = %3
  %14 = load i32, i32* @IFF_UP, align 4
  %15 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %16 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %20 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %21 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  %24 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %25 = load i32, i32* @LINK_STATE_UP, align 4
  %26 = call i32 @if_link_state_change(%struct.ifnet* %24, i32 %25)
  br label %120

27:                                               ; preds = %3, %3
  %28 = load %struct.ifreq*, %struct.ifreq** %7, align 8
  %29 = icmp eq %struct.ifreq* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32, i32* @EAFNOSUPPORT, align 4
  store i32 %31, i32* %8, align 4
  br label %120

32:                                               ; preds = %27
  %33 = load %struct.ifreq*, %struct.ifreq** %7, align 8
  %34 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %37 [
  ]

37:                                               ; preds = %32
  %38 = load i32, i32* @EAFNOSUPPORT, align 4
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %37
  br label %120

40:                                               ; preds = %3
  %41 = load %struct.ifreq*, %struct.ifreq** %7, align 8
  %42 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %45 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  br label %120

46:                                               ; preds = %3
  %47 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %48 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %49 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @IFF_UP, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  %55 = load i32, i32* @LINK_STATE_UP, align 4
  br label %58

56:                                               ; preds = %46
  %57 = load i32, i32* @LINK_STATE_DOWN, align 4
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i32 [ %55, %54 ], [ %57, %56 ]
  %60 = call i32 @if_link_state_change(%struct.ifnet* %47, i32 %59)
  br label %120

61:                                               ; preds = %3
  %62 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %63 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ifreq*, %struct.ifreq** %7, align 8
  %66 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = xor i32 %64, %67
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @IFCAP_RXCSUM, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %61
  %74 = load i32, i32* @IFCAP_RXCSUM, align 4
  %75 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %76 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = xor i32 %77, %74
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %73, %61
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* @IFCAP_TXCSUM, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = load i32, i32* @IFCAP_TXCSUM, align 4
  %86 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %87 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = xor i32 %88, %85
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %84, %79
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @IFCAP_RXCSUM_IPV6, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %90
  %96 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %96, i32* %8, align 4
  br label %120

97:                                               ; preds = %90
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* @IFCAP_TXCSUM_IPV6, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %97
  %103 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %103, i32* %8, align 4
  br label %120

104:                                              ; preds = %97
  %105 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %106 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %105, i32 0, i32 2
  store i32 0, i32* %106, align 4
  %107 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %108 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @IFCAP_TXCSUM, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %104
  %114 = load i32, i32* @LO_CSUM_FEATURES, align 4
  %115 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %116 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 4
  br label %117

117:                                              ; preds = %113, %104
  br label %120

118:                                              ; preds = %3
  %119 = load i32, i32* @EINVAL, align 4
  store i32 %119, i32* %8, align 4
  br label %120

120:                                              ; preds = %118, %117, %102, %95, %58, %40, %39, %30, %13
  %121 = load i32, i32* %8, align 4
  ret i32 %121
}

declare dso_local i32 @if_link_state_change(%struct.ifnet*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
