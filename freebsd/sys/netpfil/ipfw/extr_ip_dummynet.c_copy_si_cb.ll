; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dummynet.c_copy_si_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dummynet.c_copy_si_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dn_sch_inst = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.copy_args = type { i32, i64* }
%struct.dn_flow = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"inst\00", align 1
@DNHT_SCAN_END = common dso_local global i32 0, align 4
@DN_FLOW = common dso_local global i32 0, align 4
@DNHT_KEY_IS_OBJ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @copy_si_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_si_cb(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dn_sch_inst*, align 8
  %7 = alloca %struct.copy_args*, align 8
  %8 = alloca %struct.dn_flow*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.dn_sch_inst*
  store %struct.dn_sch_inst* %10, %struct.dn_sch_inst** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.copy_args*
  store %struct.copy_args* %12, %struct.copy_args** %7, align 8
  %13 = load %struct.copy_args*, %struct.copy_args** %7, align 8
  %14 = getelementptr inbounds %struct.copy_args, %struct.copy_args* %13, i32 0, i32 1
  %15 = load i64*, i64** %14, align 8
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.dn_flow*
  store %struct.dn_flow* %17, %struct.dn_flow** %8, align 8
  %18 = load %struct.copy_args*, %struct.copy_args** %7, align 8
  %19 = getelementptr inbounds %struct.copy_args, %struct.copy_args* %18, i32 0, i32 1
  %20 = load i64*, i64** %19, align 8
  %21 = load %struct.copy_args*, %struct.copy_args** %7, align 8
  %22 = getelementptr inbounds %struct.copy_args, %struct.copy_args* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.dn_sch_inst*, %struct.dn_sch_inst** %6, align 8
  %25 = getelementptr inbounds %struct.dn_sch_inst, %struct.dn_sch_inst* %24, i32 0, i32 1
  %26 = load %struct.dn_sch_inst*, %struct.dn_sch_inst** %6, align 8
  %27 = getelementptr inbounds %struct.dn_sch_inst, %struct.dn_sch_inst* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @copy_obj(i64* %20, i32 %23, i32* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %2
  %35 = load i32, i32* @DNHT_SCAN_END, align 4
  store i32 %35, i32* %3, align 4
  br label %48

36:                                               ; preds = %2
  %37 = load i32, i32* @DN_FLOW, align 4
  %38 = load %struct.dn_flow*, %struct.dn_flow** %8, align 8
  %39 = getelementptr inbounds %struct.dn_flow, %struct.dn_flow* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 4
  %41 = load %struct.dn_sch_inst*, %struct.dn_sch_inst** %6, align 8
  %42 = ptrtoint %struct.dn_sch_inst* %41 to i64
  %43 = load i32, i32* @DNHT_KEY_IS_OBJ, align 4
  %44 = call i32 @si_hash(i64 %42, i32 %43, i32* null)
  %45 = load %struct.dn_flow*, %struct.dn_flow** %8, align 8
  %46 = getelementptr inbounds %struct.dn_flow, %struct.dn_flow* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 4
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %36, %34
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i64 @copy_obj(i64*, i32, i32*, i8*, i32) #1

declare dso_local i32 @si_hash(i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
