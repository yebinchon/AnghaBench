; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptools.c_snmp_output_resp.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptools.c_snmp_output_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_toolinfo = type { i32 }
%struct.snmp_pdu = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.asn_oid = type { i32 }
%struct.snmp_object = type { i32 }

@ASN_OIDSTRLEN = common dso_local global i32 0, align 4
@OUTPUT_QUIET = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snmp_output_resp(%struct.snmp_toolinfo* %0, %struct.snmp_pdu* %1, %struct.asn_oid* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snmp_toolinfo*, align 8
  %6 = alloca %struct.snmp_pdu*, align 8
  %7 = alloca %struct.asn_oid*, align 8
  %8 = alloca %struct.snmp_object*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.snmp_toolinfo* %0, %struct.snmp_toolinfo** %5, align 8
  store %struct.snmp_pdu* %1, %struct.snmp_pdu** %6, align 8
  store %struct.asn_oid* %2, %struct.asn_oid** %7, align 8
  %14 = load i32, i32* @ASN_OIDSTRLEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  %18 = call %struct.snmp_object* @calloc(i32 1, i32 4)
  store %struct.snmp_object* %18, %struct.snmp_object** %8, align 8
  %19 = icmp eq %struct.snmp_object* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %100

21:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  store i64 0, i64* %12, align 8
  br label %22

22:                                               ; preds = %76, %21
  %23 = load i64, i64* %12, align 8
  %24 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %25 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ult i64 %23, %26
  br i1 %27, label %28, label %91

28:                                               ; preds = %22
  %29 = load %struct.asn_oid*, %struct.asn_oid** %7, align 8
  %30 = icmp ne %struct.asn_oid* %29, null
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  %32 = load %struct.asn_oid*, %struct.asn_oid** %7, align 8
  %33 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %34 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %33, i32 0, i32 1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = load i64, i64* %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = call i32 @asn_is_suboid(%struct.asn_oid* %32, i32* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %31
  br label %91

42:                                               ; preds = %31, %28
  %43 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %44 = call i64 @GET_OUTPUT(%struct.snmp_toolinfo* %43)
  %45 = load i64, i64* @OUTPUT_QUIET, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %76

47:                                               ; preds = %42
  %48 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %49 = call i32 @ISSET_NUMERIC(%struct.snmp_toolinfo* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %65, label %51

51:                                               ; preds = %47
  %52 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %53 = load %struct.snmp_object*, %struct.snmp_object** %8, align 8
  %54 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %55 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %54, i32 0, i32 1
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = load i64, i64* %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i64 %57
  %59 = call i64 @snmp_fill_object(%struct.snmp_toolinfo* %52, %struct.snmp_object* %53, %struct.TYPE_3__* %58)
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %51
  %62 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %63 = load %struct.snmp_object*, %struct.snmp_object** %8, align 8
  %64 = call i32 @snmp_output_object(%struct.snmp_toolinfo* %62, %struct.snmp_object* %63)
  br label %75

65:                                               ; preds = %51, %47
  %66 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %67 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %66, i32 0, i32 1
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = load i64, i64* %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = call i32 @asn_oid2str_r(i32* %71, i8* %17)
  %73 = load i32, i32* @stdout, align 4
  %74 = call i32 @fprintf(i32 %73, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %17)
  br label %75

75:                                               ; preds = %65, %61
  br label %76

76:                                               ; preds = %75, %42
  %77 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %78 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %79 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %78, i32 0, i32 1
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = load i64, i64* %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i64 %81
  %83 = load %struct.snmp_object*, %struct.snmp_object** %8, align 8
  %84 = getelementptr inbounds %struct.snmp_object, %struct.snmp_object* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @snmp_output_numval(%struct.snmp_toolinfo* %77, %struct.TYPE_3__* %82, i32 %85)
  %87 = load i32, i32* %11, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %11, align 4
  %89 = load i64, i64* %12, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %12, align 8
  br label %22

91:                                               ; preds = %41, %22
  %92 = load %struct.snmp_object*, %struct.snmp_object** %8, align 8
  %93 = call i32 @free(%struct.snmp_object* %92)
  store %struct.snmp_object* null, %struct.snmp_object** %8, align 8
  %94 = load i32, i32* %11, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %100

97:                                               ; preds = %91
  %98 = load i64, i64* %12, align 8
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %100

100:                                              ; preds = %97, %96, %20
  %101 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %101)
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.snmp_object* @calloc(i32, i32) #2

declare dso_local i32 @asn_is_suboid(%struct.asn_oid*, i32*) #2

declare dso_local i64 @GET_OUTPUT(%struct.snmp_toolinfo*) #2

declare dso_local i32 @ISSET_NUMERIC(%struct.snmp_toolinfo*) #2

declare dso_local i64 @snmp_fill_object(%struct.snmp_toolinfo*, %struct.snmp_object*, %struct.TYPE_3__*) #2

declare dso_local i32 @snmp_output_object(%struct.snmp_toolinfo*, %struct.snmp_object*) #2

declare dso_local i32 @asn_oid2str_r(i32*, i8*) #2

declare dso_local i32 @fprintf(i32, i8*, i8*) #2

declare dso_local i32 @snmp_output_numval(%struct.snmp_toolinfo*, %struct.TYPE_3__*, i32) #2

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
