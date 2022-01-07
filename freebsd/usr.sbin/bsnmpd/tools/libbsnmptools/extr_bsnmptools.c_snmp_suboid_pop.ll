; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptools.c_snmp_suboid_pop.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptools.c_snmp_suboid_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn_oid = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snmp_suboid_pop(%struct.asn_oid* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.asn_oid*, align 8
  %4 = alloca i32, align 4
  store %struct.asn_oid* %0, %struct.asn_oid** %3, align 8
  %5 = load %struct.asn_oid*, %struct.asn_oid** %3, align 8
  %6 = icmp eq %struct.asn_oid* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %34

8:                                                ; preds = %1
  %9 = load %struct.asn_oid*, %struct.asn_oid** %3, align 8
  %10 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  store i32 -1, i32* %2, align 4
  br label %34

14:                                               ; preds = %8
  %15 = load %struct.asn_oid*, %struct.asn_oid** %3, align 8
  %16 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.asn_oid*, %struct.asn_oid** %3, align 8
  %19 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* %19, align 8
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %17, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %4, align 4
  %25 = load %struct.asn_oid*, %struct.asn_oid** %3, align 8
  %26 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.asn_oid*, %struct.asn_oid** %3, align 8
  %29 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %27, i64 %31
  store i32 0, i32* %32, align 4
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %14, %13, %7
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
