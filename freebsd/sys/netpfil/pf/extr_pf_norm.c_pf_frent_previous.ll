; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_norm.c_pf_frent_previous.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_norm.c_pf_frent_previous.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_fragment = type { %struct.pf_frent**, i32 }
%struct.pf_frent = type { i64 }

@pf_fragq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"prev != NULL\00", align 1
@PF_FRAG_ENTRY_POINTS = common dso_local global i32 0, align 4
@fr_next = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"prev->fe_off <= frent->fe_off\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pf_frent* @pf_frent_previous(%struct.pf_fragment* %0, %struct.pf_frent* %1) #0 {
  %3 = alloca %struct.pf_frent*, align 8
  %4 = alloca %struct.pf_fragment*, align 8
  %5 = alloca %struct.pf_frent*, align 8
  %6 = alloca %struct.pf_frent*, align 8
  %7 = alloca %struct.pf_frent*, align 8
  %8 = alloca i32, align 4
  store %struct.pf_fragment* %0, %struct.pf_fragment** %4, align 8
  store %struct.pf_frent* %1, %struct.pf_frent** %5, align 8
  %9 = load %struct.pf_fragment*, %struct.pf_fragment** %4, align 8
  %10 = getelementptr inbounds %struct.pf_fragment, %struct.pf_fragment* %9, i32 0, i32 1
  %11 = load i32, i32* @pf_fragq, align 4
  %12 = call %struct.pf_frent* @TAILQ_LAST(i32* %10, i32 %11)
  store %struct.pf_frent* %12, %struct.pf_frent** %6, align 8
  %13 = load %struct.pf_frent*, %struct.pf_frent** %6, align 8
  %14 = icmp ne %struct.pf_frent* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @KASSERT(i32 %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.pf_frent*, %struct.pf_frent** %6, align 8
  %18 = getelementptr inbounds %struct.pf_frent, %struct.pf_frent* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.pf_frent*, %struct.pf_frent** %5, align 8
  %21 = getelementptr inbounds %struct.pf_frent, %struct.pf_frent* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sle i64 %19, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load %struct.pf_frent*, %struct.pf_frent** %6, align 8
  store %struct.pf_frent* %25, %struct.pf_frent** %3, align 8
  br label %103

26:                                               ; preds = %2
  %27 = load %struct.pf_frent*, %struct.pf_frent** %5, align 8
  %28 = call i32 @pf_frent_index(%struct.pf_frent* %27)
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %45, %26
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @PF_FRAG_ENTRY_POINTS, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %48

33:                                               ; preds = %29
  %34 = load %struct.pf_fragment*, %struct.pf_fragment** %4, align 8
  %35 = getelementptr inbounds %struct.pf_fragment, %struct.pf_fragment* %34, i32 0, i32 0
  %36 = load %struct.pf_frent**, %struct.pf_frent*** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.pf_frent*, %struct.pf_frent** %36, i64 %38
  %40 = load %struct.pf_frent*, %struct.pf_frent** %39, align 8
  store %struct.pf_frent* %40, %struct.pf_frent** %6, align 8
  %41 = load %struct.pf_frent*, %struct.pf_frent** %6, align 8
  %42 = icmp ne %struct.pf_frent* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  br label %48

44:                                               ; preds = %33
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %29

48:                                               ; preds = %43, %29
  %49 = load %struct.pf_frent*, %struct.pf_frent** %6, align 8
  %50 = icmp ne %struct.pf_frent* %49, null
  %51 = zext i1 %50 to i32
  %52 = call i32 @KASSERT(i32 %51, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %53 = load %struct.pf_frent*, %struct.pf_frent** %6, align 8
  %54 = getelementptr inbounds %struct.pf_frent, %struct.pf_frent* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.pf_frent*, %struct.pf_frent** %5, align 8
  %57 = getelementptr inbounds %struct.pf_frent, %struct.pf_frent* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp sgt i64 %55, %58
  br i1 %59, label %60, label %79

60:                                               ; preds = %48
  %61 = load %struct.pf_frent*, %struct.pf_frent** %6, align 8
  %62 = load i32, i32* @pf_fragq, align 4
  %63 = load i32, i32* @fr_next, align 4
  %64 = call %struct.pf_frent* @TAILQ_PREV(%struct.pf_frent* %61, i32 %62, i32 %63)
  store %struct.pf_frent* %64, %struct.pf_frent** %6, align 8
  %65 = load %struct.pf_frent*, %struct.pf_frent** %6, align 8
  %66 = icmp eq %struct.pf_frent* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  store %struct.pf_frent* null, %struct.pf_frent** %3, align 8
  br label %103

68:                                               ; preds = %60
  %69 = load %struct.pf_frent*, %struct.pf_frent** %6, align 8
  %70 = getelementptr inbounds %struct.pf_frent, %struct.pf_frent* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.pf_frent*, %struct.pf_frent** %5, align 8
  %73 = getelementptr inbounds %struct.pf_frent, %struct.pf_frent* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp sle i64 %71, %74
  %76 = zext i1 %75 to i32
  %77 = call i32 @KASSERT(i32 %76, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %78 = load %struct.pf_frent*, %struct.pf_frent** %6, align 8
  store %struct.pf_frent* %78, %struct.pf_frent** %3, align 8
  br label %103

79:                                               ; preds = %48
  %80 = load %struct.pf_frent*, %struct.pf_frent** %6, align 8
  %81 = load i32, i32* @fr_next, align 4
  %82 = call %struct.pf_frent* @TAILQ_NEXT(%struct.pf_frent* %80, i32 %81)
  store %struct.pf_frent* %82, %struct.pf_frent** %7, align 8
  br label %83

83:                                               ; preds = %97, %79
  %84 = load %struct.pf_frent*, %struct.pf_frent** %7, align 8
  %85 = icmp ne %struct.pf_frent* %84, null
  br i1 %85, label %86, label %101

86:                                               ; preds = %83
  %87 = load %struct.pf_frent*, %struct.pf_frent** %7, align 8
  %88 = getelementptr inbounds %struct.pf_frent, %struct.pf_frent* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.pf_frent*, %struct.pf_frent** %5, align 8
  %91 = getelementptr inbounds %struct.pf_frent, %struct.pf_frent* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp sgt i64 %89, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %86
  br label %101

95:                                               ; preds = %86
  %96 = load %struct.pf_frent*, %struct.pf_frent** %7, align 8
  store %struct.pf_frent* %96, %struct.pf_frent** %6, align 8
  br label %97

97:                                               ; preds = %95
  %98 = load %struct.pf_frent*, %struct.pf_frent** %7, align 8
  %99 = load i32, i32* @fr_next, align 4
  %100 = call %struct.pf_frent* @TAILQ_NEXT(%struct.pf_frent* %98, i32 %99)
  store %struct.pf_frent* %100, %struct.pf_frent** %7, align 8
  br label %83

101:                                              ; preds = %94, %83
  %102 = load %struct.pf_frent*, %struct.pf_frent** %6, align 8
  store %struct.pf_frent* %102, %struct.pf_frent** %3, align 8
  br label %103

103:                                              ; preds = %101, %68, %67, %24
  %104 = load %struct.pf_frent*, %struct.pf_frent** %3, align 8
  ret %struct.pf_frent* %104
}

declare dso_local %struct.pf_frent* @TAILQ_LAST(i32*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @pf_frent_index(%struct.pf_frent*) #1

declare dso_local %struct.pf_frent* @TAILQ_PREV(%struct.pf_frent*, i32, i32) #1

declare dso_local %struct.pf_frent* @TAILQ_NEXT(%struct.pf_frent*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
