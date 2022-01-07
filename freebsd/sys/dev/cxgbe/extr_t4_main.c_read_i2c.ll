; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_read_i2c.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_read_i2c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.t4_i2c_data = type { i32, i64, i32*, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4
@SLEEP_OK = common dso_local global i32 0, align 4
@INTR_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"t4i2crd\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, %struct.t4_i2c_data*)* @read_i2c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_i2c(%struct.adapter* %0, %struct.t4_i2c_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.t4_i2c_data*, align 8
  %6 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store %struct.t4_i2c_data* %1, %struct.t4_i2c_data** %5, align 8
  %7 = load %struct.t4_i2c_data*, %struct.t4_i2c_data** %5, align 8
  %8 = getelementptr inbounds %struct.t4_i2c_data, %struct.t4_i2c_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %2
  %12 = load %struct.t4_i2c_data*, %struct.t4_i2c_data** %5, align 8
  %13 = getelementptr inbounds %struct.t4_i2c_data, %struct.t4_i2c_data* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.adapter*, %struct.adapter** %4, align 8
  %16 = getelementptr inbounds %struct.adapter, %struct.adapter* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sge i64 %14, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %11, %2
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %3, align 4
  br label %66

22:                                               ; preds = %11
  %23 = load %struct.t4_i2c_data*, %struct.t4_i2c_data** %5, align 8
  %24 = getelementptr inbounds %struct.t4_i2c_data, %struct.t4_i2c_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = icmp ugt i64 %26, 8
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @EFBIG, align 4
  store i32 %29, i32* %3, align 4
  br label %66

30:                                               ; preds = %22
  %31 = load %struct.adapter*, %struct.adapter** %4, align 8
  %32 = load i32, i32* @SLEEP_OK, align 4
  %33 = load i32, i32* @INTR_OK, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @begin_synchronized_op(%struct.adapter* %31, i32* null, i32 %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %3, align 4
  br label %66

40:                                               ; preds = %30
  %41 = load %struct.adapter*, %struct.adapter** %4, align 8
  %42 = load %struct.adapter*, %struct.adapter** %4, align 8
  %43 = getelementptr inbounds %struct.adapter, %struct.adapter* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.t4_i2c_data*, %struct.t4_i2c_data** %5, align 8
  %46 = getelementptr inbounds %struct.t4_i2c_data, %struct.t4_i2c_data* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.t4_i2c_data*, %struct.t4_i2c_data** %5, align 8
  %49 = getelementptr inbounds %struct.t4_i2c_data, %struct.t4_i2c_data* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.t4_i2c_data*, %struct.t4_i2c_data** %5, align 8
  %52 = getelementptr inbounds %struct.t4_i2c_data, %struct.t4_i2c_data* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.t4_i2c_data*, %struct.t4_i2c_data** %5, align 8
  %55 = getelementptr inbounds %struct.t4_i2c_data, %struct.t4_i2c_data* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.t4_i2c_data*, %struct.t4_i2c_data** %5, align 8
  %58 = getelementptr inbounds %struct.t4_i2c_data, %struct.t4_i2c_data* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = call i32 @t4_i2c_rd(%struct.adapter* %41, i32 %44, i64 %47, i32 %50, i32 %53, i32 %56, i32* %60)
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %6, align 4
  %63 = load %struct.adapter*, %struct.adapter** %4, align 8
  %64 = call i32 @end_synchronized_op(%struct.adapter* %63, i32 0)
  %65 = load i32, i32* %6, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %40, %38, %28, %20
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @begin_synchronized_op(%struct.adapter*, i32*, i32, i8*) #1

declare dso_local i32 @t4_i2c_rd(%struct.adapter*, i32, i64, i32, i32, i32, i32*) #1

declare dso_local i32 @end_synchronized_op(%struct.adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
