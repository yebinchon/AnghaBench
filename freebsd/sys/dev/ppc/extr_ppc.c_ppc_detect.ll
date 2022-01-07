; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ppc/extr_ppc.c_ppc_detect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ppc/extr_ppc.c_ppc_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppc_data = type { i32, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@PPB_COMPATIBLE = common dso_local global i32 0, align 4
@PPB_ECP = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@ppc_pc873xx_detect = common dso_local global i32 0, align 4
@ppc_smc37c66xgt_detect = common dso_local global i32 0, align 4
@ppc_smc37c935_detect = common dso_local global i32 0, align 4
@ppc_w83877f_detect = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ppc_data*, i32)* @ppc_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppc_detect(%struct.ppc_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ppc_data*, align 8
  %5 = alloca i32, align 4
  store %struct.ppc_data* %0, %struct.ppc_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.ppc_data*, %struct.ppc_data** %4, align 8
  %7 = call i32 @ppc_detect_port(%struct.ppc_data* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = load i32, i32* @EIO, align 4
  store i32 %13, i32* %3, align 4
  br label %39

14:                                               ; preds = %9, %2
  %15 = load i32, i32* @PPB_COMPATIBLE, align 4
  %16 = load %struct.ppc_data*, %struct.ppc_data** %4, align 8
  %17 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.ppc_data*, %struct.ppc_data** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @ppc_generic_detect(%struct.ppc_data* %18, i32 %19)
  %21 = load %struct.ppc_data*, %struct.ppc_data** %4, align 8
  %22 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load %struct.ppc_data*, %struct.ppc_data** %4, align 8
  %24 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @PPB_ECP, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %14
  %30 = load %struct.ppc_data*, %struct.ppc_data** %4, align 8
  %31 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 128
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = load %struct.ppc_data*, %struct.ppc_data** %4, align 8
  %37 = call i32 @ppc_detect_fifo(%struct.ppc_data* %36)
  br label %38

38:                                               ; preds = %35, %29, %14
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %12
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @ppc_detect_port(%struct.ppc_data*) #1

declare dso_local i32 @ppc_generic_detect(%struct.ppc_data*, i32) #1

declare dso_local i32 @ppc_detect_fifo(%struct.ppc_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
