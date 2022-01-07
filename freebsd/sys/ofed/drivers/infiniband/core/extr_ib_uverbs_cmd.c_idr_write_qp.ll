; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_uverbs_cmd.c_idr_write_qp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_uverbs_cmd.c_idr_write_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.ib_ucontext = type { i32 }
%struct.ib_uobject = type { %struct.ib_qp* }

@ib_uverbs_qp_idr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ib_qp* (i32, %struct.ib_ucontext*)* @idr_write_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ib_qp* @idr_write_qp(i32 %0, %struct.ib_ucontext* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_ucontext*, align 8
  %5 = alloca %struct.ib_uobject*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.ib_ucontext* %1, %struct.ib_ucontext** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.ib_ucontext*, %struct.ib_ucontext** %4, align 8
  %8 = call %struct.ib_uobject* @idr_write_uobj(i32* @ib_uverbs_qp_idr, i32 %6, %struct.ib_ucontext* %7)
  store %struct.ib_uobject* %8, %struct.ib_uobject** %5, align 8
  %9 = load %struct.ib_uobject*, %struct.ib_uobject** %5, align 8
  %10 = icmp ne %struct.ib_uobject* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.ib_uobject*, %struct.ib_uobject** %5, align 8
  %13 = getelementptr inbounds %struct.ib_uobject, %struct.ib_uobject* %12, i32 0, i32 0
  %14 = load %struct.ib_qp*, %struct.ib_qp** %13, align 8
  br label %16

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %15, %11
  %17 = phi %struct.ib_qp* [ %14, %11 ], [ null, %15 ]
  ret %struct.ib_qp* %17
}

declare dso_local %struct.ib_uobject* @idr_write_uobj(i32*, i32, %struct.ib_ucontext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
