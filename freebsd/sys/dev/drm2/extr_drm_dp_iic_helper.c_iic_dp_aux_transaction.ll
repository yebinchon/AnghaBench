; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_dp_iic_helper.c_iic_dp_aux_transaction.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_dp_iic_helper.c_iic_dp_aux_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iic_dp_aux_data = type { i32 (i32, i32, i32, i32*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32*)* @iic_dp_aux_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iic_dp_aux_transaction(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.iic_dp_aux_data*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.iic_dp_aux_data* @device_get_softc(i32 %12)
  store %struct.iic_dp_aux_data* %13, %struct.iic_dp_aux_data** %10, align 8
  %14 = load %struct.iic_dp_aux_data*, %struct.iic_dp_aux_data** %10, align 8
  %15 = getelementptr inbounds %struct.iic_dp_aux_data, %struct.iic_dp_aux_data* %14, i32 0, i32 0
  %16 = load i32 (i32, i32, i32, i32*)*, i32 (i32, i32, i32, i32*)** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32*, i32** %9, align 8
  %21 = call i32 %16(i32 %17, i32 %18, i32 %19, i32* %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* %11, align 4
  store i32 %25, i32* %5, align 4
  br label %27

26:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %26, %24
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

declare dso_local %struct.iic_dp_aux_data* @device_get_softc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
