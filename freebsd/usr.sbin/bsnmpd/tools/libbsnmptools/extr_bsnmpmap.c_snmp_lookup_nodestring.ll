; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmpmap.c_snmp_lookup_nodestring.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmpmap.c_snmp_lookup_nodestring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_toolinfo = type { i32, i32* }
%struct.snmp_object = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snmp_lookup_nodestring(%struct.snmp_toolinfo* %0, %struct.snmp_object* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snmp_toolinfo*, align 8
  %5 = alloca %struct.snmp_object*, align 8
  store %struct.snmp_toolinfo* %0, %struct.snmp_toolinfo** %4, align 8
  store %struct.snmp_object* %1, %struct.snmp_object** %5, align 8
  %6 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %4, align 8
  %7 = icmp eq %struct.snmp_toolinfo* %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  %9 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %4, align 8
  %10 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  %14 = load %struct.snmp_object*, %struct.snmp_object** %5, align 8
  %15 = icmp eq %struct.snmp_object* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %8, %2
  store i32 -1, i32* %3, align 4
  br label %22

17:                                               ; preds = %13
  %18 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %4, align 8
  %19 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %18, i32 0, i32 0
  %20 = load %struct.snmp_object*, %struct.snmp_object** %5, align 8
  %21 = call i32 @snmp_lookuplist_string(i32* %19, %struct.snmp_object* %20)
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %17, %16
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @snmp_lookuplist_string(i32*, %struct.snmp_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
