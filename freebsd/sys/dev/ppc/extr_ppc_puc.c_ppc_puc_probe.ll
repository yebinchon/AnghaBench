; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ppc/extr_ppc_puc.c_ppc_puc_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ppc/extr_ppc_puc.c_ppc_puc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PUC_IVAR_TYPE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@PUC_TYPE_PARALLEL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"Parallel port\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ppc_puc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppc_puc_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @device_get_parent(i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @PUC_IVAR_TYPE, align 4
  %11 = call i64 @BUS_READ_IVAR(i32 %8, i32 %9, i32 %10, i64* %5)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @ENXIO, align 4
  store i32 %14, i32* %2, align 4
  br label %26

15:                                               ; preds = %1
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @PUC_TYPE_PARALLEL, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @ENXIO, align 4
  store i32 %20, i32* %2, align 4
  br label %26

21:                                               ; preds = %15
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @device_set_desc(i32 %22, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @ppc_probe(i32 %24, i32 0)
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %21, %19, %13
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i64 @BUS_READ_IVAR(i32, i32, i32, i64*) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

declare dso_local i32 @ppc_probe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
