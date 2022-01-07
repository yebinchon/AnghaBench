; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_ipsec.c_ipsec_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_ipsec.c_ipsec_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.ifnet = type { %struct.ipsec_softc*, i32, i32 }
%struct.ipsec_softc = type { i32, i32, i32 }
%struct.ifreq = type { i32, i32, i32 }
%struct.sockaddr = type { i32, i32 }
%struct.secasindex = type { %struct.TYPE_23__, %struct.TYPE_21__ }
%struct.TYPE_23__ = type { %struct.TYPE_22__, %struct.TYPE_19__ }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__, %struct.TYPE_18__, %struct.TYPE_17__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32 }

@IFF_UP = common dso_local global i32 0, align 4
@IPSEC_MTU_MIN = common dso_local global i32 0, align 4
@IPSEC_MTU_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ipsec_ioctl_sx = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@IPSEC_DIR_OUTBOUND = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_15__* null, align 8
@PRIV_NET_SETIFFIB = common dso_local global i32 0, align 4
@rt_numfibs = common dso_local global i32 0, align 4
@PRIV_NET_SETIFCAP = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i64)* @ipsec_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipsec_ioctl(%struct.ifnet* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.ifreq*, align 8
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca %struct.sockaddr*, align 8
  %11 = alloca %struct.ipsec_softc*, align 8
  %12 = alloca %struct.secasindex*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %15 = load i64, i64* %7, align 8
  %16 = inttoptr i64 %15 to %struct.ifreq*
  store %struct.ifreq* %16, %struct.ifreq** %8, align 8
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %46 [
    i32 133, label %18
    i32 142, label %24
    i32 141, label %24
    i32 139, label %24
    i32 132, label %24
    i32 131, label %25
  ]

18:                                               ; preds = %3
  %19 = load i32, i32* @IFF_UP, align 4
  %20 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %21 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  br label %24

24:                                               ; preds = %3, %3, %3, %3, %18
  store i32 0, i32* %4, align 4
  br label %151

25:                                               ; preds = %3
  %26 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %27 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @IPSEC_MTU_MIN, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %37, label %31

31:                                               ; preds = %25
  %32 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %33 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @IPSEC_MTU_MAX, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31, %25
  %38 = load i32, i32* @EINVAL, align 4
  store i32 %38, i32* %4, align 4
  br label %151

39:                                               ; preds = %31
  %40 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %41 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %44 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  br label %45

45:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %151

46:                                               ; preds = %3
  %47 = call i32 @sx_xlock(i32* @ipsec_ioctl_sx)
  %48 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %49 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %48, i32 0, i32 0
  %50 = load %struct.ipsec_softc*, %struct.ipsec_softc** %49, align 8
  store %struct.ipsec_softc* %50, %struct.ipsec_softc** %11, align 8
  %51 = load %struct.ipsec_softc*, %struct.ipsec_softc** %11, align 8
  %52 = icmp eq %struct.ipsec_softc* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i32, i32* @ENXIO, align 4
  store i32 %54, i32* %14, align 4
  br label %148

55:                                               ; preds = %46
  store i32 0, i32* %14, align 4
  %56 = load i32, i32* %6, align 4
  switch i32 %56, label %145 [
    i32 130, label %57
    i32 140, label %61
    i32 136, label %64
    i32 138, label %64
    i32 134, label %94
    i32 128, label %100
    i32 144, label %121
    i32 143, label %128
  ]

57:                                               ; preds = %55
  %58 = load i32, i32* @EINVAL, align 4
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %6, align 4
  switch i32 %59, label %60 [
  ]

60:                                               ; preds = %57
  br label %148

61:                                               ; preds = %55
  %62 = load %struct.ipsec_softc*, %struct.ipsec_softc** %11, align 8
  %63 = call i32 @ipsec_delete_tunnel(%struct.ipsec_softc* %62)
  br label %147

64:                                               ; preds = %55, %55
  %65 = load %struct.ipsec_softc*, %struct.ipsec_softc** %11, align 8
  %66 = getelementptr inbounds %struct.ipsec_softc, %struct.ipsec_softc* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load i32, i32* @EADDRNOTAVAIL, align 4
  store i32 %70, i32* %14, align 4
  br label %147

71:                                               ; preds = %64
  %72 = load %struct.ipsec_softc*, %struct.ipsec_softc** %11, align 8
  %73 = load i32, i32* @IPSEC_DIR_OUTBOUND, align 4
  %74 = load %struct.ipsec_softc*, %struct.ipsec_softc** %11, align 8
  %75 = getelementptr inbounds %struct.ipsec_softc, %struct.ipsec_softc* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call %struct.secasindex* @ipsec_getsaidx(%struct.ipsec_softc* %72, i32 %73, i32 %76)
  store %struct.secasindex* %77, %struct.secasindex** %12, align 8
  %78 = load i32, i32* %6, align 4
  switch i32 %78, label %79 [
  ]

79:                                               ; preds = %71
  %80 = load i32, i32* @EAFNOSUPPORT, align 4
  store i32 %80, i32* %14, align 4
  br label %81

81:                                               ; preds = %79
  %82 = load i32, i32* %14, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load i32, i32* %6, align 4
  switch i32 %85, label %86 [
  ]

86:                                               ; preds = %84
  br label %87

87:                                               ; preds = %86, %81
  %88 = load i32, i32* %14, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  br label %147

91:                                               ; preds = %87
  %92 = load i32, i32* %6, align 4
  switch i32 %92, label %93 [
  ]

93:                                               ; preds = %91
  br label %147

94:                                               ; preds = %55
  %95 = load %struct.ipsec_softc*, %struct.ipsec_softc** %11, align 8
  %96 = getelementptr inbounds %struct.ipsec_softc, %struct.ipsec_softc* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %99 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 4
  br label %147

100:                                              ; preds = %55
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** @curthread, align 8
  %102 = load i32, i32* @PRIV_NET_SETIFFIB, align 4
  %103 = call i32 @priv_check(%struct.TYPE_15__* %101, i32 %102)
  store i32 %103, i32* %14, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  br label %147

106:                                              ; preds = %100
  %107 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %108 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @rt_numfibs, align 4
  %111 = icmp sge i32 %109, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %106
  %113 = load i32, i32* @EINVAL, align 4
  store i32 %113, i32* %14, align 4
  br label %120

114:                                              ; preds = %106
  %115 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %116 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.ipsec_softc*, %struct.ipsec_softc** %11, align 8
  %119 = getelementptr inbounds %struct.ipsec_softc, %struct.ipsec_softc* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 4
  br label %120

120:                                              ; preds = %114, %112
  br label %147

121:                                              ; preds = %55
  %122 = load %struct.ipsec_softc*, %struct.ipsec_softc** %11, align 8
  %123 = getelementptr inbounds %struct.ipsec_softc, %struct.ipsec_softc* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %13, align 4
  %125 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %126 = call i32 @ifr_data_get_ptr(%struct.ifreq* %125)
  %127 = call i32 @copyout(i32* %13, i32 %126, i32 4)
  store i32 %127, i32* %14, align 4
  br label %147

128:                                              ; preds = %55
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** @curthread, align 8
  %130 = load i32, i32* @PRIV_NET_SETIFCAP, align 4
  %131 = call i32 @priv_check(%struct.TYPE_15__* %129, i32 %130)
  store i32 %131, i32* %14, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %128
  br label %147

134:                                              ; preds = %128
  %135 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %136 = call i32 @ifr_data_get_ptr(%struct.ifreq* %135)
  %137 = call i32 @copyin(i32 %136, i32* %13, i32 4)
  store i32 %137, i32* %14, align 4
  %138 = load i32, i32* %14, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %134
  br label %147

141:                                              ; preds = %134
  %142 = load %struct.ipsec_softc*, %struct.ipsec_softc** %11, align 8
  %143 = load i32, i32* %13, align 4
  %144 = call i32 @ipsec_set_reqid(%struct.ipsec_softc* %142, i32 %143)
  store i32 %144, i32* %14, align 4
  br label %147

145:                                              ; preds = %55
  %146 = load i32, i32* @EINVAL, align 4
  store i32 %146, i32* %14, align 4
  br label %147

147:                                              ; preds = %145, %141, %140, %133, %121, %120, %105, %94, %93, %90, %69, %61
  br label %148

148:                                              ; preds = %147, %60, %53
  %149 = call i32 @sx_xunlock(i32* @ipsec_ioctl_sx)
  %150 = load i32, i32* %14, align 4
  store i32 %150, i32* %4, align 4
  br label %151

151:                                              ; preds = %148, %45, %37, %24
  %152 = load i32, i32* %4, align 4
  ret i32 %152
}

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @ipsec_delete_tunnel(%struct.ipsec_softc*) #1

declare dso_local %struct.secasindex* @ipsec_getsaidx(%struct.ipsec_softc*, i32, i32) #1

declare dso_local i32 @priv_check(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @copyout(i32*, i32, i32) #1

declare dso_local i32 @ifr_data_get_ptr(%struct.ifreq*) #1

declare dso_local i32 @copyin(i32, i32*, i32) #1

declare dso_local i32 @ipsec_set_reqid(%struct.ipsec_softc*, i32) #1

declare dso_local i32 @sx_xunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
