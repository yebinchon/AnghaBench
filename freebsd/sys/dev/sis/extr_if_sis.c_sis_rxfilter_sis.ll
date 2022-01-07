; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sis/extr_if_sis.c_sis_rxfilter_sis.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sis/extr_if_sis.c_sis_rxfilter_sis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sis_softc = type { i64, %struct.ifnet* }
%struct.ifnet = type { i32 }
%struct.sis_hash_maddr_ctx = type { i32*, %struct.sis_softc* }

@SIS_REV_635 = common dso_local global i64 0, align 8
@SIS_REV_900B = common dso_local global i64 0, align 8
@SIS_RXFILT_CTL = common dso_local global i32 0, align 4
@SIS_RXFILTCTL_ENABLE = common dso_local global i32 0, align 4
@SIS_RXFILTCTL_ALLPHYS = common dso_local global i32 0, align 4
@SIS_RXFILTCTL_BROAD = common dso_local global i32 0, align 4
@SIS_RXFILTCTL_ALLMULTI = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@sis_hash_maddr = common dso_local global i32 0, align 4
@SIS_RXFILT_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sis_softc*)* @sis_rxfilter_sis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sis_rxfilter_sis(%struct.sis_softc* %0) #0 {
  %2 = alloca %struct.sis_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.sis_hash_maddr_ctx, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sis_softc* %0, %struct.sis_softc** %2, align 8
  %8 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %9 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %8, i32 0, i32 1
  %10 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  store %struct.ifnet* %10, %struct.ifnet** %3, align 8
  %11 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %12 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SIS_REV_635, align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %22, label %16

16:                                               ; preds = %1
  %17 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %18 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SIS_REV_900B, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16, %1
  store i32 16, i32* %7, align 4
  br label %24

23:                                               ; preds = %16
  store i32 8, i32* %7, align 4
  br label %24

