; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptools.c_snmp_suboid_append.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptools.c_snmp_suboid_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn_oid = type { i64, i32* }

@ASN_MAXOIDLEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"Oid too long - %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snmp_suboid_append(%struct.asn_oid* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.asn_oid*, align 8
  %5 = alloca i32, align 4
  store %struct.asn_oid* %0, %struct.asn_oid** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %7 = icmp eq %struct.asn_oid* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %30

9:                                                ; preds = %2
  %10 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %11 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @ASN_MAXOIDLEN, align 8
  %14 = icmp sge i64 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %9
  %16 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %17 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @warnx(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %18)
  store i32 -1, i32* %3, align 4
  br label %30

20:                                               ; preds = %9
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %23 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %26 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* %26, align 8
  %29 = getelementptr inbounds i32, i32* %24, i64 %27
  store i32 %21, i32* %29, align 4
  store i32 1, i32* %3, align 4
  br label %30

30:                                               ; preds = %20, %15, %8
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @warnx(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
