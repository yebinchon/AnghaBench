; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fdc/extr_fdc.c_fd_select.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fdc/extr_fdc.c_fd_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd_data = type { i32, %struct.fdc_data* }
%struct.fdc_data = type { i32 }

@FDO_FDSEL = common dso_local global i32 0, align 4
@FDO_FDMAEN = common dso_local global i32 0, align 4
@FDO_FRST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fd_data*)* @fd_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fd_select(%struct.fd_data* %0) #0 {
  %2 = alloca %struct.fd_data*, align 8
  %3 = alloca %struct.fdc_data*, align 8
  store %struct.fd_data* %0, %struct.fd_data** %2, align 8
  %4 = load %struct.fd_data*, %struct.fd_data** %2, align 8
  %5 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %4, i32 0, i32 1
  %6 = load %struct.fdc_data*, %struct.fdc_data** %5, align 8
  store %struct.fdc_data* %6, %struct.fdc_data** %3, align 8
  %7 = load i32, i32* @FDO_FDSEL, align 4
  %8 = xor i32 %7, -1
  %9 = load %struct.fdc_data*, %struct.fdc_data** %3, align 8
  %10 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %11, %8
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* @FDO_FDMAEN, align 4
  %14 = load i32, i32* @FDO_FRST, align 4
  %15 = or i32 %13, %14
  %16 = load %struct.fd_data*, %struct.fd_data** %2, align 8
  %17 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = or i32 %15, %18
  %20 = load %struct.fdc_data*, %struct.fdc_data** %3, align 8
  %21 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  %24 = load %struct.fdc_data*, %struct.fdc_data** %3, align 8
  %25 = load %struct.fdc_data*, %struct.fdc_data** %3, align 8
  %26 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @fdout_wr(%struct.fdc_data* %24, i32 %27)
  ret void
}

declare dso_local i32 @fdout_wr(%struct.fdc_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
