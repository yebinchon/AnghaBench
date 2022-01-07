; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fdc/extr_fdc.c_fd_motor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fdc/extr_fdc.c_fd_motor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd_data = type { i32, i32, i32, %struct.fdc_data* }
%struct.fdc_data = type { i32 }

@FD_MOTORWAIT = common dso_local global i32 0, align 4
@FDO_MOEN0 = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@fd_turnon = common dso_local global i32 0, align 4
@FD_MOTOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fd_data*, i32)* @fd_motor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fd_motor(%struct.fd_data* %0, i32 %1) #0 {
  %3 = alloca %struct.fd_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fdc_data*, align 8
  store %struct.fd_data* %0, %struct.fd_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.fd_data*, %struct.fd_data** %3, align 8
  %7 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %6, i32 0, i32 3
  %8 = load %struct.fdc_data*, %struct.fdc_data** %7, align 8
  store %struct.fdc_data* %8, %struct.fdc_data** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %32

11:                                               ; preds = %2
  %12 = load i32, i32* @FD_MOTORWAIT, align 4
  %13 = load %struct.fd_data*, %struct.fd_data** %3, align 8
  %14 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 8
  %17 = load i32, i32* @FDO_MOEN0, align 4
  %18 = load %struct.fd_data*, %struct.fd_data** %3, align 8
  %19 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = shl i32 %17, %20
  %22 = load %struct.fdc_data*, %struct.fdc_data** %5, align 8
  %23 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = load %struct.fd_data*, %struct.fd_data** %3, align 8
  %27 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %26, i32 0, i32 2
  %28 = load i32, i32* @hz, align 4
  %29 = load i32, i32* @fd_turnon, align 4
  %30 = load %struct.fd_data*, %struct.fd_data** %3, align 8
  %31 = call i32 @callout_reset(i32* %27, i32 %28, i32 %29, %struct.fd_data* %30)
  br label %54

32:                                               ; preds = %2
  %33 = load %struct.fd_data*, %struct.fd_data** %3, align 8
  %34 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %33, i32 0, i32 2
  %35 = call i32 @callout_stop(i32* %34)
  %36 = load i32, i32* @FD_MOTOR, align 4
  %37 = load i32, i32* @FD_MOTORWAIT, align 4
  %38 = or i32 %36, %37
  %39 = xor i32 %38, -1
  %40 = load %struct.fd_data*, %struct.fd_data** %3, align 8
  %41 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = and i32 %42, %39
  store i32 %43, i32* %41, align 8
  %44 = load i32, i32* @FDO_MOEN0, align 4
  %45 = load %struct.fd_data*, %struct.fd_data** %3, align 8
  %46 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 %44, %47
  %49 = xor i32 %48, -1
  %50 = load %struct.fdc_data*, %struct.fdc_data** %5, align 8
  %51 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, %49
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %32, %11
  %55 = load %struct.fdc_data*, %struct.fdc_data** %5, align 8
  %56 = load %struct.fdc_data*, %struct.fdc_data** %5, align 8
  %57 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @fdout_wr(%struct.fdc_data* %55, i32 %58)
  ret void
}

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.fd_data*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @fdout_wr(%struct.fdc_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
