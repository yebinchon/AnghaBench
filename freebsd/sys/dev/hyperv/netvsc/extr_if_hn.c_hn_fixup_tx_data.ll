; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_fixup_tx_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_fixup_tx_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hn_softc = type { i64, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@hn_tx_chimney_size = common dso_local global i64 0, align 8
@HN_CAP_IPCS = common dso_local global i32 0, align 4
@CSUM_IP = common dso_local global i32 0, align 4
@HN_CAP_TCP4CS = common dso_local global i32 0, align 4
@CSUM_IP_TCP = common dso_local global i32 0, align 4
@HN_CAP_UDP4CS = common dso_local global i32 0, align 4
@hn_enable_udp4cs = common dso_local global i64 0, align 8
@CSUM_IP_UDP = common dso_local global i32 0, align 4
@HN_CAP_TCP6CS = common dso_local global i32 0, align 4
@CSUM_IP6_TCP = common dso_local global i32 0, align 4
@HN_CAP_UDP6CS = common dso_local global i32 0, align 4
@hn_enable_udp6cs = common dso_local global i64 0, align 8
@CSUM_IP6_UDP = common dso_local global i32 0, align 4
@HN_CAP_HASHVAL = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"support HASHVAL pktinfo\0A\00", align 1
@HN_TX_FLAG_HASHVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hn_softc*)* @hn_fixup_tx_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hn_fixup_tx_data(%struct.hn_softc* %0) #0 {
  %2 = alloca %struct.hn_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.hn_softc* %0, %struct.hn_softc** %2, align 8
  %5 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %6 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %7 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = call i32 @hn_set_chim_size(%struct.hn_softc* %5, i64 %8)
  %10 = load i64, i64* @hn_tx_chimney_size, align 8
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %1
  %13 = load i64, i64* @hn_tx_chimney_size, align 8
  %14 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %15 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp slt i64 %13, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %20 = load i64, i64* @hn_tx_chimney_size, align 8
  %21 = call i32 @hn_set_chim_size(%struct.hn_softc* %19, i64 %20)
  br label %22

22:                                               ; preds = %18, %12, %1
  store i32 0, i32* %3, align 4
  %23 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %24 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @HN_CAP_IPCS, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load i32, i32* @CSUM_IP, align 4
  %31 = load i32, i32* %3, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %29, %22
  %34 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %35 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @HN_CAP_TCP4CS, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = load i32, i32* @CSUM_IP_TCP, align 4
  %42 = load i32, i32* %3, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %40, %33
  %45 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %46 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @HN_CAP_UDP4CS, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %44
  %52 = load i64, i64* @hn_enable_udp4cs, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load i32, i32* @CSUM_IP_UDP, align 4
  %56 = load i32, i32* %3, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %54, %51, %44
  %59 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %60 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @HN_CAP_TCP6CS, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %58
  %66 = load i32, i32* @CSUM_IP6_TCP, align 4
  %67 = load i32, i32* %3, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %65, %58
  %70 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %71 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @HN_CAP_UDP6CS, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %69
  %77 = load i64, i64* @hn_enable_udp6cs, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load i32, i32* @CSUM_IP6_UDP, align 4
  %81 = load i32, i32* %3, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %79, %76, %69
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %99, %83
  %85 = load i32, i32* %4, align 4
  %86 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %87 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = icmp slt i32 %85, %88
  br i1 %89, label %90, label %102

90:                                               ; preds = %84
  %91 = load i32, i32* %3, align 4
  %92 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %93 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %92, i32 0, i32 3
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = load i32, i32* %4, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  store i32 %91, i32* %98, align 4
  br label %99

99:                                               ; preds = %90
  %100 = load i32, i32* %4, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %4, align 4
  br label %84

102:                                              ; preds = %84
  %103 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %104 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @HN_CAP_HASHVAL, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %139

109:                                              ; preds = %102
  %110 = load i64, i64* @bootverbose, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %109
  %113 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %114 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @if_printf(i32 %115, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %117

117:                                              ; preds = %112, %109
  store i32 0, i32* %4, align 4
  br label %118

118:                                              ; preds = %135, %117
  %119 = load i32, i32* %4, align 4
  %120 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %121 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = icmp slt i32 %119, %122
  br i1 %123, label %124, label %138

124:                                              ; preds = %118
  %125 = load i32, i32* @HN_TX_FLAG_HASHVAL, align 4
  %126 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %127 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %126, i32 0, i32 3
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = load i32, i32* %4, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = or i32 %133, %125
  store i32 %134, i32* %132, align 4
  br label %135

135:                                              ; preds = %124
  %136 = load i32, i32* %4, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %4, align 4
  br label %118

138:                                              ; preds = %118
  br label %139

139:                                              ; preds = %138, %102
  ret void
}

declare dso_local i32 @hn_set_chim_size(%struct.hn_softc*, i64) #1

declare dso_local i32 @if_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
