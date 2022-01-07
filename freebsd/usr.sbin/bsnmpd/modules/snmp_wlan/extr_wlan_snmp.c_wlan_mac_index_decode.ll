; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_snmp.c_wlan_mac_index_decode.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_snmp.c_wlan_mac_index_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn_oid = type { i64, i32* }

@IEEE80211_ADDR_LEN = common dso_local global i64 0, align 8
@IFNAMSIZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asn_oid*, i64, i8*, i64*)* @wlan_mac_index_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlan_mac_index_decode(%struct.asn_oid* %0, i64 %1, i8* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.asn_oid*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.asn_oid* %0, %struct.asn_oid** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64* %3, i64** %9, align 8
  %12 = load %struct.asn_oid*, %struct.asn_oid** %6, align 8
  %13 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %7, align 8
  %16 = sub i64 %14, %15
  %17 = load %struct.asn_oid*, %struct.asn_oid** %6, align 8
  %18 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* %7, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 2
  %24 = sext i32 %23 to i64
  %25 = load i64, i64* @IEEE80211_ADDR_LEN, align 8
  %26 = add i64 %24, %25
  %27 = icmp ne i64 %16, %26
  br i1 %27, label %37, label %28

28:                                               ; preds = %4
  %29 = load %struct.asn_oid*, %struct.asn_oid** %6, align 8
  %30 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @IFNAMSIZ, align 4
  %36 = icmp sge i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %28, %4
  store i32 -1, i32* %5, align 4
  br label %116

38:                                               ; preds = %28
  store i64 0, i64* %10, align 8
  br label %39

39:                                               ; preds = %63, %38
  %40 = load i64, i64* %10, align 8
  %41 = load %struct.asn_oid*, %struct.asn_oid** %6, align 8
  %42 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* %7, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = icmp ult i64 %40, %47
  br i1 %48, label %49, label %66

49:                                               ; preds = %39
  %50 = load %struct.asn_oid*, %struct.asn_oid** %6, align 8
  %51 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* %10, align 8
  %55 = add i64 %53, %54
  %56 = add i64 %55, 1
  %57 = getelementptr inbounds i32, i32* %52, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = trunc i32 %58 to i8
  %60 = load i8*, i8** %8, align 8
  %61 = load i64, i64* %10, align 8
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  store i8 %59, i8* %62, align 1
  br label %63

63:                                               ; preds = %49
  %64 = load i64, i64* %10, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %10, align 8
  br label %39

66:                                               ; preds = %39
  %67 = load i8*, i8** %8, align 8
  %68 = load i64, i64* %10, align 8
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  store i8 0, i8* %69, align 1
  %70 = load i64, i64* %7, align 8
  %71 = load %struct.asn_oid*, %struct.asn_oid** %6, align 8
  %72 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i64, i64* %7, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = add i64 %70, %77
  %79 = add i64 %78, 1
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %11, align 4
  %81 = load %struct.asn_oid*, %struct.asn_oid** %6, align 8
  %82 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = load i64, i64* @IEEE80211_ADDR_LEN, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %66
  store i32 -1, i32* %5, align 4
  br label %116

92:                                               ; preds = %66
  store i64 0, i64* %10, align 8
  br label %93

93:                                               ; preds = %112, %92
  %94 = load i64, i64* %10, align 8
  %95 = load i64, i64* @IEEE80211_ADDR_LEN, align 8
  %96 = icmp ult i64 %94, %95
  br i1 %96, label %97, label %115

97:                                               ; preds = %93
  %98 = load %struct.asn_oid*, %struct.asn_oid** %6, align 8
  %99 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %11, align 4
  %102 = sext i32 %101 to i64
  %103 = load i64, i64* %10, align 8
  %104 = add i64 %102, %103
  %105 = add i64 %104, 1
  %106 = getelementptr inbounds i32, i32* %100, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = sext i32 %107 to i64
  %109 = load i64*, i64** %9, align 8
  %110 = load i64, i64* %10, align 8
  %111 = getelementptr inbounds i64, i64* %109, i64 %110
  store i64 %108, i64* %111, align 8
  br label %112

112:                                              ; preds = %97
  %113 = load i64, i64* %10, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %10, align 8
  br label %93

115:                                              ; preds = %93
  store i32 0, i32* %5, align 4
  br label %116

116:                                              ; preds = %115, %91, %37
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
