; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptools.c_snmp_parse_getbulk_resp.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptools.c_snmp_parse_getbulk_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_pdu = type { i64, i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64, i32 }

@.str = private unnamed_addr constant [35 x i8] c"Bad number of bindings in response\00", align 1
@SNMP_SYNTAX_ENDOFMIBVIEW = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @snmp_parse_getbulk_resp(%struct.snmp_pdu* %0, %struct.snmp_pdu* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.snmp_pdu*, align 8
  %5 = alloca %struct.snmp_pdu*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.snmp_pdu* %0, %struct.snmp_pdu** %4, align 8
  store %struct.snmp_pdu* %1, %struct.snmp_pdu** %5, align 8
  %10 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %11 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %14 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %12, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = call i32 @warnx(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i64 -1, i64* %3, align 8
  br label %128

19:                                               ; preds = %2
  store i64 0, i64* %6, align 8
  br label %20

20:                                               ; preds = %54, %19
  %21 = load i64, i64* %6, align 8
  %22 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %23 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp slt i64 %21, %24
  br i1 %25, label %26, label %57

26:                                               ; preds = %20
  %27 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %28 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i64, i64* %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %34 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i64, i64* %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = call i64 @asn_is_suboid(i32* %32, i32* %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %26
  store i64 0, i64* %3, align 8
  br label %128

42:                                               ; preds = %26
  %43 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %44 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i64, i64* %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @SNMP_SYNTAX_ENDOFMIBVIEW, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  store i64 0, i64* %3, align 8
  br label %128

53:                                               ; preds = %42
  br label %54

54:                                               ; preds = %53
  %55 = load i64, i64* %6, align 8
  %56 = add nsw i64 %55, 1
  store i64 %56, i64* %6, align 8
  br label %20

57:                                               ; preds = %20
  %58 = load i64, i64* %6, align 8
  store i64 %58, i64* %7, align 8
  %59 = load i64, i64* %6, align 8
  store i64 %59, i64* %9, align 8
  br label %60

60:                                               ; preds = %124, %57
  %61 = load i64, i64* %7, align 8
  %62 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %63 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = icmp slt i64 %61, %64
  br i1 %65, label %66, label %127

66:                                               ; preds = %60
  store i64 0, i64* %8, align 8
  br label %67

67:                                               ; preds = %117, %66
  %68 = load i64, i64* %8, align 8
  %69 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %70 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp slt i64 %68, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %67
  %74 = load i64, i64* %9, align 8
  %75 = load i64, i64* %8, align 8
  %76 = add nsw i64 %74, %75
  %77 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %78 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = icmp slt i64 %76, %79
  br label %81

81:                                               ; preds = %73, %67
  %82 = phi i1 [ false, %67 ], [ %80, %73 ]
  br i1 %82, label %83, label %120

83:                                               ; preds = %81
  %84 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %85 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %84, i32 0, i32 2
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = load i64, i64* %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %91 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %90, i32 0, i32 2
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = load i64, i64* %9, align 8
  %94 = load i64, i64* %8, align 8
  %95 = add nsw i64 %93, %94
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  %98 = call i64 @asn_is_suboid(i32* %89, i32* %97)
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %83
  store i64 0, i64* %3, align 8
  br label %128

101:                                              ; preds = %83
  %102 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %103 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %102, i32 0, i32 2
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = load i64, i64* %9, align 8
  %106 = load i64, i64* %8, align 8
  %107 = add nsw i64 %105, %106
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @SNMP_SYNTAX_ENDOFMIBVIEW, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %101
  %114 = load i64, i64* %8, align 8
  %115 = add nsw i64 %114, 1
  store i64 %115, i64* %8, align 8
  br label %120

116:                                              ; preds = %101
  br label %117

117:                                              ; preds = %116
  %118 = load i64, i64* %8, align 8
  %119 = add nsw i64 %118, 1
  store i64 %119, i64* %8, align 8
  br label %67

120:                                              ; preds = %113, %81
  %121 = load i64, i64* %8, align 8
  %122 = load i64, i64* %9, align 8
  %123 = add nsw i64 %122, %121
  store i64 %123, i64* %9, align 8
  br label %124

124:                                              ; preds = %120
  %125 = load i64, i64* %7, align 8
  %126 = add nsw i64 %125, 1
  store i64 %126, i64* %7, align 8
  br label %60

127:                                              ; preds = %60
  store i64 0, i64* %3, align 8
  br label %128

128:                                              ; preds = %127, %100, %52, %41, %17
  %129 = load i64, i64* %3, align 8
  ret i64 %129
}

declare dso_local i32 @warnx(i8*) #1

declare dso_local i64 @asn_is_suboid(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
