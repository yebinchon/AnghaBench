; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powernv/extr_opal_i2c.c_opal_i2c_transfer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powernv/extr_opal_i2c.c_opal_i2c_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iic_msg = type { i32, i32, i64, i32 }
%struct.opal_i2c_softc = type { i32 }
%struct.opal_i2c_request = type { i32, i32, i32, i32 }

@IIC_M_RD = common dso_local global i32 0, align 4
@OPAL_I2C_RAW_READ = common dso_local global i32 0, align 4
@OPAL_I2C_RAW_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.iic_msg*, i32)* @opal_i2c_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opal_i2c_transfer(i32 %0, %struct.iic_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iic_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.opal_i2c_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.opal_i2c_request, align 4
  store i32 %0, i32* %4, align 4
  store %struct.iic_msg* %1, %struct.iic_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.opal_i2c_softc* @device_get_softc(i32 %11)
  store %struct.opal_i2c_softc* %12, %struct.opal_i2c_softc** %7, align 8
  %13 = call i32 @memset(%struct.opal_i2c_request* %10, i32 0, i32 16)
  %14 = load %struct.opal_i2c_softc*, %struct.opal_i2c_softc** %7, align 8
  %15 = call i32 @I2C_LOCK(%struct.opal_i2c_softc* %14)
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %68, %3
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %71

20:                                               ; preds = %16
  %21 = load %struct.iic_msg*, %struct.iic_msg** %5, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %21, i64 %23
  %25 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @IIC_M_RD, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  %31 = load i32, i32* @OPAL_I2C_RAW_READ, align 4
  br label %34

32:                                               ; preds = %20
  %33 = load i32, i32* @OPAL_I2C_RAW_WRITE, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  %36 = getelementptr inbounds %struct.opal_i2c_request, %struct.opal_i2c_request* %10, i32 0, i32 3
  store i32 %35, i32* %36, align 4
  %37 = load %struct.iic_msg*, %struct.iic_msg** %5, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %37, i64 %39
  %41 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = ashr i32 %42, 1
  %44 = call i32 @htobe16(i32 %43)
  %45 = getelementptr inbounds %struct.opal_i2c_request, %struct.opal_i2c_request* %10, i32 0, i32 2
  store i32 %44, i32* %45, align 4
  %46 = load %struct.iic_msg*, %struct.iic_msg** %5, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %46, i64 %48
  %50 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @htobe32(i32 %51)
  %53 = getelementptr inbounds %struct.opal_i2c_request, %struct.opal_i2c_request* %10, i32 0, i32 1
  store i32 %52, i32* %53, align 4
  %54 = load %struct.iic_msg*, %struct.iic_msg** %5, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %54, i64 %56
  %58 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = trunc i64 %59 to i32
  %61 = call i32 @pmap_kextract(i32 %60)
  %62 = call i32 @htobe64(i32 %61)
  %63 = getelementptr inbounds %struct.opal_i2c_request, %struct.opal_i2c_request* %10, i32 0, i32 0
  store i32 %62, i32* %63, align 4
  %64 = load %struct.opal_i2c_softc*, %struct.opal_i2c_softc** %7, align 8
  %65 = getelementptr inbounds %struct.opal_i2c_softc, %struct.opal_i2c_softc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @i2c_opal_send_request(i32 %66, %struct.opal_i2c_request* %10)
  store i32 %67, i32* %9, align 4
  br label %68

68:                                               ; preds = %34
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %8, align 4
  br label %16

71:                                               ; preds = %16
  %72 = load %struct.opal_i2c_softc*, %struct.opal_i2c_softc** %7, align 8
  %73 = call i32 @I2C_UNLOCK(%struct.opal_i2c_softc* %72)
  %74 = load i32, i32* %9, align 4
  ret i32 %74
}

declare dso_local %struct.opal_i2c_softc* @device_get_softc(i32) #1

declare dso_local i32 @memset(%struct.opal_i2c_request*, i32, i32) #1

declare dso_local i32 @I2C_LOCK(%struct.opal_i2c_softc*) #1

declare dso_local i32 @htobe16(i32) #1

declare dso_local i32 @htobe32(i32) #1

declare dso_local i32 @htobe64(i32) #1

declare dso_local i32 @pmap_kextract(i32) #1

declare dso_local i32 @i2c_opal_send_request(i32, %struct.opal_i2c_request*) #1

declare dso_local i32 @I2C_UNLOCK(%struct.opal_i2c_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
