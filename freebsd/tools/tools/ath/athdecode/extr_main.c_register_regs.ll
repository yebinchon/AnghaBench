; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ath/athdecode/extr_main.c_register_regs.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ath/athdecode/extr_main.c_register_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.dumpreg** }
%struct.dumpreg = type { i32, i32, i32, i32, i64, i32* }

@state = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@MAXREGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"too many registers; bump MAXREGS\00", align 1
@regcompar = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @register_regs(%struct.dumpreg* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.dumpreg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.dumpreg*, align 8
  %17 = alloca %struct.dumpreg*, align 8
  store %struct.dumpreg* %0, %struct.dumpreg** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @state, i32 0, i32 0), align 8
  store i32 %18, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %19

19:                                               ; preds = %197, %6
  %20 = load i32, i32* %14, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %200

23:                                               ; preds = %19
  %24 = load %struct.dumpreg*, %struct.dumpreg** %7, align 8
  %25 = load i32, i32* %14, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.dumpreg, %struct.dumpreg* %24, i64 %26
  store %struct.dumpreg* %27, %struct.dumpreg** %16, align 8
  %28 = load %struct.dumpreg*, %struct.dumpreg** %16, align 8
  %29 = getelementptr inbounds %struct.dumpreg, %struct.dumpreg* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %23
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.dumpreg*, %struct.dumpreg** %16, align 8
  %35 = getelementptr inbounds %struct.dumpreg, %struct.dumpreg* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  br label %36

36:                                               ; preds = %32, %23
  %37 = load %struct.dumpreg*, %struct.dumpreg** %16, align 8
  %38 = getelementptr inbounds %struct.dumpreg, %struct.dumpreg* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.dumpreg*, %struct.dumpreg** %16, align 8
  %44 = getelementptr inbounds %struct.dumpreg, %struct.dumpreg* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %41, %36
  %46 = load %struct.dumpreg*, %struct.dumpreg** %16, align 8
  %47 = getelementptr inbounds %struct.dumpreg, %struct.dumpreg* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i32, i32* %11, align 4
  %52 = load %struct.dumpreg*, %struct.dumpreg** %16, align 8
  %53 = getelementptr inbounds %struct.dumpreg, %struct.dumpreg* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  br label %54

54:                                               ; preds = %50, %45
  %55 = load %struct.dumpreg*, %struct.dumpreg** %16, align 8
  %56 = getelementptr inbounds %struct.dumpreg, %struct.dumpreg* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load i32, i32* %12, align 4
  %61 = load %struct.dumpreg*, %struct.dumpreg** %16, align 8
  %62 = getelementptr inbounds %struct.dumpreg, %struct.dumpreg* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %59, %54
  store i32 0, i32* %15, align 4
  br label %64

64:                                               ; preds = %180, %63
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* %13, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %183

68:                                               ; preds = %64
  %69 = load %struct.dumpreg**, %struct.dumpreg*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @state, i32 0, i32 1), align 8
  %70 = load i32, i32* %15, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.dumpreg*, %struct.dumpreg** %69, i64 %71
  %73 = load %struct.dumpreg*, %struct.dumpreg** %72, align 8
  store %struct.dumpreg* %73, %struct.dumpreg** %17, align 8
  %74 = load %struct.dumpreg*, %struct.dumpreg** %16, align 8
  %75 = getelementptr inbounds %struct.dumpreg, %struct.dumpreg* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.dumpreg*, %struct.dumpreg** %17, align 8
  %78 = getelementptr inbounds %struct.dumpreg, %struct.dumpreg* %77, i32 0, i32 4
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %76, %79
  br i1 %80, label %81, label %170

81:                                               ; preds = %68
  %82 = load %struct.dumpreg*, %struct.dumpreg** %16, align 8
  %83 = getelementptr inbounds %struct.dumpreg, %struct.dumpreg* %82, i32 0, i32 5
  %84 = load i32*, i32** %83, align 8
  %85 = load %struct.dumpreg*, %struct.dumpreg** %17, align 8
  %86 = getelementptr inbounds %struct.dumpreg, %struct.dumpreg* %85, i32 0, i32 5
  %87 = load i32*, i32** %86, align 8
  %88 = icmp eq i32* %84, %87
  br i1 %88, label %108, label %89

89:                                               ; preds = %81
  %90 = load %struct.dumpreg*, %struct.dumpreg** %16, align 8
  %91 = getelementptr inbounds %struct.dumpreg, %struct.dumpreg* %90, i32 0, i32 5
  %92 = load i32*, i32** %91, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %170

94:                                               ; preds = %89
  %95 = load %struct.dumpreg*, %struct.dumpreg** %17, align 8
  %96 = getelementptr inbounds %struct.dumpreg, %struct.dumpreg* %95, i32 0, i32 5
  %97 = load i32*, i32** %96, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %170

99:                                               ; preds = %94
  %100 = load %struct.dumpreg*, %struct.dumpreg** %16, align 8
  %101 = getelementptr inbounds %struct.dumpreg, %struct.dumpreg* %100, i32 0, i32 5
  %102 = load i32*, i32** %101, align 8
  %103 = load %struct.dumpreg*, %struct.dumpreg** %17, align 8
  %104 = getelementptr inbounds %struct.dumpreg, %struct.dumpreg* %103, i32 0, i32 5
  %105 = load i32*, i32** %104, align 8
  %106 = call i64 @strcmp(i32* %102, i32* %105)
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %170

108:                                              ; preds = %99, %81
  %109 = load %struct.dumpreg*, %struct.dumpreg** %16, align 8
  %110 = getelementptr inbounds %struct.dumpreg, %struct.dumpreg* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.dumpreg*, %struct.dumpreg** %17, align 8
  %113 = getelementptr inbounds %struct.dumpreg, %struct.dumpreg* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp slt i32 %111, %114
  br i1 %115, label %116, label %139

