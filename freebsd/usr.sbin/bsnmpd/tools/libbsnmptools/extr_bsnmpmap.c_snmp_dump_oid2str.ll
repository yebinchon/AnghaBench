; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmpmap.c_snmp_dump_oid2str.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmpmap.c_snmp_dump_oid2str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_oid2str = type { %struct.TYPE_2__*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i8* }

@ASN_OIDSTRLEN = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"%s - %s - %d - %d - %d\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s \0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"No table\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snmp_dump_oid2str(%struct.snmp_oid2str* %0) #0 {
  %2 = alloca %struct.snmp_oid2str*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store %struct.snmp_oid2str* %0, %struct.snmp_oid2str** %2, align 8
  %5 = load i32, i32* @ASN_OIDSTRLEN, align 4
  %6 = zext i32 %5 to i64
  %7 = call i8* @llvm.stacksave()
  store i8* %7, i8** %3, align 8
  %8 = alloca i8, i64 %6, align 16
  store i64 %6, i64* %4, align 8
  %9 = load %struct.snmp_oid2str*, %struct.snmp_oid2str** %2, align 8
  %10 = icmp ne %struct.snmp_oid2str* %9, null
  br i1 %10, label %11, label %50

11:                                               ; preds = %1
  %12 = trunc i64 %6 to i32
  %13 = call i32 @memset(i8* %8, i32 0, i32 %12)
  %14 = load %struct.snmp_oid2str*, %struct.snmp_oid2str** %2, align 8
  %15 = getelementptr inbounds %struct.snmp_oid2str, %struct.snmp_oid2str* %14, i32 0, i32 6
  %16 = call i32 @asn_oid2str_r(i32* %15, i8* %8)
  %17 = load i32, i32* @stderr, align 4
  %18 = load %struct.snmp_oid2str*, %struct.snmp_oid2str** %2, align 8
  %19 = getelementptr inbounds %struct.snmp_oid2str, %struct.snmp_oid2str* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.snmp_oid2str*, %struct.snmp_oid2str** %2, align 8
  %22 = getelementptr inbounds %struct.snmp_oid2str, %struct.snmp_oid2str* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.snmp_oid2str*, %struct.snmp_oid2str** %2, align 8
  %25 = getelementptr inbounds %struct.snmp_oid2str, %struct.snmp_oid2str* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.snmp_oid2str*, %struct.snmp_oid2str** %2, align 8
  %28 = getelementptr inbounds %struct.snmp_oid2str, %struct.snmp_oid2str* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i32, i8*, i8*, ...) @DEBUG(i32 %17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %8, i32 %20, i32 %23, i32 %26, i32 %29)
  %31 = load %struct.snmp_oid2str*, %struct.snmp_oid2str** %2, align 8
  %32 = getelementptr inbounds %struct.snmp_oid2str, %struct.snmp_oid2str* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @snmp_dump_enumpairs(i32 %33)
  %35 = load i32, i32* @stderr, align 4
  %36 = load %struct.snmp_oid2str*, %struct.snmp_oid2str** %2, align 8
  %37 = getelementptr inbounds %struct.snmp_oid2str, %struct.snmp_oid2str* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = icmp eq %struct.TYPE_2__* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %11
  br label %47

41:                                               ; preds = %11
  %42 = load %struct.snmp_oid2str*, %struct.snmp_oid2str** %2, align 8
  %43 = getelementptr inbounds %struct.snmp_oid2str, %struct.snmp_oid2str* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  br label %47

47:                                               ; preds = %41, %40
  %48 = phi i8* [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), %40 ], [ %46, %41 ]
  %49 = call i32 (i32, i8*, i8*, ...) @DEBUG(i32 %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %48)
  br label %50

50:                                               ; preds = %47, %1
  %51 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %51)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @asn_oid2str_r(i32*, i8*) #2

declare dso_local i32 @DEBUG(i32, i8*, i8*, ...) #2

declare dso_local i32 @snmp_dump_enumpairs(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
