; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fdc/extr_fdc.c_fdc_out.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fdc/extr_fdc.c_fdc_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdc_data = type { i32 }

@FDSTS_TIMEOUT = common dso_local global i32 0, align 4
@NE7_DIO = common dso_local global i32 0, align 4
@NE7_RQM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"ready for input in output\0A\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"output ready timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fdc_data*, i32)* @fdc_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdc_out(%struct.fdc_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fdc_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fdc_data* %0, %struct.fdc_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 1, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %42, %2
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @FDSTS_TIMEOUT, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %46

13:                                               ; preds = %9
  %14 = load %struct.fdc_data*, %struct.fdc_data** %4, align 8
  %15 = call i32 @fdsts_rd(%struct.fdc_data* %14)
  %16 = load i32, i32* @NE7_DIO, align 4
  %17 = load i32, i32* @NE7_RQM, align 4
  %18 = or i32 %16, %17
  %19 = and i32 %15, %18
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @NE7_RQM, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %13
  %24 = load %struct.fdc_data*, %struct.fdc_data** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @fddata_wr(%struct.fdc_data* %24, i32 %25)
  store i32 0, i32* %3, align 4
  br label %53

27:                                               ; preds = %13
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @NE7_DIO, align 4
  %30 = load i32, i32* @NE7_RQM, align 4
  %31 = or i32 %29, %30
  %32 = icmp eq i32 %28, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load %struct.fdc_data*, %struct.fdc_data** %4, align 8
  %35 = call i32 @fdc_err(%struct.fdc_data* %34, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 %35, i32* %3, align 4
  br label %53

36:                                               ; preds = %27
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, %37
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @DELAY(i32 %40)
  br label %42

42:                                               ; preds = %36
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, %43
  store i32 %45, i32* %7, align 4
  br label %9

46:                                               ; preds = %9
  %47 = load %struct.fdc_data*, %struct.fdc_data** %4, align 8
  %48 = load i64, i64* @bootverbose, align 8
  %49 = icmp ne i64 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* null
  %52 = call i32 @fdc_err(%struct.fdc_data* %47, i8* %51)
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %46, %33, %23
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @fdsts_rd(%struct.fdc_data*) #1

declare dso_local i32 @fddata_wr(%struct.fdc_data*, i32) #1

declare dso_local i32 @fdc_err(%struct.fdc_data*, i8*) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
