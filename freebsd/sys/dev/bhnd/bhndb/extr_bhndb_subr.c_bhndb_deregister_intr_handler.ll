; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_subr.c_bhndb_deregister_intr_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_subr.c_bhndb_deregister_intr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhndb_resources = type { i32 }
%struct.bhndb_intr_handler = type { i32, i32 }

@.str = private unnamed_addr constant [49 x i8] c"duplicate deregistration of interrupt handler %p\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"unknown interrupt handler %p\00", align 1
@bhndb_intr_handler = common dso_local global i32 0, align 4
@ih_link = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bhndb_deregister_intr_handler(%struct.bhndb_resources* %0, %struct.bhndb_intr_handler* %1) #0 {
  %3 = alloca %struct.bhndb_resources*, align 8
  %4 = alloca %struct.bhndb_intr_handler*, align 8
  store %struct.bhndb_resources* %0, %struct.bhndb_resources** %3, align 8
  store %struct.bhndb_intr_handler* %1, %struct.bhndb_intr_handler** %4, align 8
  %5 = load %struct.bhndb_intr_handler*, %struct.bhndb_intr_handler** %4, align 8
  %6 = getelementptr inbounds %struct.bhndb_intr_handler, %struct.bhndb_intr_handler* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.bhndb_intr_handler*, %struct.bhndb_intr_handler** %4, align 8
  %9 = getelementptr inbounds %struct.bhndb_intr_handler, %struct.bhndb_intr_handler* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = sext i32 %10 to i64
  %12 = inttoptr i64 %11 to i8*
  %13 = call i32 @KASSERT(i32 %7, i8* %12)
  %14 = load %struct.bhndb_resources*, %struct.bhndb_resources** %3, align 8
  %15 = load %struct.bhndb_intr_handler*, %struct.bhndb_intr_handler** %4, align 8
  %16 = call %struct.bhndb_intr_handler* @bhndb_find_intr_handler(%struct.bhndb_resources* %14, %struct.bhndb_intr_handler* %15)
  %17 = load %struct.bhndb_intr_handler*, %struct.bhndb_intr_handler** %4, align 8
  %18 = icmp eq %struct.bhndb_intr_handler* %16, %17
  %19 = zext i1 %18 to i32
  %20 = load %struct.bhndb_intr_handler*, %struct.bhndb_intr_handler** %4, align 8
  %21 = bitcast %struct.bhndb_intr_handler* %20 to i8*
  %22 = call i32 @KASSERT(i32 %19, i8* %21)
  %23 = load %struct.bhndb_resources*, %struct.bhndb_resources** %3, align 8
  %24 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %23, i32 0, i32 0
  %25 = load %struct.bhndb_intr_handler*, %struct.bhndb_intr_handler** %4, align 8
  %26 = load i32, i32* @bhndb_intr_handler, align 4
  %27 = load i32, i32* @ih_link, align 4
  %28 = call i32 @STAILQ_REMOVE(i32* %24, %struct.bhndb_intr_handler* %25, i32 %26, i32 %27)
  %29 = load %struct.bhndb_intr_handler*, %struct.bhndb_intr_handler** %4, align 8
  %30 = getelementptr inbounds %struct.bhndb_intr_handler, %struct.bhndb_intr_handler* %29, i32 0, i32 0
  store i32 0, i32* %30, align 4
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.bhndb_intr_handler* @bhndb_find_intr_handler(%struct.bhndb_resources*, %struct.bhndb_intr_handler*) #1

declare dso_local i32 @STAILQ_REMOVE(i32*, %struct.bhndb_intr_handler*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
