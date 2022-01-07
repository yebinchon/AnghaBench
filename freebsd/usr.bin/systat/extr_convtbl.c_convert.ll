; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_convtbl.c_convert.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_convtbl.c_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.convtbl = type { double, double }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @convert(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.convtbl*, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i64, i64* %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.convtbl* @get_tbl_ptr(i64 %6, i32 %7)
  store %struct.convtbl* %8, %struct.convtbl** %5, align 8
  %9 = load i64, i64* %3, align 8
  %10 = sitofp i64 %9 to double
  %11 = load %struct.convtbl*, %struct.convtbl** %5, align 8
  %12 = getelementptr inbounds %struct.convtbl, %struct.convtbl* %11, i32 0, i32 0
  %13 = load double, double* %12, align 8
  %14 = fmul double %10, %13
  %15 = load %struct.convtbl*, %struct.convtbl** %5, align 8
  %16 = getelementptr inbounds %struct.convtbl, %struct.convtbl* %15, i32 0, i32 1
  %17 = load double, double* %16, align 8
  %18 = fdiv double %14, %17
  ret double %18
}

declare dso_local %struct.convtbl* @get_tbl_ptr(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
