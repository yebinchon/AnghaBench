; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/localedef/extr_collate.c_add_order_subst.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/localedef/extr_collate.c_add_order_subst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64* }

@curr_subst = common dso_local global i32 0, align 4
@subst_weights = common dso_local global i64* null, align 8
@substs_ref = common dso_local global i32* null, align 8
@curr_weight = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@nextsubst = common dso_local global i32* null, align 8
@COLLATE_SUBST_PRIORITY = common dso_local global i32 0, align 4
@RESOLVED = common dso_local global i32 0, align 4
@substs = common dso_local global i32* null, align 8
@INTERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_order_subst() #0 {
  %1 = alloca %struct.TYPE_7__, align 8
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = call i32 @memset(%struct.TYPE_7__* %1, i32 0, i32 16)
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %24, %0
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @curr_subst, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %27

9:                                                ; preds = %5
  %10 = load i64*, i64** @subst_weights, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i64, i64* %10, i64 %12
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 1
  %16 = load i64*, i64** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  store i64 %14, i64* %19, align 8
  %20 = load i64*, i64** @subst_weights, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  store i64 0, i64* %23, align 8
  br label %24

24:                                               ; preds = %9
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %3, align 4
  br label %5

27:                                               ; preds = %5
  %28 = load i32*, i32** @substs_ref, align 8
  %29 = load i32*, i32** @substs_ref, align 8
  %30 = load i64, i64* @curr_weight, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = call %struct.TYPE_7__* @RB_FIND(i32* %28, i32* %31, %struct.TYPE_7__* %1)
  store %struct.TYPE_7__* %32, %struct.TYPE_7__** %2, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %34 = icmp eq %struct.TYPE_7__* %33, null
  br i1 %34, label %35, label %104

35:                                               ; preds = %27
  %36 = call %struct.TYPE_7__* @calloc(i32 1, i32 16)
  store %struct.TYPE_7__* %36, %struct.TYPE_7__** %2, align 8
  %37 = icmp eq %struct.TYPE_7__* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* @stderr, align 4
  %40 = call i32 @fprintf(i32 %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %109

41:                                               ; preds = %35
  %42 = call i32 (...) @new_pri()
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32*, i32** @nextsubst, align 8
  %49 = load i64, i64* @curr_weight, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @COLLATE_SUBST_PRIORITY, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @RESOLVED, align 4
  %55 = call i32 @set_pri(i32 %47, i32 %53, i32 %54)
  %56 = load i32*, i32** @nextsubst, align 8
  %57 = load i64, i64* @curr_weight, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %78, %41
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* @curr_subst, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %81

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 1
  %67 = load i64*, i64** %66, align 8
  %68 = load i32, i32* %3, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load i64*, i64** %73, align 8
  %75 = load i32, i32* %3, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  store i64 %71, i64* %77, align 8
  br label %78

78:                                               ; preds = %65
  %79 = load i32, i32* %3, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %3, align 4
  br label %61

81:                                               ; preds = %61
  %82 = load i32*, i32** @substs_ref, align 8
  %83 = load i32*, i32** @substs_ref, align 8
  %84 = load i64, i64* @curr_weight, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %87 = call i32 @RB_INSERT(i32* %82, i32* %85, %struct.TYPE_7__* %86)
  %88 = load i32*, i32** @substs, align 8
  %89 = load i32*, i32** @substs, align 8
  %90 = load i64, i64* @curr_weight, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %93 = call %struct.TYPE_7__* @RB_FIND(i32* %88, i32* %91, %struct.TYPE_7__* %92)
  %94 = icmp ne %struct.TYPE_7__* %93, null
  br i1 %94, label %95, label %97

95:                                               ; preds = %81
  %96 = load i32, i32* @INTERR, align 4
  br label %109

97:                                               ; preds = %81
  %98 = load i32*, i32** @substs, align 8
  %99 = load i32*, i32** @substs, align 8
  %100 = load i64, i64* @curr_weight, align 8
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %103 = call i32 @RB_INSERT(i32* %98, i32* %101, %struct.TYPE_7__* %102)
  br label %104

104:                                              ; preds = %97, %27
  store i32 0, i32* @curr_subst, align 4
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @add_order_pri(i32 %107)
  br label %109

109:                                              ; preds = %104, %95, %38
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local %struct.TYPE_7__* @RB_FIND(i32*, i32*, %struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_7__* @calloc(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @new_pri(...) #1

declare dso_local i32 @set_pri(i32, i32, i32) #1

declare dso_local i32 @RB_INSERT(i32*, i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @add_order_pri(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
