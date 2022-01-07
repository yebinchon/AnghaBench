; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_kern.c_sysctl_kern_geom_confany.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_kern.c_sysctl_kern_geom_confany.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysctl_req = type { i64, i32* }
%struct.sbuf = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@SBUF_FIXEDLEN = common dso_local global i32 0, align 4
@SBUF_INCLUDENUL = common dso_local global i32 0, align 4
@sbuf_count_drain = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@SBUF_AUTOEXTEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sysctl_req*, i32*, i64*)* @sysctl_kern_geom_confany to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysctl_kern_geom_confany(%struct.sysctl_req* %0, i32* %1, i64* %2) #0 {
  %4 = alloca %struct.sysctl_req*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sbuf*, align 8
  store %struct.sysctl_req* %0, %struct.sysctl_req** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64* %2, i64** %6, align 8
  store i64 0, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.sysctl_req*, %struct.sysctl_req** %4, align 8
  %11 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %31

14:                                               ; preds = %3
  %15 = load i64, i64* @PAGE_SIZE, align 8
  %16 = load i32, i32* @SBUF_FIXEDLEN, align 4
  %17 = load i32, i32* @SBUF_INCLUDENUL, align 4
  %18 = or i32 %16, %17
  %19 = call %struct.sbuf* @sbuf_new(i32* null, i32* null, i64 %15, i32 %18)
  store %struct.sbuf* %19, %struct.sbuf** %9, align 8
  %20 = load %struct.sbuf*, %struct.sbuf** %9, align 8
  %21 = load i32, i32* @sbuf_count_drain, align 4
  %22 = call i32 @sbuf_set_drain(%struct.sbuf* %20, i32 %21, i64* %7)
  %23 = load i32*, i32** %5, align 8
  %24 = load %struct.sbuf*, %struct.sbuf** %9, align 8
  %25 = load i32, i32* @M_WAITOK, align 4
  %26 = call i32 @g_waitfor_event(i32* %23, %struct.sbuf* %24, i32 %25, i32* null)
  %27 = load i64, i64* %7, align 8
  %28 = load i64*, i64** %6, align 8
  store i64 %27, i64* %28, align 8
  %29 = load %struct.sysctl_req*, %struct.sysctl_req** %4, align 8
  %30 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %29, i32 0, i32 0
  store i64 %27, i64* %30, align 8
  br label %51

31:                                               ; preds = %3
  %32 = load i64*, i64** %6, align 8
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* @SBUF_AUTOEXTEND, align 4
  %35 = load i32, i32* @SBUF_INCLUDENUL, align 4
  %36 = or i32 %34, %35
  %37 = call %struct.sbuf* @sbuf_new(i32* null, i32* null, i64 %33, i32 %36)
  store %struct.sbuf* %37, %struct.sbuf** %9, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = load %struct.sbuf*, %struct.sbuf** %9, align 8
  %40 = load i32, i32* @M_WAITOK, align 4
  %41 = call i32 @g_waitfor_event(i32* %38, %struct.sbuf* %39, i32 %40, i32* null)
  %42 = load %struct.sbuf*, %struct.sbuf** %9, align 8
  %43 = call i64 @sbuf_len(%struct.sbuf* %42)
  %44 = load i64*, i64** %6, align 8
  store i64 %43, i64* %44, align 8
  %45 = load %struct.sysctl_req*, %struct.sysctl_req** %4, align 8
  %46 = load %struct.sbuf*, %struct.sbuf** %9, align 8
  %47 = call i32 @sbuf_data(%struct.sbuf* %46)
  %48 = load %struct.sbuf*, %struct.sbuf** %9, align 8
  %49 = call i64 @sbuf_len(%struct.sbuf* %48)
  %50 = call i32 @SYSCTL_OUT(%struct.sysctl_req* %45, i32 %47, i64 %49)
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %31, %14
  %52 = load %struct.sbuf*, %struct.sbuf** %9, align 8
  %53 = call i32 @sbuf_delete(%struct.sbuf* %52)
  %54 = load i32, i32* %8, align 4
  ret i32 %54
}

declare dso_local %struct.sbuf* @sbuf_new(i32*, i32*, i64, i32) #1

declare dso_local i32 @sbuf_set_drain(%struct.sbuf*, i32, i64*) #1

declare dso_local i32 @g_waitfor_event(i32*, %struct.sbuf*, i32, i32*) #1

declare dso_local i64 @sbuf_len(%struct.sbuf*) #1

declare dso_local i32 @SYSCTL_OUT(%struct.sysctl_req*, i32, i64) #1

declare dso_local i32 @sbuf_data(%struct.sbuf*) #1

declare dso_local i32 @sbuf_delete(%struct.sbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
