; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_snmp.c_wlan_append_scanr_index.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_snmp.c_wlan_append_scanr_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn_oid = type { i64, i32* }

@IEEE80211_ADDR_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.asn_oid*, i64, i8*, i8*, i8*)* @wlan_append_scanr_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlan_append_scanr_index(%struct.asn_oid* %0, i64 %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.asn_oid*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.asn_oid* %0, %struct.asn_oid** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = call i32 @strlen(i8* %13)
  %15 = sext i32 %14 to i64
  %16 = add i64 %12, %15
  %17 = load i8*, i8** %9, align 8
  %18 = call i32 @strlen(i8* %17)
  %19 = sext i32 %18 to i64
  %20 = add i64 %16, %19
  %21 = load i64, i64* @IEEE80211_ADDR_LEN, align 8
  %22 = add i64 %20, %21
  %23 = add i64 %22, 3
  %24 = load %struct.asn_oid*, %struct.asn_oid** %6, align 8
  %25 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @strlen(i8* %26)
  %28 = load %struct.asn_oid*, %struct.asn_oid** %6, align 8
  %29 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* %7, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  store i32 %27, i32* %32, align 4
  store i64 1, i64* %11, align 8
  br label %33

33:                                               ; preds = %53, %5
  %34 = load i64, i64* %11, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 @strlen(i8* %35)
  %37 = sext i32 %36 to i64
  %38 = icmp ule i64 %34, %37
  br i1 %38, label %39, label %56

39:                                               ; preds = %33
  %40 = load i8*, i8** %8, align 8
  %41 = load i64, i64* %11, align 8
  %42 = sub i64 %41, 1
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = load %struct.asn_oid*, %struct.asn_oid** %6, align 8
  %47 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* %11, align 8
  %51 = add i64 %49, %50
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  store i32 %45, i32* %52, align 4
  br label %53

53:                                               ; preds = %39
  %54 = load i64, i64* %11, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %11, align 8
  br label %33

56:                                               ; preds = %33
  %57 = load i8*, i8** %8, align 8
  %58 = call i32 @strlen(i8* %57)
  %59 = add nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = load i64, i64* %7, align 8
  %62 = add i64 %61, %60
  store i64 %62, i64* %7, align 8
  %63 = load i8*, i8** %9, align 8
  %64 = call i32 @strlen(i8* %63)
  %65 = load %struct.asn_oid*, %struct.asn_oid** %6, align 8
  %66 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* %7, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  store i32 %64, i32* %69, align 4
  store i64 1, i64* %11, align 8
  br label %70

70:                                               ; preds = %90, %56
  %71 = load i64, i64* %11, align 8
  %72 = load i8*, i8** %9, align 8
  %73 = call i32 @strlen(i8* %72)
  %74 = sext i32 %73 to i64
  %75 = icmp ule i64 %71, %74
  br i1 %75, label %76, label %93

76:                                               ; preds = %70
  %77 = load i8*, i8** %9, align 8
  %78 = load i64, i64* %11, align 8
  %79 = sub i64 %78, 1
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = load %struct.asn_oid*, %struct.asn_oid** %6, align 8
  %84 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load i64, i64* %7, align 8
  %87 = load i64, i64* %11, align 8
  %88 = add i64 %86, %87
  %89 = getelementptr inbounds i32, i32* %85, i64 %88
  store i32 %82, i32* %89, align 4
  br label %90

90:                                               ; preds = %76
  %91 = load i64, i64* %11, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %11, align 8
  br label %70

93:                                               ; preds = %70
  %94 = load i8*, i8** %9, align 8
  %95 = call i32 @strlen(i8* %94)
  %96 = add nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = load i64, i64* %7, align 8
  %99 = add i64 %98, %97
  store i64 %99, i64* %7, align 8
  %100 = load i64, i64* @IEEE80211_ADDR_LEN, align 8
  %101 = trunc i64 %100 to i32
  %102 = load %struct.asn_oid*, %struct.asn_oid** %6, align 8
  %103 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = load i64, i64* %7, align 8
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  store i32 %101, i32* %106, align 4
  store i64 1, i64* %11, align 8
  br label %107

107:                                              ; preds = %125, %93
  %108 = load i64, i64* %11, align 8
  %109 = load i64, i64* @IEEE80211_ADDR_LEN, align 8
  %110 = icmp ule i64 %108, %109
  br i1 %110, label %111, label %128

111:                                              ; preds = %107
  %112 = load i8*, i8** %10, align 8
  %113 = load i64, i64* %11, align 8
  %114 = sub i64 %113, 1
  %115 = getelementptr inbounds i8, i8* %112, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = load %struct.asn_oid*, %struct.asn_oid** %6, align 8
  %119 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = load i64, i64* %7, align 8
  %122 = load i64, i64* %11, align 8
  %123 = add i64 %121, %122
  %124 = getelementptr inbounds i32, i32* %120, i64 %123
  store i32 %117, i32* %124, align 4
  br label %125

125:                                              ; preds = %111
  %126 = load i64, i64* %11, align 8
  %127 = add i64 %126, 1
  store i64 %127, i64* %11, align 8
  br label %107

128:                                              ; preds = %107
  ret void
}

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
