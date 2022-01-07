; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_icl_soft.c_icl_pdu_finalize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_icl_soft.c_icl_pdu_finalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icl_pdu = type { i64, %struct.TYPE_7__*, %struct.TYPE_7__*, %struct.icl_conn* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.icl_conn = type { i64, i64 }

@.str = private unnamed_addr constant [31 x i8] c"failed to append header digest\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"failed to append padding\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"failed to append data digest\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.icl_pdu*)* @icl_pdu_finalize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icl_pdu_finalize(%struct.icl_pdu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.icl_pdu*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.icl_conn*, align 8
  store %struct.icl_pdu* %0, %struct.icl_pdu** %3, align 8
  store i64 0, i64* %7, align 8
  %10 = load %struct.icl_pdu*, %struct.icl_pdu** %3, align 8
  %11 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %10, i32 0, i32 3
  %12 = load %struct.icl_conn*, %struct.icl_conn** %11, align 8
  store %struct.icl_conn* %12, %struct.icl_conn** %9, align 8
  %13 = load %struct.icl_pdu*, %struct.icl_pdu** %3, align 8
  %14 = load %struct.icl_pdu*, %struct.icl_pdu** %3, align 8
  %15 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @icl_pdu_set_data_segment_length(%struct.icl_pdu* %13, i64 %16)
  %18 = load %struct.icl_pdu*, %struct.icl_pdu** %3, align 8
  %19 = call i64 @icl_pdu_size(%struct.icl_pdu* %18)
  store i64 %19, i64* %5, align 8
  %20 = load %struct.icl_conn*, %struct.icl_conn** %9, align 8
  %21 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %1
  %25 = load %struct.icl_pdu*, %struct.icl_pdu** %3, align 8
  %26 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %25, i32 0, i32 1
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = call i64 @icl_mbuf_to_crc32c(%struct.TYPE_7__* %27)
  store i64 %28, i64* %6, align 8
  %29 = load %struct.icl_pdu*, %struct.icl_pdu** %3, align 8
  %30 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %29, i32 0, i32 1
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = bitcast i64* %6 to i8*
  %33 = call i32 @m_append(%struct.TYPE_7__* %31, i32 8, i8* %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 1
  br i1 %35, label %36, label %38

36:                                               ; preds = %24
  %37 = call i32 @ICL_WARN(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %99

38:                                               ; preds = %24
  br label %39

39:                                               ; preds = %38, %1
  %40 = load %struct.icl_pdu*, %struct.icl_pdu** %3, align 8
  %41 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %92

44:                                               ; preds = %39
  %45 = load %struct.icl_pdu*, %struct.icl_pdu** %3, align 8
  %46 = call i64 @icl_pdu_padding(%struct.icl_pdu* %45)
  store i64 %46, i64* %4, align 8
  %47 = load i64, i64* %4, align 8
  %48 = icmp ugt i64 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %44
  %50 = load %struct.icl_pdu*, %struct.icl_pdu** %3, align 8
  %51 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %50, i32 0, i32 2
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = load i64, i64* %4, align 8
  %54 = trunc i64 %53 to i32
  %55 = bitcast i64* %7 to i8*
  %56 = call i32 @m_append(%struct.TYPE_7__* %52, i32 %54, i8* %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 1
  br i1 %58, label %59, label %61

59:                                               ; preds = %49
  %60 = call i32 @ICL_WARN(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %99

61:                                               ; preds = %49
  br label %62

62:                                               ; preds = %61, %44
  %63 = load %struct.icl_conn*, %struct.icl_conn** %9, align 8
  %64 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %82

67:                                               ; preds = %62
  %68 = load %struct.icl_pdu*, %struct.icl_pdu** %3, align 8
  %69 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %68, i32 0, i32 2
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = call i64 @icl_mbuf_to_crc32c(%struct.TYPE_7__* %70)
  store i64 %71, i64* %6, align 8
  %72 = load %struct.icl_pdu*, %struct.icl_pdu** %3, align 8
  %73 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %72, i32 0, i32 2
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = bitcast i64* %6 to i8*
  %76 = call i32 @m_append(%struct.TYPE_7__* %74, i32 8, i8* %75)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 1
  br i1 %78, label %79, label %81

79:                                               ; preds = %67
  %80 = call i32 @ICL_WARN(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %99

81:                                               ; preds = %67
  br label %82

82:                                               ; preds = %81, %62
  %83 = load %struct.icl_pdu*, %struct.icl_pdu** %3, align 8
  %84 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %83, i32 0, i32 1
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %84, align 8
  %86 = load %struct.icl_pdu*, %struct.icl_pdu** %3, align 8
  %87 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %86, i32 0, i32 2
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = call i32 @m_cat(%struct.TYPE_7__* %85, %struct.TYPE_7__* %88)
  %90 = load %struct.icl_pdu*, %struct.icl_pdu** %3, align 8
  %91 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %90, i32 0, i32 2
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %91, align 8
  br label %92

92:                                               ; preds = %82, %39
  %93 = load i64, i64* %5, align 8
  %94 = load %struct.icl_pdu*, %struct.icl_pdu** %3, align 8
  %95 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %94, i32 0, i32 1
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  store i64 %93, i64* %98, align 8
  store i32 0, i32* %2, align 4
  br label %99

99:                                               ; preds = %92, %79, %59, %36
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i32 @icl_pdu_set_data_segment_length(%struct.icl_pdu*, i64) #1

declare dso_local i64 @icl_pdu_size(%struct.icl_pdu*) #1

declare dso_local i64 @icl_mbuf_to_crc32c(%struct.TYPE_7__*) #1

declare dso_local i32 @m_append(%struct.TYPE_7__*, i32, i8*) #1

declare dso_local i32 @ICL_WARN(i8*) #1

declare dso_local i64 @icl_pdu_padding(%struct.icl_pdu*) #1

declare dso_local i32 @m_cat(%struct.TYPE_7__*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
