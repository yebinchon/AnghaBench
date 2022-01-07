; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_utils.c_spv_new_cell.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_utils.c_spv_new_cell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8**, i32 }

@SPV_ROWLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_3__*, i32, i64)* @spv_new_cell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @spv_new_cell(%struct.TYPE_3__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = ashr i32 %12, 16
  %14 = and i32 %13, 255
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %6, align 4
  %16 = ashr i32 %15, 8
  %17 = and i32 %16, 255
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %6, align 4
  %19 = ashr i32 %18, 0
  %20 = and i32 %19, 255
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sge i32 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %137

27:                                               ; preds = %3
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i8**, i8*** %29, align 8
  %31 = icmp eq i8** %30, null
  br i1 %31, label %32, label %52

32:                                               ; preds = %27
  %33 = load i64, i64* %7, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @SPV_ROWLEN, align 4
  %40 = call i8** @spv_new_row(i32 %38, i32 %39)
  br label %42

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %41, %35
  %43 = phi i8** [ %40, %35 ], [ null, %41 ]
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  store i8** %43, i8*** %45, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i8**, i8*** %47, align 8
  %49 = icmp eq i8** %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  store i8* null, i8** %4, align 8
  br label %137

51:                                               ; preds = %42
  br label %52

52:                                               ; preds = %51, %27
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i8**, i8*** %54, align 8
  store i8** %55, i8*** %11, align 8
  %56 = load i8**, i8*** %11, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8*, i8** %56, i64 %58
  %60 = load i8*, i8** %59, align 8
  %61 = icmp eq i8* %60, null
  br i1 %61, label %62, label %87

62:                                               ; preds = %52
  %63 = load i64, i64* %7, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @SPV_ROWLEN, align 4
  %70 = call i8** @spv_new_row(i32 %68, i32 %69)
  br label %72

71:                                               ; preds = %62
  br label %72

72:                                               ; preds = %71, %65
  %73 = phi i8** [ %70, %65 ], [ null, %71 ]
  %74 = bitcast i8** %73 to i8*
  %75 = load i8**, i8*** %11, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8*, i8** %75, i64 %77
  store i8* %74, i8** %78, align 8
  %79 = load i8**, i8*** %11, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %79, i64 %81
  %83 = load i8*, i8** %82, align 8
  %84 = icmp eq i8* %83, null
  br i1 %84, label %85, label %86

85:                                               ; preds = %72
  store i8* null, i8** %4, align 8
  br label %137

86:                                               ; preds = %72
  br label %87

87:                                               ; preds = %86, %52
  %88 = load i8**, i8*** %11, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8*, i8** %88, i64 %90
  %92 = load i8*, i8** %91, align 8
  %93 = bitcast i8* %92 to i8**
  store i8** %93, i8*** %11, align 8
  %94 = load i8**, i8*** %11, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8*, i8** %94, i64 %96
  %98 = load i8*, i8** %97, align 8
  %99 = icmp eq i8* %98, null
  br i1 %99, label %100, label %125

100:                                              ; preds = %87
  %101 = load i64, i64* %7, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %100
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @SPV_ROWLEN, align 4
  %108 = call i8** @spv_new_row(i32 %106, i32 %107)
  br label %110

109:                                              ; preds = %100
  br label %110

110:                                              ; preds = %109, %103
  %111 = phi i8** [ %108, %103 ], [ null, %109 ]
  %112 = bitcast i8** %111 to i8*
  %113 = load i8**, i8*** %11, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8*, i8** %113, i64 %115
  store i8* %112, i8** %116, align 8
  %117 = load i8**, i8*** %11, align 8
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8*, i8** %117, i64 %119
  %121 = load i8*, i8** %120, align 8
  %122 = icmp eq i8* %121, null
  br i1 %122, label %123, label %124

123:                                              ; preds = %110
  store i8* null, i8** %4, align 8
  br label %137

124:                                              ; preds = %110
  br label %125

125:                                              ; preds = %124, %87
  %126 = load i8**, i8*** %11, align 8
  %127 = load i32, i32* %9, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8*, i8** %126, i64 %128
  %130 = load i8*, i8** %129, align 8
  %131 = bitcast i8* %130 to i8**
  store i8** %131, i8*** %11, align 8
  %132 = load i8**, i8*** %11, align 8
  %133 = load i32, i32* %10, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8*, i8** %132, i64 %134
  %136 = bitcast i8** %135 to i8*
  store i8* %136, i8** %4, align 8
  br label %137

137:                                              ; preds = %125, %123, %85, %50, %26
  %138 = load i8*, i8** %4, align 8
  ret i8* %138
}

declare dso_local i8** @spv_new_row(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
