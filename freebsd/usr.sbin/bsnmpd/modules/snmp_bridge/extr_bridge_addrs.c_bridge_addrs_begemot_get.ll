; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_addrs.c_bridge_addrs_begemot_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_addrs.c_bridge_addrs_begemot_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tp_entry = type { i32 }
%struct.asn_oid = type { i64*, i64 }
%struct.bridge_if = type { i32 }

@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@IFNAMSIZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tp_entry* (%struct.asn_oid*, i64)* @bridge_addrs_begemot_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tp_entry* @bridge_addrs_begemot_get(%struct.asn_oid* %0, i64 %1) #0 {
  %3 = alloca %struct.tp_entry*, align 8
  %4 = alloca %struct.asn_oid*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.bridge_if*, align 8
  %12 = alloca i32, align 4
  store %struct.asn_oid* %0, %struct.asn_oid** %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load i32, i32* @IFNAMSIZ, align 4
  %18 = zext i32 %17 to i64
  %19 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %10, align 8
  %20 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %21 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = load i64, i64* %5, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %7, align 8
  %26 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %27 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %5, align 8
  %30 = sub i64 %28, %29
  %31 = load i64, i64* %7, align 8
  %32 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %33 = sext i32 %32 to i64
  %34 = add i64 %31, %33
  %35 = add i64 %34, 3
  %36 = icmp ne i64 %30, %35
  br i1 %36, label %55, label %37

37:                                               ; preds = %2
  %38 = load i64, i64* %7, align 8
  %39 = load i32, i32* @IFNAMSIZ, align 4
  %40 = sext i32 %39 to i64
  %41 = icmp uge i64 %38, %40
  br i1 %41, label %55, label %42

42:                                               ; preds = %37
  %43 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %44 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = load i64, i64* %5, align 8
  %47 = load i64, i64* %7, align 8
  %48 = add i64 %46, %47
  %49 = add i64 %48, 1
  %50 = getelementptr inbounds i64, i64* %45, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %53 = sext i32 %52 to i64
  %54 = icmp ne i64 %51, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %42, %37, %2
  store %struct.tp_entry* null, %struct.tp_entry** %3, align 8
  store i32 1, i32* %12, align 4
  br label %109

56:                                               ; preds = %42
  store i64 0, i64* %6, align 8
  br label %57

57:                                               ; preds = %74, %56
  %58 = load i64, i64* %6, align 8
  %59 = load i64, i64* %7, align 8
  %60 = icmp ult i64 %58, %59
  br i1 %60, label %61, label %77

61:                                               ; preds = %57
  %62 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %63 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %62, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  %65 = load i64, i64* %7, align 8
  %66 = load i64, i64* %6, align 8
  %67 = add i64 %65, %66
  %68 = add i64 %67, 1
  %69 = getelementptr inbounds i64, i64* %64, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = trunc i64 %70 to i8
  %72 = load i64, i64* %6, align 8
  %73 = getelementptr inbounds i8, i8* %19, i64 %72
  store i8 %71, i8* %73, align 1
  br label %74

74:                                               ; preds = %61
  %75 = load i64, i64* %6, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %6, align 8
  br label %57

77:                                               ; preds = %57
  %78 = load i64, i64* %6, align 8
  %79 = getelementptr inbounds i8, i8* %19, i64 %78
  store i8 0, i8* %79, align 1
  store i64 1, i64* %6, align 8
  br label %80

80:                                               ; preds = %99, %77
  %81 = load i64, i64* %6, align 8
  %82 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %83 = sext i32 %82 to i64
  %84 = icmp ule i64 %81, %83
  br i1 %84, label %85, label %102

85:                                               ; preds = %80
  %86 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %87 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %86, i32 0, i32 0
  %88 = load i64*, i64** %87, align 8
  %89 = load i64, i64* %7, align 8
  %90 = load i64, i64* %6, align 8
  %91 = add i64 %89, %90
  %92 = add i64 %91, 1
  %93 = getelementptr inbounds i64, i64* %88, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = trunc i64 %94 to i8
  %96 = load i64, i64* %6, align 8
  %97 = sub i64 %96, 1
  %98 = getelementptr inbounds i8, i8* %16, i64 %97
  store i8 %95, i8* %98, align 1
  br label %99

99:                                               ; preds = %85
  %100 = load i64, i64* %6, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %6, align 8
  br label %80

102:                                              ; preds = %80
  %103 = call %struct.bridge_if* @bridge_if_find_ifname(i8* %19)
  store %struct.bridge_if* %103, %struct.bridge_if** %11, align 8
  %104 = icmp eq %struct.bridge_if* %103, null
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  store %struct.tp_entry* null, %struct.tp_entry** %3, align 8
  store i32 1, i32* %12, align 4
  br label %109

106:                                              ; preds = %102
  %107 = load %struct.bridge_if*, %struct.bridge_if** %11, align 8
  %108 = call %struct.tp_entry* @bridge_addrs_find(i8* %16, %struct.bridge_if* %107)
  store %struct.tp_entry* %108, %struct.tp_entry** %3, align 8
  store i32 1, i32* %12, align 4
  br label %109

109:                                              ; preds = %106, %105, %55
  %110 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %110)
  %111 = load %struct.tp_entry*, %struct.tp_entry** %3, align 8
  ret %struct.tp_entry* %111
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.bridge_if* @bridge_if_find_ifname(i8*) #2

declare dso_local %struct.tp_entry* @bridge_addrs_find(i8*, %struct.bridge_if*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
