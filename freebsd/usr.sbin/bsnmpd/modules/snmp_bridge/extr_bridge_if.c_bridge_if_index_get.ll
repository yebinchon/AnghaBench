; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_if.c_bridge_if_index_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_if.c_bridge_if_index_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bridge_if = type { i32 }
%struct.asn_oid = type { i64, i32* }

@IFNAMSIZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bridge_if* (%struct.asn_oid*, i64)* @bridge_if_index_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bridge_if* @bridge_if_index_get(%struct.asn_oid* %0, i64 %1) #0 {
  %3 = alloca %struct.bridge_if*, align 8
  %4 = alloca %struct.asn_oid*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.asn_oid* %0, %struct.asn_oid** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i32, i32* @IFNAMSIZ, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %15 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %5, align 8
  %18 = sub i64 %16, %17
  %19 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %20 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = icmp ne i64 %18, %26
  br i1 %27, label %37, label %28

28:                                               ; preds = %2
  %29 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %30 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* %5, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @IFNAMSIZ, align 4
  %36 = icmp sge i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %28, %2
  store %struct.bridge_if* null, %struct.bridge_if** %3, align 8
  store i32 1, i32* %9, align 4
  br label %69

38:                                               ; preds = %28
  store i64 0, i64* %6, align 8
  br label %39

39:                                               ; preds = %62, %38
  %40 = load i64, i64* %6, align 8
  %41 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %42 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* %5, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = icmp ult i64 %40, %47
  br i1 %48, label %49, label %65

49:                                               ; preds = %39
  %50 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %51 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* %5, align 8
  %54 = load i64, i64* %6, align 8
  %55 = add i64 %53, %54
  %56 = add i64 %55, 1
  %57 = getelementptr inbounds i32, i32* %52, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = trunc i32 %58 to i8
  %60 = load i64, i64* %6, align 8
  %61 = getelementptr inbounds i8, i8* %13, i64 %60
  store i8 %59, i8* %61, align 1
  br label %62

62:                                               ; preds = %49
  %63 = load i64, i64* %6, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %6, align 8
  br label %39

65:                                               ; preds = %39
  %66 = load i64, i64* %6, align 8
  %67 = getelementptr inbounds i8, i8* %13, i64 %66
  store i8 0, i8* %67, align 1
  %68 = call %struct.bridge_if* @bridge_if_find_ifname(i8* %13)
  store %struct.bridge_if* %68, %struct.bridge_if** %3, align 8
  store i32 1, i32* %9, align 4
  br label %69

69:                                               ; preds = %65, %37
  %70 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %70)
  %71 = load %struct.bridge_if*, %struct.bridge_if** %3, align 8
  ret %struct.bridge_if* %71
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.bridge_if* @bridge_if_find_ifname(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
