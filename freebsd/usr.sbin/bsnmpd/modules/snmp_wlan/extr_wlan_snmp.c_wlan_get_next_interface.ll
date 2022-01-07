; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_snmp.c_wlan_get_next_interface.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_snmp.c_wlan_get_next_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlan_iface = type { i64 }
%struct.asn_oid = type { i64, i64* }

@IFNAMSIZ = common dso_local global i32 0, align 4
@RowStatus_active = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wlan_iface* (%struct.asn_oid*, i64)* @wlan_get_next_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wlan_iface* @wlan_get_next_interface(%struct.asn_oid* %0, i64 %1) #0 {
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
  br i1 %20, label %21, label %39

21:                                               ; preds = %2
  %22 = call %struct.wlan_iface* (...) @wlan_first_interface()
  store %struct.wlan_iface* %22, %struct.wlan_iface** %9, align 8
  br label %23

23:                                               ; preds = %34, %21
  %24 = load %struct.wlan_iface*, %struct.wlan_iface** %9, align 8
  %25 = icmp ne %struct.wlan_iface* %24, null
  br i1 %25, label %26, label %37

26:                                               ; preds = %23
  %27 = load %struct.wlan_iface*, %struct.wlan_iface** %9, align 8
  %28 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @RowStatus_active, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %37

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33
  %35 = load %struct.wlan_iface*, %struct.wlan_iface** %9, align 8
  %36 = call %struct.wlan_iface* @wlan_next_interface(%struct.wlan_iface* %35)
  store %struct.wlan_iface* %36, %struct.wlan_iface** %9, align 8
  br label %23

37:                                               ; preds = %32, %23
  %38 = load %struct.wlan_iface*, %struct.wlan_iface** %9, align 8
  store %struct.wlan_iface* %38, %struct.wlan_iface** %3, align 8
  store i32 1, i32* %10, align 4
  br label %113

39:                                               ; preds = %2
  %40 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %41 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %5, align 8
  %44 = sub nsw i64 %42, %43
  %45 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %46 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %45, i32 0, i32 1
  %47 = load i64*, i64** %46, align 8
  %48 = load i64, i64* %5, align 8
  %49 = getelementptr inbounds i64, i64* %47, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, 1
  %52 = icmp ne i64 %44, %51
  br i1 %52, label %63, label %53

53:                                               ; preds = %39
  %54 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %55 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %54, i32 0, i32 1
  %56 = load i64*, i64** %55, align 8
  %57 = load i64, i64* %5, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* @IFNAMSIZ, align 4
  %61 = sext i32 %60 to i64
  %62 = icmp sge i64 %59, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %53, %39
  store %struct.wlan_iface* null, %struct.wlan_iface** %3, align 8
  store i32 1, i32* %10, align 4
  br label %113

64:                                               ; preds = %53
  %65 = load i32, i32* @IFNAMSIZ, align 4
  %66 = call i32 @memset(i8* %14, i32 0, i32 %65)
  store i64 0, i64* %6, align 8
  br label %67

67:                                               ; preds = %89, %64
  %68 = load i64, i64* %6, align 8
  %69 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %70 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %69, i32 0, i32 1
  %71 = load i64*, i64** %70, align 8
  %72 = load i64, i64* %5, align 8
  %73 = getelementptr inbounds i64, i64* %71, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = icmp ult i64 %68, %74
  br i1 %75, label %76, label %92

76:                                               ; preds = %67
  %77 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %78 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %77, i32 0, i32 1
  %79 = load i64*, i64** %78, align 8
  %80 = load i64, i64* %5, align 8
  %81 = load i64, i64* %6, align 8
  %82 = add i64 %80, %81
  %83 = add i64 %82, 1
  %84 = getelementptr inbounds i64, i64* %79, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = trunc i64 %85 to i8
  %87 = load i64, i64* %6, align 8
  %88 = getelementptr inbounds i8, i8* %14, i64 %87
  store i8 %86, i8* %88, align 1
  br label %89

89:                                               ; preds = %76
  %90 = load i64, i64* %6, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %6, align 8
  br label %67

92:                                               ; preds = %67
  %93 = load i64, i64* %6, align 8
  %94 = getelementptr inbounds i8, i8* %14, i64 %93
  store i8 0, i8* %94, align 1
  %95 = call %struct.wlan_iface* @wlan_find_interface(i8* %14)
  store %struct.wlan_iface* %95, %struct.wlan_iface** %9, align 8
  %96 = icmp eq %struct.wlan_iface* %95, null
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  store %struct.wlan_iface* null, %struct.wlan_iface** %3, align 8
  store i32 1, i32* %10, align 4
  br label %113

98:                                               ; preds = %92
  br label %99

99:                                               ; preds = %110, %98
  %100 = load %struct.wlan_iface*, %struct.wlan_iface** %9, align 8
  %101 = call %struct.wlan_iface* @wlan_next_interface(%struct.wlan_iface* %100)
  store %struct.wlan_iface* %101, %struct.wlan_iface** %9, align 8
  %102 = icmp ne %struct.wlan_iface* %101, null
  br i1 %102, label %103, label %111

103:                                              ; preds = %99
  %104 = load %struct.wlan_iface*, %struct.wlan_iface** %9, align 8
  %105 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @RowStatus_active, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  br label %111

110:                                              ; preds = %103
  br label %99

111:                                              ; preds = %109, %99
  %112 = load %struct.wlan_iface*, %struct.wlan_iface** %9, align 8
  store %struct.wlan_iface* %112, %struct.wlan_iface** %3, align 8
  store i32 1, i32* %10, align 4
  br label %113

113:                                              ; preds = %111, %97, %63, %37
  %114 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %114)
  %115 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  ret %struct.wlan_iface* %115
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.wlan_iface* @wlan_first_interface(...) #2

declare dso_local %struct.wlan_iface* @wlan_next_interface(%struct.wlan_iface*) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local %struct.wlan_iface* @wlan_find_interface(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
