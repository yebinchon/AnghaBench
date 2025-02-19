; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_osl_inline.h_tw_osl_read_reg_inline.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_osl_inline.h_tw_osl_read_reg_inline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tw_cl_ctlr_handle = type { i64 }
%struct.twa_softc = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tw_cl_ctlr_handle*, i32, i32)* @tw_osl_read_reg_inline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tw_osl_read_reg_inline(%struct.tw_cl_ctlr_handle* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tw_cl_ctlr_handle*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tw_cl_ctlr_handle* %0, %struct.tw_cl_ctlr_handle** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %5, align 8
  %11 = getelementptr inbounds %struct.tw_cl_ctlr_handle, %struct.tw_cl_ctlr_handle* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.twa_softc*
  %14 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  %16 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %5, align 8
  %17 = getelementptr inbounds %struct.tw_cl_ctlr_handle, %struct.tw_cl_ctlr_handle* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.twa_softc*
  %20 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %22, 4
  br i1 %23, label %24, label %30

24:                                               ; preds = %3
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i64 @bus_space_read_4(i32 %25, i32 %26, i32 %27)
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %4, align 4
  br label %45

30:                                               ; preds = %3
  %31 = load i32, i32* %7, align 4
  %32 = icmp eq i32 %31, 2
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i64 @bus_space_read_2(i32 %34, i32 %35, i32 %36)
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %4, align 4
  br label %45

39:                                               ; preds = %30
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i64 @bus_space_read_1(i32 %40, i32 %41, i32 %42)
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %39, %33, %24
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i64 @bus_space_read_4(i32, i32, i32) #1

declare dso_local i64 @bus_space_read_2(i32, i32, i32) #1

declare dso_local i64 @bus_space_read_1(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
