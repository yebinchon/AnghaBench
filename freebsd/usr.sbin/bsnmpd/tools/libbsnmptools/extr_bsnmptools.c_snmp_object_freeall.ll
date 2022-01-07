; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptools.c_snmp_object_freeall.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptools.c_snmp_object_freeall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_toolinfo = type { i32 }
%struct.snmp_object = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.snmp_object* }

@link = common dso_local global i32 0, align 4
@SNMP_SYNTAX_OCTETSTRING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snmp_toolinfo*)* @snmp_object_freeall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snmp_object_freeall(%struct.snmp_toolinfo* %0) #0 {
  %2 = alloca %struct.snmp_toolinfo*, align 8
  %3 = alloca %struct.snmp_object*, align 8
  store %struct.snmp_toolinfo* %0, %struct.snmp_toolinfo** %2, align 8
  br label %4

4:                                                ; preds = %36, %1
  %5 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %2, align 8
  %6 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %5, i32 0, i32 0
  %7 = call %struct.snmp_object* @SLIST_FIRST(i32* %6)
  store %struct.snmp_object* %7, %struct.snmp_object** %3, align 8
  %8 = icmp ne %struct.snmp_object* %7, null
  br i1 %8, label %9, label %39

9:                                                ; preds = %4
  %10 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %2, align 8
  %11 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %10, i32 0, i32 0
  %12 = load i32, i32* @link, align 4
  %13 = call i32 @SLIST_REMOVE_HEAD(i32* %11, i32 %12)
  %14 = load %struct.snmp_object*, %struct.snmp_object** %3, align 8
  %15 = getelementptr inbounds %struct.snmp_object, %struct.snmp_object* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SNMP_SYNTAX_OCTETSTRING, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %36

20:                                               ; preds = %9
  %21 = load %struct.snmp_object*, %struct.snmp_object** %3, align 8
  %22 = getelementptr inbounds %struct.snmp_object, %struct.snmp_object* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.snmp_object*, %struct.snmp_object** %25, align 8
  %27 = icmp ne %struct.snmp_object* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %20
  %29 = load %struct.snmp_object*, %struct.snmp_object** %3, align 8
  %30 = getelementptr inbounds %struct.snmp_object, %struct.snmp_object* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.snmp_object*, %struct.snmp_object** %33, align 8
  %35 = call i32 @free(%struct.snmp_object* %34)
  br label %36

36:                                               ; preds = %28, %20, %9
  %37 = load %struct.snmp_object*, %struct.snmp_object** %3, align 8
  %38 = call i32 @free(%struct.snmp_object* %37)
  br label %4

39:                                               ; preds = %4
  ret void
}

declare dso_local %struct.snmp_object* @SLIST_FIRST(i32*) #1

declare dso_local i32 @SLIST_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @free(%struct.snmp_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
