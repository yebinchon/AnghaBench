; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_snmp.c_bits_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_snmp.c_bits_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i64 }

@SNMP_ERR_NOERROR = common dso_local global i32 0, align 4
@SNMP_ERR_RES_UNAVAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snmp_value*, i64*, i32)* @bits_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bits_get(%struct.snmp_value* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snmp_value*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snmp_value* %0, %struct.snmp_value** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i64*, i64** %6, align 8
  %10 = icmp eq i64* %9, null
  br i1 %10, label %11, label %21

11:                                               ; preds = %3
  %12 = load %struct.snmp_value*, %struct.snmp_value** %5, align 8
  %13 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = load %struct.snmp_value*, %struct.snmp_value** %5, align 8
  %17 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i32* null, i32** %19, align 8
  %20 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %20, i32* %4, align 4
  br label %71

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %8, align 4
  br label %23

23:                                               ; preds = %36, %21
  %24 = load i32, i32* %8, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %23
  %27 = load i64*, i64** %6, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %27, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  br label %39

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %8, align 4
  br label %23

39:                                               ; preds = %34, %23
  %40 = load i32, i32* %8, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 1, i32* %8, align 4
  br label %43

43:                                               ; preds = %42, %39
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = load %struct.snmp_value*, %struct.snmp_value** %5, align 8
  %47 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  store i64 %45, i64* %49, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = call i32* @malloc(i64 %51)
  %53 = load %struct.snmp_value*, %struct.snmp_value** %5, align 8
  %54 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  store i32* %52, i32** %56, align 8
  %57 = icmp eq i32* %52, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %43
  %59 = load i32, i32* @SNMP_ERR_RES_UNAVAIL, align 4
  store i32 %59, i32* %4, align 4
  br label %71

60:                                               ; preds = %43
  %61 = load %struct.snmp_value*, %struct.snmp_value** %5, align 8
  %62 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i64*, i64** %6, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = call i32 @memcpy(i32* %65, i64* %66, i64 %68)
  %70 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %60, %58, %11
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @memcpy(i32*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
