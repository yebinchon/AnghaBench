; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptc.c_snmp_addr2asn_oid.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptc.c_snmp_addr2asn_oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn_oid = type { i32 }

@SNMP_PHYSADDR_OCTETS = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Integer value %s not supported\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Failed adding oid - %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, %struct.asn_oid*)* @snmp_addr2asn_oid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @snmp_addr2asn_oid(i8* %0, %struct.asn_oid* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.asn_oid*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.asn_oid* %1, %struct.asn_oid** %5, align 8
  %11 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %12 = load i64, i64* @SNMP_PHYSADDR_OCTETS, align 8
  %13 = trunc i64 %12 to i32
  %14 = call i64 @snmp_suboid_append(%struct.asn_oid* %11, i32 %13)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %70

17:                                               ; preds = %2
  %18 = load i8*, i8** %4, align 8
  store i8* %18, i8** %7, align 8
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %49, %17
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %20, 5
  br i1 %21, label %22, label %52

22:                                               ; preds = %19
  %23 = load i32, i32* @errno, align 4
  store i32 %23, i32* %10, align 4
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @strtoul(i8* %24, i8** %6, i32 16)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* @errno, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp sgt i32 %27, 255
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @warnx(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %30)
  store i8* null, i8** %3, align 8
  br label %70

32:                                               ; preds = %22
  %33 = load i8*, i8** %6, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 58
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i8*, i8** %4, align 8
  %39 = call i32 @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %38)
  store i8* null, i8** %3, align 8
  br label %70

40:                                               ; preds = %32
  %41 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i64 @snmp_suboid_append(%struct.asn_oid* %41, i32 %42)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i8* null, i8** %3, align 8
  br label %70

46:                                               ; preds = %40
  %47 = load i8*, i8** %6, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  store i8* %48, i8** %7, align 8
  br label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %9, align 4
  br label %19

52:                                               ; preds = %19
  %53 = load i32, i32* @errno, align 4
  store i32 %53, i32* %10, align 4
  %54 = load i8*, i8** %7, align 8
  %55 = call i32 @strtoul(i8* %54, i8** %6, i32 16)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* @errno, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp sgt i32 %57, 255
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load i8*, i8** %4, align 8
  %61 = call i32 @warnx(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %60)
  store i8* null, i8** %3, align 8
  br label %70

62:                                               ; preds = %52
  %63 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i64 @snmp_suboid_append(%struct.asn_oid* %63, i32 %64)
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  store i8* null, i8** %3, align 8
  br label %70

68:                                               ; preds = %62
  %69 = load i8*, i8** %6, align 8
  store i8* %69, i8** %3, align 8
  br label %70

70:                                               ; preds = %68, %67, %59, %45, %37, %29, %16
  %71 = load i8*, i8** %3, align 8
  ret i8* %71
}

declare dso_local i64 @snmp_suboid_append(%struct.asn_oid*, i32) #1

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @warnx(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
