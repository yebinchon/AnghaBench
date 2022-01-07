; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_bmbx_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_bmbx_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }

@OCS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@SLI4_REG_BMBX = common dso_local global i32 0, align 4
@SLI4_BMBX_DELAY_US = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"BMBX WRITE_HI failed\0A\00", align 1
@SLI4_BMBX_TIMEOUT_MSEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @sli_bmbx_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sli_bmbx_write(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load i32, i32* @OCS_DMASYNC_PREWRITE, align 4
  %8 = call i32 @ocs_dma_sync(%struct.TYPE_7__* %6, i32 %7)
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @SLI4_BMBX_WRITE_HI(i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %15 = load i32, i32* @SLI4_REG_BMBX, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @sli_reg_write(%struct.TYPE_6__* %14, i32 %15, i32 %16)
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = load i32, i32* @SLI4_BMBX_DELAY_US, align 4
  %20 = call i32 @sli_bmbx_wait(%struct.TYPE_6__* %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ocs_log_crit(i32 %25, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %40

27:                                               ; preds = %1
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @SLI4_BMBX_WRITE_LO(i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %34 = load i32, i32* @SLI4_REG_BMBX, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @sli_reg_write(%struct.TYPE_6__* %33, i32 %34, i32 %35)
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %38 = load i32, i32* @SLI4_BMBX_TIMEOUT_MSEC, align 4
  %39 = call i32 @sli_bmbx_wait(%struct.TYPE_6__* %37, i32 %38)
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %27, %22
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @ocs_dma_sync(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @SLI4_BMBX_WRITE_HI(i32) #1

declare dso_local i32 @sli_reg_write(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @sli_bmbx_wait(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @ocs_log_crit(i32, i8*) #1

declare dso_local i32 @SLI4_BMBX_WRITE_LO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
