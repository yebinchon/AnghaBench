; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fdc/extr_fdc.c_fdc_in.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fdc/extr_fdc.c_fdc_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdc_data = type { i32 }

@FDSTS_TIMEOUT = common dso_local global i32 0, align 4
@NE7_DIO = common dso_local global i32 0, align 4
@NE7_RQM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"ready for output in input\0A\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"input ready timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fdc_data*, i32*)* @fdc_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdc_in(%struct.fdc_data* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fdc_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fdc_data* %0, %struct.fdc_data** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 1, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %47, %2
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @FDSTS_TIMEOUT, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %51

13:                                               ; preds = %9
  %14 = load %struct.fdc_data*, %struct.fdc_data** %4, align 8
  %15 = call i32 @fdsts_rd(%struct.fdc_data* %14)
  %16 = load i32, i32* @NE7_DIO, align 4
  %17 = load i32, i32* @NE7_RQM, align 4
  %18 = or i32 %16, %17
  %19 = and i32 %15, %18
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @NE7_DIO, align 4
  %22 = load i32, i32* @NE7_RQM, align 4
  %23 = or i32 %21, %22
  %24 = icmp eq i32 %20, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %13
  %26 = load %struct.fdc_data*, %struct.fdc_data** %4, align 8
  %27 = call i32 @fddata_rd(%struct.fdc_data* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32*, i32** %5, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* %6, align 4
  %32 = load i32*, i32** %5, align 8
  store i32 %31, i32* %32, align 4
  br label %33

33:                                               ; preds = %30, %25
  store i32 0, i32* %3, align 4
  br label %58

34:                                               ; preds = %13
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @NE7_RQM, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load %struct.fdc_data*, %struct.fdc_data** %4, align 8
  %40 = call i32 @fdc_err(%struct.fdc_data* %39, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 %40, i32* %3, align 4
  br label %58

41:                                               ; preds = %34
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @DELAY(i32 %45)
  br label %47

47:                                               ; preds = %41
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* %7, align 4
  br label %9

51:                                               ; preds = %9
  %52 = load %struct.fdc_data*, %struct.fdc_data** %4, align 8
  %53 = load i64, i64* @bootverbose, align 8
  %54 = icmp ne i64 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* null
  %57 = call i32 @fdc_err(%struct.fdc_data* %52, i8* %56)
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %51, %38, %33
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @fdsts_rd(%struct.fdc_data*) #1

declare dso_local i32 @fddata_rd(%struct.fdc_data*) #1

declare dso_local i32 @fdc_err(%struct.fdc_data*, i8*) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
