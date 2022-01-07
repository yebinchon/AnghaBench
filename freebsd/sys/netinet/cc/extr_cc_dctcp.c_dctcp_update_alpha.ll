; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/cc/extr_cc_dctcp.c_dctcp_update_alpha.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/cc/extr_cc_dctcp.c_dctcp_update_alpha.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cc_var = type { %struct.dctcp* }
%struct.dctcp = type { i32, i32, i32, i64 }

@V_dctcp_shift_g = common dso_local global i32 0, align 4
@DCTCP_SHIFT = common dso_local global i32 0, align 4
@MAX_ALPHA_VALUE = common dso_local global i32 0, align 4
@snd_nxt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cc_var*)* @dctcp_update_alpha to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dctcp_update_alpha(%struct.cc_var* %0) #0 {
  %2 = alloca %struct.cc_var*, align 8
  %3 = alloca %struct.dctcp*, align 8
  %4 = alloca i32, align 4
  store %struct.cc_var* %0, %struct.cc_var** %2, align 8
  %5 = load %struct.cc_var*, %struct.cc_var** %2, align 8
  %6 = getelementptr inbounds %struct.cc_var, %struct.cc_var* %5, i32 0, i32 0
  %7 = load %struct.dctcp*, %struct.dctcp** %6, align 8
  store %struct.dctcp* %7, %struct.dctcp** %3, align 8
  %8 = load %struct.dctcp*, %struct.dctcp** %3, align 8
  %9 = getelementptr inbounds %struct.dctcp, %struct.dctcp* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %4, align 4
  %11 = load %struct.dctcp*, %struct.dctcp** %3, align 8
  %12 = getelementptr inbounds %struct.dctcp, %struct.dctcp* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @max(i32 %13, i32 1)
  %15 = load %struct.dctcp*, %struct.dctcp** %3, align 8
  %16 = getelementptr inbounds %struct.dctcp, %struct.dctcp* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @V_dctcp_shift_g, align 4
  %20 = ashr i32 %18, %19
  %21 = sub nsw i32 %17, %20
  %22 = load %struct.dctcp*, %struct.dctcp** %3, align 8
  %23 = getelementptr inbounds %struct.dctcp, %struct.dctcp* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = load i32, i32* @DCTCP_SHIFT, align 4
  %27 = load i32, i32* @V_dctcp_shift_g, align 4
  %28 = sub nsw i32 %26, %27
  %29 = shl i32 %25, %28
  %30 = load %struct.dctcp*, %struct.dctcp** %3, align 8
  %31 = getelementptr inbounds %struct.dctcp, %struct.dctcp* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sdiv i32 %29, %32
  %34 = add nsw i32 %21, %33
  %35 = load i32, i32* @MAX_ALPHA_VALUE, align 4
  %36 = call i32 @ulmin(i32 %34, i32 %35)
  %37 = load %struct.dctcp*, %struct.dctcp** %3, align 8
  %38 = getelementptr inbounds %struct.dctcp, %struct.dctcp* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.dctcp*, %struct.dctcp** %3, align 8
  %40 = getelementptr inbounds %struct.dctcp, %struct.dctcp* %39, i32 0, i32 3
  store i64 0, i64* %40, align 8
  %41 = load %struct.dctcp*, %struct.dctcp** %3, align 8
  %42 = getelementptr inbounds %struct.dctcp, %struct.dctcp* %41, i32 0, i32 1
  store i32 0, i32* %42, align 4
  %43 = load %struct.cc_var*, %struct.cc_var** %2, align 8
  %44 = load i32, i32* @snd_nxt, align 4
  %45 = call i32 @CCV(%struct.cc_var* %43, i32 %44)
  %46 = load %struct.dctcp*, %struct.dctcp** %3, align 8
  %47 = getelementptr inbounds %struct.dctcp, %struct.dctcp* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  ret void
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @ulmin(i32, i32) #1

declare dso_local i32 @CCV(%struct.cc_var*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
