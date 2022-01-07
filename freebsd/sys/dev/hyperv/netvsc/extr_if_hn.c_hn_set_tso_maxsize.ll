; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_set_tso_maxsize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_set_tso_maxsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hn_softc = type { i32, i32, %struct.TYPE_2__*, %struct.ifnet* }
%struct.TYPE_2__ = type { i64 }
%struct.ifnet = type { i32, i64 }

@IFCAP_TSO4 = common dso_local global i32 0, align 4
@IFCAP_TSO6 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"invalid NDIS tso sgmin %d\00", align 1
@IP_MAXPACKET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"invalid NDIS tso szmax %d\00", align 1
@ETHER_HDR_LEN = common dso_local global i64 0, align 8
@ETHER_VLAN_ENCAP_LEN = common dso_local global i64 0, align 8
@bootverbose = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"TSO size max %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hn_softc*, i32, i32)* @hn_set_tso_maxsize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hn_set_tso_maxsize(%struct.hn_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hn_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ifnet*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.hn_softc* %0, %struct.hn_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %11 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %10, i32 0, i32 3
  %12 = load %struct.ifnet*, %struct.ifnet** %11, align 8
  store %struct.ifnet* %12, %struct.ifnet** %7, align 8
  %13 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %14 = call i32 @HN_LOCK_ASSERT(%struct.hn_softc* %13)
  %15 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %16 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @IFCAP_TSO4, align 4
  %19 = load i32, i32* @IFCAP_TSO6, align 4
  %20 = or i32 %18, %19
  %21 = and i32 %17, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %120

24:                                               ; preds = %3
  %25 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %26 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp sge i32 %27, 2
  %29 = zext i1 %28 to i32
  %30 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %31 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to i8*
  %35 = call i32 @KASSERT(i32 %29, i8* %34)
  %36 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %37 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = mul nsw i32 %38, %39
  store i32 %40, i32* %9, align 4
  %41 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %42 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp sge i32 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %24
  %47 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %48 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @IP_MAXPACKET, align 4
  %51 = icmp sle i32 %49, %50
  br label %52

52:                                               ; preds = %46, %24
  %53 = phi i1 [ false, %24 ], [ %51, %46 ]
  %54 = zext i1 %53 to i32
  %55 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %56 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = inttoptr i64 %58 to i8*
  %60 = call i32 @KASSERT(i32 %54, i8* %59)
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %52
  %65 = load i32, i32* %9, align 4
  store i32 %65, i32* %5, align 4
  br label %73

66:                                               ; preds = %52
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @IP_MAXPACKET, align 4
  %69 = icmp sgt i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i32, i32* @IP_MAXPACKET, align 4
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %70, %66
  br label %73

73:                                               ; preds = %72, %64
  %74 = load i32, i32* %5, align 4
  %75 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %76 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp sgt i32 %74, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  %80 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %81 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %79, %73
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = load i64, i64* @ETHER_HDR_LEN, align 8
  %87 = load i64, i64* @ETHER_VLAN_ENCAP_LEN, align 8
  %88 = add nsw i64 %86, %87
  %89 = sub nsw i64 %85, %88
  store i64 %89, i64* %8, align 8
  %90 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %91 = call i64 @hn_xpnt_vf_isready(%struct.hn_softc* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %108

93:                                               ; preds = %83
  %94 = load i64, i64* %8, align 8
  %95 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %96 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %95, i32 0, i32 2
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp sgt i64 %94, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %93
  %102 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %103 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %102, i32 0, i32 2
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  store i64 %106, i64* %8, align 8
  br label %107

107:                                              ; preds = %101, %93
  br label %108

108:                                              ; preds = %107, %83
  %109 = load i64, i64* %8, align 8
  %110 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %111 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %110, i32 0, i32 1
  store i64 %109, i64* %111, align 8
  %112 = load i64, i64* @bootverbose, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %108
  %115 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %116 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %117 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @if_printf(%struct.ifnet* %115, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i64 %118)
  br label %120

120:                                              ; preds = %23, %114, %108
  ret void
}

declare dso_local i32 @HN_LOCK_ASSERT(%struct.hn_softc*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @hn_xpnt_vf_isready(%struct.hn_softc*) #1

declare dso_local i32 @if_printf(%struct.ifnet*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
