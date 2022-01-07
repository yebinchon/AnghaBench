; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_op_prepare_structs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_op_prepare_structs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.bwn_softc*, %struct.bwn_phy }
%struct.bwn_softc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32, i64 }
%struct.bwn_phy = type { i32, %struct.bwn_phy_n* }
%struct.bwn_phy_n = type { i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32 }

@BWN_SPUR_AVOID_AUTO = common dso_local global i32 0, align 4
@BWN_SPUR_AVOID_DISABLE = common dso_local global i32 0, align 4
@PCI_VENDOR_APPLE = common dso_local global i64 0, align 8
@BHND_BFL2_TXPWRCTRL_EN = common dso_local global i32 0, align 4
@PCI_DEVID_BCM4321_D11N = common dso_local global i64 0, align 8
@PCI_DEVID_BCM4321_D11N5G = common dso_local global i64 0, align 8
@BHND_BFL2_5G_PWRGAIN = common dso_local global i32 0, align 4
@BHND_NVAR_EXTPAGAIN2G = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"Error reading 2GHz EPA gain configuration from NVRAM: %d\0A\00", align 1
@BHND_NVAR_EXTPAGAIN5G = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"Error reading 5GHz EPA gain configuration from NVRAM: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bwn_nphy_op_prepare_structs(%struct.bwn_mac* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bwn_mac*, align 8
  %4 = alloca %struct.bwn_softc*, align 8
  %5 = alloca %struct.bwn_phy*, align 8
  %6 = alloca %struct.bwn_phy_n*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %3, align 8
  %10 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %11 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %10, i32 0, i32 0
  %12 = load %struct.bwn_softc*, %struct.bwn_softc** %11, align 8
  store %struct.bwn_softc* %12, %struct.bwn_softc** %4, align 8
  %13 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %14 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %13, i32 0, i32 1
  store %struct.bwn_phy* %14, %struct.bwn_phy** %5, align 8
  %15 = load %struct.bwn_phy*, %struct.bwn_phy** %5, align 8
  %16 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %15, i32 0, i32 1
  %17 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %16, align 8
  store %struct.bwn_phy_n* %17, %struct.bwn_phy_n** %6, align 8
  %18 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %6, align 8
  %19 = call i32 @memset(%struct.bwn_phy_n* %18, i32 0, i32 56)
  %20 = load %struct.bwn_phy*, %struct.bwn_phy** %5, align 8
  %21 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 3
  br i1 %23, label %29, label %24

24:                                               ; preds = %1
  %25 = load %struct.bwn_phy*, %struct.bwn_phy** %5, align 8
  %26 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 4
  br label %29

29:                                               ; preds = %24, %1
  %30 = phi i1 [ true, %1 ], [ %28, %24 ]
  %31 = zext i1 %30 to i32
  %32 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %6, align 8
  %33 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.bwn_phy*, %struct.bwn_phy** %5, align 8
  %35 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp sge i32 %36, 3
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = load i32, i32* @BWN_SPUR_AVOID_AUTO, align 4
  br label %42

40:                                               ; preds = %29
  %41 = load i32, i32* @BWN_SPUR_AVOID_DISABLE, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  %44 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %6, align 8
  %45 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %44, i32 0, i32 10
  store i32 %43, i32* %45, align 8
  %46 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %6, align 8
  %47 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %46, i32 0, i32 1
  store i32 1, i32* %47, align 4
  %48 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %6, align 8
  %49 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %48, i32 0, i32 2
  store i32 2, i32* %49, align 8
  %50 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %6, align 8
  %51 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %50, i32 0, i32 3
  store i32 3, i32* %51, align 4
  %52 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %6, align 8
  %53 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %52, i32 0, i32 4
  store i32 2, i32* %53, align 8
  %54 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %6, align 8
  %55 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %54, i32 0, i32 5
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  store i32 128, i32* %57, align 4
  %58 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %6, align 8
  %59 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %58, i32 0, i32 5
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  store i32 128, i32* %61, align 4
  %62 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %6, align 8
  %63 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %62, i32 0, i32 6
  store i32 0, i32* %63, align 8
  %64 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %6, align 8
  %65 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %64, i32 0, i32 7
  store i32 0, i32* %65, align 4
  %66 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %67 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp sge i32 %69, 3
  br i1 %70, label %90, label %71

71:                                               ; preds = %42
  %72 = load %struct.bwn_softc*, %struct.bwn_softc** %4, align 8
  %73 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @PCI_VENDOR_APPLE, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %95

78:                                               ; preds = %71
  %79 = load %struct.bwn_softc*, %struct.bwn_softc** %4, align 8
  %80 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @bhnd_get_hwrev(i32 %81)
  %83 = icmp eq i32 %82, 11
  br i1 %83, label %90, label %84

84:                                               ; preds = %78
  %85 = load %struct.bwn_softc*, %struct.bwn_softc** %4, align 8
  %86 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @bhnd_get_hwrev(i32 %87)
  %89 = icmp eq i32 %88, 12
  br i1 %89, label %90, label %95

