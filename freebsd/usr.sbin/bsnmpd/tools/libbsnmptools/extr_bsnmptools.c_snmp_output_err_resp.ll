; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptools.c_snmp_output_err_resp.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptools.c_snmp_output_err_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8* }
%struct.TYPE_6__ = type { i8* }
%struct.snmp_toolinfo = type { i32 }
%struct.snmp_pdu = type { i32, i64, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.snmp_object = type { i32 }

@ASN_OIDSTRLEN = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Invalid error index in PDU\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"calloc: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Agent %s:%s returned error \0A\00", align 1
@snmp_client = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c" caused error - \00", align 1
@SNMP_ERR_INCONS_NAME = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@error_strings = common dso_local global %struct.TYPE_6__* null, align 8
@SNMP_ERR_UNKNOWN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snmp_output_err_resp(%struct.snmp_toolinfo* %0, %struct.snmp_pdu* %1) #0 {
  %3 = alloca %struct.snmp_toolinfo*, align 8
  %4 = alloca %struct.snmp_pdu*, align 8
  %5 = alloca %struct.snmp_object*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.snmp_toolinfo* %0, %struct.snmp_toolinfo** %3, align 8
  store %struct.snmp_pdu* %1, %struct.snmp_pdu** %4, align 8
  %9 = load i32, i32* @ASN_OIDSTRLEN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %6, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %7, align 8
  %13 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %14 = icmp eq %struct.snmp_pdu* %13, null
  br i1 %14, label %24, label %15

15:                                               ; preds = %2
  %16 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %17 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %20 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i32
  %23 = icmp sgt i32 %18, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %15, %2
  %25 = load i32, i32* @stdout, align 4
  %26 = call i32 (i32, i8*, ...) @fprintf(i32 %25, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %109

27:                                               ; preds = %15
  %28 = call %struct.snmp_object* @calloc(i32 1, i32 4)
  store %struct.snmp_object* %28, %struct.snmp_object** %5, align 8
  %29 = icmp eq %struct.snmp_object* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load i32, i32* @stdout, align 4
  %32 = load i32, i32* @errno, align 4
  %33 = call i8* @strerror(i32 %32)
  %34 = call i32 (i32, i8*, ...) @fprintf(i32 %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  store i32 1, i32* %8, align 4
  br label %109

35:                                               ; preds = %27
  %36 = load i32, i32* @stdout, align 4
  %37 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @snmp_client, i32 0, i32 0), align 8
  %38 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @snmp_client, i32 0, i32 1), align 8
  %39 = call i32 (i32, i8*, ...) @fprintf(i32 %36, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %37, i8* %38)
  %40 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %3, align 8
  %41 = call i32 @ISSET_NUMERIC(%struct.snmp_toolinfo* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %61, label %43

43:                                               ; preds = %35
  %44 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %3, align 8
  %45 = load %struct.snmp_object*, %struct.snmp_object** %5, align 8
  %46 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %47 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %46, i32 0, i32 2
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %50 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sub nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %53
  %55 = call i64 @snmp_fill_object(%struct.snmp_toolinfo* %44, %struct.snmp_object* %45, %struct.TYPE_4__* %54)
  %56 = icmp sgt i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %43
  %58 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %3, align 8
  %59 = load %struct.snmp_object*, %struct.snmp_object** %5, align 8
  %60 = call i32 @snmp_output_object(%struct.snmp_toolinfo* %58, %struct.snmp_object* %59)
  br label %75

61:                                               ; preds = %43, %35
  %62 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %63 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %62, i32 0, i32 2
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %66 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sub nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = call i32 @asn_oid2str_r(i32* %71, i8* %12)
  %73 = load i32, i32* @stdout, align 4
  %74 = call i32 (i32, i8*, ...) @fprintf(i32 %73, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %12)
  br label %75

75:                                               ; preds = %61, %57
  %76 = load i32, i32* @stdout, align 4
  %77 = call i32 (i32, i8*, ...) @fprintf(i32 %76, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %78 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %79 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ugt i64 %80, 0
  br i1 %81, label %82, label %98

82:                                               ; preds = %75
  %83 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %84 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @SNMP_ERR_INCONS_NAME, align 8
  %87 = icmp ule i64 %85, %86
  br i1 %87, label %88, label %98

88:                                               ; preds = %82
  %89 = load i32, i32* @stdout, align 4
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** @error_strings, align 8
  %91 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %92 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 (i32, i8*, ...) @fprintf(i32 %89, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %96)
  br label %106

98:                                               ; preds = %82, %75
  %99 = load i32, i32* @stdout, align 4
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** @error_strings, align 8
  %101 = load i64, i64* @SNMP_ERR_UNKNOWN, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 (i32, i8*, ...) @fprintf(i32 %99, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %104)
  br label %106

106:                                              ; preds = %98, %88
  %107 = load %struct.snmp_object*, %struct.snmp_object** %5, align 8
  %108 = call i32 @free(%struct.snmp_object* %107)
  store %struct.snmp_object* null, %struct.snmp_object** %5, align 8
  store i32 0, i32* %8, align 4
  br label %109

109:                                              ; preds = %106, %30, %24
  %110 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %110)
  %111 = load i32, i32* %8, align 4
  switch i32 %111, label %113 [
    i32 0, label %112
    i32 1, label %112
  ]

112:                                              ; preds = %109, %109
  ret void

113:                                              ; preds = %109
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local %struct.snmp_object* @calloc(i32, i32) #2

declare dso_local i8* @strerror(i32) #2

declare dso_local i32 @ISSET_NUMERIC(%struct.snmp_toolinfo*) #2

declare dso_local i64 @snmp_fill_object(%struct.snmp_toolinfo*, %struct.snmp_object*, %struct.TYPE_4__*) #2

declare dso_local i32 @snmp_output_object(%struct.snmp_toolinfo*, %struct.snmp_object*) #2

declare dso_local i32 @asn_oid2str_r(i32*, i8*) #2

declare dso_local i32 @free(%struct.snmp_object*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
