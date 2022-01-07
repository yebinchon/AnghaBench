; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_if_ic.c_icioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_if_ic.c_icioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, %struct.ic_softc* }
%struct.ic_softc = type { i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ifaddr = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ifreq = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }

@EAFNOSUPPORT = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IIC_WAIT = common dso_local global i32 0, align 4
@IIC_INTR = common dso_local global i32 0, align 4
@IIC_FASTEST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i64)* @icioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icioctl(%struct.ifnet* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.ic_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ifaddr*, align 8
  %12 = alloca %struct.ifreq*, align 8
  %13 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %14 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %15 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %14, i32 0, i32 2
  %16 = load %struct.ic_softc*, %struct.ic_softc** %15, align 8
  store %struct.ic_softc* %16, %struct.ic_softc** %8, align 8
  %17 = load %struct.ic_softc*, %struct.ic_softc** %8, align 8
  %18 = getelementptr inbounds %struct.ic_softc, %struct.ic_softc* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @device_get_parent(i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i64, i64* %7, align 8
  %23 = inttoptr i64 %22 to %struct.ifaddr*
  store %struct.ifaddr* %23, %struct.ifaddr** %11, align 8
  %24 = load i64, i64* %7, align 8
  %25 = inttoptr i64 %24 to %struct.ifreq*
  store %struct.ifreq* %25, %struct.ifreq** %12, align 8
  %26 = load i32, i32* %6, align 4
  switch i32 %26, label %153 [
    i32 133, label %27
    i32 130, label %27
    i32 129, label %45
    i32 128, label %119
    i32 131, label %125
    i32 134, label %139
    i32 132, label %139
  ]

27:                                               ; preds = %3, %3
  %28 = load %struct.ifaddr*, %struct.ifaddr** %11, align 8
  %29 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 135
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* @EAFNOSUPPORT, align 4
  store i32 %35, i32* %4, align 4
  br label %156

36:                                               ; preds = %27
  %37 = load %struct.ic_softc*, %struct.ic_softc** %8, align 8
  %38 = getelementptr inbounds %struct.ic_softc, %struct.ic_softc* %37, i32 0, i32 0
  %39 = call i32 @mtx_lock(i32* %38)
  %40 = load i32, i32* @IFF_UP, align 4
  %41 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %42 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 8
  br label %49

45:                                               ; preds = %3
  %46 = load %struct.ic_softc*, %struct.ic_softc** %8, align 8
  %47 = getelementptr inbounds %struct.ic_softc, %struct.ic_softc* %46, i32 0, i32 0
  %48 = call i32 @mtx_lock(i32* %47)
  br label %49

49:                                               ; preds = %45, %36
  %50 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %51 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @IFF_UP, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %76, label %56

56:                                               ; preds = %49
  %57 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %58 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %56
  %64 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %65 = xor i32 %64, -1
  %66 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %67 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, %65
  store i32 %69, i32* %67, align 4
  %70 = load %struct.ic_softc*, %struct.ic_softc** %8, align 8
  %71 = getelementptr inbounds %struct.ic_softc, %struct.ic_softc* %70, i32 0, i32 0
  %72 = call i32 @mtx_unlock(i32* %71)
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @iicbus_release_bus(i32 %73, i32 %74)
  br label %155

76:                                               ; preds = %56, %49
  %77 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %78 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @IFF_UP, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %115

83:                                               ; preds = %76
  %84 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %85 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %115, label %90

90:                                               ; preds = %83
  %91 = load %struct.ic_softc*, %struct.ic_softc** %8, align 8
  %92 = getelementptr inbounds %struct.ic_softc, %struct.ic_softc* %91, i32 0, i32 0
  %93 = call i32 @mtx_unlock(i32* %92)
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* @IIC_WAIT, align 4
  %97 = load i32, i32* @IIC_INTR, align 4
  %98 = or i32 %96, %97
  %99 = call i32 @iicbus_request_bus(i32 %94, i32 %95, i32 %98)
  store i32 %99, i32* %13, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %90
  %102 = load i32, i32* %13, align 4
  store i32 %102, i32* %4, align 4
  br label %156

103:                                              ; preds = %90
  %104 = load %struct.ic_softc*, %struct.ic_softc** %8, align 8
  %105 = getelementptr inbounds %struct.ic_softc, %struct.ic_softc* %104, i32 0, i32 0
  %106 = call i32 @mtx_lock(i32* %105)
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* @IIC_FASTEST, align 4
  %109 = call i32 @iicbus_reset(i32 %107, i32 %108, i32 0, i32* null)
  %110 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %111 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %112 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 4
  br label %115

115:                                              ; preds = %103, %83, %76
  %116 = load %struct.ic_softc*, %struct.ic_softc** %8, align 8
  %117 = getelementptr inbounds %struct.ic_softc, %struct.ic_softc* %116, i32 0, i32 0
  %118 = call i32 @mtx_unlock(i32* %117)
  br label %155

119:                                              ; preds = %3
  %120 = load %struct.ic_softc*, %struct.ic_softc** %8, align 8
  %121 = load %struct.ifreq*, %struct.ifreq** %12, align 8
  %122 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @ic_alloc_buffers(%struct.ic_softc* %120, i32 %123)
  br label %155

125:                                              ; preds = %3
  %126 = load %struct.ic_softc*, %struct.ic_softc** %8, align 8
  %127 = getelementptr inbounds %struct.ic_softc, %struct.ic_softc* %126, i32 0, i32 0
  %128 = call i32 @mtx_lock(i32* %127)
  %129 = load %struct.ic_softc*, %struct.ic_softc** %8, align 8
  %130 = getelementptr inbounds %struct.ic_softc, %struct.ic_softc* %129, i32 0, i32 1
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.ifreq*, %struct.ifreq** %12, align 8
  %135 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 4
  %136 = load %struct.ic_softc*, %struct.ic_softc** %8, align 8
  %137 = getelementptr inbounds %struct.ic_softc, %struct.ic_softc* %136, i32 0, i32 0
  %138 = call i32 @mtx_unlock(i32* %137)
  br label %155

139:                                              ; preds = %3, %3
  %140 = load %struct.ifreq*, %struct.ifreq** %12, align 8
  %141 = icmp eq %struct.ifreq* %140, null
  br i1 %141, label %142, label %144

142:                                              ; preds = %139
  %143 = load i32, i32* @EAFNOSUPPORT, align 4
  store i32 %143, i32* %4, align 4
  br label %156

144:                                              ; preds = %139
  %145 = load %struct.ifreq*, %struct.ifreq** %12, align 8
  %146 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  switch i32 %148, label %150 [
    i32 135, label %149
  ]

149:                                              ; preds = %144
  br label %152

150:                                              ; preds = %144
  %151 = load i32, i32* @EAFNOSUPPORT, align 4
  store i32 %151, i32* %4, align 4
  br label %156

152:                                              ; preds = %149
  br label %155

153:                                              ; preds = %3
  %154 = load i32, i32* @EINVAL, align 4
  store i32 %154, i32* %4, align 4
  br label %156

155:                                              ; preds = %152, %125, %119, %115, %63
  store i32 0, i32* %4, align 4
  br label %156

156:                                              ; preds = %155, %153, %150, %142, %101, %34
  %157 = load i32, i32* %4, align 4
  ret i32 %157
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @iicbus_release_bus(i32, i32) #1

declare dso_local i32 @iicbus_request_bus(i32, i32, i32) #1

declare dso_local i32 @iicbus_reset(i32, i32, i32, i32*) #1

declare dso_local i32 @ic_alloc_buffers(%struct.ic_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
