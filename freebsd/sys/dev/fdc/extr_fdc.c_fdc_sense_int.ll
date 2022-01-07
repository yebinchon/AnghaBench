; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fdc/extr_fdc.c_fdc_sense_int.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fdc/extr_fdc.c_fdc_sense_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdc_data = type { i32 }

@NE7CMD_SENSEI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"sense intr err reading stat reg 0\0A\00", align 1
@NE7_ST0_IC = common dso_local global i32 0, align 4
@NE7_ST0_IC_IV = common dso_local global i32 0, align 4
@FD_NOT_VALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"can't get cyl num\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fdc_data*, i32*, i32*)* @fdc_sense_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdc_sense_int(%struct.fdc_data* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fdc_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.fdc_data* %0, %struct.fdc_data** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.fdc_data*, %struct.fdc_data** %5, align 8
  %12 = load i32, i32* @NE7CMD_SENSEI, align 4
  %13 = call i32 @fdc_cmd(%struct.fdc_data* %11, i32 1, i32 %12, i32 1, i32* %9)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load %struct.fdc_data*, %struct.fdc_data** %5, align 8
  %18 = call i32 @fdc_err(%struct.fdc_data* %17, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %4, align 4
  br label %48

20:                                               ; preds = %3
  %21 = load i32*, i32** %6, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* %9, align 4
  %25 = load i32*, i32** %6, align 8
  store i32 %24, i32* %25, align 4
  br label %26

26:                                               ; preds = %23, %20
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @NE7_ST0_IC, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* @NE7_ST0_IC_IV, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @FD_NOT_VALID, align 4
  store i32 %33, i32* %4, align 4
  br label %48

34:                                               ; preds = %26
  %35 = load %struct.fdc_data*, %struct.fdc_data** %5, align 8
  %36 = call i64 @fdc_in(%struct.fdc_data* %35, i32* %8)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load %struct.fdc_data*, %struct.fdc_data** %5, align 8
  %40 = call i32 @fdc_err(%struct.fdc_data* %39, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 %40, i32* %4, align 4
  br label %48

41:                                               ; preds = %34
  %42 = load i32*, i32** %7, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32, i32* %8, align 4
  %46 = load i32*, i32** %7, align 8
  store i32 %45, i32* %46, align 4
  br label %47

47:                                               ; preds = %44, %41
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %47, %38, %32, %16
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @fdc_cmd(%struct.fdc_data*, i32, i32, i32, i32*) #1

declare dso_local i32 @fdc_err(%struct.fdc_data*, i8*) #1

declare dso_local i64 @fdc_in(%struct.fdc_data*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
