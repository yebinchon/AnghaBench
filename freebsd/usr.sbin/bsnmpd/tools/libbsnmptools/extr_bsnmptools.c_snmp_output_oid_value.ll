; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptools.c_snmp_output_oid_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptools.c_snmp_output_oid_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8* }
%struct.snmp_toolinfo = type { i32 }
%struct.asn_oid = type { i32 }
%struct.snmp_object = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_4__ = type { i32 }

@ASN_OIDSTRLEN = common dso_local global i32 0, align 4
@OUTPUT_VERBOSE = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s : \00", align 1
@syntax_strings = common dso_local global %struct.TYPE_6__* null, align 8
@SNMP_SYNTAX_OID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snmp_toolinfo*, %struct.asn_oid*)* @snmp_output_oid_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snmp_output_oid_value(%struct.snmp_toolinfo* %0, %struct.asn_oid* %1) #0 {
  %3 = alloca %struct.snmp_toolinfo*, align 8
  %4 = alloca %struct.asn_oid*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.snmp_object, align 8
  store %struct.snmp_toolinfo* %0, %struct.snmp_toolinfo** %3, align 8
  store %struct.asn_oid* %1, %struct.asn_oid** %4, align 8
  %8 = load i32, i32* @ASN_OIDSTRLEN, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %5, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %6, align 8
  %12 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %3, align 8
  %13 = call i64 @GET_OUTPUT(%struct.snmp_toolinfo* %12)
  %14 = load i64, i64* @OUTPUT_VERBOSE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load i32, i32* @stdout, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** @syntax_strings, align 8
  %19 = load i64, i64* @SNMP_SYNTAX_OID, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @fprintf(i32 %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %22)
  br label %24

24:                                               ; preds = %16, %2
  %25 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %3, align 8
  %26 = call i32 @ISSET_NUMERIC(%struct.snmp_toolinfo* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %74, label %28

28:                                               ; preds = %24
  %29 = call i32 @memset(%struct.snmp_object* %7, i32 0, i32 16)
  %30 = getelementptr inbounds %struct.snmp_object, %struct.snmp_object* %7, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %33 = call i32 @asn_append_oid(i32* %31, %struct.asn_oid* %32)
  %34 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %3, align 8
  %35 = call i64 @snmp_lookup_enumstring(%struct.snmp_toolinfo* %34, %struct.snmp_object* %7)
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %28
  %38 = load i32, i32* @stdout, align 4
  %39 = getelementptr inbounds %struct.snmp_object, %struct.snmp_object* %7, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @fprintf(i32 %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  br label %73

44:                                               ; preds = %28
  %45 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %3, align 8
  %46 = call i64 @snmp_lookup_oidstring(%struct.snmp_toolinfo* %45, %struct.snmp_object* %7)
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %44
  %49 = load i32, i32* @stdout, align 4
  %50 = getelementptr inbounds %struct.snmp_object, %struct.snmp_object* %7, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @fprintf(i32 %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %53)
  br label %72

55:                                               ; preds = %44
  %56 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %3, align 8
  %57 = call i64 @snmp_lookup_nodestring(%struct.snmp_toolinfo* %56, %struct.snmp_object* %7)
  %58 = icmp sgt i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %55
  %60 = load i32, i32* @stdout, align 4
  %61 = getelementptr inbounds %struct.snmp_object, %struct.snmp_object* %7, i32 0, i32 0
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @fprintf(i32 %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %64)
  br label %71

66:                                               ; preds = %55
  %67 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %68 = call i32 @asn_oid2str_r(%struct.asn_oid* %67, i8* %11)
  %69 = load i32, i32* @stdout, align 4
  %70 = call i32 @fprintf(i32 %69, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %11)
  br label %71

71:                                               ; preds = %66, %59
  br label %72

72:                                               ; preds = %71, %48
  br label %73

73:                                               ; preds = %72, %37
  br label %79

74:                                               ; preds = %24
  %75 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %76 = call i32 @asn_oid2str_r(%struct.asn_oid* %75, i8* %11)
  %77 = load i32, i32* @stdout, align 4
  %78 = call i32 @fprintf(i32 %77, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %11)
  br label %79

79:                                               ; preds = %74, %73
  %80 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %80)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @GET_OUTPUT(%struct.snmp_toolinfo*) #2

declare dso_local i32 @fprintf(i32, i8*, i8*) #2

declare dso_local i32 @ISSET_NUMERIC(%struct.snmp_toolinfo*) #2

declare dso_local i32 @memset(%struct.snmp_object*, i32, i32) #2

declare dso_local i32 @asn_append_oid(i32*, %struct.asn_oid*) #2

declare dso_local i64 @snmp_lookup_enumstring(%struct.snmp_toolinfo*, %struct.snmp_object*) #2

declare dso_local i64 @snmp_lookup_oidstring(%struct.snmp_toolinfo*, %struct.snmp_object*) #2

declare dso_local i64 @snmp_lookup_nodestring(%struct.snmp_toolinfo*, %struct.snmp_object*) #2

declare dso_local i32 @asn_oid2str_r(%struct.asn_oid*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
