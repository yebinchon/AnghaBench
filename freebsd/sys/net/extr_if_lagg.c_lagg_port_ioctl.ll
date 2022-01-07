; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_lagg.c_lagg_port_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_lagg.c_lagg_port_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i64, %struct.lagg_port* }
%struct.lagg_port = type { i32 (%struct.ifnet.0*, i32, i64)*, %struct.lagg_softc* }
%struct.ifnet.0 = type opaque
%struct.lagg_softc = type { i32 }
%struct.lagg_reqport = type { i8* }

@IFT_IEEE8023ADLAG = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i64)* @lagg_port_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lagg_port_ioctl(%struct.ifnet* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.lagg_reqport*, align 8
  %9 = alloca %struct.lagg_softc*, align 8
  %10 = alloca %struct.lagg_port*, align 8
  %11 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  %13 = inttoptr i64 %12 to %struct.lagg_reqport*
  store %struct.lagg_reqport* %13, %struct.lagg_reqport** %8, align 8
  store %struct.lagg_port* null, %struct.lagg_port** %10, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %15 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @IFT_IEEE8023ADLAG, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %29, label %19

19:                                               ; preds = %3
  %20 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %21 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %20, i32 0, i32 1
  %22 = load %struct.lagg_port*, %struct.lagg_port** %21, align 8
  store %struct.lagg_port* %22, %struct.lagg_port** %10, align 8
  %23 = icmp eq %struct.lagg_port* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load %struct.lagg_port*, %struct.lagg_port** %10, align 8
  %26 = getelementptr inbounds %struct.lagg_port, %struct.lagg_port* %25, i32 0, i32 1
  %27 = load %struct.lagg_softc*, %struct.lagg_softc** %26, align 8
  store %struct.lagg_softc* %27, %struct.lagg_softc** %9, align 8
  %28 = icmp eq %struct.lagg_softc* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %24, %19, %3
  br label %104

30:                                               ; preds = %24
  %31 = load i32, i32* %6, align 4
  switch i32 %31, label %101 [
    i32 130, label %32
    i32 129, label %69
    i32 128, label %99
  ]

32:                                               ; preds = %30
  %33 = load %struct.lagg_reqport*, %struct.lagg_reqport** %8, align 8
  %34 = getelementptr inbounds %struct.lagg_reqport, %struct.lagg_reqport* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %32
  %41 = load %struct.lagg_reqport*, %struct.lagg_reqport** %8, align 8
  %42 = getelementptr inbounds %struct.lagg_reqport, %struct.lagg_reqport* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call %struct.ifnet* @ifunit(i8* %43)
  %45 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %46 = icmp ne %struct.ifnet* %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %40, %32
  %48 = load i32, i32* @EINVAL, align 4
  store i32 %48, i32* %11, align 4
  br label %102

49:                                               ; preds = %40
  %50 = call i32 (...) @LAGG_RLOCK()
  %51 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %52 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %51, i32 0, i32 1
  %53 = load %struct.lagg_port*, %struct.lagg_port** %52, align 8
  store %struct.lagg_port* %53, %struct.lagg_port** %10, align 8
  %54 = icmp eq %struct.lagg_port* %53, null
  br i1 %54, label %61, label %55

55:                                               ; preds = %49
  %56 = load %struct.lagg_port*, %struct.lagg_port** %10, align 8
  %57 = getelementptr inbounds %struct.lagg_port, %struct.lagg_port* %56, i32 0, i32 1
  %58 = load %struct.lagg_softc*, %struct.lagg_softc** %57, align 8
  %59 = load %struct.lagg_softc*, %struct.lagg_softc** %9, align 8
  %60 = icmp ne %struct.lagg_softc* %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %55, %49
  %62 = load i32, i32* @ENOENT, align 4
  store i32 %62, i32* %11, align 4
  %63 = call i32 (...) @LAGG_RUNLOCK()
  br label %102

64:                                               ; preds = %55
  %65 = load %struct.lagg_port*, %struct.lagg_port** %10, align 8
  %66 = load %struct.lagg_reqport*, %struct.lagg_reqport** %8, align 8
  %67 = call i32 @lagg_port2req(%struct.lagg_port* %65, %struct.lagg_reqport* %66)
  %68 = call i32 (...) @LAGG_RUNLOCK()
  br label %102

69:                                               ; preds = %30
  %70 = load %struct.lagg_port*, %struct.lagg_port** %10, align 8
  %71 = getelementptr inbounds %struct.lagg_port, %struct.lagg_port* %70, i32 0, i32 0
  %72 = load i32 (%struct.ifnet.0*, i32, i64)*, i32 (%struct.ifnet.0*, i32, i64)** %71, align 8
  %73 = icmp eq i32 (%struct.ifnet.0*, i32, i64)* %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load i32, i32* @EINVAL, align 4
  store i32 %75, i32* %11, align 4
  br label %102

76:                                               ; preds = %69
  %77 = load %struct.lagg_port*, %struct.lagg_port** %10, align 8
  %78 = getelementptr inbounds %struct.lagg_port, %struct.lagg_port* %77, i32 0, i32 0
  %79 = load i32 (%struct.ifnet.0*, i32, i64)*, i32 (%struct.ifnet.0*, i32, i64)** %78, align 8
  %80 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %81 = bitcast %struct.ifnet* %80 to %struct.ifnet.0*
  %82 = load i32, i32* %6, align 4
  %83 = load i64, i64* %7, align 8
  %84 = call i32 %79(%struct.ifnet.0* %81, i32 %82, i64 %83)
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %11, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %76
  br label %102

88:                                               ; preds = %76
  %89 = load %struct.lagg_softc*, %struct.lagg_softc** %9, align 8
  %90 = call i32 @LAGG_XLOCK(%struct.lagg_softc* %89)
  %91 = load %struct.lagg_softc*, %struct.lagg_softc** %9, align 8
  %92 = call i32 @lagg_capabilities(%struct.lagg_softc* %91)
  %93 = load %struct.lagg_softc*, %struct.lagg_softc** %9, align 8
  %94 = call i32 @LAGG_XUNLOCK(%struct.lagg_softc* %93)
  %95 = load %struct.lagg_softc*, %struct.lagg_softc** %9, align 8
  %96 = getelementptr inbounds %struct.lagg_softc, %struct.lagg_softc* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @VLAN_CAPABILITIES(i32 %97)
  br label %102

99:                                               ; preds = %30
  %100 = load i32, i32* @EINVAL, align 4
  store i32 %100, i32* %11, align 4
  br label %102

101:                                              ; preds = %30
  br label %104

102:                                              ; preds = %99, %88, %87, %74, %64, %61, %47
  %103 = load i32, i32* %11, align 4
  store i32 %103, i32* %4, align 4
  br label %123

104:                                              ; preds = %101, %29
  %105 = load %struct.lagg_port*, %struct.lagg_port** %10, align 8
  %106 = icmp ne %struct.lagg_port* %105, null
  br i1 %106, label %107, label %121

107:                                              ; preds = %104
  %108 = load %struct.lagg_port*, %struct.lagg_port** %10, align 8
  %109 = getelementptr inbounds %struct.lagg_port, %struct.lagg_port* %108, i32 0, i32 0
  %110 = load i32 (%struct.ifnet.0*, i32, i64)*, i32 (%struct.ifnet.0*, i32, i64)** %109, align 8
  %111 = icmp ne i32 (%struct.ifnet.0*, i32, i64)* %110, null
  br i1 %111, label %112, label %121

112:                                              ; preds = %107
  %113 = load %struct.lagg_port*, %struct.lagg_port** %10, align 8
  %114 = getelementptr inbounds %struct.lagg_port, %struct.lagg_port* %113, i32 0, i32 0
  %115 = load i32 (%struct.ifnet.0*, i32, i64)*, i32 (%struct.ifnet.0*, i32, i64)** %114, align 8
  %116 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %117 = bitcast %struct.ifnet* %116 to %struct.ifnet.0*
  %118 = load i32, i32* %6, align 4
  %119 = load i64, i64* %7, align 8
  %120 = call i32 %115(%struct.ifnet.0* %117, i32 %118, i64 %119)
  store i32 %120, i32* %4, align 4
  br label %123

121:                                              ; preds = %107, %104
  %122 = load i32, i32* @EINVAL, align 4
  store i32 %122, i32* %4, align 4
  br label %123

123:                                              ; preds = %121, %112, %102
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local %struct.ifnet* @ifunit(i8*) #1

declare dso_local i32 @LAGG_RLOCK(...) #1

declare dso_local i32 @LAGG_RUNLOCK(...) #1

declare dso_local i32 @lagg_port2req(%struct.lagg_port*, %struct.lagg_reqport*) #1

declare dso_local i32 @LAGG_XLOCK(%struct.lagg_softc*) #1

declare dso_local i32 @lagg_capabilities(%struct.lagg_softc*) #1

declare dso_local i32 @LAGG_XUNLOCK(%struct.lagg_softc*) #1

declare dso_local i32 @VLAN_CAPABILITIES(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
