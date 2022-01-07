; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmpmap.c_snmp_leaf_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmpmap.c_snmp_leaf_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_toolinfo = type { i32 }
%struct.snmp_oid2str = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snmp_leaf_insert(%struct.snmp_toolinfo* %0, %struct.snmp_oid2str* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snmp_toolinfo*, align 8
  %5 = alloca %struct.snmp_oid2str*, align 8
  store %struct.snmp_toolinfo* %0, %struct.snmp_toolinfo** %4, align 8
  store %struct.snmp_oid2str* %1, %struct.snmp_oid2str** %5, align 8
  %6 = load %struct.snmp_oid2str*, %struct.snmp_oid2str** %5, align 8
  %7 = getelementptr inbounds %struct.snmp_oid2str, %struct.snmp_oid2str* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %41 [
    i32 132, label %9
    i32 130, label %13
    i32 129, label %17
    i32 131, label %21
    i32 135, label %25
    i32 133, label %29
    i32 128, label %33
    i32 134, label %37
  ]

9:                                                ; preds = %2
  %10 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %4, align 8
  %11 = load %struct.snmp_oid2str*, %struct.snmp_oid2str** %5, align 8
  %12 = call i32 @snmp_int_insert(%struct.snmp_toolinfo* %10, %struct.snmp_oid2str* %11)
  store i32 %12, i32* %3, align 4
  br label %43

13:                                               ; preds = %2
  %14 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %4, align 8
  %15 = load %struct.snmp_oid2str*, %struct.snmp_oid2str** %5, align 8
  %16 = call i32 @snmp_oct_insert(%struct.snmp_toolinfo* %14, %struct.snmp_oid2str* %15)
  store i32 %16, i32* %3, align 4
  br label %43

17:                                               ; preds = %2
  %18 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %4, align 8
  %19 = load %struct.snmp_oid2str*, %struct.snmp_oid2str** %5, align 8
  %20 = call i32 @snmp_oid_insert(%struct.snmp_toolinfo* %18, %struct.snmp_oid2str* %19)
  store i32 %20, i32* %3, align 4
  br label %43

21:                                               ; preds = %2
  %22 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %4, align 8
  %23 = load %struct.snmp_oid2str*, %struct.snmp_oid2str** %5, align 8
  %24 = call i32 @snmp_ip_insert(%struct.snmp_toolinfo* %22, %struct.snmp_oid2str* %23)
  store i32 %24, i32* %3, align 4
  br label %43

25:                                               ; preds = %2
  %26 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %4, align 8
  %27 = load %struct.snmp_oid2str*, %struct.snmp_oid2str** %5, align 8
  %28 = call i32 @snmp_cnt_insert(%struct.snmp_toolinfo* %26, %struct.snmp_oid2str* %27)
  store i32 %28, i32* %3, align 4
  br label %43

29:                                               ; preds = %2
  %30 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %4, align 8
  %31 = load %struct.snmp_oid2str*, %struct.snmp_oid2str** %5, align 8
  %32 = call i32 @snmp_gauge_insert(%struct.snmp_toolinfo* %30, %struct.snmp_oid2str* %31)
  store i32 %32, i32* %3, align 4
  br label %43

33:                                               ; preds = %2
  %34 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %4, align 8
  %35 = load %struct.snmp_oid2str*, %struct.snmp_oid2str** %5, align 8
  %36 = call i32 @snmp_tick_insert(%struct.snmp_toolinfo* %34, %struct.snmp_oid2str* %35)
  store i32 %36, i32* %3, align 4
  br label %43

37:                                               ; preds = %2
  %38 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %4, align 8
  %39 = load %struct.snmp_oid2str*, %struct.snmp_oid2str** %5, align 8
  %40 = call i32 @snmp_cnt64_insert(%struct.snmp_toolinfo* %38, %struct.snmp_oid2str* %39)
  store i32 %40, i32* %3, align 4
  br label %43

41:                                               ; preds = %2
  br label %42

42:                                               ; preds = %41
  store i32 -1, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %37, %33, %29, %25, %21, %17, %13, %9
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @snmp_int_insert(%struct.snmp_toolinfo*, %struct.snmp_oid2str*) #1

declare dso_local i32 @snmp_oct_insert(%struct.snmp_toolinfo*, %struct.snmp_oid2str*) #1

declare dso_local i32 @snmp_oid_insert(%struct.snmp_toolinfo*, %struct.snmp_oid2str*) #1

declare dso_local i32 @snmp_ip_insert(%struct.snmp_toolinfo*, %struct.snmp_oid2str*) #1

declare dso_local i32 @snmp_cnt_insert(%struct.snmp_toolinfo*, %struct.snmp_oid2str*) #1

declare dso_local i32 @snmp_gauge_insert(%struct.snmp_toolinfo*, %struct.snmp_oid2str*) #1

declare dso_local i32 @snmp_tick_insert(%struct.snmp_toolinfo*, %struct.snmp_oid2str*) #1

declare dso_local i32 @snmp_cnt64_insert(%struct.snmp_toolinfo*, %struct.snmp_oid2str*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
