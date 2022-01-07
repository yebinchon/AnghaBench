; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_init.c_pqisrc_decide_opq_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_init.c_pqisrc_decide_opq_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"IN\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"softs->intr_count : %d  softs->num_cpus_online : %d\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"softs->num_op_obq : %d\0A\00", align 1
@MAX_EMBEDDED_SG_IN_FIRST_IU = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"softs->max_ib_iu_length: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"softs->num_elem_per_op_ibq: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"softs->num_elem_per_op_obq: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"softs->max_sg_per_iu: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"OUT\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pqisrc_decide_opq_config(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %4 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 (i8*, i32, ...) @DBG_INIT(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %7, i32 %10)
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %21, label %16

16:                                               ; preds = %1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %26

21:                                               ; preds = %16, %1
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  store i32 1, i32* %23, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 3
  store i32 1, i32* %25, align 4
  br label %45

26:                                               ; preds = %16
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @MIN(i32 %29, i32 %32)
  %34 = sub nsw i32 %33, 1
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sub nsw i32 %39, 1
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 3
  store i32 0, i32* %44, align 4
  br label %45

45:                                               ; preds = %26, %21
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp sgt i32 %48, 1
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 3
  store i32 0, i32* %52, align 4
  br label %53

53:                                               ; preds = %50, %45
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 (i8*, i32, ...) @DBG_INIT(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 4
  store i32 %60, i32* %62, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 5
  store i32 %65, i32* %67, align 4
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 14
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = mul nsw i32 %71, 16
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 6
  store i32 %72, i32* %74, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 14
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = mul nsw i32 %78, 16
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 7
  store i32 %79, i32* %81, align 4
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 8
  %84 = load i32, i32* %83, align 8
  %85 = icmp eq i32 %84, 256
  br i1 %85, label %86, label %97

86:                                               ; preds = %53
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 15
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %86
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 6
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 9
  store i32 %94, i32* %96, align 4
  br label %111

97:                                               ; preds = %86, %53
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 8
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 8
  %104 = sdiv i32 %100, %103
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 6
  %107 = load i32, i32* %106, align 8
  %108 = mul nsw i32 %104, %107
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 9
  store i32 %108, i32* %110, align 4
  br label %111

111:                                              ; preds = %97, %91
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 10
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 9
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 6
  %120 = load i32, i32* %119, align 8
  %121 = sdiv i32 %117, %120
  %122 = mul nsw i32 %114, %121
  store i32 %122, i32* %3, align 4
  %123 = load i32, i32* %3, align 4
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  %127 = sdiv i32 %123, %126
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 11
  store i32 %127, i32* %129, align 4
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 11
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 14
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @MIN(i32 %132, i32 %136)
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 11
  store i32 %137, i32* %139, align 4
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 10
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = sdiv i32 %142, %145
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 12
  store i32 %146, i32* %148, align 8
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 12
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 14
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @MIN(i32 %151, i32 %155)
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 12
  store i32 %156, i32* %158, align 8
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 9
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 6
  %164 = load i32, i32* %163, align 8
  %165 = sub nsw i32 %161, %164
  %166 = sext i32 %165 to i64
  %167 = udiv i64 %166, 4
  %168 = load i32, i32* @MAX_EMBEDDED_SG_IN_FIRST_IU, align 4
  %169 = sext i32 %168 to i64
  %170 = add i64 %167, %169
  %171 = trunc i64 %170 to i32
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 13
  store i32 %171, i32* %173, align 4
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 9
  %176 = load i32, i32* %175, align 4
  %177 = call i32 (i8*, i32, ...) @DBG_INIT(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %176)
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 11
  %180 = load i32, i32* %179, align 4
  %181 = call i32 (i8*, i32, ...) @DBG_INIT(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %180)
  %182 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 12
  %184 = load i32, i32* %183, align 8
  %185 = call i32 (i8*, i32, ...) @DBG_INIT(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %184)
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 13
  %188 = load i32, i32* %187, align 4
  %189 = call i32 (i8*, i32, ...) @DBG_INIT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %188)
  %190 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  ret void
}

declare dso_local i32 @DBG_FUNC(i8*) #1

declare dso_local i32 @DBG_INIT(i8*, i32, ...) #1

declare dso_local i32 @MIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
