; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_snmp.c_wlan_channel_index_decode.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_snmp.c_wlan_channel_index_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn_oid = type { i64, i32* }

@IFNAMSIZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asn_oid*, i64, i8*, i64*)* @wlan_channel_index_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlan_channel_index_decode(%struct.asn_oid* %0, i64 %1, i8* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.asn_oid*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  store %struct.asn_oid* %0, %struct.asn_oid** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64* %3, i64** %9, align 8
  %11 = load %struct.asn_oid*, %struct.asn_oid** %6, align 8
  %12 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* %7, align 8
  %15 = sub i64 %13, %14
  %16 = load %struct.asn_oid*, %struct.asn_oid** %6, align 8
  %17 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* %7, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 2
  %23 = sext i32 %22 to i64
  %24 = icmp ne i64 %15, %23
  br i1 %24, label %34, label %25

25:                                               ; preds = %4
  %26 = load %struct.asn_oid*, %struct.asn_oid** %6, align 8
  %27 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* %7, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @IFNAMSIZ, align 4
  %33 = icmp sge i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %25, %4
  store i32 -1, i32* %5, align 4
  br label %84

35:                                               ; preds = %25
  store i64 0, i64* %10, align 8
  br label %36

36:                                               ; preds = %60, %35
  %37 = load i64, i64* %10, align 8
  %38 = load %struct.asn_oid*, %struct.asn_oid** %6, align 8
  %39 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* %7, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = icmp ult i64 %37, %44
  br i1 %45, label %46, label %63

46:                                               ; preds = %36
  %47 = load %struct.asn_oid*, %struct.asn_oid** %6, align 8
  %48 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* %10, align 8
  %52 = add i64 %50, %51
  %53 = add i64 %52, 1
  %54 = getelementptr inbounds i32, i32* %49, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = trunc i32 %55 to i8
  %57 = load i8*, i8** %8, align 8
  %58 = load i64, i64* %10, align 8
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  store i8 %56, i8* %59, align 1
  br label %60

60:                                               ; preds = %46
  %61 = load i64, i64* %10, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %10, align 8
  br label %36

63:                                               ; preds = %36
  %64 = load i8*, i8** %8, align 8
  %65 = load i64, i64* %10, align 8
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  store i8 0, i8* %66, align 1
  %67 = load %struct.asn_oid*, %struct.asn_oid** %6, align 8
  %68 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
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
  %80 = getelementptr inbounds i32, i32* %69, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = load i64*, i64** %9, align 8
  store i64 %82, i64* %83, align 8
  store i32 0, i32* %5, align 4
  br label %84

84:                                               ; preds = %63, %34
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
