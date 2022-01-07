; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_algo.c_ta_destroy_numarray.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_algo.c_ta_destroy_numarray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table_info = type { i32 }
%struct.numarray_cfg = type { %struct.numarray_cfg* }

@M_IPFW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.table_info*)* @ta_destroy_numarray to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ta_destroy_numarray(i8* %0, %struct.table_info* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.table_info*, align 8
  %5 = alloca %struct.numarray_cfg*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.table_info* %1, %struct.table_info** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.numarray_cfg*
  store %struct.numarray_cfg* %7, %struct.numarray_cfg** %5, align 8
  %8 = load %struct.numarray_cfg*, %struct.numarray_cfg** %5, align 8
  %9 = getelementptr inbounds %struct.numarray_cfg, %struct.numarray_cfg* %8, i32 0, i32 0
  %10 = load %struct.numarray_cfg*, %struct.numarray_cfg** %9, align 8
  %11 = icmp ne %struct.numarray_cfg* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.numarray_cfg*, %struct.numarray_cfg** %5, align 8
  %14 = getelementptr inbounds %struct.numarray_cfg, %struct.numarray_cfg* %13, i32 0, i32 0
  %15 = load %struct.numarray_cfg*, %struct.numarray_cfg** %14, align 8
  %16 = load i32, i32* @M_IPFW, align 4
  %17 = call i32 @free(%struct.numarray_cfg* %15, i32 %16)
  br label %18

18:                                               ; preds = %12, %2
  %19 = load %struct.numarray_cfg*, %struct.numarray_cfg** %5, align 8
  %20 = load i32, i32* @M_IPFW, align 4
  %21 = call i32 @free(%struct.numarray_cfg* %19, i32 %20)
  ret void
}

declare dso_local i32 @free(%struct.numarray_cfg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
