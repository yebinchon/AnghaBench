; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ctau/extr_ctau.c_ct_get_lq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ctau/extr_ctau.c_ct_get_lq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@ct_get_lq.lq_to_santibells = internal global [4 x i32] [i32 0, i32 95, i32 195, i32 285], align 16
@T_G703 = common dso_local global i32 0, align 4
@GLQ_SHIFT = common dso_local global i8 0, align 1
@GLQ_MASK = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ct_get_lq(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @T_G703, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %184

15:                                               ; preds = %1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @GLQ(i32 %20)
  %22 = call zeroext i8 @inb(i32 %21)
  store i8 %22, i8* %4, align 1
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %34, %15
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 20
  br i1 %25, label %26, label %37

26:                                               ; preds = %23
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @GLQ(i32 %31)
  %33 = call zeroext i8 @inb(i32 %32)
  store i8 %33, i8* %5, align 1
  br label %34

34:                                               ; preds = %26
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %23

37:                                               ; preds = %23
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %49, %37
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %39, 20
  br i1 %40, label %41, label %52

41:                                               ; preds = %38
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @GLQ(i32 %46)
  %48 = call zeroext i8 @inb(i32 %47)
  store i8 %48, i8* %6, align 1
  br label %49

49:                                               ; preds = %41
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %38

52:                                               ; preds = %38
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %76

57:                                               ; preds = %52
  %58 = load i8, i8* @GLQ_SHIFT, align 1
  %59 = zext i8 %58 to i32
  %60 = load i8, i8* %4, align 1
  %61 = zext i8 %60 to i32
  %62 = ashr i32 %61, %59
  %63 = trunc i32 %62 to i8
  store i8 %63, i8* %4, align 1
  %64 = load i8, i8* @GLQ_SHIFT, align 1
  %65 = zext i8 %64 to i32
  %66 = load i8, i8* %5, align 1
  %67 = zext i8 %66 to i32
  %68 = ashr i32 %67, %65
  %69 = trunc i32 %68 to i8
  store i8 %69, i8* %5, align 1
  %70 = load i8, i8* @GLQ_SHIFT, align 1
  %71 = zext i8 %70 to i32
  %72 = load i8, i8* %6, align 1
  %73 = zext i8 %72 to i32
  %74 = ashr i32 %73, %71
  %75 = trunc i32 %74 to i8
  store i8 %75, i8* %6, align 1
  br label %76

76:                                               ; preds = %57, %52
  %77 = load i8, i8* @GLQ_MASK, align 1
  %78 = zext i8 %77 to i32
  %79 = load i8, i8* %4, align 1
  %80 = zext i8 %79 to i32
  %81 = and i32 %80, %78
  %82 = trunc i32 %81 to i8
  store i8 %82, i8* %4, align 1
  %83 = load i8, i8* @GLQ_MASK, align 1
  %84 = zext i8 %83 to i32
  %85 = load i8, i8* %5, align 1
  %86 = zext i8 %85 to i32
  %87 = and i32 %86, %84
  %88 = trunc i32 %87 to i8
  store i8 %88, i8* %5, align 1
  %89 = load i8, i8* @GLQ_MASK, align 1
  %90 = zext i8 %89 to i32
  %91 = load i8, i8* %6, align 1
  %92 = zext i8 %91 to i32
  %93 = and i32 %92, %90
  %94 = trunc i32 %93 to i8
  store i8 %94, i8* %6, align 1
  %95 = load i8, i8* %4, align 1
  %96 = zext i8 %95 to i32
  %97 = load i8, i8* %5, align 1
  %98 = zext i8 %97 to i32
  %99 = icmp sle i32 %96, %98
  br i1 %99, label %100, label %111

100:                                              ; preds = %76
  %101 = load i8, i8* %5, align 1
  %102 = zext i8 %101 to i32
  %103 = load i8, i8* %6, align 1
  %104 = zext i8 %103 to i32
  %105 = icmp sle i32 %102, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %100
  %107 = load i8, i8* %5, align 1
  %108 = zext i8 %107 to i64
  %109 = getelementptr inbounds [4 x i32], [4 x i32]* @ct_get_lq.lq_to_santibells, i64 0, i64 %108
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %2, align 4
  br label %184

111:                                              ; preds = %100, %76
  %112 = load i8, i8* %5, align 1
  %113 = zext i8 %112 to i32
  %114 = load i8, i8* %6, align 1
  %115 = zext i8 %114 to i32
  %116 = icmp sle i32 %113, %115
  br i1 %116, label %117, label %128

117:                                              ; preds = %111
  %118 = load i8, i8* %6, align 1
  %119 = zext i8 %118 to i32
  %120 = load i8, i8* %4, align 1
  %121 = zext i8 %120 to i32
  %122 = icmp sle i32 %119, %121
  br i1 %122, label %123, label %128

123:                                              ; preds = %117
  %124 = load i8, i8* %6, align 1
  %125 = zext i8 %124 to i64
  %126 = getelementptr inbounds [4 x i32], [4 x i32]* @ct_get_lq.lq_to_santibells, i64 0, i64 %125
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %2, align 4
  br label %184

128:                                              ; preds = %117, %111
  %129 = load i8, i8* %6, align 1
  %130 = zext i8 %129 to i32
  %131 = load i8, i8* %4, align 1
  %132 = zext i8 %131 to i32
  %133 = icmp sle i32 %130, %132
  br i1 %133, label %134, label %145

134:                                              ; preds = %128
  %135 = load i8, i8* %4, align 1
  %136 = zext i8 %135 to i32
  %137 = load i8, i8* %5, align 1
  %138 = zext i8 %137 to i32
  %139 = icmp sle i32 %136, %138
  br i1 %139, label %140, label %145

140:                                              ; preds = %134
  %141 = load i8, i8* %4, align 1
  %142 = zext i8 %141 to i64
  %143 = getelementptr inbounds [4 x i32], [4 x i32]* @ct_get_lq.lq_to_santibells, i64 0, i64 %142
  %144 = load i32, i32* %143, align 4
  store i32 %144, i32* %2, align 4
  br label %184

145:                                              ; preds = %134, %128
  %146 = load i8, i8* %4, align 1
  %147 = zext i8 %146 to i32
  %148 = load i8, i8* %6, align 1
  %149 = zext i8 %148 to i32
  %150 = icmp sle i32 %147, %149
  br i1 %150, label %151, label %162

151:                                              ; preds = %145
  %152 = load i8, i8* %6, align 1
  %153 = zext i8 %152 to i32
  %154 = load i8, i8* %5, align 1
  %155 = zext i8 %154 to i32
  %156 = icmp sle i32 %153, %155
  br i1 %156, label %157, label %162

157:                                              ; preds = %151
  %158 = load i8, i8* %6, align 1
  %159 = zext i8 %158 to i64
  %160 = getelementptr inbounds [4 x i32], [4 x i32]* @ct_get_lq.lq_to_santibells, i64 0, i64 %159
  %161 = load i32, i32* %160, align 4
  store i32 %161, i32* %2, align 4
  br label %184

162:                                              ; preds = %151, %145
  %163 = load i8, i8* %6, align 1
  %164 = zext i8 %163 to i32
  %165 = load i8, i8* %5, align 1
  %166 = zext i8 %165 to i32
  %167 = icmp sle i32 %164, %166
  br i1 %167, label %168, label %179

168:                                              ; preds = %162
  %169 = load i8, i8* %5, align 1
  %170 = zext i8 %169 to i32
  %171 = load i8, i8* %4, align 1
  %172 = zext i8 %171 to i32
  %173 = icmp sle i32 %170, %172
  br i1 %173, label %174, label %179

174:                                              ; preds = %168
  %175 = load i8, i8* %5, align 1
  %176 = zext i8 %175 to i64
  %177 = getelementptr inbounds [4 x i32], [4 x i32]* @ct_get_lq.lq_to_santibells, i64 0, i64 %176
  %178 = load i32, i32* %177, align 4
  store i32 %178, i32* %2, align 4
  br label %184

179:                                              ; preds = %168, %162
  %180 = load i8, i8* %4, align 1
  %181 = zext i8 %180 to i64
  %182 = getelementptr inbounds [4 x i32], [4 x i32]* @ct_get_lq.lq_to_santibells, i64 0, i64 %181
  %183 = load i32, i32* %182, align 4
  store i32 %183, i32* %2, align 4
  br label %184

184:                                              ; preds = %179, %174, %157, %140, %123, %106, %14
  %185 = load i32, i32* %2, align 4
  ret i32 %185
}

declare dso_local zeroext i8 @inb(i32) #1

declare dso_local i32 @GLQ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
