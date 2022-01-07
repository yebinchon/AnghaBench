; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_algo.c_ta_find_numarray_tentry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_algo.c_ta_find_numarray_tentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table_info = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.numarray_cfg = type { i32 }
%struct.numarray = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.table_info*, %struct.TYPE_6__*)* @ta_find_numarray_tentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ta_find_numarray_tentry(i8* %0, %struct.table_info* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.table_info*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.numarray_cfg*, align 8
  %9 = alloca %struct.numarray*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.table_info* %1, %struct.table_info** %6, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.numarray_cfg*
  store %struct.numarray_cfg* %11, %struct.numarray_cfg** %8, align 8
  %12 = load %struct.table_info*, %struct.table_info** %6, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = call %struct.numarray* @numarray_find(%struct.table_info* %12, i32* %15)
  store %struct.numarray* %16, %struct.numarray** %9, align 8
  %17 = load %struct.numarray*, %struct.numarray** %9, align 8
  %18 = icmp ne %struct.numarray* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load i8*, i8** %5, align 8
  %21 = load %struct.table_info*, %struct.table_info** %6, align 8
  %22 = load %struct.numarray*, %struct.numarray** %9, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %24 = call i32 @ta_dump_numarray_tentry(i8* %20, %struct.table_info* %21, %struct.numarray* %22, %struct.TYPE_6__* %23)
  store i32 0, i32* %4, align 4
  br label %27

25:                                               ; preds = %3
  %26 = load i32, i32* @ENOENT, align 4
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %25, %19
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local %struct.numarray* @numarray_find(%struct.table_info*, i32*) #1

declare dso_local i32 @ta_dump_numarray_tentry(i8*, %struct.table_info*, %struct.numarray*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
