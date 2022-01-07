; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_passthrough.c_sati_passthrough_check_direction.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_passthrough.c_sati_passthrough_check_direction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@PASSTHROUGH_PIO_DATA_IN = common dso_local global i64 0, align 8
@PASSTHROUGH_UDMA_DATA_IN = common dso_local global i64 0, align 8
@SATI_FAILURE = common dso_local global i32 0, align 4
@SATI_DATA_DIRECTION_IN = common dso_local global i32 0, align 4
@PASSTHROUGH_PIO_DATA_OUT = common dso_local global i64 0, align 8
@PASSTHROUGH_UDMA_DATA_OUT = common dso_local global i64 0, align 8
@SATI_DATA_DIRECTION_OUT = common dso_local global i32 0, align 4
@SATI_DATA_DIRECTION_NONE = common dso_local global i32 0, align 4
@SATI_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*)* @sati_passthrough_check_direction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sati_passthrough_check_direction(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @PASSTHROUGH_PIO_DATA_IN, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PASSTHROUGH_UDMA_DATA_IN, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %11, %2
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @PASSTHROUGH_CDB_T_DIR(i32* %18)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @SATI_FAILURE, align 4
  store i32 %22, i32* %3, align 4
  br label %58

23:                                               ; preds = %17
  %24 = load i32, i32* @SATI_DATA_DIRECTION_IN, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  br label %27

27:                                               ; preds = %23
  br label %56

28:                                               ; preds = %11
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @PASSTHROUGH_PIO_DATA_OUT, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @PASSTHROUGH_UDMA_DATA_OUT, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %34, %28
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @PASSTHROUGH_CDB_T_DIR(i32* %41)
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* @SATI_FAILURE, align 4
  store i32 %45, i32* %3, align 4
  br label %58

46:                                               ; preds = %40
  %47 = load i32, i32* @SATI_DATA_DIRECTION_OUT, align 4
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  br label %50

50:                                               ; preds = %46
  br label %55

51:                                               ; preds = %34
  %52 = load i32, i32* @SATI_DATA_DIRECTION_NONE, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  br label %55

55:                                               ; preds = %51, %50
  br label %56

56:                                               ; preds = %55, %27
  %57 = load i32, i32* @SATI_COMPLETE, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %56, %44, %21
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @PASSTHROUGH_CDB_T_DIR(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
