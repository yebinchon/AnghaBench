; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_algo.c_ta_prepare_add_ifidx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_algo.c_ta_prepare_add_ifidx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.tentry_info = type { i64 }
%struct.ta_buf_ifidx = type { %struct.ifentry* }
%struct.ifentry = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.ifentry*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@IF_NAMESIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@M_IPFW_TBL = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@if_notifier = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_fw_chain*, %struct.tentry_info*, i8*)* @ta_prepare_add_ifidx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ta_prepare_add_ifidx(%struct.ip_fw_chain* %0, %struct.tentry_info* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_fw_chain*, align 8
  %6 = alloca %struct.tentry_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ta_buf_ifidx*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ifentry*, align 8
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %5, align 8
  store %struct.tentry_info* %1, %struct.tentry_info** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.ta_buf_ifidx*
  store %struct.ta_buf_ifidx* %12, %struct.ta_buf_ifidx** %8, align 8
  %13 = load %struct.tentry_info*, %struct.tentry_info** %6, align 8
  %14 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i8*
  store i8* %16, i8** %9, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = load i64, i64* @IF_NAMESIZE, align 8
  %19 = call i64 @strnlen(i8* %17, i64 %18)
  %20 = load i64, i64* @IF_NAMESIZE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* %4, align 4
  br label %62

24:                                               ; preds = %3
  %25 = load i32, i32* @M_IPFW_TBL, align 4
  %26 = load i32, i32* @M_WAITOK, align 4
  %27 = load i32, i32* @M_ZERO, align 4
  %28 = or i32 %26, %27
  %29 = call %struct.ifentry* @malloc(i32 32, i32 %25, i32 %28)
  store %struct.ifentry* %29, %struct.ifentry** %10, align 8
  %30 = load i32, i32* @if_notifier, align 4
  %31 = load %struct.ifentry*, %struct.ifentry** %10, align 8
  %32 = getelementptr inbounds %struct.ifentry, %struct.ifentry* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 2
  store i32 %30, i32* %33, align 8
  %34 = load %struct.ifentry*, %struct.ifentry** %10, align 8
  %35 = load %struct.ifentry*, %struct.ifentry** %10, align 8
  %36 = getelementptr inbounds %struct.ifentry, %struct.ifentry* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  store %struct.ifentry* %34, %struct.ifentry** %37, align 8
  %38 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = load %struct.ifentry*, %struct.ifentry** %10, align 8
  %41 = getelementptr inbounds %struct.ifentry, %struct.ifentry* %40, i32 0, i32 0
  %42 = call i64 @ipfw_iface_ref(%struct.ip_fw_chain* %38, i8* %39, %struct.TYPE_6__* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %24
  %45 = load %struct.ifentry*, %struct.ifentry** %10, align 8
  %46 = load i32, i32* @M_IPFW_TBL, align 4
  %47 = call i32 @free(%struct.ifentry* %45, i32 %46)
  %48 = load i32, i32* @EINVAL, align 4
  store i32 %48, i32* %4, align 4
  br label %62

49:                                               ; preds = %24
  %50 = load %struct.ifentry*, %struct.ifentry** %10, align 8
  %51 = getelementptr inbounds %struct.ifentry, %struct.ifentry* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ifentry*, %struct.ifentry** %10, align 8
  %57 = getelementptr inbounds %struct.ifentry, %struct.ifentry* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 8
  %59 = load %struct.ifentry*, %struct.ifentry** %10, align 8
  %60 = load %struct.ta_buf_ifidx*, %struct.ta_buf_ifidx** %8, align 8
  %61 = getelementptr inbounds %struct.ta_buf_ifidx, %struct.ta_buf_ifidx* %60, i32 0, i32 0
  store %struct.ifentry* %59, %struct.ifentry** %61, align 8
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %49, %44, %22
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i64 @strnlen(i8*, i64) #1

declare dso_local %struct.ifentry* @malloc(i32, i32, i32) #1

declare dso_local i64 @ipfw_iface_ref(%struct.ip_fw_chain*, i8*, %struct.TYPE_6__*) #1

declare dso_local i32 @free(%struct.ifentry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
