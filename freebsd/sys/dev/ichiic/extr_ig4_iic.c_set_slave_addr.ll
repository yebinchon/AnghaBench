; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ichiic/extr_ig4_iic.c_set_slave_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ichiic/extr_ig4_iic.c_set_slave_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i32 }

@IG4_INTR_TX_EMPTY = common dso_local global i32 0, align 4
@IG4_REG_CTL = common dso_local global i32 0, align 4
@IG4_CTL_10BIT = common dso_local global i64 0, align 8
@IG4_CTL_RESTARTEN = common dso_local global i64 0, align 8
@IG4_TAR_10BIT = common dso_local global i64 0, align 8
@IG4_REG_TAR_ADD = common dso_local global i32 0, align 4
@IG4_I2C_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i64)* @set_slave_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_slave_addr(%struct.TYPE_7__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %2
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %4, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %12
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %73

25:                                               ; preds = %18, %12, %2
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %30 = load i32, i32* @IG4_INTR_TX_EMPTY, align 4
  %31 = call i32 @wait_intr(%struct.TYPE_7__* %29, i32 %30)
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %33 = call i32 @set_controller(%struct.TYPE_7__* %32, i32 0)
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %35 = load i32, i32* @IG4_REG_CTL, align 4
  %36 = call i64 @reg_read(%struct.TYPE_7__* %34, i32 %35)
  store i64 %36, i64* %6, align 8
  %37 = load i64, i64* @IG4_CTL_10BIT, align 8
  %38 = xor i64 %37, -1
  %39 = load i64, i64* %6, align 8
  %40 = and i64 %39, %38
  store i64 %40, i64* %6, align 8
  %41 = load i64, i64* @IG4_CTL_RESTARTEN, align 8
  %42 = load i64, i64* %6, align 8
  %43 = or i64 %42, %41
  store i64 %43, i64* %6, align 8
  %44 = load i64, i64* %4, align 8
  store i64 %44, i64* %5, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %25
  %50 = load i64, i64* @IG4_TAR_10BIT, align 8
  %51 = load i64, i64* %5, align 8
  %52 = or i64 %51, %50
  store i64 %52, i64* %5, align 8
  %53 = load i64, i64* @IG4_CTL_10BIT, align 8
  %54 = load i64, i64* %6, align 8
  %55 = or i64 %54, %53
  store i64 %55, i64* %6, align 8
  br label %56

56:                                               ; preds = %49, %25
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %58 = load i32, i32* @IG4_REG_CTL, align 4
  %59 = load i64, i64* %6, align 8
  %60 = call i32 @reg_write(%struct.TYPE_7__* %57, i32 %58, i64 %59)
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %62 = load i32, i32* @IG4_REG_TAR_ADD, align 4
  %63 = load i64, i64* %5, align 8
  %64 = call i32 @reg_write(%struct.TYPE_7__* %61, i32 %62, i64 %63)
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %66 = load i32, i32* @IG4_I2C_ENABLE, align 4
  %67 = call i32 @set_controller(%struct.TYPE_7__* %65, i32 %66)
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  %70 = load i64, i64* %4, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  store i64 %70, i64* %72, align 8
  br label %73

73:                                               ; preds = %56, %24
  ret void
}

declare dso_local i32 @wait_intr(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @set_controller(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @reg_read(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @reg_write(%struct.TYPE_7__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
