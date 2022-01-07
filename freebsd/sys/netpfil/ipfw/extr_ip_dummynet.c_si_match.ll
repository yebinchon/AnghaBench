; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dummynet.c_si_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dummynet.c_si_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dn_sch_inst = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ipfw_flow_id }
%struct.ipfw_flow_id = type { i32 }

@DNHT_KEY_IS_OBJ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32, i8*)* @si_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_match(i8* %0, i64 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.dn_sch_inst*, align 8
  %10 = alloca %struct.ipfw_flow_id*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.dn_sch_inst*
  store %struct.dn_sch_inst* %12, %struct.dn_sch_inst** %9, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @DNHT_KEY_IS_OBJ, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %4
  %18 = load i64, i64* %6, align 8
  %19 = inttoptr i64 %18 to %struct.dn_sch_inst*
  %20 = getelementptr inbounds %struct.dn_sch_inst, %struct.dn_sch_inst* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  br label %25

22:                                               ; preds = %4
  %23 = load i64, i64* %6, align 8
  %24 = inttoptr i64 %23 to %struct.ipfw_flow_id*
  br label %25

25:                                               ; preds = %22, %17
  %26 = phi %struct.ipfw_flow_id* [ %21, %17 ], [ %24, %22 ]
  store %struct.ipfw_flow_id* %26, %struct.ipfw_flow_id** %10, align 8
  %27 = load %struct.dn_sch_inst*, %struct.dn_sch_inst** %9, align 8
  %28 = getelementptr inbounds %struct.dn_sch_inst, %struct.dn_sch_inst* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %10, align 8
  %31 = call i64 @flow_id_cmp(%struct.ipfw_flow_id* %29, %struct.ipfw_flow_id* %30)
  %32 = icmp eq i64 %31, 0
  %33 = zext i1 %32 to i32
  ret i32 %33
}

declare dso_local i64 @flow_id_cmp(%struct.ipfw_flow_id*, %struct.ipfw_flow_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
