; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_addrs.c_bridge_addrs_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_addrs.c_bridge_addrs_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tp_entry = type { i32 }
%struct.asn_oid = type { i32, i32* }
%struct.bridge_if = type { i32 }

@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tp_entry* (%struct.asn_oid*, i64, %struct.bridge_if*)* @bridge_addrs_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tp_entry* @bridge_addrs_get(%struct.asn_oid* %0, i64 %1, %struct.bridge_if* %2) #0 {
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
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = load i64, i64* %6, align 8
  %21 = sub i64 %19, %20
  %22 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %23 = add nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = icmp ne i64 %21, %24
  br i1 %25, label %35, label %26

26:                                               ; preds = %3
  %27 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %28 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* %6, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %26, %3
  store %struct.tp_entry* null, %struct.tp_entry** %4, align 8
  store i32 1, i32* %11, align 4
  br label %61

36:                                               ; preds = %26
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %55, %36
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %58

41:                                               ; preds = %37
  %42 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %43 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* %6, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = add i64 %45, %47
  %49 = add i64 %48, 1
  %50 = getelementptr inbounds i32, i32* %44, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %15, i64 %53
  store i32 %51, i32* %54, align 4
  br label %55

55:                                               ; preds = %41
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %37

58:                                               ; preds = %37
  %59 = load %struct.bridge_if*, %struct.bridge_if** %7, align 8
  %60 = call %struct.tp_entry* @bridge_addrs_find(i32* %15, %struct.bridge_if* %59)
  store %struct.tp_entry* %60, %struct.tp_entry** %4, align 8
  store i32 1, i32* %11, align 4
  br label %61

61:                                               ; preds = %58, %35
  %62 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %62)
  %63 = load %struct.tp_entry*, %struct.tp_entry** %4, align 8
  ret %struct.tp_entry* %63
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.tp_entry* @bridge_addrs_find(i32*, %struct.bridge_if*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
