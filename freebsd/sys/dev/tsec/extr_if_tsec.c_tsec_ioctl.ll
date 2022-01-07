; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tsec/extr_if_tsec.c_tsec_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tsec/extr_if_tsec.c_tsec_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, i32, i32, %struct.tsec_softc* }
%struct.tsec_softc = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ifreq = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@IFCAP_HWCSUM = common dso_local global i32 0, align 4
@IFCAP_POLLING = common dso_local global i32 0, align 4
@tsec_poll = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i64)* @tsec_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsec_ioctl(%struct.ifnet* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.tsec_softc*, align 8
  %8 = alloca %struct.ifreq*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %11 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %12 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %11, i32 0, i32 4
  %13 = load %struct.tsec_softc*, %struct.tsec_softc** %12, align 8
  store %struct.tsec_softc* %13, %struct.tsec_softc** %7, align 8
  %14 = load i64, i64* %6, align 8
  %15 = inttoptr i64 %14 to %struct.ifreq*
  store %struct.ifreq* %15, %struct.ifreq** %8, align 8
  store i32 0, i32* %10, align 4
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %169 [
    i32 128, label %17
    i32 130, label %37
    i32 134, label %105
    i32 133, label %105
    i32 132, label %120
    i32 129, label %120
    i32 131, label %129
  ]

17:                                               ; preds = %3
  %18 = load %struct.tsec_softc*, %struct.tsec_softc** %7, align 8
  %19 = call i32 @TSEC_GLOBAL_LOCK(%struct.tsec_softc* %18)
  %20 = load %struct.tsec_softc*, %struct.tsec_softc** %7, align 8
  %21 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %22 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @tsec_set_mtu(%struct.tsec_softc* %20, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %17
  %27 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %28 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %31 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  br label %34

32:                                               ; preds = %17
  %33 = load i32, i32* @EINVAL, align 4
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %32, %26
  %35 = load %struct.tsec_softc*, %struct.tsec_softc** %7, align 8
  %36 = call i32 @TSEC_GLOBAL_UNLOCK(%struct.tsec_softc* %35)
  br label %174

37:                                               ; preds = %3
  %38 = load %struct.tsec_softc*, %struct.tsec_softc** %7, align 8
  %39 = call i32 @TSEC_GLOBAL_LOCK(%struct.tsec_softc* %38)
  %40 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %41 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @IFF_UP, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %86

46:                                               ; preds = %37
  %47 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %48 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %82

53:                                               ; preds = %46
  %54 = load %struct.tsec_softc*, %struct.tsec_softc** %7, align 8
  %55 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %58 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = xor i32 %56, %59
  %61 = load i32, i32* @IFF_PROMISC, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %53
  %65 = load %struct.tsec_softc*, %struct.tsec_softc** %7, align 8
  %66 = call i32 @tsec_setfilter(%struct.tsec_softc* %65)
  br label %67

67:                                               ; preds = %64, %53
  %68 = load %struct.tsec_softc*, %struct.tsec_softc** %7, align 8
  %69 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %72 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = xor i32 %70, %73
  %75 = load i32, i32* @IFF_ALLMULTI, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %67
  %79 = load %struct.tsec_softc*, %struct.tsec_softc** %7, align 8
  %80 = call i32 @tsec_setup_multicast(%struct.tsec_softc* %79)
  br label %81

81:                                               ; preds = %78, %67
  br label %85

82:                                               ; preds = %46
  %83 = load %struct.tsec_softc*, %struct.tsec_softc** %7, align 8
  %84 = call i32 @tsec_init_locked(%struct.tsec_softc* %83)
  br label %85

85:                                               ; preds = %82, %81
  br label %97

86:                                               ; preds = %37
  %87 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %88 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %86
  %94 = load %struct.tsec_softc*, %struct.tsec_softc** %7, align 8
  %95 = call i32 @tsec_stop(%struct.tsec_softc* %94)
  br label %96

96:                                               ; preds = %93, %86
  br label %97

97:                                               ; preds = %96, %85
  %98 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %99 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.tsec_softc*, %struct.tsec_softc** %7, align 8
  %102 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  %103 = load %struct.tsec_softc*, %struct.tsec_softc** %7, align 8
  %104 = call i32 @TSEC_GLOBAL_UNLOCK(%struct.tsec_softc* %103)
  br label %174

105:                                              ; preds = %3, %3
  %106 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %107 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %105
  %113 = load %struct.tsec_softc*, %struct.tsec_softc** %7, align 8
  %114 = call i32 @TSEC_GLOBAL_LOCK(%struct.tsec_softc* %113)
  %115 = load %struct.tsec_softc*, %struct.tsec_softc** %7, align 8
  %116 = call i32 @tsec_setup_multicast(%struct.tsec_softc* %115)
  %117 = load %struct.tsec_softc*, %struct.tsec_softc** %7, align 8
  %118 = call i32 @TSEC_GLOBAL_UNLOCK(%struct.tsec_softc* %117)
  br label %119

119:                                              ; preds = %112, %105
  br label %120

120:                                              ; preds = %3, %3, %119
  %121 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %122 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %123 = load %struct.tsec_softc*, %struct.tsec_softc** %7, align 8
  %124 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %123, i32 0, i32 2
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = load i32, i32* %5, align 4
  %128 = call i32 @ifmedia_ioctl(%struct.ifnet* %121, %struct.ifreq* %122, i32* %126, i32 %127)
  store i32 %128, i32* %10, align 4
  br label %174

129:                                              ; preds = %3
  %130 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %131 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %134 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = xor i32 %132, %135
  store i32 %136, i32* %9, align 4
  %137 = load i32, i32* %9, align 4
  %138 = load i32, i32* @IFCAP_HWCSUM, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %168

141:                                              ; preds = %129
  %142 = load %struct.tsec_softc*, %struct.tsec_softc** %7, align 8
  %143 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %168

146:                                              ; preds = %141
  %147 = load %struct.tsec_softc*, %struct.tsec_softc** %7, align 8
  %148 = call i32 @TSEC_GLOBAL_LOCK(%struct.tsec_softc* %147)
  %149 = load i32, i32* @IFCAP_HWCSUM, align 4
  %150 = xor i32 %149, -1
  %151 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %152 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = and i32 %153, %150
  store i32 %154, i32* %152, align 8
  %155 = load i32, i32* @IFCAP_HWCSUM, align 4
  %156 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %157 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = and i32 %155, %158
  %160 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %161 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = or i32 %162, %159
  store i32 %163, i32* %161, align 8
  %164 = load %struct.tsec_softc*, %struct.tsec_softc** %7, align 8
  %165 = call i32 @tsec_offload_setup(%struct.tsec_softc* %164)
  %166 = load %struct.tsec_softc*, %struct.tsec_softc** %7, align 8
  %167 = call i32 @TSEC_GLOBAL_UNLOCK(%struct.tsec_softc* %166)
  br label %168

168:                                              ; preds = %146, %141, %129
  br label %174

169:                                              ; preds = %3
  %170 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %171 = load i32, i32* %5, align 4
  %172 = load i64, i64* %6, align 8
  %173 = call i32 @ether_ioctl(%struct.ifnet* %170, i32 %171, i64 %172)
  store i32 %173, i32* %10, align 4
  br label %174

174:                                              ; preds = %169, %168, %120, %97, %34
  %175 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %176 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @IFF_UP, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %174
  %182 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %183 = call i32 @tsec_start(%struct.ifnet* %182)
  br label %184

184:                                              ; preds = %181, %174
  %185 = load i32, i32* %10, align 4
  ret i32 %185
}

declare dso_local i32 @TSEC_GLOBAL_LOCK(%struct.tsec_softc*) #1

declare dso_local i32 @tsec_set_mtu(%struct.tsec_softc*, i32) #1

declare dso_local i32 @TSEC_GLOBAL_UNLOCK(%struct.tsec_softc*) #1

declare dso_local i32 @tsec_setfilter(%struct.tsec_softc*) #1

declare dso_local i32 @tsec_setup_multicast(%struct.tsec_softc*) #1

declare dso_local i32 @tsec_init_locked(%struct.tsec_softc*) #1

declare dso_local i32 @tsec_stop(%struct.tsec_softc*) #1

declare dso_local i32 @ifmedia_ioctl(%struct.ifnet*, %struct.ifreq*, i32*, i32) #1

declare dso_local i32 @tsec_offload_setup(%struct.tsec_softc*) #1

declare dso_local i32 @ether_ioctl(%struct.ifnet*, i32, i64) #1

declare dso_local i32 @tsec_start(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
