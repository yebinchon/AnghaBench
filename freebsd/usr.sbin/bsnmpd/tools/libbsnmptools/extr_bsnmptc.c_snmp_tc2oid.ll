; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptc.c_snmp_tc2oid.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptc.c_snmp_tc2oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* (i8*, %struct.asn_oid*)* }
%struct.asn_oid = type { i32 }

@SNMP_UNKNOWN = common dso_local global i32 0, align 4
@text_convs = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @snmp_tc2oid(i32 %0, i8* %1, %struct.asn_oid* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.asn_oid*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store %struct.asn_oid* %2, %struct.asn_oid** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @SNMP_UNKNOWN, align 4
  %9 = icmp ugt i32 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = load i32, i32* @SNMP_UNKNOWN, align 4
  store i32 %11, i32* %4, align 4
  br label %12

12:                                               ; preds = %10, %3
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @text_convs, align 8
  %14 = load i32, i32* %4, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i8* (i8*, %struct.asn_oid*)*, i8* (i8*, %struct.asn_oid*)** %17, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = load %struct.asn_oid*, %struct.asn_oid** %6, align 8
  %21 = call i8* %18(i8* %19, %struct.asn_oid* %20)
  ret i8* %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
