; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_snmp.c_wlan_scan_compare_result.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_snmp.c_wlan_scan_compare_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlan_scan_result = type { i64*, i64* }

@IEEE80211_ADDR_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wlan_scan_result*, %struct.wlan_scan_result*)* @wlan_scan_compare_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlan_scan_compare_result(%struct.wlan_scan_result* %0, %struct.wlan_scan_result* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wlan_scan_result*, align 8
  %5 = alloca %struct.wlan_scan_result*, align 8
  %6 = alloca i64, align 8
  store %struct.wlan_scan_result* %0, %struct.wlan_scan_result** %4, align 8
  store %struct.wlan_scan_result* %1, %struct.wlan_scan_result** %5, align 8
  %7 = load %struct.wlan_scan_result*, %struct.wlan_scan_result** %4, align 8
  %8 = getelementptr inbounds %struct.wlan_scan_result, %struct.wlan_scan_result* %7, i32 0, i32 0
  %9 = load i64*, i64** %8, align 8
  %10 = call i64 @strlen(i64* %9)
  %11 = load %struct.wlan_scan_result*, %struct.wlan_scan_result** %5, align 8
  %12 = getelementptr inbounds %struct.wlan_scan_result, %struct.wlan_scan_result* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = call i64 @strlen(i64* %13)
  %15 = icmp ult i64 %10, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %119

17:                                               ; preds = %2
  %18 = load %struct.wlan_scan_result*, %struct.wlan_scan_result** %4, align 8
  %19 = getelementptr inbounds %struct.wlan_scan_result, %struct.wlan_scan_result* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = call i64 @strlen(i64* %20)
  %22 = load %struct.wlan_scan_result*, %struct.wlan_scan_result** %5, align 8
  %23 = getelementptr inbounds %struct.wlan_scan_result, %struct.wlan_scan_result* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = call i64 @strlen(i64* %24)
  %26 = icmp ugt i64 %21, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  store i32 1, i32* %3, align 4
  br label %119

28:                                               ; preds = %17
  store i64 0, i64* %6, align 8
  br label %29

29:                                               ; preds = %76, %28
  %30 = load i64, i64* %6, align 8
  %31 = load %struct.wlan_scan_result*, %struct.wlan_scan_result** %4, align 8
  %32 = getelementptr inbounds %struct.wlan_scan_result, %struct.wlan_scan_result* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = call i64 @strlen(i64* %33)
  %35 = icmp ult i64 %30, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %29
  %37 = load i64, i64* %6, align 8
  %38 = load %struct.wlan_scan_result*, %struct.wlan_scan_result** %5, align 8
  %39 = getelementptr inbounds %struct.wlan_scan_result, %struct.wlan_scan_result* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = call i64 @strlen(i64* %40)
  %42 = icmp ult i64 %37, %41
  br label %43

43:                                               ; preds = %36, %29
  %44 = phi i1 [ false, %29 ], [ %42, %36 ]
  br i1 %44, label %45, label %79

45:                                               ; preds = %43
  %46 = load %struct.wlan_scan_result*, %struct.wlan_scan_result** %4, align 8
  %47 = getelementptr inbounds %struct.wlan_scan_result, %struct.wlan_scan_result* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = load i64, i64* %6, align 8
  %50 = getelementptr inbounds i64, i64* %48, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.wlan_scan_result*, %struct.wlan_scan_result** %5, align 8
  %53 = getelementptr inbounds %struct.wlan_scan_result, %struct.wlan_scan_result* %52, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = load i64, i64* %6, align 8
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = icmp slt i64 %51, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %45
  store i32 -1, i32* %3, align 4
  br label %119

60:                                               ; preds = %45
  %61 = load %struct.wlan_scan_result*, %struct.wlan_scan_result** %4, align 8
  %62 = getelementptr inbounds %struct.wlan_scan_result, %struct.wlan_scan_result* %61, i32 0, i32 0
  %63 = load i64*, i64** %62, align 8
  %64 = load i64, i64* %6, align 8
  %65 = getelementptr inbounds i64, i64* %63, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.wlan_scan_result*, %struct.wlan_scan_result** %5, align 8
  %68 = getelementptr inbounds %struct.wlan_scan_result, %struct.wlan_scan_result* %67, i32 0, i32 0
  %69 = load i64*, i64** %68, align 8
  %70 = load i64, i64* %6, align 8
  %71 = getelementptr inbounds i64, i64* %69, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = icmp sgt i64 %66, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %60
  store i32 1, i32* %3, align 4
  br label %119

75:                                               ; preds = %60
  br label %76

76:                                               ; preds = %75
  %77 = load i64, i64* %6, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %6, align 8
  br label %29

79:                                               ; preds = %43
  store i64 0, i64* %6, align 8
  br label %80

80:                                               ; preds = %115, %79
  %81 = load i64, i64* %6, align 8
  %82 = load i64, i64* @IEEE80211_ADDR_LEN, align 8
  %83 = icmp ult i64 %81, %82
  br i1 %83, label %84, label %118

84:                                               ; preds = %80
  %85 = load %struct.wlan_scan_result*, %struct.wlan_scan_result** %4, align 8
  %86 = getelementptr inbounds %struct.wlan_scan_result, %struct.wlan_scan_result* %85, i32 0, i32 1
  %87 = load i64*, i64** %86, align 8
  %88 = load i64, i64* %6, align 8
  %89 = getelementptr inbounds i64, i64* %87, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.wlan_scan_result*, %struct.wlan_scan_result** %5, align 8
  %92 = getelementptr inbounds %struct.wlan_scan_result, %struct.wlan_scan_result* %91, i32 0, i32 1
  %93 = load i64*, i64** %92, align 8
  %94 = load i64, i64* %6, align 8
  %95 = getelementptr inbounds i64, i64* %93, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = icmp slt i64 %90, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %84
  store i32 -1, i32* %3, align 4
  br label %119

99:                                               ; preds = %84
  %100 = load %struct.wlan_scan_result*, %struct.wlan_scan_result** %4, align 8
  %101 = getelementptr inbounds %struct.wlan_scan_result, %struct.wlan_scan_result* %100, i32 0, i32 1
  %102 = load i64*, i64** %101, align 8
  %103 = load i64, i64* %6, align 8
  %104 = getelementptr inbounds i64, i64* %102, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.wlan_scan_result*, %struct.wlan_scan_result** %5, align 8
  %107 = getelementptr inbounds %struct.wlan_scan_result, %struct.wlan_scan_result* %106, i32 0, i32 1
  %108 = load i64*, i64** %107, align 8
  %109 = load i64, i64* %6, align 8
  %110 = getelementptr inbounds i64, i64* %108, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = icmp sgt i64 %105, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %99
  store i32 1, i32* %3, align 4
  br label %119

114:                                              ; preds = %99
  br label %115

115:                                              ; preds = %114
  %116 = load i64, i64* %6, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* %6, align 8
  br label %80

118:                                              ; preds = %80
  store i32 0, i32* %3, align 4
  br label %119

119:                                              ; preds = %118, %113, %98, %74, %59, %27, %16
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i64 @strlen(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
