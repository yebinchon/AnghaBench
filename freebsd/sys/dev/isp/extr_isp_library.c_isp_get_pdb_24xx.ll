; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp_library.c_isp_get_pdb_24xx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp_library.c_isp_get_pdb_24xx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isp_get_pdb_24xx(i32* %0, %struct.TYPE_4__* %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 13
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 13
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @ISP_IOXGET_16(i32* %8, i32* %10, i32 %13)
  %15 = load i32*, i32** %4, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 12
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 12
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ISP_IOXGET_8(i32* %15, i32* %17, i32 %20)
  %22 = load i32*, i32** %4, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 11
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 11
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @ISP_IOXGET_8(i32* %22, i32* %24, i32 %27)
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %48, %3
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 4
  br i1 %31, label %32, label %51

32:                                               ; preds = %29
  %33 = load i32*, i32** %4, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 10
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 10
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ISP_IOXGET_8(i32* %33, i32* %39, i32 %46)
  br label %48

48:                                               ; preds = %32
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %7, align 4
  br label %29

51:                                               ; preds = %29
  store i32 0, i32* %7, align 4
  br label %52

52:                                               ; preds = %71, %51
  %53 = load i32, i32* %7, align 4
  %54 = icmp slt i32 %53, 4
  br i1 %54, label %55, label %74

55:                                               ; preds = %52
  %56 = load i32*, i32** %4, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 9
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 9
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @ISP_IOXGET_8(i32* %56, i32* %62, i32 %69)
  br label %71

71:                                               ; preds = %55
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  br label %52

74:                                               ; preds = %52
  %75 = load i32*, i32** %4, align 8
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 8
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 8
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @ISP_IOXGET_16(i32* %75, i32* %77, i32 %80)
  %82 = load i32*, i32** %4, align 8
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 7
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 7
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @ISP_IOXGET_16(i32* %82, i32* %84, i32 %87)
  %89 = load i32*, i32** %4, align 8
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 6
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 6
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @ISP_IOXGET_16(i32* %89, i32* %91, i32 %94)
  %96 = load i32*, i32** %4, align 8
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 5
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 5
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @ISP_IOXGET_16(i32* %96, i32* %98, i32 %101)
  %103 = load i32*, i32** %4, align 8
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 4
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @ISP_IOXGET_16(i32* %103, i32* %105, i32 %108)
  %110 = load i32*, i32** %4, align 8
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 3
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @ISP_IOXGET_16(i32* %110, i32* %112, i32 %115)
  store i32 0, i32* %7, align 4
  br label %117

117:                                              ; preds = %136, %74
  %118 = load i32, i32* %7, align 4
  %119 = icmp slt i32 %118, 8
  br i1 %119, label %120, label %139

120:                                              ; preds = %117
  %121 = load i32*, i32** %4, align 8
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 2
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %7, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 2
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %7, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @ISP_IOXGET_8(i32* %121, i32* %127, i32 %134)
  br label %136

136:                                              ; preds = %120
  %137 = load i32, i32* %7, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %7, align 4
  br label %117

139:                                              ; preds = %117
  store i32 0, i32* %7, align 4
  br label %140

140:                                              ; preds = %159, %139
  %141 = load i32, i32* %7, align 4
  %142 = icmp slt i32 %141, 8
  br i1 %142, label %143, label %162

143:                                              ; preds = %140
  %144 = load i32*, i32** %4, align 8
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %7, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %7, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @ISP_IOXGET_8(i32* %144, i32* %150, i32 %157)
  br label %159

159:                                              ; preds = %143
  %160 = load i32, i32* %7, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %7, align 4
  br label %140

162:                                              ; preds = %140
  store i32 0, i32* %7, align 4
  br label %163

163:                                              ; preds = %182, %162
  %164 = load i32, i32* %7, align 4
  %165 = icmp slt i32 %164, 24
  br i1 %165, label %166, label %185

166:                                              ; preds = %163
  %167 = load i32*, i32** %4, align 8
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %7, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  %176 = load i32*, i32** %175, align 8
  %177 = load i32, i32* %7, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @ISP_IOXGET_8(i32* %167, i32* %173, i32 %180)
  br label %182

182:                                              ; preds = %166
  %183 = load i32, i32* %7, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %7, align 4
  br label %163

185:                                              ; preds = %163
  ret void
}

declare dso_local i32 @ISP_IOXGET_16(i32*, i32*, i32) #1

declare dso_local i32 @ISP_IOXGET_8(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
