; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_uverbs_cmd.c_idr_read_obj.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_uverbs_cmd.c_idr_read_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idr = type { i32 }
%struct.ib_ucontext = type { i32 }
%struct.ib_uobject = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.idr*, i32, %struct.ib_ucontext*, i32)* @idr_read_obj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @idr_read_obj(%struct.idr* %0, i32 %1, %struct.ib_ucontext* %2, i32 %3) #0 {
  %5 = alloca %struct.idr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_ucontext*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_uobject*, align 8
  store %struct.idr* %0, %struct.idr** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ib_ucontext* %2, %struct.ib_ucontext** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.idr*, %struct.idr** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.ib_ucontext*, %struct.ib_ucontext** %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call %struct.ib_uobject* @idr_read_uobj(%struct.idr* %10, i32 %11, %struct.ib_ucontext* %12, i32 %13)
  store %struct.ib_uobject* %14, %struct.ib_uobject** %9, align 8
  %15 = load %struct.ib_uobject*, %struct.ib_uobject** %9, align 8
  %16 = icmp ne %struct.ib_uobject* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = load %struct.ib_uobject*, %struct.ib_uobject** %9, align 8
  %19 = getelementptr inbounds %struct.ib_uobject, %struct.ib_uobject* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  br label %22

21:                                               ; preds = %4
  br label %22

22:                                               ; preds = %21, %17
  %23 = phi i8* [ %20, %17 ], [ null, %21 ]
  ret i8* %23
}

declare dso_local %struct.ib_uobject* @idr_read_uobj(%struct.idr*, i32, %struct.ib_ucontext*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