116:                                              ; preds = %108
  %117 = load %struct.dumpreg*, %struct.dumpreg** %17, align 8
  %118 = getelementptr inbounds %struct.dumpreg, %struct.dumpreg* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.dumpreg*, %struct.dumpreg** %16, align 8
  %121 = getelementptr inbounds %struct.dumpreg, %struct.dumpreg* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = icmp sle i32 %119, %122
  br i1 %123, label %124, label %139

124:                                              ; preds = %116
  %125 = load %struct.dumpreg*, %struct.dumpreg** %16, align 8
  %126 = getelementptr inbounds %struct.dumpreg, %struct.dumpreg* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %127, 1
  %129 = load %struct.dumpreg*, %struct.dumpreg** %17, align 8
  %130 = getelementptr inbounds %struct.dumpreg, %struct.dumpreg* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = icmp sle i32 %128, %131
  br i1 %132, label %133, label %139

133:                                              ; preds = %124
  %134 = load %struct.dumpreg*, %struct.dumpreg** %16, align 8
  %135 = getelementptr inbounds %struct.dumpreg, %struct.dumpreg* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.dumpreg*, %struct.dumpreg** %17, align 8
  %138 = getelementptr inbounds %struct.dumpreg, %struct.dumpreg* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 8
  br label %196

139:                                              ; preds = %124, %116, %108
  %140 = load %struct.dumpreg*, %struct.dumpreg** %16, align 8
  %141 = getelementptr inbounds %struct.dumpreg, %struct.dumpreg* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.dumpreg*, %struct.dumpreg** %17, align 8
  %144 = getelementptr inbounds %struct.dumpreg, %struct.dumpreg* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = icmp sgt i32 %142, %145
  br i1 %146, label %147, label %169

147:                                              ; preds = %139
  %148 = load %struct.dumpreg*, %struct.dumpreg** %17, align 8
  %149 = getelementptr inbounds %struct.dumpreg, %struct.dumpreg* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.dumpreg*, %struct.dumpreg** %16, align 8
  %152 = getelementptr inbounds %struct.dumpreg, %struct.dumpreg* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = icmp sle i32 %150, %153
  br i1 %154, label %155, label %169

155:                                              ; preds = %147
  %156 = load %struct.dumpreg*, %struct.dumpreg** %16, align 8
  %157 = getelementptr inbounds %struct.dumpreg, %struct.dumpreg* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.dumpreg*, %struct.dumpreg** %17, align 8
  %160 = getelementptr inbounds %struct.dumpreg, %struct.dumpreg* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = icmp sle i32 %158, %161
  br i1 %162, label %163, label %169

163:                                              ; preds = %155
  %164 = load %struct.dumpreg*, %struct.dumpreg** %16, align 8
  %165 = getelementptr inbounds %struct.dumpreg, %struct.dumpreg* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.dumpreg*, %struct.dumpreg** %17, align 8
  %168 = getelementptr inbounds %struct.dumpreg, %struct.dumpreg* %167, i32 0, i32 1
  store i32 %166, i32* %168, align 4
  br label %196

169:                                              ; preds = %155, %147, %139
  br label %170

170:                                              ; preds = %169, %99, %94, %89, %68
  %171 = load %struct.dumpreg*, %struct.dumpreg** %17, align 8
  %172 = getelementptr inbounds %struct.dumpreg, %struct.dumpreg* %171, i32 0, i32 4
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.dumpreg*, %struct.dumpreg** %16, align 8
  %175 = getelementptr inbounds %struct.dumpreg, %struct.dumpreg* %174, i32 0, i32 4
  %176 = load i64, i64* %175, align 8
  %177 = icmp sgt i64 %173, %176
  br i1 %177, label %178, label %179

178:                                              ; preds = %170
  br label %183

179:                                              ; preds = %170
  br label %180

180:                                              ; preds = %179
  %181 = load i32, i32* %15, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %15, align 4
  br label %64

183:                                              ; preds = %178, %64
  %184 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @state, i32 0, i32 0), align 8
  %185 = load i32, i32* @MAXREGS, align 4
  %186 = icmp eq i32 %184, %185
  br i1 %186, label %187, label %189

187:                                              ; preds = %183
  %188 = call i32 @errx(i32 -1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %189

189:                                              ; preds = %187, %183
  %190 = load %struct.dumpreg*, %struct.dumpreg** %16, align 8
  %191 = load %struct.dumpreg**, %struct.dumpreg*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @state, i32 0, i32 1), align 8
  %192 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @state, i32 0, i32 0), align 8
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @state, i32 0, i32 0), align 8
  %194 = sext i32 %192 to i64
  %195 = getelementptr inbounds %struct.dumpreg*, %struct.dumpreg** %191, i64 %194
  store %struct.dumpreg* %190, %struct.dumpreg** %195, align 8
  br label %196

196:                                              ; preds = %189, %163, %133
  br label %197

197:                                              ; preds = %196
  %198 = load i32, i32* %14, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %14, align 4
  br label %19

200:                                              ; preds = %19
  %201 = load %struct.dumpreg**, %struct.dumpreg*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @state, i32 0, i32 1), align 8
  %202 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @state, i32 0, i32 0), align 8
  %203 = load i32, i32* @regcompar, align 4
  %204 = call i32 @qsort(%struct.dumpreg** %201, i32 %202, i32 8, i32 %203)
  ret void
}

declare dso_local i64 @strcmp(i32*, i32*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @qsort(%struct.dumpreg**, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
