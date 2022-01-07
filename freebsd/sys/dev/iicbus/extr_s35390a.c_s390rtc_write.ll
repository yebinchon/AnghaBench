; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_s35390a.c_s390rtc_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_s35390a.c_s390rtc_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s390rtc_softc = type { i32 }
%struct.iic_msg = type { i32, i64, i32*, i32 }

@IIC_M_WR = common dso_local global i32 0, align 4
@IIC_WAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i64)* @s390rtc_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s390rtc_write(i32 %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.s390rtc_softc*, align 8
  %10 = alloca [1 x %struct.iic_msg], align 16
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.s390rtc_softc* @device_get_softc(i32 %12)
  store %struct.s390rtc_softc* %13, %struct.s390rtc_softc** %9, align 8
  %14 = getelementptr inbounds [1 x %struct.iic_msg], [1 x %struct.iic_msg]* %10, i64 0, i64 0
  %15 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %14, i32 0, i32 0
  %16 = load %struct.s390rtc_softc*, %struct.s390rtc_softc** %9, align 8
  %17 = getelementptr inbounds %struct.s390rtc_softc, %struct.s390rtc_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %6, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %15, align 16
  %21 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %14, i32 0, i32 1
  %22 = load i64, i64* %8, align 8
  store i64 %22, i64* %21, align 8
  %23 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %14, i32 0, i32 2
  %24 = load i32*, i32** %7, align 8
  store i32* %24, i32** %23, align 16
  %25 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %14, i32 0, i32 3
  %26 = load i32, i32* @IIC_M_WR, align 4
  store i32 %26, i32* %25, align 8
  store i32 0, i32* %11, align 4
  br label %27

27:                                               ; preds = %43, %4
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* %8, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %27
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @bitreverse(i32 %37)
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32 %38, i32* %42, align 4
  br label %43

43:                                               ; preds = %32
  %44 = load i32, i32* %11, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %11, align 4
  br label %27

46:                                               ; preds = %27
  %47 = load i32, i32* %5, align 4
  %48 = getelementptr inbounds [1 x %struct.iic_msg], [1 x %struct.iic_msg]* %10, i64 0, i64 0
  %49 = load i32, i32* @IIC_WAIT, align 4
  %50 = call i32 @iicbus_transfer_excl(i32 %47, %struct.iic_msg* %48, i32 1, i32 %49)
  ret i32 %50
}

declare dso_local %struct.s390rtc_softc* @device_get_softc(i32) #1

declare dso_local i32 @bitreverse(i32) #1

declare dso_local i32 @iicbus_transfer_excl(i32, %struct.iic_msg*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
