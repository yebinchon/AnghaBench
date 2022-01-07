; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_fw_ready.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_fw_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@SLI4_IF_TYPE_BE3_SKH_PF = common dso_local global i64 0, align 8
@SLI4_IF_TYPE_BE3_SKH_VF = common dso_local global i64 0, align 8
@SLI4_REG_SLIPORT_SEMAPHORE = common dso_local global i32 0, align 4
@SLI4_PORT_SEMAPHORE_STATUS_POST_READY = common dso_local global i64 0, align 8
@SLI4_IF_TYPE_LANCER_FC_ETH = common dso_local global i64 0, align 8
@SLI4_REG_SLIPORT_STATUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sli_fw_ready(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  store i32 -1, i32* %4, align 4
  %5 = load i64, i64* @SLI4_IF_TYPE_BE3_SKH_PF, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %5, %8
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load i64, i64* @SLI4_IF_TYPE_BE3_SKH_VF, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %11, %14
  br i1 %15, label %16, label %33

16:                                               ; preds = %10, %1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %18 = load i32, i32* @SLI4_REG_SLIPORT_SEMAPHORE, align 4
  %19 = call i32 @sli_reg_read(%struct.TYPE_4__* %17, i32 %18)
  store i32 %19, i32* %3, align 4
  %20 = load i64, i64* @SLI4_PORT_SEMAPHORE_STATUS_POST_READY, align 8
  %21 = load i32, i32* %3, align 4
  %22 = call i64 @SLI4_PORT_SEMAPHORE_PORT(i32 %21)
  %23 = icmp eq i64 %20, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %16
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @SLI4_PORT_SEMAPHORE_IN_ERR(i32 %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  br label %29

29:                                               ; preds = %24, %16
  %30 = phi i1 [ false, %16 ], [ %28, %24 ]
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 1, i32 0
  store i32 %32, i32* %4, align 4
  br label %49

33:                                               ; preds = %10
  %34 = load i64, i64* @SLI4_IF_TYPE_LANCER_FC_ETH, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %34, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %33
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %41 = load i32, i32* @SLI4_REG_SLIPORT_STATUS, align 4
  %42 = call i32 @sli_reg_read(%struct.TYPE_4__* %40, i32 %41)
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* %3, align 4
  %44 = call i64 @SLI4_PORT_STATUS_READY(i32 %43)
  %45 = icmp ne i64 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 1, i32 0
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %39, %33
  br label %49

49:                                               ; preds = %48, %29
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @sli_reg_read(%struct.TYPE_4__*, i32) #1

declare dso_local i64 @SLI4_PORT_SEMAPHORE_PORT(i32) #1

declare dso_local i32 @SLI4_PORT_SEMAPHORE_IN_ERR(i32) #1

declare dso_local i64 @SLI4_PORT_STATUS_READY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
