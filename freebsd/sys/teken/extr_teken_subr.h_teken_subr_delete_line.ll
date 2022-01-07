; ModuleID = '/home/carl/AnghaBench/freebsd/sys/teken/extr_teken_subr.h_teken_subr_delete_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/teken/extr_teken_subr.h_teken_subr_delete_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, %struct.TYPE_19__, %struct.TYPE_17__, %struct.TYPE_16__ }
%struct.TYPE_19__ = type { i64, i64 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_18__, %struct.TYPE_15__ }
%struct.TYPE_18__ = type { i64, i64 }
%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_22__ = type { i64, i64 }

@BLANK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*, i32)* @teken_subr_delete_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @teken_subr_delete_line(%struct.TYPE_20__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_21__, align 8
  %6 = alloca %struct.TYPE_22__, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp slt i64 %10, %14
  br i1 %15, label %26, label %16

16:                                               ; preds = %2
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp sge i64 %20, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %16, %2
  br label %94

27:                                               ; preds = %16
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %5, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %5, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %5, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = zext i32 %46 to i64
  %48 = add nsw i64 %45, %47
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp sge i64 %48, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %27
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %5, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  br label %88

61:                                               ; preds = %27
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = zext i32 %66 to i64
  %68 = add nsw i64 %65, %67
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %5, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %6, i32 0, i32 0
  store i64 %74, i64* %75, align 8
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %6, i32 0, i32 1
  store i64 0, i64* %76, align 8
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %78 = call i32 @teken_funcs_copy(%struct.TYPE_20__* %77, %struct.TYPE_21__* %5, %struct.TYPE_22__* %6)
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* %4, align 4
  %84 = zext i32 %83 to i64
  %85 = sub nsw i64 %82, %84
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %5, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  br label %88

88:                                               ; preds = %61, %54
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %90 = load i32, i32* @BLANK, align 4
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 0
  %93 = call i32 @teken_funcs_fill(%struct.TYPE_20__* %89, %struct.TYPE_21__* %5, i32 %90, i32* %92)
  br label %94

94:                                               ; preds = %88, %26
  ret void
}

declare dso_local i32 @teken_funcs_copy(%struct.TYPE_20__*, %struct.TYPE_21__*, %struct.TYPE_22__*) #1

declare dso_local i32 @teken_funcs_fill(%struct.TYPE_20__*, %struct.TYPE_21__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
