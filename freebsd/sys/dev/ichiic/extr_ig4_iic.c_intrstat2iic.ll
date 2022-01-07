; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ichiic/extr_ig4_iic.c_intrstat2iic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ichiic/extr_ig4_iic.c_intrstat2iic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IG4_INTR_RX_UNDER = common dso_local global i32 0, align 4
@IG4_REG_CLR_RX_UNDER = common dso_local global i32 0, align 4
@IG4_INTR_RX_OVER = common dso_local global i32 0, align 4
@IG4_REG_CLR_RX_OVER = common dso_local global i32 0, align 4
@IG4_INTR_TX_OVER = common dso_local global i32 0, align 4
@IG4_REG_CLR_TX_OVER = common dso_local global i32 0, align 4
@IG4_INTR_TX_ABRT = common dso_local global i32 0, align 4
@IG4_REG_TX_ABRT_SOURCE = common dso_local global i32 0, align 4
@IG4_REG_CLR_TX_ABORT = common dso_local global i32 0, align 4
@IG4_ABRTSRC_TRANSFER = common dso_local global i32 0, align 4
@IIC_ESTATUS = common dso_local global i32 0, align 4
@IG4_ABRTSRC_ARBLOST = common dso_local global i32 0, align 4
@IIC_EBUSBSY = common dso_local global i32 0, align 4
@IG4_ABRTSRC_TXNOACK_ADDR7 = common dso_local global i32 0, align 4
@IG4_ABRTSRC_TXNOACK_ADDR10_1 = common dso_local global i32 0, align 4
@IG4_ABRTSRC_TXNOACK_ADDR10_2 = common dso_local global i32 0, align 4
@IG4_ABRTSRC_TXNOACK_DATA = common dso_local global i32 0, align 4
@IG4_ABRTSRC_GENCALL_NOACK = common dso_local global i32 0, align 4
@IIC_ENOACK = common dso_local global i32 0, align 4
@IG4_ABRTSRC_GENCALL_READ = common dso_local global i32 0, align 4
@IG4_ABRTSRC_NORESTART_START = common dso_local global i32 0, align 4
@IG4_ABRTSRC_NORESTART_10 = common dso_local global i32 0, align 4
@IIC_ENOTSUPP = common dso_local global i32 0, align 4
@IG4_ABRTSRC_ACKED_START = common dso_local global i32 0, align 4
@IIC_EBUSERR = common dso_local global i32 0, align 4
@IIC_EOVERFLOW = common dso_local global i32 0, align 4
@IIC_EUNDERFLOW = common dso_local global i32 0, align 4
@IIC_NOERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @intrstat2iic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intrstat2iic(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @IG4_INTR_RX_UNDER, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* @IG4_REG_CLR_RX_UNDER, align 4
  %14 = call i32 @reg_read(i32* %12, i32 %13)
  br label %15

15:                                               ; preds = %11, %2
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @IG4_INTR_RX_OVER, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* @IG4_REG_CLR_RX_OVER, align 4
  %23 = call i32 @reg_read(i32* %21, i32 %22)
  br label %24

24:                                               ; preds = %20, %15
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @IG4_INTR_TX_OVER, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* @IG4_REG_CLR_TX_OVER, align 4
  %32 = call i32 @reg_read(i32* %30, i32 %31)
  br label %33

33:                                               ; preds = %29, %24
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @IG4_INTR_TX_ABRT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %92

38:                                               ; preds = %33
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* @IG4_REG_TX_ABRT_SOURCE, align 4
  %41 = call i32 @reg_read(i32* %39, i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* @IG4_REG_CLR_TX_ABORT, align 4
  %44 = call i32 @reg_read(i32* %42, i32 %43)
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @IG4_ABRTSRC_TRANSFER, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %38
  %50 = load i32, i32* @IIC_ESTATUS, align 4
  store i32 %50, i32* %3, align 4
  br label %110

51:                                               ; preds = %38
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @IG4_ABRTSRC_ARBLOST, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32, i32* @IIC_EBUSBSY, align 4
  store i32 %57, i32* %3, align 4
  br label %110

58:                                               ; preds = %51
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @IG4_ABRTSRC_TXNOACK_ADDR7, align 4
  %61 = load i32, i32* @IG4_ABRTSRC_TXNOACK_ADDR10_1, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @IG4_ABRTSRC_TXNOACK_ADDR10_2, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @IG4_ABRTSRC_TXNOACK_DATA, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @IG4_ABRTSRC_GENCALL_NOACK, align 4
  %68 = or i32 %66, %67
  %69 = and i32 %59, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %58
  %72 = load i32, i32* @IIC_ENOACK, align 4
  store i32 %72, i32* %3, align 4
  br label %110

73:                                               ; preds = %58
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @IG4_ABRTSRC_GENCALL_READ, align 4
  %76 = load i32, i32* @IG4_ABRTSRC_NORESTART_START, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @IG4_ABRTSRC_NORESTART_10, align 4
  %79 = or i32 %77, %78
  %80 = and i32 %74, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %73
  %83 = load i32, i32* @IIC_ENOTSUPP, align 4
  store i32 %83, i32* %3, align 4
  br label %110

84:                                               ; preds = %73
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @IG4_ABRTSRC_ACKED_START, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %84
  %90 = load i32, i32* @IIC_EBUSERR, align 4
  store i32 %90, i32* %3, align 4
  br label %110

91:                                               ; preds = %84
  br label %92

92:                                               ; preds = %91, %33
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* @IG4_INTR_TX_OVER, align 4
  %95 = load i32, i32* @IG4_INTR_RX_OVER, align 4
  %96 = or i32 %94, %95
  %97 = and i32 %93, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %92
  %100 = load i32, i32* @IIC_EOVERFLOW, align 4
  store i32 %100, i32* %3, align 4
  br label %110

101:                                              ; preds = %92
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* @IG4_INTR_RX_UNDER, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %101
  %107 = load i32, i32* @IIC_EUNDERFLOW, align 4
  store i32 %107, i32* %3, align 4
  br label %110

108:                                              ; preds = %101
  %109 = load i32, i32* @IIC_NOERR, align 4
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %108, %106, %99, %89, %82, %71, %56, %49
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32 @reg_read(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
