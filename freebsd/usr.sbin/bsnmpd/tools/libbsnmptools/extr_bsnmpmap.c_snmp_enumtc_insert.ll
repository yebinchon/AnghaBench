; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmpmap.c_snmp_enumtc_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmpmap.c_snmp_enumtc_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_toolinfo = type { i32, i32* }
%struct.enum_type = type { i32 }

@link = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snmp_enumtc_insert(%struct.snmp_toolinfo* %0, %struct.enum_type* %1) #0 {
  %3 = alloca %struct.snmp_toolinfo*, align 8
  %4 = alloca %struct.enum_type*, align 8
  store %struct.snmp_toolinfo* %0, %struct.snmp_toolinfo** %3, align 8
  store %struct.enum_type* %1, %struct.enum_type** %4, align 8
  %5 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %3, align 8
  %6 = icmp eq %struct.snmp_toolinfo* %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %3, align 8
  %9 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %7, %2
  br label %19

13:                                               ; preds = %7
  %14 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %3, align 8
  %15 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %14, i32 0, i32 0
  %16 = load %struct.enum_type*, %struct.enum_type** %4, align 8
  %17 = load i32, i32* @link, align 4
  %18 = call i32 @SLIST_INSERT_HEAD(i32* %15, %struct.enum_type* %16, i32 %17)
  br label %19

19:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct.enum_type*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
