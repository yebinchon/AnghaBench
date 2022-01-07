; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/xen/extr_xen_intr.c_xen_intr_isrc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/xen/extr_xen_intr.c_xen_intr_isrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenisrc = type { i32 }

@first_evtchn_irq = common dso_local global i32 0, align 4
@xen_intr_auto_vector_count = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Xen interrupt vector is out of range\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xenisrc* (i32*)* @xen_intr_isrc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xenisrc* @xen_intr_isrc(i32* %0) #0 {
  %2 = alloca %struct.xenisrc*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store %struct.xenisrc* null, %struct.xenisrc** %2, align 8
  br label %27

8:                                                ; preds = %1
  %9 = load i32*, i32** %3, align 8
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @first_evtchn_irq, align 4
  %13 = icmp sge i32 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %8
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @first_evtchn_irq, align 4
  %17 = load i32, i32* @xen_intr_auto_vector_count, align 4
  %18 = add nsw i32 %16, %17
  %19 = icmp slt i32 %15, %18
  br label %20

20:                                               ; preds = %14, %8
  %21 = phi i1 [ false, %8 ], [ %19, %14 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @KASSERT(i32 %22, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* %4, align 4
  %25 = call i64 @intr_lookup_source(i32 %24)
  %26 = inttoptr i64 %25 to %struct.xenisrc*
  store %struct.xenisrc* %26, %struct.xenisrc** %2, align 8
  br label %27

27:                                               ; preds = %20, %7
  %28 = load %struct.xenisrc*, %struct.xenisrc** %2, align 8
  ret %struct.xenisrc* %28
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @intr_lookup_source(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
