; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_buf.c_vtbuf_set_mark.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_buf.c_vtbuf_set_mark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_buf = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, i32** }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vtbuf_set_mark(%struct.vt_buf* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vt_buf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.vt_buf* %0, %struct.vt_buf** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  switch i32 %12, label %177 [
    i32 134, label %13
    i32 132, label %20
    i32 133, label %20
    i32 129, label %34
    i32 128, label %59
    i32 130, label %150
    i32 131, label %173
  ]

13:                                               ; preds = %4
  %14 = load %struct.vt_buf*, %struct.vt_buf** %6, align 8
  %15 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 132
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 0, i32* %5, align 4
  br label %184

19:                                               ; preds = %13
  br label %20

20:                                               ; preds = %4, %4, %19
  %21 = load %struct.vt_buf*, %struct.vt_buf** %6, align 8
  %22 = call i32 @vtbuf_flush_mark(%struct.vt_buf* %21)
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.vt_buf*, %struct.vt_buf** %6, align 8
  %25 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 8
  %27 = load %struct.vt_buf*, %struct.vt_buf** %6, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i8* @vtbuf_wth(%struct.vt_buf* %27, i32 %28)
  %30 = ptrtoint i8* %29 to i64
  %31 = load %struct.vt_buf*, %struct.vt_buf** %6, align 8
  %32 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  store i64 %30, i64* %33, align 8
  br label %178

34:                                               ; preds = %4
  %35 = load %struct.vt_buf*, %struct.vt_buf** %6, align 8
  %36 = call i32 @vtbuf_flush_mark(%struct.vt_buf* %35)
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.vt_buf*, %struct.vt_buf** %6, align 8
  %39 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 8
  %41 = load %struct.vt_buf*, %struct.vt_buf** %6, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i8* @vtbuf_wth(%struct.vt_buf* %41, i32 %42)
  %44 = ptrtoint i8* %43 to i64
  %45 = load %struct.vt_buf*, %struct.vt_buf** %6, align 8
  %46 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  store i64 %44, i64* %47, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.vt_buf*, %struct.vt_buf** %6, align 8
  %50 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 8
  %52 = load %struct.vt_buf*, %struct.vt_buf** %6, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call i8* @vtbuf_wth(%struct.vt_buf* %52, i32 %53)
  %55 = ptrtoint i8* %54 to i64
  %56 = load %struct.vt_buf*, %struct.vt_buf** %6, align 8
  %57 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  store i64 %55, i64* %58, align 8
  br label %178

59:                                               ; preds = %4
  %60 = load %struct.vt_buf*, %struct.vt_buf** %6, align 8
  %61 = call i32 @vtbuf_flush_mark(%struct.vt_buf* %60)
  %62 = load %struct.vt_buf*, %struct.vt_buf** %6, align 8
  %63 = load i32, i32* %9, align 4
  %64 = call i8* @vtbuf_wth(%struct.vt_buf* %62, i32 %63)
  %65 = ptrtoint i8* %64 to i64
  %66 = load %struct.vt_buf*, %struct.vt_buf** %6, align 8
  %67 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  store i64 %65, i64* %68, align 8
  %69 = load %struct.vt_buf*, %struct.vt_buf** %6, align 8
  %70 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  store i64 %65, i64* %71, align 8
  %72 = load %struct.vt_buf*, %struct.vt_buf** %6, align 8
  %73 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %72, i32 0, i32 4
  %74 = load i32**, i32*** %73, align 8
  %75 = load %struct.vt_buf*, %struct.vt_buf** %6, align 8
  %76 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds i32*, i32** %74, i64 %78
  %80 = load i32*, i32** %79, align 8
  store i32* %80, i32** %10, align 8
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %11, align 4
  br label %82

82:                                               ; preds = %101, %59
  %83 = load i32, i32* %11, align 4
  %84 = icmp sge i32 %83, 0
  br i1 %84, label %85, label %104

85:                                               ; preds = %82
  %86 = load i32*, i32** %10, align 8
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = call signext i8 @TCHAR_CHARACTER(i32 %90)
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 32
  br i1 %93, label %94, label %100

94:                                               ; preds = %85
  %95 = load i32, i32* %11, align 4
  %96 = add nsw i32 %95, 1
  %97 = load %struct.vt_buf*, %struct.vt_buf** %6, align 8
  %98 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  store i32 %96, i32* %99, align 8
  br label %104

100:                                              ; preds = %85
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %11, align 4
  %103 = add nsw i32 %102, -1
  store i32 %103, i32* %11, align 4
  br label %82

104:                                              ; preds = %94, %82
  %105 = load i32, i32* %8, align 4
  store i32 %105, i32* %11, align 4
  br label %106

106:                                              ; preds = %128, %104
  %107 = load i32, i32* %11, align 4
  %108 = load %struct.vt_buf*, %struct.vt_buf** %6, align 8
  %109 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp slt i32 %107, %111
  br i1 %112, label %113, label %131

113:                                              ; preds = %106
  %114 = load i32*, i32** %10, align 8
  %115 = load i32, i32* %11, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = call signext i8 @TCHAR_CHARACTER(i32 %118)
  %120 = sext i8 %119 to i32
  %121 = icmp eq i32 %120, 32
  br i1 %121, label %122, label %127

122:                                              ; preds = %113
  %123 = load i32, i32* %11, align 4
  %124 = load %struct.vt_buf*, %struct.vt_buf** %6, align 8
  %125 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  store i32 %123, i32* %126, align 8
  br label %131

127:                                              ; preds = %113
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %11, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %11, align 4
  br label %106

131:                                              ; preds = %122, %106
  %132 = load %struct.vt_buf*, %struct.vt_buf** %6, align 8
  %133 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.vt_buf*, %struct.vt_buf** %6, align 8
  %137 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp sgt i32 %135, %139
  br i1 %140, label %141, label %149

141:                                              ; preds = %131
  %142 = load %struct.vt_buf*, %struct.vt_buf** %6, align 8
  %143 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.vt_buf*, %struct.vt_buf** %6, align 8
  %147 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 0
  store i32 %145, i32* %148, align 8
  br label %149

149:                                              ; preds = %141, %131
  br label %178

150:                                              ; preds = %4
  %151 = load %struct.vt_buf*, %struct.vt_buf** %6, align 8
  %152 = call i32 @vtbuf_flush_mark(%struct.vt_buf* %151)
  %153 = load %struct.vt_buf*, %struct.vt_buf** %6, align 8
  %154 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 0
  store i32 0, i32* %155, align 8
  %156 = load %struct.vt_buf*, %struct.vt_buf** %6, align 8
  %157 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %156, i32 0, i32 3
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.vt_buf*, %struct.vt_buf** %6, align 8
  %161 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 0
  store i32 %159, i32* %162, align 8
  %163 = load %struct.vt_buf*, %struct.vt_buf** %6, align 8
  %164 = load i32, i32* %9, align 4
  %165 = call i8* @vtbuf_wth(%struct.vt_buf* %163, i32 %164)
  %166 = ptrtoint i8* %165 to i64
  %167 = load %struct.vt_buf*, %struct.vt_buf** %6, align 8
  %168 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 1
  store i64 %166, i64* %169, align 8
  %170 = load %struct.vt_buf*, %struct.vt_buf** %6, align 8
  %171 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 1
  store i64 %166, i64* %172, align 8
  br label %178

173:                                              ; preds = %4
  %174 = load i32, i32* %7, align 4
  %175 = load %struct.vt_buf*, %struct.vt_buf** %6, align 8
  %176 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %175, i32 0, i32 0
  store i32 %174, i32* %176, align 8
  br label %177

177:                                              ; preds = %4, %173
  store i32 0, i32* %5, align 4
  br label %184

178:                                              ; preds = %150, %149, %34, %20
  %179 = load i32, i32* %7, align 4
  %180 = load %struct.vt_buf*, %struct.vt_buf** %6, align 8
  %181 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %180, i32 0, i32 0
  store i32 %179, i32* %181, align 8
  %182 = load %struct.vt_buf*, %struct.vt_buf** %6, align 8
  %183 = call i32 @vtbuf_flush_mark(%struct.vt_buf* %182)
  store i32 1, i32* %5, align 4
  br label %184

184:                                              ; preds = %178, %177, %18
  %185 = load i32, i32* %5, align 4
  ret i32 %185
}

declare dso_local i32 @vtbuf_flush_mark(%struct.vt_buf*) #1

declare dso_local i8* @vtbuf_wth(%struct.vt_buf*, i32) #1

declare dso_local signext i8 @TCHAR_CHARACTER(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
