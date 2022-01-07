; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/bsnmptools/extr_bsnmpget.c_snmptool_walk.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/bsnmptools/extr_bsnmpget.c_snmptool_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_toolinfo = type { i32 }
%struct.snmp_pdu = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.asn_oid }
%struct.asn_oid = type { i32 }

@SNMP_PDU_GETBULK = common dso_local global i64 0, align 8
@SNMP_PDU_GETNEXT = common dso_local global i64 0, align 8
@snmptool_add_vbind = common dso_local global i32 0, align 4
@SNMP_PDU_GET = common dso_local global i64 0, align 8
@SNMP_CODE_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"Snmp dialog\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"snmp_object_remove\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snmp_toolinfo*)* @snmptool_walk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snmptool_walk(%struct.snmp_toolinfo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snmp_toolinfo*, align 8
  %4 = alloca %struct.snmp_pdu, align 8
  %5 = alloca %struct.snmp_pdu, align 8
  %6 = alloca %struct.asn_oid, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.snmp_toolinfo* %0, %struct.snmp_toolinfo** %3, align 8
  %10 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %3, align 8
  %11 = call i64 @GET_PDUTYPE(%struct.snmp_toolinfo* %10)
  %12 = load i64, i64* @SNMP_PDU_GETBULK, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i64, i64* @SNMP_PDU_GETBULK, align 8
  store i64 %15, i64* %9, align 8
  br label %18

16:                                               ; preds = %1
  %17 = load i64, i64* @SNMP_PDU_GETNEXT, align 8
  store i64 %17, i64* %9, align 8
  br label %18

18:                                               ; preds = %16, %14
  %19 = load i64, i64* %9, align 8
  %20 = call i32 @snmp_pdu_create(%struct.snmp_pdu* %4, i64 %19)
  br label %21

21:                                               ; preds = %122, %18
  %22 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %3, align 8
  %23 = load i32, i32* @snmptool_add_vbind, align 4
  %24 = call i64 @snmp_pdu_add_bindings(%struct.snmp_toolinfo* %22, i32* null, i32 %23, %struct.snmp_pdu* %4, i32 1)
  store i64 %24, i64* %8, align 8
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %126

26:                                               ; preds = %21
  %27 = call i32 @memset(%struct.asn_oid* %6, i32 0, i32 4)
  %28 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %4, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call i32 @asn_append_oid(%struct.asn_oid* %6, %struct.asn_oid* %31)
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* @SNMP_PDU_GETBULK, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %26
  %37 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %3, align 8
  %38 = call i32 @GET_MAXREP(%struct.snmp_toolinfo* %37)
  %39 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %3, align 8
  %40 = call i32 @GET_NONREP(%struct.snmp_toolinfo* %39)
  %41 = call i32 @snmpget_fix_getbulk(%struct.snmp_pdu* %4, i32 %38, i32 %40)
  br label %42

42:                                               ; preds = %36, %26
  store i64 0, i64* %7, align 8
  br label %43

43:                                               ; preds = %91, %42
  %44 = call i64 @snmp_dialog(%struct.snmp_pdu* %4, %struct.snmp_pdu* %5)
  %45 = icmp sge i64 %44, 0
  br i1 %45, label %46, label %93

46:                                               ; preds = %43
  %47 = call i64 @snmp_parse_resp(%struct.snmp_pdu* %5, %struct.snmp_pdu* %4)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %3, align 8
  %51 = call i32 @snmp_output_err_resp(%struct.snmp_toolinfo* %50, %struct.snmp_pdu* %5)
  %52 = call i32 @snmp_pdu_free(%struct.snmp_pdu* %5)
  store i64 -1, i64* %7, align 8
  br label %93

53:                                               ; preds = %46
  %54 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %3, align 8
  %55 = call i64 @snmp_output_resp(%struct.snmp_toolinfo* %54, %struct.snmp_pdu* %5, %struct.asn_oid* %6)
  store i64 %55, i64* %8, align 8
  %56 = load i64, i64* %8, align 8
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = call i32 @snmp_pdu_free(%struct.snmp_pdu* %5)
  store i64 -1, i64* %7, align 8
  br label %93

60:                                               ; preds = %53
  %61 = load i64, i64* %8, align 8
  %62 = load i64, i64* %7, align 8
  %63 = add nsw i64 %62, %61
  store i64 %63, i64* %7, align 8
  %64 = load i64, i64* %8, align 8
  %65 = trunc i64 %64 to i32
  %66 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %5, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %65, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %60
  %70 = call i32 @snmp_pdu_free(%struct.snmp_pdu* %5)
  br label %93

71:                                               ; preds = %60
  %72 = load i64, i64* %9, align 8
  %73 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %5, i32 0, i32 1
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %5, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sub nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = call i32 @snmpwalk_nextpdu_create(i64 %72, %struct.asn_oid* %80, %struct.snmp_pdu* %4)
  %82 = load i64, i64* %9, align 8
  %83 = load i64, i64* @SNMP_PDU_GETBULK, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %71
  %86 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %3, align 8
  %87 = call i32 @GET_MAXREP(%struct.snmp_toolinfo* %86)
  %88 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %3, align 8
  %89 = call i32 @GET_NONREP(%struct.snmp_toolinfo* %88)
  %90 = call i32 @snmpget_fix_getbulk(%struct.snmp_pdu* %4, i32 %87, i32 %89)
  br label %91

91:                                               ; preds = %85, %71
  %92 = call i32 @snmp_pdu_free(%struct.snmp_pdu* %5)
  br label %43

93:                                               ; preds = %69, %58, %49, %43
  %94 = load i64, i64* %7, align 8
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %116

96:                                               ; preds = %93
  %97 = load i64, i64* @SNMP_PDU_GET, align 8
  %98 = call i32 @snmpwalk_nextpdu_create(i64 %97, %struct.asn_oid* %6, %struct.snmp_pdu* %4)
  %99 = call i64 @snmp_dialog(%struct.snmp_pdu* %4, %struct.snmp_pdu* %5)
  %100 = load i64, i64* @SNMP_CODE_OK, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %113

102:                                              ; preds = %96
  %103 = call i64 @snmp_parse_resp(%struct.snmp_pdu* %5, %struct.snmp_pdu* %4)
  %104 = icmp slt i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %3, align 8
  %107 = call i32 @snmp_output_err_resp(%struct.snmp_toolinfo* %106, %struct.snmp_pdu* %5)
  br label %111

108:                                              ; preds = %102
  %109 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %3, align 8
  %110 = call i64 @snmp_output_resp(%struct.snmp_toolinfo* %109, %struct.snmp_pdu* %5, %struct.asn_oid* null)
  br label %111

111:                                              ; preds = %108, %105
  %112 = call i32 @snmp_pdu_free(%struct.snmp_pdu* %5)
  br label %115

113:                                              ; preds = %96
  %114 = call i32 @warn(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %115

115:                                              ; preds = %113, %111
  br label %116

116:                                              ; preds = %115, %93
  %117 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %3, align 8
  %118 = call i64 @snmp_object_remove(%struct.snmp_toolinfo* %117, %struct.asn_oid* %6)
  %119 = icmp slt i64 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %116
  %121 = call i32 @warnx(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %126

122:                                              ; preds = %116
  %123 = call i32 @snmp_pdu_free(%struct.snmp_pdu* %4)
  %124 = load i64, i64* %9, align 8
  %125 = call i32 @snmp_pdu_create(%struct.snmp_pdu* %4, i64 %124)
  br label %21

126:                                              ; preds = %120, %21
  %127 = call i32 @snmp_pdu_free(%struct.snmp_pdu* %4)
  %128 = load i64, i64* %8, align 8
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %126
  store i32 0, i32* %2, align 4
  br label %132

131:                                              ; preds = %126
  store i32 1, i32* %2, align 4
  br label %132

132:                                              ; preds = %131, %130
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local i64 @GET_PDUTYPE(%struct.snmp_toolinfo*) #1

declare dso_local i32 @snmp_pdu_create(%struct.snmp_pdu*, i64) #1

declare dso_local i64 @snmp_pdu_add_bindings(%struct.snmp_toolinfo*, i32*, i32, %struct.snmp_pdu*, i32) #1

declare dso_local i32 @memset(%struct.asn_oid*, i32, i32) #1

declare dso_local i32 @asn_append_oid(%struct.asn_oid*, %struct.asn_oid*) #1

declare dso_local i32 @snmpget_fix_getbulk(%struct.snmp_pdu*, i32, i32) #1

declare dso_local i32 @GET_MAXREP(%struct.snmp_toolinfo*) #1

declare dso_local i32 @GET_NONREP(%struct.snmp_toolinfo*) #1

declare dso_local i64 @snmp_dialog(%struct.snmp_pdu*, %struct.snmp_pdu*) #1

declare dso_local i64 @snmp_parse_resp(%struct.snmp_pdu*, %struct.snmp_pdu*) #1

declare dso_local i32 @snmp_output_err_resp(%struct.snmp_toolinfo*, %struct.snmp_pdu*) #1

declare dso_local i32 @snmp_pdu_free(%struct.snmp_pdu*) #1

declare dso_local i64 @snmp_output_resp(%struct.snmp_toolinfo*, %struct.snmp_pdu*, %struct.asn_oid*) #1

declare dso_local i32 @snmpwalk_nextpdu_create(i64, %struct.asn_oid*, %struct.snmp_pdu*) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i64 @snmp_object_remove(%struct.snmp_toolinfo*, %struct.asn_oid*) #1

declare dso_local i32 @warnx(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
