; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_osdep.h_rd32_osdep.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_osdep.h_rd32_osdep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_osdep = type { i64, i32, i32 }

@.str = private unnamed_addr constant [50 x i8] c"ixl: register offset %#jx too large (max is %#jx)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.i40e_osdep*, i64)* @rd32_osdep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rd32_osdep(%struct.i40e_osdep* %0, i64 %1) #0 {
  %3 = alloca %struct.i40e_osdep*, align 8
  %4 = alloca i64, align 8
  store %struct.i40e_osdep* %0, %struct.i40e_osdep** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.i40e_osdep*, %struct.i40e_osdep** %3, align 8
  %7 = getelementptr inbounds %struct.i40e_osdep, %struct.i40e_osdep* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp slt i64 %5, %8
  %10 = zext i1 %9 to i32
  %11 = load i64, i64* %4, align 8
  %12 = trunc i64 %11 to i32
  %13 = load %struct.i40e_osdep*, %struct.i40e_osdep** %3, align 8
  %14 = getelementptr inbounds %struct.i40e_osdep, %struct.i40e_osdep* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = trunc i64 %15 to i32
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to i8*
  %19 = call i32 @KASSERT(i32 %10, i8* %18)
  %20 = load %struct.i40e_osdep*, %struct.i40e_osdep** %3, align 8
  %21 = getelementptr inbounds %struct.i40e_osdep, %struct.i40e_osdep* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.i40e_osdep*, %struct.i40e_osdep** %3, align 8
  %24 = getelementptr inbounds %struct.i40e_osdep, %struct.i40e_osdep* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i64, i64* %4, align 8
  %27 = call i64 @bus_space_read_4(i32 %22, i32 %25, i64 %26)
  ret i64 %27
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @bus_space_read_4(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