90:                                               ; preds = %84, %78, %42
  %91 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %6, align 8
  %92 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %91, i32 0, i32 6
  store i32 1, i32* %92, align 8
  %93 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %6, align 8
  %94 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %93, i32 0, i32 7
  store i32 1, i32* %94, align 4
  br label %149

95:                                               ; preds = %84, %71
  %96 = load %struct.bwn_softc*, %struct.bwn_softc** %4, align 8
  %97 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = icmp sge i32 %99, 4
  br i1 %100, label %101, label %148

101:                                              ; preds = %95
  %102 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %103 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp sge i32 %105, 2
  br i1 %106, label %107, label %135

107:                                              ; preds = %101
  %108 = load %struct.bwn_softc*, %struct.bwn_softc** %4, align 8
  %109 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @BHND_BFL2_TXPWRCTRL_EN, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %135

115:                                              ; preds = %107
  %116 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %6, align 8
  %117 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %116, i32 0, i32 6
  store i32 1, i32* %117, align 8
  %118 = load %struct.bwn_softc*, %struct.bwn_softc** %4, align 8
  %119 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @PCI_DEVID_BCM4321_D11N, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %131, label %124

124:                                              ; preds = %115
  %125 = load %struct.bwn_softc*, %struct.bwn_softc** %4, align 8
  %126 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @PCI_DEVID_BCM4321_D11N5G, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %124, %115
  %132 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %6, align 8
  %133 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %132, i32 0, i32 7
  store i32 1, i32* %133, align 4
  br label %134

134:                                              ; preds = %131, %124
  br label %147

135:                                              ; preds = %107, %101
  %136 = load %struct.bwn_softc*, %struct.bwn_softc** %4, align 8
  %137 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @BHND_BFL2_5G_PWRGAIN, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %135
  %144 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %6, align 8
  %145 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %144, i32 0, i32 7
  store i32 1, i32* %145, align 4
  br label %146

146:                                              ; preds = %143, %135
  br label %147

147:                                              ; preds = %146, %134
  br label %148

148:                                              ; preds = %147, %95
  br label %149

149:                                              ; preds = %148, %90
  %150 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %151 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = icmp sge i32 %153, 3
  br i1 %154, label %155, label %196

155:                                              ; preds = %149
  %156 = load %struct.bwn_softc*, %struct.bwn_softc** %4, align 8
  %157 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @BHND_NVAR_EXTPAGAIN2G, align 4
  %160 = call i32 @bhnd_nvram_getvar_uint8(i32 %158, i32 %159, i32* %8)
  store i32 %160, i32* %7, align 4
  %161 = load i32, i32* %7, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %170

163:                                              ; preds = %155
  %164 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %165 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %164, i32 0, i32 0
  %166 = load %struct.bwn_softc*, %struct.bwn_softc** %165, align 8
  %167 = load i32, i32* %7, align 4
  %168 = call i32 @BWN_ERRPRINTF(%struct.bwn_softc* %166, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %167)
  %169 = load i32, i32* %7, align 4
  store i32 %169, i32* %2, align 4
  br label %197

170:                                              ; preds = %155
  %171 = load %struct.bwn_softc*, %struct.bwn_softc** %4, align 8
  %172 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @BHND_NVAR_EXTPAGAIN5G, align 4
  %175 = call i32 @bhnd_nvram_getvar_uint8(i32 %173, i32 %174, i32* %9)
  store i32 %175, i32* %7, align 4
  %176 = load i32, i32* %7, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %185

178:                                              ; preds = %170
  %179 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %180 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %179, i32 0, i32 0
  %181 = load %struct.bwn_softc*, %struct.bwn_softc** %180, align 8
  %182 = load i32, i32* %7, align 4
  %183 = call i32 @BWN_ERRPRINTF(%struct.bwn_softc* %181, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %182)
  %184 = load i32, i32* %7, align 4
  store i32 %184, i32* %2, align 4
  br label %197

185:                                              ; preds = %170
  %186 = load i32, i32* %8, align 4
  %187 = icmp eq i32 %186, 2
  %188 = zext i1 %187 to i32
  %189 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %6, align 8
  %190 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %189, i32 0, i32 8
  store i32 %188, i32* %190, align 8
  %191 = load i32, i32* %9, align 4
  %192 = icmp eq i32 %191, 2
  %193 = zext i1 %192 to i32
  %194 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %6, align 8
  %195 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %194, i32 0, i32 9
  store i32 %193, i32* %195, align 4
  br label %196

196:                                              ; preds = %185, %149
  store i32 0, i32* %2, align 4
  br label %197

197:                                              ; preds = %196, %178, %163
  %198 = load i32, i32* %2, align 4
  ret i32 %198
}

declare dso_local i32 @memset(%struct.bwn_phy_n*, i32, i32) #1

declare dso_local i32 @bhnd_get_hwrev(i32) #1

declare dso_local i32 @bhnd_nvram_getvar_uint8(i32, i32, i32*) #1

declare dso_local i32 @BWN_ERRPRINTF(%struct.bwn_softc*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
