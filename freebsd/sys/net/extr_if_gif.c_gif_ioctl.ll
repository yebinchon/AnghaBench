; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_gif.c_gif_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_gif.c_gif_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.gif_softc*, i32, i32 }
%struct.gif_softc = type { i64, i32, i32 }
%struct.ifreq = type { i32, i32 }

@IFF_UP = common dso_local global i32 0, align 4
@GIF_MTU_MIN = common dso_local global i32 0, align 4
@GIF_MTU_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@gif_ioctl_sx = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@PRIV_NET_GIF = common dso_local global i32 0, align 4
@rt_numfibs = common dso_local global i32 0, align 4
@GIF_OPTMASK = common dso_local global i32 0, align 4
@LINK_STATE_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i64)* @gif_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gif_ioctl(%struct.ifnet* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.ifreq*, align 8
  %9 = alloca %struct.gif_softc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  %13 = inttoptr i64 %12 to %struct.ifreq*
  store %struct.ifreq* %13, %struct.ifreq** %8, align 8
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %43 [
    i32 133, label %15
    i32 142, label %21
    i32 141, label %21
    i32 139, label %21
    i32 132, label %21
    i32 131, label %22
  ]

15:                                               ; preds = %3
  %16 = load i32, i32* @IFF_UP, align 4
  %17 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %18 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 4
  br label %21

21:                                               ; preds = %3, %3, %3, %3, %15
  store i32 0, i32* %4, align 4
  br label %149

22:                                               ; preds = %3
  %23 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %24 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @GIF_MTU_MIN, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %30 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @GIF_MTU_MAX, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %28, %22
  %35 = load i32, i32* @EINVAL, align 4
  store i32 %35, i32* %4, align 4
  br label %149

36:                                               ; preds = %28
  %37 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %38 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %41 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  br label %42

42:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %149

43:                                               ; preds = %3
  %44 = call i32 @sx_xlock(i32* @gif_ioctl_sx)
  %45 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %46 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %45, i32 0, i32 0
  %47 = load %struct.gif_softc*, %struct.gif_softc** %46, align 8
  store %struct.gif_softc* %47, %struct.gif_softc** %9, align 8
  %48 = load %struct.gif_softc*, %struct.gif_softc** %9, align 8
  %49 = icmp eq %struct.gif_softc* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* @ENXIO, align 4
  store i32 %51, i32* %11, align 4
  br label %146

52:                                               ; preds = %43
  store i32 0, i32* %11, align 4
  %53 = load i32, i32* %6, align 4
  switch i32 %53, label %134 [
    i32 140, label %54
    i32 134, label %63
    i32 128, label %69
    i32 144, label %90
    i32 143, label %97
  ]

54:                                               ; preds = %52
  %55 = load %struct.gif_softc*, %struct.gif_softc** %9, align 8
  %56 = getelementptr inbounds %struct.gif_softc, %struct.gif_softc* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %136

60:                                               ; preds = %54
  %61 = load %struct.gif_softc*, %struct.gif_softc** %9, align 8
  %62 = call i32 @gif_delete_tunnel(%struct.gif_softc* %61)
  br label %136

63:                                               ; preds = %52
  %64 = load %struct.gif_softc*, %struct.gif_softc** %9, align 8
  %65 = getelementptr inbounds %struct.gif_softc, %struct.gif_softc* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %68 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  br label %136

69:                                               ; preds = %52
  %70 = load i32, i32* @curthread, align 4
  %71 = load i32, i32* @PRIV_NET_GIF, align 4
  %72 = call i32 @priv_check(i32 %70, i32 %71)
  store i32 %72, i32* %11, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  br label %136

75:                                               ; preds = %69
  %76 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %77 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @rt_numfibs, align 4
  %80 = icmp sge i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  %82 = load i32, i32* @EINVAL, align 4
  store i32 %82, i32* %11, align 4
  br label %89

83:                                               ; preds = %75
  %84 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %85 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.gif_softc*, %struct.gif_softc** %9, align 8
  %88 = getelementptr inbounds %struct.gif_softc, %struct.gif_softc* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 4
  br label %89

89:                                               ; preds = %83, %81
  br label %136

90:                                               ; preds = %52
  %91 = load %struct.gif_softc*, %struct.gif_softc** %9, align 8
  %92 = getelementptr inbounds %struct.gif_softc, %struct.gif_softc* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  store i32 %93, i32* %10, align 4
  %94 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %95 = call i32 @ifr_data_get_ptr(%struct.ifreq* %94)
  %96 = call i32 @copyout(i32* %10, i32 %95, i32 4)
  store i32 %96, i32* %11, align 4
  br label %136

97:                                               ; preds = %52
  %98 = load i32, i32* @curthread, align 4
  %99 = load i32, i32* @PRIV_NET_GIF, align 4
  %100 = call i32 @priv_check(i32 %98, i32 %99)
  store i32 %100, i32* %11, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  br label %136

103:                                              ; preds = %97
  %104 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %105 = call i32 @ifr_data_get_ptr(%struct.ifreq* %104)
  %106 = call i32 @copyin(i32 %105, i32* %10, i32 4)
  store i32 %106, i32* %11, align 4
  %107 = load i32, i32* %11, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  br label %136

110:                                              ; preds = %103
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* @GIF_OPTMASK, align 4
  %113 = xor i32 %112, -1
  %114 = and i32 %111, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %110
  %117 = load i32, i32* @EINVAL, align 4
  store i32 %117, i32* %11, align 4
  br label %136

118:                                              ; preds = %110
  %119 = load %struct.gif_softc*, %struct.gif_softc** %9, align 8
  %120 = getelementptr inbounds %struct.gif_softc, %struct.gif_softc* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* %10, align 4
  %123 = icmp ne i32 %121, %122
  br i1 %123, label %124, label %133

124:                                              ; preds = %118
  %125 = load %struct.gif_softc*, %struct.gif_softc** %9, align 8
  %126 = getelementptr inbounds %struct.gif_softc, %struct.gif_softc* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  switch i64 %127, label %128 [
  ]

128:                                              ; preds = %124
  %129 = load i32, i32* %10, align 4
  %130 = load %struct.gif_softc*, %struct.gif_softc** %9, align 8
  %131 = getelementptr inbounds %struct.gif_softc, %struct.gif_softc* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 8
  br label %132

132:                                              ; preds = %128
  br label %133

133:                                              ; preds = %132, %118
  br label %136

134:                                              ; preds = %52
  %135 = load i32, i32* @EINVAL, align 4
  store i32 %135, i32* %11, align 4
  br label %136

136:                                              ; preds = %134, %133, %116, %109, %102, %90, %89, %74, %63, %60, %59
  %137 = load i32, i32* %11, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %136
  %140 = load %struct.gif_softc*, %struct.gif_softc** %9, align 8
  %141 = getelementptr inbounds %struct.gif_softc, %struct.gif_softc* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %139
  br label %145

145:                                              ; preds = %144, %139, %136
  br label %146

146:                                              ; preds = %145, %50
  %147 = call i32 @sx_xunlock(i32* @gif_ioctl_sx)
  %148 = load i32, i32* %11, align 4
  store i32 %148, i32* %4, align 4
  br label %149

149:                                              ; preds = %146, %42, %34, %21
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @gif_delete_tunnel(%struct.gif_softc*) #1

declare dso_local i32 @priv_check(i32, i32) #1

declare dso_local i32 @copyout(i32*, i32, i32) #1

declare dso_local i32 @ifr_data_get_ptr(%struct.ifreq*) #1

declare dso_local i32 @copyin(i32, i32*, i32) #1

declare dso_local i32 @sx_xunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
