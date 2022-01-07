; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_port.c_bridge_port_index_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_port.c_bridge_port_index_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bridge_port = type { i64 }
%struct.asn_oid = type { i64, i32* }
%struct.bridge_if = type { i32 }

@IFNAMSIZ = common dso_local global i32 0, align 4
@RowStatus_active = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bridge_port* (%struct.asn_oid*, i64, i64)* @bridge_port_index_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bridge_port* @bridge_port_index_get(%struct.asn_oid* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.bridge_port*, align 8
  %5 = alloca %struct.asn_oid*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.bridge_if*, align 8
  %13 = alloca %struct.bridge_port*, align 8
  %14 = alloca i32, align 4
  store %struct.asn_oid* %0, %struct.asn_oid** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load i32, i32* @IFNAMSIZ, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  %19 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %20 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %6, align 8
  %23 = sub i64 %21, %22
  %24 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %25 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 2
  %31 = sext i32 %30 to i64
  %32 = icmp ne i64 %23, %31
  br i1 %32, label %42, label %33

33:                                               ; preds = %3
  %34 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %35 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* %6, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @IFNAMSIZ, align 4
  %41 = icmp sge i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %33, %3
  store %struct.bridge_port* null, %struct.bridge_port** %4, align 8
  store i32 1, i32* %14, align 4
  br label %103

43:                                               ; preds = %33
  store i64 0, i64* %8, align 8
  br label %44

44:                                               ; preds = %67, %43
  %45 = load i64, i64* %8, align 8
  %46 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %47 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* %6, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = icmp ult i64 %45, %52
  br i1 %53, label %54, label %70

54:                                               ; preds = %44
  %55 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %56 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i64, i64* %6, align 8
  %59 = load i64, i64* %8, align 8
  %60 = add i64 %58, %59
  %61 = add i64 %60, 1
  %62 = getelementptr inbounds i32, i32* %57, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = trunc i32 %63 to i8
  %65 = load i64, i64* %8, align 8
  %66 = getelementptr inbounds i8, i8* %18, i64 %65
  store i8 %64, i8* %66, align 1
  br label %67

67:                                               ; preds = %54
  %68 = load i64, i64* %8, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %8, align 8
  br label %44

70:                                               ; preds = %44
  %71 = load i64, i64* %8, align 8
  %72 = getelementptr inbounds i8, i8* %18, i64 %71
  store i8 0, i8* %72, align 1
  %73 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %74 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load i64, i64* %6, align 8
  %77 = load i64, i64* %8, align 8
  %78 = add i64 %76, %77
  %79 = add i64 %78, 1
  %80 = getelementptr inbounds i32, i32* %75, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = trunc i32 %81 to i8
  store i8 %82, i8* %9, align 1
  %83 = call %struct.bridge_if* @bridge_if_find_ifname(i8* %18)
  store %struct.bridge_if* %83, %struct.bridge_if** %12, align 8
  %84 = icmp eq %struct.bridge_if* %83, null
  br i1 %84, label %85, label %86

85:                                               ; preds = %70
  store %struct.bridge_port* null, %struct.bridge_port** %4, align 8
  store i32 1, i32* %14, align 4
  br label %103

86:                                               ; preds = %70
  %87 = load i8, i8* %9, align 1
  %88 = load %struct.bridge_if*, %struct.bridge_if** %12, align 8
  %89 = call %struct.bridge_port* @bridge_port_find(i8 signext %87, %struct.bridge_if* %88)
  store %struct.bridge_port* %89, %struct.bridge_port** %13, align 8
  %90 = icmp eq %struct.bridge_port* %89, null
  br i1 %90, label %100, label %91

91:                                               ; preds = %86
  %92 = load i64, i64* %7, align 8
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %91
  %95 = load %struct.bridge_port*, %struct.bridge_port** %13, align 8
  %96 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @RowStatus_active, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %94, %86
  store %struct.bridge_port* null, %struct.bridge_port** %4, align 8
  store i32 1, i32* %14, align 4
  br label %103

101:                                              ; preds = %94, %91
  %102 = load %struct.bridge_port*, %struct.bridge_port** %13, align 8
  store %struct.bridge_port* %102, %struct.bridge_port** %4, align 8
  store i32 1, i32* %14, align 4
  br label %103

103:                                              ; preds = %101, %100, %85, %42
  %104 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %104)
  %105 = load %struct.bridge_port*, %struct.bridge_port** %4, align 8
  ret %struct.bridge_port* %105
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.bridge_if* @bridge_if_find_ifname(i8*) #2

declare dso_local %struct.bridge_port* @bridge_port_find(i8 signext, %struct.bridge_if*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
