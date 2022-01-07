; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_port.c_bridge_port_index_append.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_port.c_bridge_port_index_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn_oid = type { i64, i64* }
%struct.bridge_port = type { i8, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asn_oid*, i64, %struct.bridge_port*)* @bridge_port_index_append to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bridge_port_index_append(%struct.asn_oid* %0, i64 %1, %struct.bridge_port* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.asn_oid*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.bridge_port*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store %struct.asn_oid* %0, %struct.asn_oid** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.bridge_port* %2, %struct.bridge_port** %7, align 8
  %10 = load %struct.bridge_port*, %struct.bridge_port** %7, align 8
  %11 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i8* @bridge_if_find_name(i32 %12)
  store i8* %13, i8** %9, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %66

16:                                               ; preds = %3
  %17 = load i64, i64* %6, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = call i64 @strlen(i8* %18)
  %20 = add i64 %17, %19
  %21 = add i64 %20, 1
  %22 = add i64 %21, 1
  %23 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %24 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = call i64 @strlen(i8* %25)
  %27 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %28 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %27, i32 0, i32 1
  %29 = load i64*, i64** %28, align 8
  %30 = load i64, i64* %6, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  store i64 %26, i64* %31, align 8
  store i64 1, i64* %8, align 8
  br label %32

32:                                               ; preds = %51, %16
  %33 = load i64, i64* %8, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = call i64 @strlen(i8* %34)
  %36 = icmp ule i64 %33, %35
  br i1 %36, label %37, label %54

37:                                               ; preds = %32
  %38 = load i8*, i8** %9, align 8
  %39 = load i64, i64* %8, align 8
  %40 = sub i64 %39, 1
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i64
  %44 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %45 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  %47 = load i64, i64* %6, align 8
  %48 = load i64, i64* %8, align 8
  %49 = add i64 %47, %48
  %50 = getelementptr inbounds i64, i64* %46, i64 %49
  store i64 %43, i64* %50, align 8
  br label %51

51:                                               ; preds = %37
  %52 = load i64, i64* %8, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %8, align 8
  br label %32

54:                                               ; preds = %32
  %55 = load %struct.bridge_port*, %struct.bridge_port** %7, align 8
  %56 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %55, i32 0, i32 0
  %57 = load i8, i8* %56, align 4
  %58 = sext i8 %57 to i64
  %59 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %60 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %59, i32 0, i32 1
  %61 = load i64*, i64** %60, align 8
  %62 = load i64, i64* %6, align 8
  %63 = load i64, i64* %8, align 8
  %64 = add i64 %62, %63
  %65 = getelementptr inbounds i64, i64* %61, i64 %64
  store i64 %58, i64* %65, align 8
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %54, %15
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i8* @bridge_if_find_name(i32) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
