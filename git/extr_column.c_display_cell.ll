; ModuleID = '/home/carl/AnghaBench/git/extr_column.c_display_cell.c'
source_filename = "/home/carl/AnghaBench/git/extr_column.c_display_cell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.column_data = type { i32*, i64*, i32, i32, %struct.TYPE_6__*, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_4__ = type { i8*, i8*, i64 }

@COL_COLUMN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.column_data*, i32, i8*, i32, i32)* @display_cell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @display_cell(%struct.column_data* %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.column_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.column_data* %0, %struct.column_data** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.column_data*, %struct.column_data** %7, align 8
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* %11, align 4
  %18 = call i32 @XY2LINEAR(%struct.column_data* %15, i32 %16, i32 %17)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = load %struct.column_data*, %struct.column_data** %7, align 8
  %21 = getelementptr inbounds %struct.column_data, %struct.column_data* %20, i32 0, i32 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sge i32 %19, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %154

27:                                               ; preds = %5
  %28 = load %struct.column_data*, %struct.column_data** %7, align 8
  %29 = getelementptr inbounds %struct.column_data, %struct.column_data* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %12, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %13, align 4
  %35 = load %struct.column_data*, %struct.column_data** %7, align 8
  %36 = getelementptr inbounds %struct.column_data, %struct.column_data* %35, i32 0, i32 1
  %37 = load i64*, i64** %36, align 8
  %38 = icmp ne i64* %37, null
  br i1 %38, label %39, label %79

39:                                               ; preds = %27
  %40 = load %struct.column_data*, %struct.column_data** %7, align 8
  %41 = getelementptr inbounds %struct.column_data, %struct.column_data* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.column_data*, %struct.column_data** %7, align 8
  %44 = getelementptr inbounds %struct.column_data, %struct.column_data* %43, i32 0, i32 1
  %45 = load i64*, i64** %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i32, i32* %42, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %79

54:                                               ; preds = %39
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.column_data*, %struct.column_data** %7, align 8
  %57 = getelementptr inbounds %struct.column_data, %struct.column_data* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.column_data*, %struct.column_data** %7, align 8
  %60 = getelementptr inbounds %struct.column_data, %struct.column_data* %59, i32 0, i32 1
  %61 = load i64*, i64** %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds i32, i32* %58, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = sub nsw i32 %55, %67
  %69 = load i32, i32* %13, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %13, align 4
  %71 = load %struct.column_data*, %struct.column_data** %7, align 8
  %72 = getelementptr inbounds %struct.column_data, %struct.column_data* %71, i32 0, i32 5
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* %13, align 4
  %76 = sext i32 %75 to i64
  %77 = sub nsw i64 %76, %74
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %13, align 4
  br label %79

79:                                               ; preds = %54, %39, %27
  %80 = load %struct.column_data*, %struct.column_data** %7, align 8
  %81 = getelementptr inbounds %struct.column_data, %struct.column_data* %80, i32 0, i32 6
  %82 = load i32, i32* %81, align 8
  %83 = call i64 @COL_LAYOUT(i32 %82)
  %84 = load i64, i64* @COL_COLUMN, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %99

86:                                               ; preds = %79
  %87 = load i32, i32* %12, align 4
  %88 = load %struct.column_data*, %struct.column_data** %7, align 8
  %89 = getelementptr inbounds %struct.column_data, %struct.column_data* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %87, %90
  %92 = load %struct.column_data*, %struct.column_data** %7, align 8
  %93 = getelementptr inbounds %struct.column_data, %struct.column_data* %92, i32 0, i32 4
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp sge i32 %91, %96
  %98 = zext i1 %97 to i32
  store i32 %98, i32* %14, align 4
  br label %118

99:                                               ; preds = %79
  %100 = load i32, i32* %10, align 4
  %101 = load %struct.column_data*, %struct.column_data** %7, align 8
  %102 = getelementptr inbounds %struct.column_data, %struct.column_data* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = sub nsw i32 %103, 1
  %105 = icmp eq i32 %100, %104
  br i1 %105, label %115, label %106

106:                                              ; preds = %99
  %107 = load i32, i32* %12, align 4
  %108 = load %struct.column_data*, %struct.column_data** %7, align 8
  %109 = getelementptr inbounds %struct.column_data, %struct.column_data* %108, i32 0, i32 4
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = sub nsw i32 %112, 1
  %114 = icmp eq i32 %107, %113
  br label %115

115:                                              ; preds = %106, %99
  %116 = phi i1 [ true, %99 ], [ %114, %106 ]
  %117 = zext i1 %116 to i32
  store i32 %117, i32* %14, align 4
  br label %118

118:                                              ; preds = %115, %86
  %119 = load i32, i32* %10, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %118
  %122 = load %struct.column_data*, %struct.column_data** %7, align 8
  %123 = getelementptr inbounds %struct.column_data, %struct.column_data* %122, i32 0, i32 5
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  br label %127

126:                                              ; preds = %118
  br label %127

127:                                              ; preds = %126, %121
  %128 = phi i8* [ %125, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %126 ]
  %129 = load %struct.column_data*, %struct.column_data** %7, align 8
  %130 = getelementptr inbounds %struct.column_data, %struct.column_data* %129, i32 0, i32 4
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %132, align 8
  %134 = load i32, i32* %12, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  %139 = load i32, i32* %14, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %127
  %142 = load %struct.column_data*, %struct.column_data** %7, align 8
  %143 = getelementptr inbounds %struct.column_data, %struct.column_data* %142, i32 0, i32 5
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 1
  %145 = load i8*, i8** %144, align 8
  br label %151

146:                                              ; preds = %127
  %147 = load i8*, i8** %9, align 8
  %148 = load i32, i32* %13, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8, i8* %147, i64 %149
  br label %151

151:                                              ; preds = %146, %141
  %152 = phi i8* [ %145, %141 ], [ %150, %146 ]
  %153 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %128, i8* %138, i8* %152)
  store i32 0, i32* %6, align 4
  br label %154

154:                                              ; preds = %151, %26
  %155 = load i32, i32* %6, align 4
  ret i32 %155
}

declare dso_local i32 @XY2LINEAR(%struct.column_data*, i32, i32) #1

declare dso_local i64 @COL_LAYOUT(i32) #1

declare dso_local i32 @printf(i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
