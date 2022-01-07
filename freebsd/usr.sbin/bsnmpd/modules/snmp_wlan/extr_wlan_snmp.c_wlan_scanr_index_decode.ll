; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_snmp.c_wlan_scanr_index_decode.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_snmp.c_wlan_scanr_index_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn_oid = type { i64* }

@IFNAMSIZ = common dso_local global i64 0, align 8
@IEEE80211_NWID_LEN = common dso_local global i64 0, align 8
@IEEE80211_ADDR_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asn_oid*, i64, i8*, i8*, i8*)* @wlan_scanr_index_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlan_scanr_index_decode(%struct.asn_oid* %0, i64 %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.asn_oid*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.asn_oid* %0, %struct.asn_oid** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = load %struct.asn_oid*, %struct.asn_oid** %7, align 8
  %15 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = load i64, i64* %8, align 8
  %18 = getelementptr inbounds i64, i64* %16, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @IFNAMSIZ, align 8
  %21 = icmp uge i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %164

23:                                               ; preds = %5
  store i64 0, i64* %12, align 8
  br label %24

24:                                               ; preds = %47, %23
  %25 = load i64, i64* %12, align 8
  %26 = load %struct.asn_oid*, %struct.asn_oid** %7, align 8
  %27 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = load i64, i64* %8, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = icmp ult i64 %25, %31
  br i1 %32, label %33, label %50

33:                                               ; preds = %24
  %34 = load %struct.asn_oid*, %struct.asn_oid** %7, align 8
  %35 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %12, align 8
  %39 = add i64 %37, %38
  %40 = add i64 %39, 1
  %41 = getelementptr inbounds i64, i64* %36, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i8
  %44 = load i8*, i8** %9, align 8
  %45 = load i64, i64* %12, align 8
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  store i8 %43, i8* %46, align 1
  br label %47

47:                                               ; preds = %33
  %48 = load i64, i64* %12, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %12, align 8
  br label %24

50:                                               ; preds = %24
  %51 = load i8*, i8** %9, align 8
  %52 = load %struct.asn_oid*, %struct.asn_oid** %7, align 8
  %53 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %52, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = load i64, i64* %8, align 8
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds i8, i8* %51, i64 %57
  store i8 0, i8* %58, align 1
  %59 = load i64, i64* %8, align 8
  %60 = load %struct.asn_oid*, %struct.asn_oid** %7, align 8
  %61 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = load i64, i64* %8, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = add i64 %59, %65
  %67 = add i64 %66, 1
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %13, align 4
  %69 = load %struct.asn_oid*, %struct.asn_oid** %7, align 8
  %70 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %69, i32 0, i32 0
  %71 = load i64*, i64** %70, align 8
  %72 = load i32, i32* %13, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %71, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @IEEE80211_NWID_LEN, align 8
  %77 = icmp ugt i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %50
  store i32 -1, i32* %6, align 4
  br label %164

79:                                               ; preds = %50
  store i64 0, i64* %12, align 8
  br label %80

80:                                               ; preds = %105, %79
  %81 = load i64, i64* %12, align 8
  %82 = load %struct.asn_oid*, %struct.asn_oid** %7, align 8
  %83 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %82, i32 0, i32 0
  %84 = load i64*, i64** %83, align 8
  %85 = load i32, i32* %13, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = icmp ult i64 %81, %88
  br i1 %89, label %90, label %108

90:                                               ; preds = %80
  %91 = load %struct.asn_oid*, %struct.asn_oid** %7, align 8
  %92 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %91, i32 0, i32 0
  %93 = load i64*, i64** %92, align 8
  %94 = load i32, i32* %13, align 4
  %95 = sext i32 %94 to i64
  %96 = load i64, i64* %12, align 8
  %97 = add i64 %95, %96
  %98 = add i64 %97, 1
  %99 = getelementptr inbounds i64, i64* %93, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = trunc i64 %100 to i8
  %102 = load i8*, i8** %10, align 8
  %103 = load i64, i64* %12, align 8
  %104 = getelementptr inbounds i8, i8* %102, i64 %103
  store i8 %101, i8* %104, align 1
  br label %105

105:                                              ; preds = %90
  %106 = load i64, i64* %12, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %12, align 8
  br label %80

108:                                              ; preds = %80
  %109 = load i8*, i8** %10, align 8
  %110 = load i64, i64* %12, align 8
  %111 = getelementptr inbounds i8, i8* %109, i64 %110
  store i8 0, i8* %111, align 1
  %112 = load i64, i64* %8, align 8
  %113 = load %struct.asn_oid*, %struct.asn_oid** %7, align 8
  %114 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %113, i32 0, i32 0
  %115 = load i64*, i64** %114, align 8
  %116 = load i64, i64* %8, align 8
  %117 = getelementptr inbounds i64, i64* %115, i64 %116
  %118 = load i64, i64* %117, align 8
  %119 = add i64 %112, %118
  %120 = load %struct.asn_oid*, %struct.asn_oid** %7, align 8
  %121 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %120, i32 0, i32 0
  %122 = load i64*, i64** %121, align 8
  %123 = load i32, i32* %13, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i64, i64* %122, i64 %124
  %126 = load i64, i64* %125, align 8
  %127 = add i64 %119, %126
  %128 = add i64 %127, 2
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %13, align 4
  %130 = load %struct.asn_oid*, %struct.asn_oid** %7, align 8
  %131 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %130, i32 0, i32 0
  %132 = load i64*, i64** %131, align 8
  %133 = load i32, i32* %13, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i64, i64* %132, i64 %134
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @IEEE80211_ADDR_LEN, align 8
  %138 = icmp ne i64 %136, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %108
  store i32 -1, i32* %6, align 4
  br label %164

140:                                              ; preds = %108
  store i64 0, i64* %12, align 8
  br label %141

141:                                              ; preds = %160, %140
  %142 = load i64, i64* %12, align 8
  %143 = load i64, i64* @IEEE80211_ADDR_LEN, align 8
  %144 = icmp ult i64 %142, %143
  br i1 %144, label %145, label %163

145:                                              ; preds = %141
  %146 = load %struct.asn_oid*, %struct.asn_oid** %7, align 8
  %147 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %146, i32 0, i32 0
  %148 = load i64*, i64** %147, align 8
  %149 = load i32, i32* %13, align 4
  %150 = sext i32 %149 to i64
  %151 = load i64, i64* %12, align 8
  %152 = add i64 %150, %151
  %153 = add i64 %152, 1
  %154 = getelementptr inbounds i64, i64* %148, i64 %153
  %155 = load i64, i64* %154, align 8
  %156 = trunc i64 %155 to i8
  %157 = load i8*, i8** %11, align 8
  %158 = load i64, i64* %12, align 8
  %159 = getelementptr inbounds i8, i8* %157, i64 %158
  store i8 %156, i8* %159, align 1
  br label %160

160:                                              ; preds = %145
  %161 = load i64, i64* %12, align 8
  %162 = add i64 %161, 1
  store i64 %162, i64* %12, align 8
  br label %141

163:                                              ; preds = %141
  store i32 0, i32* %6, align 4
  br label %164

164:                                              ; preds = %163, %139, %78, %22
  %165 = load i32, i32* %6, align 4
  ret i32 %165
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
