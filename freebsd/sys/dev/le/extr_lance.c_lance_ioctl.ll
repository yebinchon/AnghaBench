; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/le/extr_lance.c_lance_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/le/extr_lance.c_lance_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, %struct.lance_softc* }
%struct.lance_softc = type { i32, i32 }
%struct.ifreq = type { i32 }

@IFF_PROMISC = common dso_local global i32 0, align 4
@LE_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@LE_ALLMULTI = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DEBUG = common dso_local global i32 0, align 4
@LE_DEBUG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i64)* @lance_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lance_ioctl(%struct.ifnet* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.lance_softc*, align 8
  %8 = alloca %struct.ifreq*, align 8
  %9 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %10 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %11 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %10, i32 0, i32 2
  %12 = load %struct.lance_softc*, %struct.lance_softc** %11, align 8
  store %struct.lance_softc* %12, %struct.lance_softc** %7, align 8
  %13 = load i64, i64* %6, align 8
  %14 = inttoptr i64 %13 to %struct.ifreq*
  store %struct.ifreq* %14, %struct.ifreq** %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %164 [
    i32 129, label %16
    i32 132, label %142
    i32 131, label %142
    i32 130, label %157
    i32 128, label %157
  ]

16:                                               ; preds = %3
  %17 = load %struct.lance_softc*, %struct.lance_softc** %7, align 8
  %18 = call i32 @LE_LOCK(%struct.lance_softc* %17)
  %19 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %20 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @IFF_PROMISC, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %16
  %26 = load %struct.lance_softc*, %struct.lance_softc** %7, align 8
  %27 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @LE_PROMISC, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %25
  %33 = load i32, i32* @LE_PROMISC, align 4
  %34 = load %struct.lance_softc*, %struct.lance_softc** %7, align 8
  %35 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load %struct.lance_softc*, %struct.lance_softc** %7, align 8
  %39 = call i32 @lance_init_locked(%struct.lance_softc* %38)
  br label %40

40:                                               ; preds = %32, %25
  br label %58

41:                                               ; preds = %16
  %42 = load %struct.lance_softc*, %struct.lance_softc** %7, align 8
  %43 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @LE_PROMISC, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %41
  %49 = load i32, i32* @LE_PROMISC, align 4
  %50 = xor i32 %49, -1
  %51 = load %struct.lance_softc*, %struct.lance_softc** %7, align 8
  %52 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load %struct.lance_softc*, %struct.lance_softc** %7, align 8
  %56 = call i32 @lance_init_locked(%struct.lance_softc* %55)
  br label %57

57:                                               ; preds = %48, %41
  br label %58

58:                                               ; preds = %57, %40
  %59 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %60 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @IFF_ALLMULTI, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %80

65:                                               ; preds = %58
  %66 = load %struct.lance_softc*, %struct.lance_softc** %7, align 8
  %67 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @LE_ALLMULTI, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %80, label %72

72:                                               ; preds = %65
  %73 = load i32, i32* @LE_ALLMULTI, align 4
  %74 = load %struct.lance_softc*, %struct.lance_softc** %7, align 8
  %75 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 4
  %78 = load %struct.lance_softc*, %struct.lance_softc** %7, align 8
  %79 = call i32 @lance_init_locked(%struct.lance_softc* %78)
  br label %104

80:                                               ; preds = %65, %58
  %81 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %82 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @IFF_ALLMULTI, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %103, label %87

87:                                               ; preds = %80
  %88 = load %struct.lance_softc*, %struct.lance_softc** %7, align 8
  %89 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @LE_ALLMULTI, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %87
  %95 = load i32, i32* @LE_ALLMULTI, align 4
  %96 = xor i32 %95, -1
  %97 = load %struct.lance_softc*, %struct.lance_softc** %7, align 8
  %98 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %99, %96
  store i32 %100, i32* %98, align 4
  %101 = load %struct.lance_softc*, %struct.lance_softc** %7, align 8
  %102 = call i32 @lance_init_locked(%struct.lance_softc* %101)
  br label %103

103:                                              ; preds = %94, %87, %80
  br label %104

104:                                              ; preds = %103, %72
  %105 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %106 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @IFF_UP, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %121, label %111

111:                                              ; preds = %104
  %112 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %113 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %111
  %119 = load %struct.lance_softc*, %struct.lance_softc** %7, align 8
  %120 = call i32 @lance_stop(%struct.lance_softc* %119)
  br label %139

121:                                              ; preds = %111, %104
  %122 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %123 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @IFF_UP, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %138

128:                                              ; preds = %121
  %129 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %130 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %128
  %136 = load %struct.lance_softc*, %struct.lance_softc** %7, align 8
  %137 = call i32 @lance_init_locked(%struct.lance_softc* %136)
  br label %138

138:                                              ; preds = %135, %128, %121
  br label %139

139:                                              ; preds = %138, %118
  %140 = load %struct.lance_softc*, %struct.lance_softc** %7, align 8
  %141 = call i32 @LE_UNLOCK(%struct.lance_softc* %140)
  br label %169

142:                                              ; preds = %3, %3
  %143 = load %struct.lance_softc*, %struct.lance_softc** %7, align 8
  %144 = call i32 @LE_LOCK(%struct.lance_softc* %143)
  %145 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %146 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %142
  %152 = load %struct.lance_softc*, %struct.lance_softc** %7, align 8
  %153 = call i32 @lance_init_locked(%struct.lance_softc* %152)
  br label %154

154:                                              ; preds = %151, %142
  %155 = load %struct.lance_softc*, %struct.lance_softc** %7, align 8
  %156 = call i32 @LE_UNLOCK(%struct.lance_softc* %155)
  br label %169

157:                                              ; preds = %3, %3
  %158 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %159 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %160 = load %struct.lance_softc*, %struct.lance_softc** %7, align 8
  %161 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %160, i32 0, i32 1
  %162 = load i32, i32* %5, align 4
  %163 = call i32 @ifmedia_ioctl(%struct.ifnet* %158, %struct.ifreq* %159, i32* %161, i32 %162)
  store i32 %163, i32* %9, align 4
  br label %169

164:                                              ; preds = %3
  %165 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %166 = load i32, i32* %5, align 4
  %167 = load i64, i64* %6, align 8
  %168 = call i32 @ether_ioctl(%struct.ifnet* %165, i32 %166, i64 %167)
  store i32 %168, i32* %9, align 4
  br label %169

169:                                              ; preds = %164, %157, %154, %139
  %170 = load i32, i32* %9, align 4
  ret i32 %170
}

declare dso_local i32 @LE_LOCK(%struct.lance_softc*) #1

declare dso_local i32 @lance_init_locked(%struct.lance_softc*) #1

declare dso_local i32 @lance_stop(%struct.lance_softc*) #1

declare dso_local i32 @LE_UNLOCK(%struct.lance_softc*) #1

declare dso_local i32 @ifmedia_ioctl(%struct.ifnet*, %struct.ifreq*, i32*, i32) #1

declare dso_local i32 @ether_ioctl(%struct.ifnet*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
