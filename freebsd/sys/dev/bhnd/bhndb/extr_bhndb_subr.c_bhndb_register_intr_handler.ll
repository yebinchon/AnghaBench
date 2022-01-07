; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_subr.c_bhndb_register_intr_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_subr.c_bhndb_register_intr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhndb_resources = type { i32 }
%struct.bhndb_intr_handler = type { i32, i32* }

@.str = private unnamed_addr constant [47 x i8] c"duplicate registration of interrupt handler %p\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"missing cookiep\00", align 1
@ih_link = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bhndb_register_intr_handler(%struct.bhndb_resources* %0, %struct.bhndb_intr_handler* %1) #0 {
  %3 = alloca %struct.bhndb_resources*, align 8
  %4 = alloca %struct.bhndb_intr_handler*, align 8
  store %struct.bhndb_resources* %0, %struct.bhndb_resources** %3, align 8
  store %struct.bhndb_intr_handler* %1, %struct.bhndb_intr_handler** %4, align 8
  %5 = load %struct.bhndb_intr_handler*, %struct.bhndb_intr_handler** %4, align 8
  %6 = getelementptr inbounds %struct.bhndb_intr_handler, %struct.bhndb_intr_handler* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = load %struct.bhndb_intr_handler*, %struct.bhndb_intr_handler** %4, align 8
  %12 = getelementptr inbounds %struct.bhndb_intr_handler, %struct.bhndb_intr_handler* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = bitcast i32* %13 to i8*
  %15 = call i32 @KASSERT(i32 %10, i8* %14)
  %16 = load %struct.bhndb_intr_handler*, %struct.bhndb_intr_handler** %4, align 8
  %17 = getelementptr inbounds %struct.bhndb_intr_handler, %struct.bhndb_intr_handler* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @KASSERT(i32 %20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %22 = load %struct.bhndb_intr_handler*, %struct.bhndb_intr_handler** %4, align 8
  %23 = getelementptr inbounds %struct.bhndb_intr_handler, %struct.bhndb_intr_handler* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load %struct.bhndb_resources*, %struct.bhndb_resources** %3, align 8
  %25 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %24, i32 0, i32 0
  %26 = load %struct.bhndb_intr_handler*, %struct.bhndb_intr_handler** %4, align 8
  %27 = load i32, i32* @ih_link, align 4
  %28 = call i32 @STAILQ_INSERT_HEAD(i32* %25, %struct.bhndb_intr_handler* %26, i32 %27)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @STAILQ_INSERT_HEAD(i32*, %struct.bhndb_intr_handler*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
