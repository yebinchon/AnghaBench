; ModuleID = '/home/carl/AnghaBench/freebsd/sys/teken/extr_teken_subr.h_teken_subr_newpage.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/teken/extr_teken_subr.h_teken_subr_newpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, %struct.TYPE_17__, %struct.TYPE_16__, i32, %struct.TYPE_15__ }
%struct.TYPE_17__ = type { i64, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i64, i32 }

@TS_CONS25 = common dso_local global i32 0, align 4
@BLANK = common dso_local global i32 0, align 4
@TS_WRAPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*)* @teken_subr_newpage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @teken_subr_newpage(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca %struct.TYPE_19__, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %2, align 8
  %4 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @TS_CONS25, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %54

10:                                               ; preds = %1
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %3, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %3, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %3, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %3, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %32 = load i32, i32* @BLANK, align 4
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 3
  %35 = call i32 @teken_funcs_fill(%struct.TYPE_18__* %31, %struct.TYPE_19__* %3, i32 %32, i32* %34)
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 1
  store i32 %39, i32* %42, align 8
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 0
  store i64 0, i64* %45, align 8
  %46 = load i32, i32* @TS_WRAPPED, align 4
  %47 = xor i32 %46, -1
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = and i32 %50, %47
  store i32 %51, i32* %49, align 8
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %53 = call i32 @teken_funcs_cursor(%struct.TYPE_18__* %52)
  br label %57

54:                                               ; preds = %1
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %56 = call i32 @teken_subr_newline(%struct.TYPE_18__* %55)
  br label %57

57:                                               ; preds = %54, %10
  ret void
}

declare dso_local i32 @teken_funcs_fill(%struct.TYPE_18__*, %struct.TYPE_19__*, i32, i32*) #1

declare dso_local i32 @teken_funcs_cursor(%struct.TYPE_18__*) #1

declare dso_local i32 @teken_subr_newline(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
