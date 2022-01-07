; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iscsi_initiator/extr_isc_sm.c_i_prepPDU.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iscsi_initiator/extr_isc_sm.c_i_prepPDU.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_11__, i32, i32, i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_12__ = type { i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i64 }

@.str = private unnamed_addr constant [21 x i8] c"%d] pdu len=%zd > %d\00", align 1
@E2BIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_prepPDU(%struct.TYPE_14__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 1
  store %struct.TYPE_13__* %11, %struct.TYPE_13__** %8, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  store %struct.TYPE_15__* %14, %struct.TYPE_15__** %9, align 8
  store i64 16, i64* %6, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %2
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = load i64, i64* %6, align 8
  %25 = add i64 %24, %23
  store i64 %25, i64* %6, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sdiv i32 %28, 4
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  br label %32

32:                                               ; preds = %19, %2
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %37 = call i64 @ISOK2DIG(i32 %35, %struct.TYPE_13__* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load i64, i64* %6, align 8
  %41 = add i64 %40, 4
  store i64 %41, i64* %6, align 8
  br label %42

42:                                               ; preds = %39, %32
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %87

47:                                               ; preds = %42
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %7, align 8
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* %6, align 8
  %53 = add i64 %52, %51
  store i64 %53, i64* %6, align 8
  %54 = load i64, i64* %7, align 8
  %55 = and i64 %54, 16711680
  %56 = lshr i64 %55, 16
  %57 = load i64, i64* %7, align 8
  %58 = and i64 %57, 65280
  %59 = or i64 %56, %58
  %60 = load i64, i64* %7, align 8
  %61 = and i64 %60, 255
  %62 = shl i64 %61, 16
  %63 = or i64 %59, %62
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 1
  store i64 %63, i64* %65, align 8
  %66 = load i64, i64* %6, align 8
  %67 = and i64 %66, 3
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %47
  %70 = load i64, i64* %6, align 8
  %71 = and i64 %70, 3
  %72 = sub i64 4, %71
  store i64 %72, i64* %7, align 8
  %73 = load i64, i64* %7, align 8
  %74 = load i64, i64* %6, align 8
  %75 = add i64 %74, %73
  store i64 %75, i64* %6, align 8
  br label %76

76:                                               ; preds = %69, %47
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %81 = call i64 @ISOK2DIG(i32 %79, %struct.TYPE_13__* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %76
  %84 = load i64, i64* %6, align 8
  %85 = add i64 %84, 4
  store i64 %85, i64* %6, align 8
  br label %86

86:                                               ; preds = %83, %76
  br label %87

87:                                               ; preds = %86, %42
  %88 = load i64, i64* %6, align 8
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  %91 = load i64, i64* %6, align 8
  %92 = sub i64 %91, 16
  store i64 %92, i64* %6, align 8
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %116

98:                                               ; preds = %87
  %99 = load i64, i64* %6, align 8
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ugt i64 %99, %103
  br i1 %104, label %105, label %116

105:                                              ; preds = %98
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load i64, i64* %6, align 8
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @xdebug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %108, i64 %109, i64 %113)
  %115 = load i32, i32* @E2BIG, align 4
  store i32 %115, i32* %3, align 4
  br label %117

116:                                              ; preds = %98, %87
  store i32 0, i32* %3, align 4
  br label %117

117:                                              ; preds = %116, %105
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i64 @ISOK2DIG(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @xdebug(i8*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
