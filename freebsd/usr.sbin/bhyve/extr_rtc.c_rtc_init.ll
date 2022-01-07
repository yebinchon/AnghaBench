; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_rtc.c_rtc_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_rtc.c_rtc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }

@m_16MB = common dso_local global i64 0, align 8
@m_64KB = common dso_local global i64 0, align 8
@RTC_LMEM_LSB = common dso_local global i32 0, align 4
@RTC_LMEM_MSB = common dso_local global i32 0, align 4
@RTC_HMEM_LSB = common dso_local global i32 0, align 4
@RTC_HMEM_SB = common dso_local global i32 0, align 4
@RTC_HMEM_MSB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtc_init(%struct.vmctx* %0, i32 %1) #0 {
  %3 = alloca %struct.vmctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.vmctx* %0, %struct.vmctx** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %9 = call i64 @vm_get_lowmem_size(%struct.vmctx* %8)
  %10 = load i64, i64* @m_16MB, align 8
  %11 = sub i64 %9, %10
  %12 = load i64, i64* @m_64KB, align 8
  %13 = udiv i64 %11, %12
  store i64 %13, i64* %6, align 8
  %14 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %15 = load i32, i32* @RTC_LMEM_LSB, align 4
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @vm_rtc_write(%struct.vmctx* %14, i32 %15, i64 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp eq i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %23 = load i32, i32* @RTC_LMEM_MSB, align 4
  %24 = load i64, i64* %6, align 8
  %25 = lshr i64 %24, 8
  %26 = call i32 @vm_rtc_write(%struct.vmctx* %22, i32 %23, i64 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp eq i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %32 = call i64 @vm_get_highmem_size(%struct.vmctx* %31)
  %33 = load i64, i64* @m_64KB, align 8
  %34 = udiv i64 %32, %33
  store i64 %34, i64* %5, align 8
  %35 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %36 = load i32, i32* @RTC_HMEM_LSB, align 4
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @vm_rtc_write(%struct.vmctx* %35, i32 %36, i64 %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp eq i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %44 = load i32, i32* @RTC_HMEM_SB, align 4
  %45 = load i64, i64* %5, align 8
  %46 = lshr i64 %45, 8
  %47 = call i32 @vm_rtc_write(%struct.vmctx* %43, i32 %44, i64 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp eq i32 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %53 = load i32, i32* @RTC_HMEM_MSB, align 4
  %54 = load i64, i64* %5, align 8
  %55 = lshr i64 %54, 16
  %56 = call i32 @vm_rtc_write(%struct.vmctx* %52, i32 %53, i64 %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp eq i32 %57, 0
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  %61 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %62 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @rtc_time(%struct.vmctx* %62, i32 %63)
  %65 = call i32 @vm_rtc_settime(%struct.vmctx* %61, i32 %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp eq i32 %66, 0
  %68 = zext i1 %67 to i32
  %69 = call i32 @assert(i32 %68)
  ret void
}

declare dso_local i64 @vm_get_lowmem_size(%struct.vmctx*) #1

declare dso_local i32 @vm_rtc_write(%struct.vmctx*, i32, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @vm_get_highmem_size(%struct.vmctx*) #1

declare dso_local i32 @vm_rtc_settime(%struct.vmctx*, i32) #1

declare dso_local i32 @rtc_time(%struct.vmctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
