; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/storvsc/extr_hv_storvsc_drv_freebsd.c_storvsc_xferbuf_prepare.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/storvsc/extr_hv_storvsc_drv_freebsd.c_storvsc_xferbuf_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64 }
%struct.hv_storvsc_request = type { i32, %struct.storvsc_gpa_range, %union.ccb* }
%struct.storvsc_gpa_range = type { i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%union.ccb = type { %struct.ccb_scsiio }
%struct.ccb_scsiio = type { i32 }

@PAGE_MASK = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_5__*, i32, i32)* @storvsc_xferbuf_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @storvsc_xferbuf_prepare(i8* %0, %struct.TYPE_5__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.hv_storvsc_request*, align 8
  %10 = alloca %union.ccb*, align 8
  %11 = alloca %struct.ccb_scsiio*, align 8
  %12 = alloca %struct.storvsc_gpa_range*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.hv_storvsc_request*
  store %struct.hv_storvsc_request* %15, %struct.hv_storvsc_request** %9, align 8
  %16 = load %struct.hv_storvsc_request*, %struct.hv_storvsc_request** %9, align 8
  %17 = getelementptr inbounds %struct.hv_storvsc_request, %struct.hv_storvsc_request* %16, i32 0, i32 2
  %18 = load %union.ccb*, %union.ccb** %17, align 8
  store %union.ccb* %18, %union.ccb** %10, align 8
  %19 = load %union.ccb*, %union.ccb** %10, align 8
  %20 = bitcast %union.ccb* %19 to %struct.ccb_scsiio*
  store %struct.ccb_scsiio* %20, %struct.ccb_scsiio** %11, align 8
  %21 = load %struct.hv_storvsc_request*, %struct.hv_storvsc_request** %9, align 8
  %22 = getelementptr inbounds %struct.hv_storvsc_request, %struct.hv_storvsc_request* %21, i32 0, i32 1
  store %struct.storvsc_gpa_range* %22, %struct.storvsc_gpa_range** %12, align 8
  %23 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %11, align 8
  %24 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.storvsc_gpa_range*, %struct.storvsc_gpa_range** %12, align 8
  %27 = getelementptr inbounds %struct.storvsc_gpa_range, %struct.storvsc_gpa_range* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  store i32 %25, i32* %28, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @PAGE_MASK, align 4
  %34 = and i32 %32, %33
  %35 = load %struct.storvsc_gpa_range*, %struct.storvsc_gpa_range** %12, align 8
  %36 = getelementptr inbounds %struct.storvsc_gpa_range, %struct.storvsc_gpa_range* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 8
  store i32 0, i32* %13, align 4
  br label %38

38:                                               ; preds = %56, %4
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %59

42:                                               ; preds = %38
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %44 = load i32, i32* %13, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @atop(i32 %48)
  %50 = load %struct.storvsc_gpa_range*, %struct.storvsc_gpa_range** %12, align 8
  %51 = getelementptr inbounds %struct.storvsc_gpa_range, %struct.storvsc_gpa_range* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %13, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %49, i32* %55, align 4
  br label %56

56:                                               ; preds = %42
  %57 = load i32, i32* %13, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %13, align 4
  br label %38

59:                                               ; preds = %38
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.hv_storvsc_request*, %struct.hv_storvsc_request** %9, align 8
  %62 = getelementptr inbounds %struct.hv_storvsc_request, %struct.hv_storvsc_request* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  ret void
}

declare dso_local i32 @atop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
