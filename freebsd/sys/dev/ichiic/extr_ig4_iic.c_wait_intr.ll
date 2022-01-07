; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ichiic/extr_ig4_iic.c_wait_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ichiic/extr_ig4_iic.c_wait_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@IG4_REG_RAW_INTR_STAT = common dso_local global i32 0, align 4
@IG4_INTR_ERR_MASK = common dso_local global i32 0, align 4
@IG4_INTR_TX_EMPTY = common dso_local global i32 0, align 4
@IG4_INTR_STOP_DET = common dso_local global i32 0, align 4
@IG4_REG_TXFLR = common dso_local global i32 0, align 4
@IG4_FIFOLVL_MASK = common dso_local global i32 0, align 4
@IIC_ETIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"i2cwait\00", align 1
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32)* @wait_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_intr(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 -1, i32* %7, align 4
  store i64 0, i64* %8, align 8
  store i64 25000, i64* %9, align 8
  br label %10

10:                                               ; preds = %83, %2
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %12 = load i32, i32* @IG4_REG_RAW_INTR_STAT, align 4
  %13 = call i32 @reg_read(%struct.TYPE_8__* %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @IG4_INTR_ERR_MASK, align 4
  %17 = and i32 %15, %16
  %18 = call i32 @intrstat2iic(%struct.TYPE_8__* %14, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %10
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %4, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21, %10
  br label %84

27:                                               ; preds = %21
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @IG4_INTR_TX_EMPTY, align 4
  %30 = load i32, i32* @IG4_INTR_STOP_DET, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %28, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %27
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %36 = load i32, i32* @IG4_REG_TXFLR, align 4
  %37 = call i32 @reg_read(%struct.TYPE_8__* %35, i32 %36)
  %38 = load i32, i32* @IG4_FIFOLVL_MASK, align 4
  %39 = and i32 %37, %38
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %7, align 4
  store i64 0, i64* %8, align 8
  br label %45

45:                                               ; preds = %43, %34
  br label %46

46:                                               ; preds = %45, %27
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* %9, align 8
  %49 = icmp sge i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32, i32* @IIC_ETIMEOUT, align 4
  store i32 %51, i32* %6, align 4
  br label %84

52:                                               ; preds = %46
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %54 = call i32 @DO_POLL(%struct.TYPE_8__* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %79, label %56

56:                                               ; preds = %52
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = call i32 @mtx_lock_spin(i32* %58)
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @IG4_INTR_ERR_MASK, align 4
  %63 = or i32 %61, %62
  %64 = call i32 @ig4iic_set_intr_mask(%struct.TYPE_8__* %60, i32 %63)
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32, i32* @hz, align 4
  %69 = add nsw i32 %68, 99
  %70 = sdiv i32 %69, 100
  %71 = call i32 @msleep_spin(%struct.TYPE_8__* %65, i32* %67, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %70)
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %73 = call i32 @ig4iic_set_intr_mask(%struct.TYPE_8__* %72, i32 0)
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = call i32 @mtx_unlock_spin(i32* %75)
  %77 = load i64, i64* %8, align 8
  %78 = add nsw i64 %77, 10000
  store i64 %78, i64* %8, align 8
  br label %83

79:                                               ; preds = %52
  %80 = call i32 @DELAY(i32 25)
  %81 = load i64, i64* %8, align 8
  %82 = add nsw i64 %81, 25
  store i64 %82, i64* %8, align 8
  br label %83

83:                                               ; preds = %79, %56
  br label %10

84:                                               ; preds = %50, %26
  %85 = load i32, i32* %6, align 4
  ret i32 %85
}

declare dso_local i32 @reg_read(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @intrstat2iic(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @DO_POLL(%struct.TYPE_8__*) #1

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @ig4iic_set_intr_mask(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @msleep_spin(%struct.TYPE_8__*, i32*, i8*, i32) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
