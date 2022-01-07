; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_l2tp.c_ng_l2tp_seq_adjust.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_l2tp.c_ng_l2tp_seq_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.l2tp_seq }
%struct.l2tp_seq = type { i64 }
%struct.ng_l2tp_config = type { i64, i32 }

@L2TP_MAX_XWIN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, %struct.ng_l2tp_config*)* @ng_l2tp_seq_adjust to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_l2tp_seq_adjust(%struct.TYPE_4__* %0, %struct.ng_l2tp_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.ng_l2tp_config*, align 8
  %6 = alloca %struct.l2tp_seq*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store %struct.ng_l2tp_config* %1, %struct.ng_l2tp_config** %5, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store %struct.l2tp_seq* %9, %struct.l2tp_seq** %6, align 8
  %10 = load %struct.ng_l2tp_config*, %struct.ng_l2tp_config** %5, align 8
  %11 = getelementptr inbounds %struct.ng_l2tp_config, %struct.ng_l2tp_config* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %16 = call i32 @ng_l2tp_seq_reset(%struct.TYPE_4__* %15)
  store i32 0, i32* %3, align 4
  br label %43

17:                                               ; preds = %2
  %18 = load %struct.ng_l2tp_config*, %struct.ng_l2tp_config** %5, align 8
  %19 = getelementptr inbounds %struct.ng_l2tp_config, %struct.ng_l2tp_config* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* @L2TP_MAX_XWIN, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i64, i64* @L2TP_MAX_XWIN, align 8
  store i64 %25, i64* %7, align 8
  br label %26

26:                                               ; preds = %24, %17
  %27 = load i64, i64* %7, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* @EINVAL, align 4
  store i32 %30, i32* %3, align 4
  br label %43

31:                                               ; preds = %26
  %32 = load i64, i64* %7, align 8
  %33 = load %struct.l2tp_seq*, %struct.l2tp_seq** %6, align 8
  %34 = getelementptr inbounds %struct.l2tp_seq, %struct.l2tp_seq* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp slt i64 %32, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @EBUSY, align 4
  store i32 %38, i32* %3, align 4
  br label %43

39:                                               ; preds = %31
  %40 = load i64, i64* %7, align 8
  %41 = load %struct.l2tp_seq*, %struct.l2tp_seq** %6, align 8
  %42 = getelementptr inbounds %struct.l2tp_seq, %struct.l2tp_seq* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %39, %37, %29, %14
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @ng_l2tp_seq_reset(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
