; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_buf.c_vtbuf_extract_marked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_buf.c_vtbuf_extract_marked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_buf = type { i8**, %struct.TYPE_5__, %struct.TYPE_7__, %struct.TYPE_7__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vtbuf_extract_marked(%struct.vt_buf* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.vt_buf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_6__, align 4
  %13 = alloca %struct.TYPE_6__, align 4
  store %struct.vt_buf* %0, %struct.vt_buf** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.vt_buf*, %struct.vt_buf** %4, align 8
  %15 = load %struct.vt_buf*, %struct.vt_buf** %4, align 8
  %16 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @vtbuf_htw(%struct.vt_buf* %14, i32 %18)
  %20 = load %struct.vt_buf*, %struct.vt_buf** %4, align 8
  %21 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @POS_INDEX(i32 %19, i32 %23)
  %25 = load %struct.vt_buf*, %struct.vt_buf** %4, align 8
  %26 = load %struct.vt_buf*, %struct.vt_buf** %4, align 8
  %27 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @vtbuf_htw(%struct.vt_buf* %25, i32 %29)
  %31 = load %struct.vt_buf*, %struct.vt_buf** %4, align 8
  %32 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @POS_INDEX(i32 %30, i32 %34)
  %36 = icmp sgt i64 %24, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %3
  %38 = load %struct.vt_buf*, %struct.vt_buf** %4, align 8
  %39 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %38, i32 0, i32 3
  %40 = bitcast %struct.TYPE_6__* %13 to i64*
  %41 = load i64, i64* %40, align 4
  %42 = bitcast %struct.TYPE_7__* %39 to i64*
  %43 = load i64, i64* %42, align 4
  %44 = call i32 @POS_COPY(i64 %41, i64 %43)
  %45 = load %struct.vt_buf*, %struct.vt_buf** %4, align 8
  %46 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %45, i32 0, i32 2
  %47 = bitcast %struct.TYPE_6__* %12 to i64*
  %48 = load i64, i64* %47, align 4
  %49 = bitcast %struct.TYPE_7__* %46 to i64*
  %50 = load i64, i64* %49, align 4
  %51 = call i32 @POS_COPY(i64 %48, i64 %50)
  br label %67

52:                                               ; preds = %3
  %53 = load %struct.vt_buf*, %struct.vt_buf** %4, align 8
  %54 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %53, i32 0, i32 3
  %55 = bitcast %struct.TYPE_6__* %12 to i64*
  %56 = load i64, i64* %55, align 4
  %57 = bitcast %struct.TYPE_7__* %54 to i64*
  %58 = load i64, i64* %57, align 4
  %59 = call i32 @POS_COPY(i64 %56, i64 %58)
  %60 = load %struct.vt_buf*, %struct.vt_buf** %4, align 8
  %61 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %60, i32 0, i32 2
  %62 = bitcast %struct.TYPE_6__* %13 to i64*
  %63 = load i64, i64* %62, align 4
  %64 = bitcast %struct.TYPE_7__* %61 to i64*
  %65 = load i64, i64* %64, align 4
  %66 = call i32 @POS_COPY(i64 %63, i64 %65)
  br label %67

67:                                               ; preds = %52, %37
  store i32 0, i32* %7, align 4
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %142, %67
  %71 = load i32, i32* %8, align 4
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp sle i32 %71, %73
  br i1 %74, label %75, label %145

75:                                               ; preds = %70
  %76 = load i32, i32* %8, align 4
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %76, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  br label %84

83:                                               ; preds = %75
  br label %84

84:                                               ; preds = %83, %80
  %85 = phi i32 [ %82, %80 ], [ 0, %83 ]
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %8, align 4
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %86, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %84
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  br label %98

93:                                               ; preds = %84
  %94 = load %struct.vt_buf*, %struct.vt_buf** %4, align 8
  %95 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  br label %98

98:                                               ; preds = %93, %90
  %99 = phi i32 [ %92, %90 ], [ %97, %93 ]
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %10, align 4
  store i32 %100, i32* %9, align 4
  br label %101

101:                                              ; preds = %122, %98
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* %11, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %125

105:                                              ; preds = %101
  %106 = load %struct.vt_buf*, %struct.vt_buf** %4, align 8
  %107 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %106, i32 0, i32 0
  %108 = load i8**, i8*** %107, align 8
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8*, i8** %108, i64 %110
  %112 = load i8*, i8** %111, align 8
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %112, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = load i8*, i8** %5, align 8
  %118 = load i32, i32* %7, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %7, align 4
  %120 = sext i32 %118 to i64
  %121 = getelementptr inbounds i8, i8* %117, i64 %120
  store i8 %116, i8* %121, align 1
  br label %122

122:                                              ; preds = %105
  %123 = load i32, i32* %9, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %9, align 4
  br label %101

125:                                              ; preds = %101
  %126 = load i32, i32* %8, align 4
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %126, %128
  br i1 %129, label %130, label %141

130:                                              ; preds = %125
  %131 = load i8*, i8** %5, align 8
  %132 = load i32, i32* %7, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %7, align 4
  %134 = sext i32 %132 to i64
  %135 = getelementptr inbounds i8, i8* %131, i64 %134
  store i8 13, i8* %135, align 1
  %136 = load i8*, i8** %5, align 8
  %137 = load i32, i32* %7, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %7, align 4
  %139 = sext i32 %137 to i64
  %140 = getelementptr inbounds i8, i8* %136, i64 %139
  store i8 10, i8* %140, align 1
  br label %141

141:                                              ; preds = %130, %125
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %8, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %8, align 4
  br label %70

145:                                              ; preds = %70
  ret void
}

declare dso_local i64 @POS_INDEX(i32, i32) #1

declare dso_local i32 @vtbuf_htw(%struct.vt_buf*, i32) #1

declare dso_local i32 @POS_COPY(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
