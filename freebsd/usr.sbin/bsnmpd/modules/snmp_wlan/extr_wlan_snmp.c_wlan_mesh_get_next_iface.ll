; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_snmp.c_wlan_mesh_get_next_iface.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_snmp.c_wlan_mesh_get_next_iface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlan_iface = type { i32 }
%struct.asn_oid = type { i64, i64* }

@IFNAMSIZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wlan_iface* (%struct.asn_oid*, i64)* @wlan_mesh_get_next_iface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wlan_iface* @wlan_mesh_get_next_iface(%struct.asn_oid* %0, i64 %1) #0 {
  %3 = alloca %struct.wlan_iface*, align 8
  %4 = alloca %struct.asn_oid*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.wlan_iface*, align 8
  %10 = alloca i32, align 4
  store %struct.asn_oid* %0, %struct.asn_oid** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load i32, i32* @IFNAMSIZ, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  %15 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %16 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = sub nsw i64 %17, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = call %struct.wlan_iface* (...) @wlan_mesh_first_interface()
  store %struct.wlan_iface* %22, %struct.wlan_iface** %3, align 8
  store i32 1, i32* %10, align 4
  br label %85

23:                                               ; preds = %2
  %24 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %25 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = sub nsw i64 %26, %27
  %29 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %30 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %29, i32 0, i32 1
  %31 = load i64*, i64** %30, align 8
  %32 = load i64, i64* %5, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 1
  %36 = icmp ne i64 %28, %35
  br i1 %36, label %47, label %37

37:                                               ; preds = %23
  %38 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %39 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %38, i32 0, i32 1
  %40 = load i64*, i64** %39, align 8
  %41 = load i64, i64* %5, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* @IFNAMSIZ, align 4
  %45 = sext i32 %44 to i64
  %46 = icmp sge i64 %43, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %37, %23
  store %struct.wlan_iface* null, %struct.wlan_iface** %3, align 8
  store i32 1, i32* %10, align 4
  br label %85

48:                                               ; preds = %37
  %49 = load i32, i32* @IFNAMSIZ, align 4
  %50 = call i32 @memset(i8* %14, i32 0, i32 %49)
  store i64 0, i64* %6, align 8
  br label %51

51:                                               ; preds = %73, %48
  %52 = load i64, i64* %6, align 8
  %53 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %54 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %53, i32 0, i32 1
  %55 = load i64*, i64** %54, align 8
  %56 = load i64, i64* %5, align 8
  %57 = getelementptr inbounds i64, i64* %55, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = icmp ult i64 %52, %58
  br i1 %59, label %60, label %76

60:                                               ; preds = %51
  %61 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %62 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %61, i32 0, i32 1
  %63 = load i64*, i64** %62, align 8
  %64 = load i64, i64* %5, align 8
  %65 = load i64, i64* %6, align 8
  %66 = add i64 %64, %65
  %67 = add i64 %66, 1
  %68 = getelementptr inbounds i64, i64* %63, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i8
  %71 = load i64, i64* %6, align 8
  %72 = getelementptr inbounds i8, i8* %14, i64 %71
  store i8 %70, i8* %72, align 1
  br label %73

73:                                               ; preds = %60
  %74 = load i64, i64* %6, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %6, align 8
  br label %51

76:                                               ; preds = %51
  %77 = load i64, i64* %6, align 8
  %78 = getelementptr inbounds i8, i8* %14, i64 %77
  store i8 0, i8* %78, align 1
  %79 = call %struct.wlan_iface* @wlan_find_interface(i8* %14)
  store %struct.wlan_iface* %79, %struct.wlan_iface** %9, align 8
  %80 = icmp eq %struct.wlan_iface* %79, null
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  store %struct.wlan_iface* null, %struct.wlan_iface** %3, align 8
  store i32 1, i32* %10, align 4
  br label %85

82:                                               ; preds = %76
  %83 = load %struct.wlan_iface*, %struct.wlan_iface** %9, align 8
  %84 = call %struct.wlan_iface* @wlan_mesh_next_interface(%struct.wlan_iface* %83)
  store %struct.wlan_iface* %84, %struct.wlan_iface** %3, align 8
  store i32 1, i32* %10, align 4
  br label %85

85:                                               ; preds = %82, %81, %47, %21
  %86 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %86)
  %87 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  ret %struct.wlan_iface* %87
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.wlan_iface* @wlan_mesh_first_interface(...) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local %struct.wlan_iface* @wlan_find_interface(i8*) #2

declare dso_local %struct.wlan_iface* @wlan_mesh_next_interface(%struct.wlan_iface*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
