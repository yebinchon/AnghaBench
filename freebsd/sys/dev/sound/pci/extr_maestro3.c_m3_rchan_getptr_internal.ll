; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro3.c_m3_rchan_getptr_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro3.c_m3_rchan_getptr_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_rchinfo = type { i32, i64, i32, %struct.sc_info* }
%struct.sc_info = type { i32 }

@CDATA_HOST_SRC_CURRENTH = common dso_local global i64 0, align 8
@CDATA_HOST_SRC_CURRENTL = common dso_local global i64 0, align 8
@CALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"m3_rchan_getptr(adc=%d) result=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sc_rchinfo*)* @m3_rchan_getptr_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m3_rchan_getptr_internal(%struct.sc_rchinfo* %0) #0 {
  %2 = alloca %struct.sc_rchinfo*, align 8
  %3 = alloca %struct.sc_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sc_rchinfo* %0, %struct.sc_rchinfo** %2, align 8
  %8 = load %struct.sc_rchinfo*, %struct.sc_rchinfo** %2, align 8
  %9 = getelementptr inbounds %struct.sc_rchinfo, %struct.sc_rchinfo* %8, i32 0, i32 3
  %10 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  store %struct.sc_info* %10, %struct.sc_info** %3, align 8
  %11 = load %struct.sc_rchinfo*, %struct.sc_rchinfo** %2, align 8
  %12 = getelementptr inbounds %struct.sc_rchinfo, %struct.sc_rchinfo* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @sndbuf_getbufaddr(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %16 = load %struct.sc_rchinfo*, %struct.sc_rchinfo** %2, align 8
  %17 = getelementptr inbounds %struct.sc_rchinfo, %struct.sc_rchinfo* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @CDATA_HOST_SRC_CURRENTH, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @m3_rd_assp_data(%struct.sc_info* %15, i64 %20)
  store i32 %21, i32* %4, align 4
  %22 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %23 = load %struct.sc_rchinfo*, %struct.sc_rchinfo** %2, align 8
  %24 = getelementptr inbounds %struct.sc_rchinfo, %struct.sc_rchinfo* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @CDATA_HOST_SRC_CURRENTL, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @m3_rd_assp_data(%struct.sc_info* %22, i64 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %4, align 4
  %31 = shl i32 %30, 16
  %32 = or i32 %29, %31
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* @CALL, align 4
  %34 = load %struct.sc_rchinfo*, %struct.sc_rchinfo** %2, align 8
  %35 = getelementptr inbounds %struct.sc_rchinfo, %struct.sc_rchinfo* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %6, align 4
  %39 = sub nsw i32 %37, %38
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to i8*
  %42 = call i32 @M3_DEBUG(i32 %33, i8* %41)
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %6, align 4
  %45 = sub nsw i32 %43, %44
  ret i32 %45
}

declare dso_local i32 @sndbuf_getbufaddr(i32) #1

declare dso_local i32 @m3_rd_assp_data(%struct.sc_info*, i64) #1

declare dso_local i32 @M3_DEBUG(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