24:                                               ; preds = %23, %22
  %25 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %26 = load i32, i32* @SIS_RXFILT_CTL, align 4
  %27 = call i32 @CSR_READ_4(%struct.sis_softc* %25, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @SIS_RXFILTCTL_ENABLE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %24
  %33 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %34 = load i32, i32* @SIS_RXFILT_CTL, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @SIS_RXFILTCTL_ENABLE, align 4
  %37 = xor i32 %36, -1
  %38 = and i32 %35, %37
  %39 = call i32 @CSR_WRITE_4(%struct.sis_softc* %33, i32 %34, i32 %38)
  %40 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %41 = load i32, i32* @SIS_RXFILT_CTL, align 4
  %42 = call i32 @CSR_READ_4(%struct.sis_softc* %40, i32 %41)
  br label %43

43:                                               ; preds = %32, %24
  %44 = load i32, i32* @SIS_RXFILTCTL_ALLPHYS, align 4
  %45 = load i32, i32* @SIS_RXFILTCTL_BROAD, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @SIS_RXFILTCTL_ALLMULTI, align 4
  %48 = or i32 %46, %47
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %5, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %5, align 4
  %52 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %53 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @IFF_BROADCAST, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %43
  %59 = load i32, i32* @SIS_RXFILTCTL_BROAD, align 4
  %60 = load i32, i32* %5, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %58, %43
  %63 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %64 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @IFF_ALLMULTI, align 4
  %67 = load i32, i32* @IFF_PROMISC, align 4
  %68 = or i32 %66, %67
  %69 = and i32 %65, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %100

71:                                               ; preds = %62
  %72 = load i32, i32* @SIS_RXFILTCTL_ALLMULTI, align 4
  %73 = load i32, i32* %5, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %5, align 4
  %75 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %76 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @IFF_PROMISC, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %71
  %82 = load i32, i32* @SIS_RXFILTCTL_ALLPHYS, align 4
  %83 = load i32, i32* %5, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %81, %71
  store i32 0, i32* %6, align 4
  br label %86

86:                                               ; preds = %96, %85
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %99

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.sis_hash_maddr_ctx, %struct.sis_hash_maddr_ctx* %4, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  store i32 -1, i32* %95, align 4
  br label %96

96:                                               ; preds = %90
  %97 = load i32, i32* %6, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %6, align 4
  br label %86

99:                                               ; preds = %86
  br label %141

100:                                              ; preds = %62
  store i32 0, i32* %6, align 4
  br label %101

101:                                              ; preds = %111, %100
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* %7, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %114

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.sis_hash_maddr_ctx, %struct.sis_hash_maddr_ctx* %4, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %6, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  store i32 0, i32* %110, align 4
  br label %111

111:                                              ; preds = %105
  %112 = load i32, i32* %6, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %6, align 4
  br label %101

114:                                              ; preds = %101
  %115 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %116 = getelementptr inbounds %struct.sis_hash_maddr_ctx, %struct.sis_hash_maddr_ctx* %4, i32 0, i32 1
  store %struct.sis_softc* %115, %struct.sis_softc** %116, align 8
  %117 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %118 = load i32, i32* @sis_hash_maddr, align 4
  %119 = call i32 @if_foreach_llmaddr(%struct.ifnet* %117, i32 %118, %struct.sis_hash_maddr_ctx* %4)
  %120 = load i32, i32* %7, align 4
  %121 = icmp sgt i32 %119, %120
  br i1 %121, label %122, label %140

122:                                              ; preds = %114
  %123 = load i32, i32* @SIS_RXFILTCTL_ALLMULTI, align 4
  %124 = load i32, i32* %5, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %126

126:                                              ; preds = %136, %122
  %127 = load i32, i32* %6, align 4
  %128 = load i32, i32* %7, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %139

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.sis_hash_maddr_ctx, %struct.sis_hash_maddr_ctx* %4, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %6, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  store i32 -1, i32* %135, align 4
  br label %136

136:                                              ; preds = %130
  %137 = load i32, i32* %6, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %6, align 4
  br label %126

139:                                              ; preds = %126
  br label %140

140:                                              ; preds = %139, %114
  br label %141

141:                                              ; preds = %140, %99
  store i32 0, i32* %6, align 4
  br label %142

142:                                              ; preds = %162, %141
  %143 = load i32, i32* %6, align 4
  %144 = load i32, i32* %7, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %165

146:                                              ; preds = %142
  %147 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %148 = load i32, i32* @SIS_RXFILT_CTL, align 4
  %149 = load i32, i32* %6, align 4
  %150 = add nsw i32 4, %149
  %151 = shl i32 %150, 16
  %152 = call i32 @CSR_WRITE_4(%struct.sis_softc* %147, i32 %148, i32 %151)
  %153 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %154 = load i32, i32* @SIS_RXFILT_DATA, align 4
  %155 = getelementptr inbounds %struct.sis_hash_maddr_ctx, %struct.sis_hash_maddr_ctx* %4, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* %6, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @CSR_WRITE_4(%struct.sis_softc* %153, i32 %154, i32 %160)
  br label %162

162:                                              ; preds = %146
  %163 = load i32, i32* %6, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %6, align 4
  br label %142

165:                                              ; preds = %142
  %166 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %167 = load i32, i32* @SIS_RXFILT_CTL, align 4
  %168 = load i32, i32* %5, align 4
  %169 = load i32, i32* @SIS_RXFILTCTL_ENABLE, align 4
  %170 = or i32 %168, %169
  %171 = call i32 @CSR_WRITE_4(%struct.sis_softc* %166, i32 %167, i32 %170)
  %172 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %173 = load i32, i32* @SIS_RXFILT_CTL, align 4
  %174 = call i32 @CSR_READ_4(%struct.sis_softc* %172, i32 %173)
  ret void
}

declare dso_local i32 @CSR_READ_4(%struct.sis_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.sis_softc*, i32, i32) #1

declare dso_local i32 @if_foreach_llmaddr(%struct.ifnet*, i32, %struct.sis_hash_maddr_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
