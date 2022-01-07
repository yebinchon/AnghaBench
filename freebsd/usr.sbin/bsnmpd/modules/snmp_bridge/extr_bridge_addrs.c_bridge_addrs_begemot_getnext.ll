; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_addrs.c_bridge_addrs_begemot_getnext.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_addrs.c_bridge_addrs_begemot_getnext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tp_entry = type { i32 }
%struct.asn_oid = type { i64, i64* }
%struct.bridge_if = type { i32 }

@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@IFNAMSIZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tp_entry* (%struct.asn_oid*, i64)* @bridge_addrs_begemot_getnext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tp_entry* @bridge_addrs_begemot_getnext(%struct.asn_oid* %0, i64 %1) #0 {
  %3 = alloca %struct.tp_entry*, align 8
  %4 = alloca %struct.asn_oid*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.bridge_if*, align 8
  %12 = alloca %struct.tp_entry*, align 8
  %13 = alloca i32, align 4
  store %struct.asn_oid* %0, %struct.asn_oid** %4, align 8
  store i64 %1, i64* %5, align 8
  %14 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %18 = load i32, i32* @IFNAMSIZ, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %10, align 8
  %21 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %22 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %5, align 8
  %25 = sub nsw i64 %23, %24
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = call %struct.tp_entry* (...) @bridge_addrs_first()
  store %struct.tp_entry* %28, %struct.tp_entry** %3, align 8
  store i32 1, i32* %13, align 4
  br label %126

29:                                               ; preds = %2
  %30 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %31 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %30, i32 0, i32 1
  %32 = load i64*, i64** %31, align 8
  %33 = load i64, i64* %5, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %7, align 8
  %36 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %37 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %5, align 8
  %40 = sub nsw i64 %38, %39
  %41 = load i64, i64* %7, align 8
  %42 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %41, %43
  %45 = add nsw i64 %44, 2
  %46 = icmp ne i64 %40, %45
  br i1 %46, label %65, label %47

47:                                               ; preds = %29
  %48 = load i64, i64* %7, align 8
  %49 = load i32, i32* @IFNAMSIZ, align 4
  %50 = sext i32 %49 to i64
  %51 = icmp sge i64 %48, %50
  br i1 %51, label %65, label %52

52:                                               ; preds = %47
  %53 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %54 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %53, i32 0, i32 1
  %55 = load i64*, i64** %54, align 8
  %56 = load i64, i64* %5, align 8
  %57 = load i64, i64* %7, align 8
  %58 = add nsw i64 %56, %57
  %59 = add nsw i64 %58, 1
  %60 = getelementptr inbounds i64, i64* %55, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %63 = sext i32 %62 to i64
  %64 = icmp ne i64 %61, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %52, %47, %29
  store %struct.tp_entry* null, %struct.tp_entry** %3, align 8
  store i32 1, i32* %13, align 4
  br label %126

66:                                               ; preds = %52
  store i64 1, i64* %6, align 8
  br label %67

67:                                               ; preds = %84, %66
  %68 = load i64, i64* %6, align 8
  %69 = load i64, i64* %7, align 8
  %70 = icmp sle i64 %68, %69
  br i1 %70, label %71, label %87

71:                                               ; preds = %67
  %72 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %73 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %72, i32 0, i32 1
  %74 = load i64*, i64** %73, align 8
  %75 = load i64, i64* %5, align 8
  %76 = load i64, i64* %6, align 8
  %77 = add nsw i64 %75, %76
  %78 = getelementptr inbounds i64, i64* %74, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = trunc i64 %79 to i8
  %81 = load i64, i64* %6, align 8
  %82 = sub nsw i64 %81, 1
  %83 = getelementptr inbounds i8, i8* %20, i64 %82
  store i8 %80, i8* %83, align 1
  br label %84

84:                                               ; preds = %71
  %85 = load i64, i64* %6, align 8
  %86 = add nsw i64 %85, 1
  store i64 %86, i64* %6, align 8
  br label %67

87:                                               ; preds = %67
  %88 = load i64, i64* %6, align 8
  %89 = sub nsw i64 %88, 1
  %90 = getelementptr inbounds i8, i8* %20, i64 %89
  store i8 0, i8* %90, align 1
  store i64 1, i64* %6, align 8
  br label %91

91:                                               ; preds = %112, %87
  %92 = load i64, i64* %6, align 8
  %93 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %94 = sext i32 %93 to i64
  %95 = icmp sle i64 %92, %94
  br i1 %95, label %96, label %115

96:                                               ; preds = %91
  %97 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %98 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %97, i32 0, i32 1
  %99 = load i64*, i64** %98, align 8
  %100 = load i64, i64* %5, align 8
  %101 = load i64, i64* %7, align 8
  %102 = add nsw i64 %100, %101
  %103 = load i64, i64* %6, align 8
  %104 = add nsw i64 %102, %103
  %105 = add nsw i64 %104, 1
  %106 = getelementptr inbounds i64, i64* %99, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = trunc i64 %107 to i8
  %109 = load i64, i64* %6, align 8
  %110 = sub nsw i64 %109, 1
  %111 = getelementptr inbounds i8, i8* %17, i64 %110
  store i8 %108, i8* %111, align 1
  br label %112

112:                                              ; preds = %96
  %113 = load i64, i64* %6, align 8
  %114 = add nsw i64 %113, 1
  store i64 %114, i64* %6, align 8
  br label %91

115:                                              ; preds = %91
  %116 = call %struct.bridge_if* @bridge_if_find_ifname(i8* %20)
  store %struct.bridge_if* %116, %struct.bridge_if** %11, align 8
  %117 = icmp eq %struct.bridge_if* %116, null
  br i1 %117, label %122, label %118

118:                                              ; preds = %115
  %119 = load %struct.bridge_if*, %struct.bridge_if** %11, align 8
  %120 = call %struct.tp_entry* @bridge_addrs_find(i8* %17, %struct.bridge_if* %119)
  store %struct.tp_entry* %120, %struct.tp_entry** %12, align 8
  %121 = icmp eq %struct.tp_entry* %120, null
  br i1 %121, label %122, label %123

122:                                              ; preds = %118, %115
  store %struct.tp_entry* null, %struct.tp_entry** %3, align 8
  store i32 1, i32* %13, align 4
  br label %126

123:                                              ; preds = %118
  %124 = load %struct.tp_entry*, %struct.tp_entry** %12, align 8
  %125 = call %struct.tp_entry* @bridge_addrs_next(%struct.tp_entry* %124)
  store %struct.tp_entry* %125, %struct.tp_entry** %3, align 8
  store i32 1, i32* %13, align 4
  br label %126

126:                                              ; preds = %123, %122, %65, %27
  %127 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %127)
  %128 = load %struct.tp_entry*, %struct.tp_entry** %3, align 8
  ret %struct.tp_entry* %128
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.tp_entry* @bridge_addrs_first(...) #2

declare dso_local %struct.bridge_if* @bridge_if_find_ifname(i8*) #2

declare dso_local %struct.tp_entry* @bridge_addrs_find(i8*, %struct.bridge_if*) #2

declare dso_local %struct.tp_entry* @bridge_addrs_next(%struct.tp_entry*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
