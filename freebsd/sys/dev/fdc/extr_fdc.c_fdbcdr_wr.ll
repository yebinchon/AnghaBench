; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fdc/extr_fdc.c_fdbcdr_wr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fdc/extr_fdc.c_fdbcdr_wr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdc_data = type { i32 }

@FDBCDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fdc_data*, i32, i32)* @fdbcdr_wr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fdbcdr_wr(%struct.fdc_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.fdc_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fdc_data* %0, %struct.fdc_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.fdc_data*, %struct.fdc_data** %4, align 8
  %8 = load i64, i64* @FDBCDR, align 8
  %9 = load i32, i32* %6, align 4
  %10 = sub nsw i32 %9, 1
  %11 = and i32 %10, 255
  %12 = call i32 @fdregwr(%struct.fdc_data* %7, i64 %8, i32 %11)
  %13 = load %struct.fdc_data*, %struct.fdc_data** %4, align 8
  %14 = load i64, i64* @FDBCDR, align 8
  %15 = add nsw i64 %14, 1
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 128, i32 0
  %20 = load i32, i32* %6, align 4
  %21 = sub nsw i32 %20, 1
  %22 = ashr i32 %21, 8
  %23 = and i32 %22, 127
  %24 = or i32 %19, %23
  %25 = call i32 @fdregwr(%struct.fdc_data* %13, i64 %15, i32 %24)
  ret void
}

declare dso_local i32 @fdregwr(%struct.fdc_data*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
