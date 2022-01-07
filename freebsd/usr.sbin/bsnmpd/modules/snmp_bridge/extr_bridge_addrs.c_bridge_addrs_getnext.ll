; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_addrs.c_bridge_addrs_getnext.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_addrs.c_bridge_addrs_getnext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tp_entry = type { i32 }
%struct.asn_oid = type { i64, i32* }
%struct.bridge_if = type { i32 }

@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@bridge_addrs_getnext.te = internal global %struct.tp_entry* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tp_entry* (%struct.asn_oid*, i64, %struct.bridge_if*)* @bridge_addrs_getnext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tp_entry* @bridge_addrs_getnext(%struct.asn_oid* %0, i64 %1, %struct.bridge_if* %2) #0 {
  %4 = alloca %struct.tp_entry*, align 8
  %5 = alloca %struct.asn_oid*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.bridge_if*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.asn_oid* %0, %struct.asn_oid** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.bridge_if* %2, %struct.bridge_if** %7, align 8
  %12 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %9, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %10, align 8
  %16 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %17 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %6, align 8
  %20 = sub i64 %18, %19
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load %struct.bridge_if*, %struct.bridge_if** %7, align 8
  %24 = call %struct.tp_entry* @bridge_addrs_bif_first(%struct.bridge_if* %23)
  store %struct.tp_entry* %24, %struct.tp_entry** %4, align 8
  store i32 1, i32* %11, align 4
  br label %75

25:                                               ; preds = %3
  %26 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %27 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = sub i64 %28, %29
  %31 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %32 = add nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = icmp ne i64 %30, %33
  br i1 %34, label %44, label %35

35:                                               ; preds = %25
  %36 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %37 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* %6, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %35, %25
  store %struct.tp_entry* null, %struct.tp_entry** %4, align 8
  store i32 1, i32* %11, align 4
  br label %75

45:                                               ; preds = %35
  store i32 0, i32* %8, align 4
  br label %46

46:                                               ; preds = %64, %45
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %67

50:                                               ; preds = %46
  %51 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %52 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* %6, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = add i64 %54, %56
  %58 = add i64 %57, 1
  %59 = getelementptr inbounds i32, i32* %53, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %15, i64 %62
  store i32 %60, i32* %63, align 4
  br label %64

64:                                               ; preds = %50
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %8, align 4
  br label %46

67:                                               ; preds = %46
  %68 = load %struct.bridge_if*, %struct.bridge_if** %7, align 8
  %69 = call %struct.tp_entry* @bridge_addrs_find(i32* %15, %struct.bridge_if* %68)
  store %struct.tp_entry* %69, %struct.tp_entry** @bridge_addrs_getnext.te, align 8
  %70 = icmp eq %struct.tp_entry* %69, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  store %struct.tp_entry* null, %struct.tp_entry** %4, align 8
  store i32 1, i32* %11, align 4
  br label %75

72:                                               ; preds = %67
  %73 = load %struct.tp_entry*, %struct.tp_entry** @bridge_addrs_getnext.te, align 8
  %74 = call %struct.tp_entry* @bridge_addrs_bif_next(%struct.tp_entry* %73)
  store %struct.tp_entry* %74, %struct.tp_entry** %4, align 8
  store i32 1, i32* %11, align 4
  br label %75

75:                                               ; preds = %72, %71, %44, %22
  %76 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %76)
  %77 = load %struct.tp_entry*, %struct.tp_entry** %4, align 8
  ret %struct.tp_entry* %77
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.tp_entry* @bridge_addrs_bif_first(%struct.bridge_if*) #2

declare dso_local %struct.tp_entry* @bridge_addrs_find(i32*, %struct.bridge_if*) #2

declare dso_local %struct.tp_entry* @bridge_addrs_bif_next(%struct.tp_entry*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
