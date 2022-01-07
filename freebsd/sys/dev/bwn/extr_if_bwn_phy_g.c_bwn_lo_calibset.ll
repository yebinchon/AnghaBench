; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_g.c_bwn_lo_calibset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_g.c_bwn_lo_calibset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_lo_calib = type { i32, i32, i32, i32 }
%struct.bwn_mac = type { %struct.TYPE_2__*, %struct.bwn_phy }
%struct.TYPE_2__ = type { i32 }
%struct.bwn_phy = type { i32, %struct.bwn_phy_g }
%struct.bwn_phy_g = type { i64 }
%struct.bwn_bbatt = type { i32, i64, i32, i32 }
%struct.bwn_rfatt = type { i32, i64, i32, i32 }
%struct.bwn_loctl = type { i32, i64, i32, i32 }
%struct.bwn_lo_g_value = type { i32, i32 }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bwn_lo_calib* (%struct.bwn_mac*, %struct.bwn_bbatt*, %struct.bwn_rfatt*)* @bwn_lo_calibset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bwn_lo_calib* @bwn_lo_calibset(%struct.bwn_mac* %0, %struct.bwn_bbatt* %1, %struct.bwn_rfatt* %2) #0 {
  %4 = alloca %struct.bwn_lo_calib*, align 8
  %5 = alloca %struct.bwn_mac*, align 8
  %6 = alloca %struct.bwn_bbatt*, align 8
  %7 = alloca %struct.bwn_rfatt*, align 8
  %8 = alloca %struct.bwn_phy*, align 8
  %9 = alloca %struct.bwn_phy_g*, align 8
  %10 = alloca %struct.bwn_loctl, align 8
  %11 = alloca %struct.bwn_lo_calib*, align 8
  %12 = alloca %struct.bwn_lo_g_value, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %5, align 8
  store %struct.bwn_bbatt* %1, %struct.bwn_bbatt** %6, align 8
  store %struct.bwn_rfatt* %2, %struct.bwn_rfatt** %7, align 8
  %17 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %18 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %17, i32 0, i32 1
  store %struct.bwn_phy* %18, %struct.bwn_phy** %8, align 8
  %19 = load %struct.bwn_phy*, %struct.bwn_phy** %8, align 8
  %20 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %19, i32 0, i32 1
  store %struct.bwn_phy_g* %20, %struct.bwn_phy_g** %9, align 8
  %21 = bitcast %struct.bwn_loctl* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %21, i8 0, i64 24, i1 false)
  %22 = bitcast %struct.bwn_lo_g_value* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %22, i8 0, i64 8, i1 false)
  %23 = load %struct.bwn_phy*, %struct.bwn_phy** %8, align 8
  %24 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = getelementptr inbounds %struct.bwn_lo_g_value, %struct.bwn_lo_g_value* %12, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %28 = call i32 @bwn_mac_suspend(%struct.bwn_mac* %27)
  %29 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %30 = call i32 @bwn_lo_save(%struct.bwn_mac* %29, %struct.bwn_lo_g_value* %12)
  %31 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %32 = call i32 @bwn_lo_txctl_regtable(%struct.bwn_mac* %31, i32* %16, i32* %14)
  store i32 %32, i32* %15, align 4
  %33 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %34 = load %struct.bwn_rfatt*, %struct.bwn_rfatt** %7, align 8
  %35 = getelementptr inbounds %struct.bwn_rfatt, %struct.bwn_rfatt* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @BWN_RF_SETMASK(%struct.bwn_mac* %33, i32 67, i32 65520, i32 %36)
  %38 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %39 = load i32, i32* %15, align 4
  %40 = load i32, i32* %16, align 4
  %41 = xor i32 %40, -1
  %42 = load %struct.bwn_rfatt*, %struct.bwn_rfatt** %7, align 8
  %43 = getelementptr inbounds %struct.bwn_rfatt, %struct.bwn_rfatt* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %3
  %47 = load i32, i32* %16, align 4
  br label %49

48:                                               ; preds = %3
  br label %49

49:                                               ; preds = %48, %46
  %50 = phi i32 [ %47, %46 ], [ 0, %48 ]
  %51 = call i32 @BWN_RF_SETMASK(%struct.bwn_mac* %38, i32 %39, i32 %41, i32 %50)
  %52 = load %struct.bwn_rfatt*, %struct.bwn_rfatt** %7, align 8
  %53 = getelementptr inbounds %struct.bwn_rfatt, %struct.bwn_rfatt* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = mul nsw i32 %54, 2
  %56 = load %struct.bwn_bbatt*, %struct.bwn_bbatt** %6, align 8
  %57 = getelementptr inbounds %struct.bwn_bbatt, %struct.bwn_bbatt* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sdiv i32 %58, 2
  %60 = add nsw i32 %55, %59
  store i32 %60, i32* %13, align 4
  %61 = load %struct.bwn_rfatt*, %struct.bwn_rfatt** %7, align 8
  %62 = getelementptr inbounds %struct.bwn_rfatt, %struct.bwn_rfatt* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %49
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* %13, align 4
  %68 = sub nsw i32 %67, %66
  store i32 %68, i32* %13, align 4
  br label %69

