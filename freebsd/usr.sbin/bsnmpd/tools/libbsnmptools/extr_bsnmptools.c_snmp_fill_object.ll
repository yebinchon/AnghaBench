; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptools.c_snmp_fill_object.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptools.c_snmp_fill_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_toolinfo = type { i32 }
%struct.snmp_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.snmp_value = type { i64, i32 }

@ASN_MAXID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snmp_toolinfo*, %struct.snmp_object*, %struct.snmp_value*)* @snmp_fill_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snmp_fill_object(%struct.snmp_toolinfo* %0, %struct.snmp_object* %1, %struct.snmp_value* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snmp_toolinfo*, align 8
  %6 = alloca %struct.snmp_object*, align 8
  %7 = alloca %struct.snmp_value*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snmp_toolinfo* %0, %struct.snmp_toolinfo** %5, align 8
  store %struct.snmp_object* %1, %struct.snmp_object** %6, align 8
  store %struct.snmp_value* %2, %struct.snmp_value** %7, align 8
  %10 = load %struct.snmp_object*, %struct.snmp_object** %6, align 8
  %11 = icmp eq %struct.snmp_object* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load %struct.snmp_value*, %struct.snmp_value** %7, align 8
  %14 = icmp eq %struct.snmp_value* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %3
  store i32 -1, i32* %4, align 4
  br label %62

16:                                               ; preds = %12
  %17 = load %struct.snmp_value*, %struct.snmp_value** %7, align 8
  %18 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %17, i32 0, i32 1
  %19 = call i32 @snmp_suboid_pop(i32* %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* @ASN_MAXID, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 -1, i32* %4, align 4
  br label %62

23:                                               ; preds = %16
  %24 = load %struct.snmp_object*, %struct.snmp_object** %6, align 8
  %25 = call i32 @memset(%struct.snmp_object* %24, i32 0, i32 16)
  %26 = load %struct.snmp_object*, %struct.snmp_object** %6, align 8
  %27 = getelementptr inbounds %struct.snmp_object, %struct.snmp_object* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load %struct.snmp_value*, %struct.snmp_value** %7, align 8
  %30 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %29, i32 0, i32 1
  %31 = call i32 @asn_append_oid(i32* %28, i32* %30)
  %32 = load %struct.snmp_value*, %struct.snmp_value** %7, align 8
  %33 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.snmp_object*, %struct.snmp_object** %6, align 8
  %36 = getelementptr inbounds %struct.snmp_object, %struct.snmp_object* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i64 %34, i64* %37, align 8
  %38 = load %struct.snmp_object*, %struct.snmp_object** %6, align 8
  %39 = getelementptr inbounds %struct.snmp_object, %struct.snmp_object* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %23
  %44 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %45 = load %struct.snmp_object*, %struct.snmp_object** %6, align 8
  %46 = call i32 @snmp_lookup_leafstring(%struct.snmp_toolinfo* %44, %struct.snmp_object* %45)
  store i32 %46, i32* %8, align 4
  br label %51

47:                                               ; preds = %23
  %48 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %49 = load %struct.snmp_object*, %struct.snmp_object** %6, align 8
  %50 = call i32 @snmp_lookup_nonleaf_string(%struct.snmp_toolinfo* %48, %struct.snmp_object* %49)
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %47, %43
  %52 = load %struct.snmp_value*, %struct.snmp_value** %7, align 8
  %53 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %52, i32 0, i32 1
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @snmp_suboid_append(i32* %53, i32 %54)
  %56 = load %struct.snmp_object*, %struct.snmp_object** %6, align 8
  %57 = getelementptr inbounds %struct.snmp_object, %struct.snmp_object* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @snmp_suboid_append(i32* %58, i32 %59)
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %51, %22, %15
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @snmp_suboid_pop(i32*) #1

declare dso_local i32 @memset(%struct.snmp_object*, i32, i32) #1

declare dso_local i32 @asn_append_oid(i32*, i32*) #1

declare dso_local i32 @snmp_lookup_leafstring(%struct.snmp_toolinfo*, %struct.snmp_object*) #1

declare dso_local i32 @snmp_lookup_nonleaf_string(%struct.snmp_toolinfo*, %struct.snmp_object*) #1

declare dso_local i32 @snmp_suboid_append(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
