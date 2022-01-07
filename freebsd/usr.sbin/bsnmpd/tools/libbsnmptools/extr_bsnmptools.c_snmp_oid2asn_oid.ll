; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptools.c_snmp_oid2asn_oid.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptools.c_snmp_oid2asn_oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_toolinfo = type { i32 }
%struct.asn_oid = type { i32 }
%struct.snmp_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@MAXSTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Unknown string - %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.snmp_toolinfo*, i8*, %struct.asn_oid*)* @snmp_oid2asn_oid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @snmp_oid2asn_oid(%struct.snmp_toolinfo* %0, i8* %1, %struct.asn_oid* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.snmp_toolinfo*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.asn_oid*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.snmp_object, align 8
  %13 = alloca i32, align 4
  store %struct.snmp_toolinfo* %0, %struct.snmp_toolinfo** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.asn_oid* %2, %struct.asn_oid** %7, align 8
  %14 = load i32, i32* @MAXSTR, align 4
  %15 = add nsw i32 %14, 1
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %9, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %10, align 8
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %33, %3
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @MAXSTR, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %19
  %24 = load i8*, i8** %6, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = call i64 @isalpha(i8 signext %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %36

32:                                               ; preds = %23
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %8, align 4
  br label %19

36:                                               ; preds = %31, %19
  %37 = load i8*, i8** %6, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  store i8* %40, i8** %11, align 8
  %41 = call i32 @memset(%struct.snmp_object* %12, i32 0, i32 8)
  %42 = load i32, i32* %8, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %62

44:                                               ; preds = %36
  %45 = load i8*, i8** %6, align 8
  %46 = getelementptr inbounds %struct.snmp_object, %struct.snmp_object* %12, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = call i8* @snmp_parse_suboid(i8* %45, %struct.TYPE_5__* %47)
  store i8* %48, i8** %11, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i8* null, i8** %4, align 8
  store i32 1, i32* %13, align 4
  br label %79

51:                                               ; preds = %44
  %52 = load %struct.asn_oid*, %struct.asn_oid** %7, align 8
  %53 = getelementptr inbounds %struct.snmp_object, %struct.snmp_object* %12, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = call i64 @snmp_suboid_append(%struct.asn_oid* %52, i32 %57)
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %51
  store i8* null, i8** %4, align 8
  store i32 1, i32* %13, align 4
  br label %79

61:                                               ; preds = %51
  br label %73

62:                                               ; preds = %36
  %63 = load i8*, i8** %6, align 8
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  %66 = call i32 @strlcpy(i8* %18, i8* %63, i32 %65)
  %67 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %68 = call i64 @snmp_lookup_enumoid(%struct.snmp_toolinfo* %67, %struct.snmp_object* %12, i8* %18)
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %62
  %71 = call i32 @warnx(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %18)
  store i8* null, i8** %4, align 8
  store i32 1, i32* %13, align 4
  br label %79

72:                                               ; preds = %62
  br label %73

73:                                               ; preds = %72, %61
  %74 = load %struct.asn_oid*, %struct.asn_oid** %7, align 8
  %75 = getelementptr inbounds %struct.snmp_object, %struct.snmp_object* %12, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = call i32 @asn_append_oid(%struct.asn_oid* %74, %struct.TYPE_5__* %76)
  %78 = load i8*, i8** %11, align 8
  store i8* %78, i8** %4, align 8
  store i32 1, i32* %13, align 4
  br label %79

79:                                               ; preds = %73, %70, %60, %50
  %80 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %80)
  %81 = load i8*, i8** %4, align 8
  ret i8* %81
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @isalpha(i8 signext) #2

declare dso_local i32 @memset(%struct.snmp_object*, i32, i32) #2

declare dso_local i8* @snmp_parse_suboid(i8*, %struct.TYPE_5__*) #2

declare dso_local i64 @snmp_suboid_append(%struct.asn_oid*, i32) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i64 @snmp_lookup_enumoid(%struct.snmp_toolinfo*, %struct.snmp_object*, i8*) #2

declare dso_local i32 @warnx(i8*, i8*) #2

declare dso_local i32 @asn_append_oid(%struct.asn_oid*, %struct.TYPE_5__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