69:                                               ; preds = %65, %49
  %70 = load %struct.bwn_phy*, %struct.bwn_phy** %8, align 8
  %71 = call i64 @BWN_HAS_LOOPBACK(%struct.bwn_phy* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %69
  %74 = load %struct.bwn_phy_g*, %struct.bwn_phy_g** %9, align 8
  %75 = getelementptr inbounds %struct.bwn_phy_g, %struct.bwn_phy_g* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* %13, align 4
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %78, %76
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %13, align 4
  br label %81

81:                                               ; preds = %73, %69
  %82 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %83 = load i32, i32* %13, align 4
  %84 = load %struct.bwn_phy*, %struct.bwn_phy** %8, align 8
  %85 = call i64 @BWN_HAS_LOOPBACK(%struct.bwn_phy* %84)
  %86 = call i32 @bwn_lo_measure_gain_values(%struct.bwn_mac* %82, i32 %83, i64 %85)
  %87 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %88 = load %struct.bwn_bbatt*, %struct.bwn_bbatt** %6, align 8
  %89 = getelementptr inbounds %struct.bwn_bbatt, %struct.bwn_bbatt* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @bwn_phy_g_set_bbatt(%struct.bwn_mac* %87, i32 %90)
  %92 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %93 = bitcast %struct.bwn_loctl* %10 to %struct.bwn_rfatt*
  %94 = call i32 @bwn_lo_probe_sm(%struct.bwn_mac* %92, %struct.bwn_rfatt* %93, i32* %13)
  %95 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %96 = call i32 @bwn_lo_restore(%struct.bwn_mac* %95, %struct.bwn_lo_g_value* %12)
  %97 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %98 = call i32 @bwn_mac_enable(%struct.bwn_mac* %97)
  %99 = load i32, i32* @M_DEVBUF, align 4
  %100 = load i32, i32* @M_NOWAIT, align 4
  %101 = load i32, i32* @M_ZERO, align 4
  %102 = or i32 %100, %101
  %103 = call %struct.bwn_lo_calib* @malloc(i32 16, i32 %99, i32 %102)
  store %struct.bwn_lo_calib* %103, %struct.bwn_lo_calib** %11, align 8
  %104 = load %struct.bwn_lo_calib*, %struct.bwn_lo_calib** %11, align 8
  %105 = icmp ne %struct.bwn_lo_calib* %104, null
  br i1 %105, label %113, label %106

106:                                              ; preds = %81
  %107 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %108 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %107, i32 0, i32 0
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @device_printf(i32 %111, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store %struct.bwn_lo_calib* null, %struct.bwn_lo_calib** %4, align 8
  br label %132

113:                                              ; preds = %81
  %114 = load %struct.bwn_lo_calib*, %struct.bwn_lo_calib** %11, align 8
  %115 = getelementptr inbounds %struct.bwn_lo_calib, %struct.bwn_lo_calib* %114, i32 0, i32 3
  %116 = load %struct.bwn_bbatt*, %struct.bwn_bbatt** %6, align 8
  %117 = bitcast %struct.bwn_bbatt* %116 to %struct.bwn_rfatt*
  %118 = call i32 @memcpy(i32* %115, %struct.bwn_rfatt* %117, i32 24)
  %119 = load %struct.bwn_lo_calib*, %struct.bwn_lo_calib** %11, align 8
  %120 = getelementptr inbounds %struct.bwn_lo_calib, %struct.bwn_lo_calib* %119, i32 0, i32 2
  %121 = load %struct.bwn_rfatt*, %struct.bwn_rfatt** %7, align 8
  %122 = call i32 @memcpy(i32* %120, %struct.bwn_rfatt* %121, i32 24)
  %123 = load %struct.bwn_lo_calib*, %struct.bwn_lo_calib** %11, align 8
  %124 = getelementptr inbounds %struct.bwn_lo_calib, %struct.bwn_lo_calib* %123, i32 0, i32 1
  %125 = bitcast %struct.bwn_loctl* %10 to %struct.bwn_rfatt*
  %126 = call i32 @memcpy(i32* %124, %struct.bwn_rfatt* %125, i32 24)
  %127 = load %struct.bwn_lo_calib*, %struct.bwn_lo_calib** %11, align 8
  %128 = getelementptr inbounds %struct.bwn_lo_calib, %struct.bwn_lo_calib* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @BWN_GETTIME(i32 %129)
  %131 = load %struct.bwn_lo_calib*, %struct.bwn_lo_calib** %11, align 8
  store %struct.bwn_lo_calib* %131, %struct.bwn_lo_calib** %4, align 8
  br label %132

132:                                              ; preds = %113, %106
  %133 = load %struct.bwn_lo_calib*, %struct.bwn_lo_calib** %4, align 8
  ret %struct.bwn_lo_calib* %133
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bwn_mac_suspend(%struct.bwn_mac*) #2

declare dso_local i32 @bwn_lo_save(%struct.bwn_mac*, %struct.bwn_lo_g_value*) #2

declare dso_local i32 @bwn_lo_txctl_regtable(%struct.bwn_mac*, i32*, i32*) #2

declare dso_local i32 @BWN_RF_SETMASK(%struct.bwn_mac*, i32, i32, i32) #2

declare dso_local i64 @BWN_HAS_LOOPBACK(%struct.bwn_phy*) #2

declare dso_local i32 @bwn_lo_measure_gain_values(%struct.bwn_mac*, i32, i64) #2

declare dso_local i32 @bwn_phy_g_set_bbatt(%struct.bwn_mac*, i32) #2

declare dso_local i32 @bwn_lo_probe_sm(%struct.bwn_mac*, %struct.bwn_rfatt*, i32*) #2

declare dso_local i32 @bwn_lo_restore(%struct.bwn_mac*, %struct.bwn_lo_g_value*) #2

declare dso_local i32 @bwn_mac_enable(%struct.bwn_mac*) #2

declare dso_local %struct.bwn_lo_calib* @malloc(i32, i32, i32) #2

declare dso_local i32 @device_printf(i32, i8*) #2

declare dso_local i32 @memcpy(i32*, %struct.bwn_rfatt*, i32) #2

declare dso_local i32 @BWN_GETTIME(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
