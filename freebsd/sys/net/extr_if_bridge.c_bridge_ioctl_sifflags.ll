; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_bridge.c_bridge_ioctl_sifflags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_bridge.c_bridge_ioctl_sifflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bridge_softc = type { i32 }
%struct.ifbreq = type { i32, i32 }
%struct.bridge_iflist = type { i32, %struct.bstp_port }
%struct.bstp_port = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@IFBIF_SPAN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IFBIF_STP = common dso_local global i32 0, align 4
@IFBIF_BSTP_EDGE = common dso_local global i32 0, align 4
@IFBIF_BSTP_AUTOEDGE = common dso_local global i32 0, align 4
@IFBIF_BSTP_PTP = common dso_local global i32 0, align 4
@IFBIF_BSTP_AUTOPTP = common dso_local global i32 0, align 4
@IFBIFMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bridge_softc*, i8*)* @bridge_ioctl_sifflags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bridge_ioctl_sifflags(%struct.bridge_softc* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bridge_softc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ifbreq*, align 8
  %7 = alloca %struct.bridge_iflist*, align 8
  %8 = alloca %struct.bstp_port*, align 8
  %9 = alloca i32, align 4
  store %struct.bridge_softc* %0, %struct.bridge_softc** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.ifbreq*
  store %struct.ifbreq* %11, %struct.ifbreq** %6, align 8
  %12 = load %struct.bridge_softc*, %struct.bridge_softc** %4, align 8
  %13 = load %struct.ifbreq*, %struct.ifbreq** %6, align 8
  %14 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.bridge_iflist* @bridge_lookup_member(%struct.bridge_softc* %12, i32 %15)
  store %struct.bridge_iflist* %16, %struct.bridge_iflist** %7, align 8
  %17 = load %struct.bridge_iflist*, %struct.bridge_iflist** %7, align 8
  %18 = icmp eq %struct.bridge_iflist* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOENT, align 4
  store i32 %20, i32* %3, align 4
  br label %116

21:                                               ; preds = %2
  %22 = load %struct.bridge_iflist*, %struct.bridge_iflist** %7, align 8
  %23 = getelementptr inbounds %struct.bridge_iflist, %struct.bridge_iflist* %22, i32 0, i32 1
  store %struct.bstp_port* %23, %struct.bstp_port** %8, align 8
  %24 = load %struct.ifbreq*, %struct.ifbreq** %6, align 8
  %25 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @IFBIF_SPAN, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = load i32, i32* @EINVAL, align 4
  store i32 %31, i32* %3, align 4
  br label %116

32:                                               ; preds = %21
  %33 = load %struct.ifbreq*, %struct.ifbreq** %6, align 8
  %34 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @IFBIF_STP, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %32
  %40 = load %struct.bridge_iflist*, %struct.bridge_iflist** %7, align 8
  %41 = getelementptr inbounds %struct.bridge_iflist, %struct.bridge_iflist* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @IFBIF_STP, align 4
  %44 = and i32 %42, %43
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %39
  %47 = load %struct.bridge_iflist*, %struct.bridge_iflist** %7, align 8
  %48 = getelementptr inbounds %struct.bridge_iflist, %struct.bridge_iflist* %47, i32 0, i32 1
  %49 = call i32 @bstp_enable(%struct.bstp_port* %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %3, align 4
  br label %116

54:                                               ; preds = %46
  br label %55

55:                                               ; preds = %54, %39
  br label %68

56:                                               ; preds = %32
  %57 = load %struct.bridge_iflist*, %struct.bridge_iflist** %7, align 8
  %58 = getelementptr inbounds %struct.bridge_iflist, %struct.bridge_iflist* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @IFBIF_STP, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %56
  %64 = load %struct.bridge_iflist*, %struct.bridge_iflist** %7, align 8
  %65 = getelementptr inbounds %struct.bridge_iflist, %struct.bridge_iflist* %64, i32 0, i32 1
  %66 = call i32 @bstp_disable(%struct.bstp_port* %65)
  br label %67

67:                                               ; preds = %63, %56
  br label %68

68:                                               ; preds = %67, %55
  %69 = load %struct.bstp_port*, %struct.bstp_port** %8, align 8
  %70 = load %struct.ifbreq*, %struct.ifbreq** %6, align 8
  %71 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @IFBIF_BSTP_EDGE, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i32 1, i32 0
  %78 = call i32 @bstp_set_edge(%struct.bstp_port* %69, i32 %77)
  %79 = load %struct.bstp_port*, %struct.bstp_port** %8, align 8
  %80 = load %struct.ifbreq*, %struct.ifbreq** %6, align 8
  %81 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @IFBIF_BSTP_AUTOEDGE, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i32 1, i32 0
  %88 = call i32 @bstp_set_autoedge(%struct.bstp_port* %79, i32 %87)
  %89 = load %struct.bstp_port*, %struct.bstp_port** %8, align 8
  %90 = load %struct.ifbreq*, %struct.ifbreq** %6, align 8
  %91 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @IFBIF_BSTP_PTP, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i32 1, i32 0
  %98 = call i32 @bstp_set_ptp(%struct.bstp_port* %89, i32 %97)
  %99 = load %struct.bstp_port*, %struct.bstp_port** %8, align 8
  %100 = load %struct.ifbreq*, %struct.ifbreq** %6, align 8
  %101 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @IFBIF_BSTP_AUTOPTP, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  %106 = zext i1 %105 to i64
  %107 = select i1 %105, i32 1, i32 0
  %108 = call i32 @bstp_set_autoptp(%struct.bstp_port* %99, i32 %107)
  %109 = load %struct.ifbreq*, %struct.ifbreq** %6, align 8
  %110 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @IFBIFMASK, align 4
  %113 = and i32 %111, %112
  %114 = load %struct.bridge_iflist*, %struct.bridge_iflist** %7, align 8
  %115 = getelementptr inbounds %struct.bridge_iflist, %struct.bridge_iflist* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 4
  store i32 0, i32* %3, align 4
  br label %116

116:                                              ; preds = %68, %52, %30, %19
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local %struct.bridge_iflist* @bridge_lookup_member(%struct.bridge_softc*, i32) #1

declare dso_local i32 @bstp_enable(%struct.bstp_port*) #1

declare dso_local i32 @bstp_disable(%struct.bstp_port*) #1

declare dso_local i32 @bstp_set_edge(%struct.bstp_port*, i32) #1

declare dso_local i32 @bstp_set_autoedge(%struct.bstp_port*, i32) #1

declare dso_local i32 @bstp_set_ptp(%struct.bstp_port*, i32) #1

declare dso_local i32 @bstp_set_autoptp(%struct.bstp_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
