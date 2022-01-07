; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_snmp.c_wlan_new_wif.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_snmp.c_wlan_new_wif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlan_iface = type { i32, i32, i32, i32, i64 }

@IFNAMSIZ = common dso_local global i32 0, align 4
@RowStatus_notReady = common dso_local global i32 0, align 4
@wlanIfaceState_down = common dso_local global i32 0, align 4
@WlanIfaceOperatingModeType_station = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wlan_iface* (i8*)* @wlan_new_wif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wlan_iface* @wlan_new_wif(i8* %0) #0 {
  %2 = alloca %struct.wlan_iface*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.wlan_iface*, align 8
  store i8* %0, i8** %3, align 8
  %5 = call %struct.wlan_iface* (...) @wlan_first_interface()
  store %struct.wlan_iface* %5, %struct.wlan_iface** %4, align 8
  br label %6

6:                                                ; preds = %21, %1
  %7 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %8 = icmp ne %struct.wlan_iface* %7, null
  br i1 %8, label %9, label %24

9:                                                ; preds = %6
  %10 = load i8*, i8** %3, align 8
  %11 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %12 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @strcmp(i8* %10, i32 %13)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %9
  %17 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %18 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %17, i32 0, i32 4
  store i64 0, i64* %18, align 8
  %19 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  store %struct.wlan_iface* %19, %struct.wlan_iface** %2, align 8
  br label %55

20:                                               ; preds = %9
  br label %21

21:                                               ; preds = %20
  %22 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %23 = call %struct.wlan_iface* @wlan_next_interface(%struct.wlan_iface* %22)
  store %struct.wlan_iface* %23, %struct.wlan_iface** %4, align 8
  br label %6

24:                                               ; preds = %6
  %25 = call i64 @malloc(i32 24)
  %26 = inttoptr i64 %25 to %struct.wlan_iface*
  store %struct.wlan_iface* %26, %struct.wlan_iface** %4, align 8
  %27 = icmp eq %struct.wlan_iface* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store %struct.wlan_iface* null, %struct.wlan_iface** %2, align 8
  br label %55

29:                                               ; preds = %24
  %30 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %31 = call i32 @memset(%struct.wlan_iface* %30, i32 0, i32 24)
  %32 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %33 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %3, align 8
  %36 = load i32, i32* @IFNAMSIZ, align 4
  %37 = call i32 @strlcpy(i32 %34, i8* %35, i32 %36)
  %38 = load i32, i32* @RowStatus_notReady, align 4
  %39 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %40 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* @wlanIfaceState_down, align 4
  %42 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %43 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @WlanIfaceOperatingModeType_station, align 4
  %45 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %46 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %48 = call i64 @wlan_add_wif(%struct.wlan_iface* %47)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %29
  %51 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %52 = call i32 @free(%struct.wlan_iface* %51)
  store %struct.wlan_iface* null, %struct.wlan_iface** %2, align 8
  br label %55

53:                                               ; preds = %29
  %54 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  store %struct.wlan_iface* %54, %struct.wlan_iface** %2, align 8
  br label %55

55:                                               ; preds = %53, %50, %28, %16
  %56 = load %struct.wlan_iface*, %struct.wlan_iface** %2, align 8
  ret %struct.wlan_iface* %56
}

declare dso_local %struct.wlan_iface* @wlan_first_interface(...) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local %struct.wlan_iface* @wlan_next_interface(%struct.wlan_iface*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memset(%struct.wlan_iface*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i64 @wlan_add_wif(%struct.wlan_iface*) #1

declare dso_local i32 @free(%struct.wlan_iface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
