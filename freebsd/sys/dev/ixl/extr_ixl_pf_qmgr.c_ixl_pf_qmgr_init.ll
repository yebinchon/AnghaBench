; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_qmgr.c_ixl_pf_qmgr_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_qmgr.c_ixl_pf_qmgr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf_qmgr = type { i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@M_IXL = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixl_pf_qmgr_init(%struct.ixl_pf_qmgr* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ixl_pf_qmgr*, align 8
  %5 = alloca i32, align 4
  store %struct.ixl_pf_qmgr* %0, %struct.ixl_pf_qmgr** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp slt i32 %6, 1
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, i32* @EINVAL, align 4
  store i32 %9, i32* %3, align 4
  br label %32

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.ixl_pf_qmgr*, %struct.ixl_pf_qmgr** %4, align 8
  %13 = getelementptr inbounds %struct.ixl_pf_qmgr, %struct.ixl_pf_qmgr* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 4
  %17 = trunc i64 %16 to i32
  %18 = load i32, i32* @M_IXL, align 4
  %19 = load i32, i32* @M_ZERO, align 4
  %20 = load i32, i32* @M_NOWAIT, align 4
  %21 = or i32 %19, %20
  %22 = call i32* @malloc(i32 %17, i32 %18, i32 %21)
  %23 = load %struct.ixl_pf_qmgr*, %struct.ixl_pf_qmgr** %4, align 8
  %24 = getelementptr inbounds %struct.ixl_pf_qmgr, %struct.ixl_pf_qmgr* %23, i32 0, i32 1
  store i32* %22, i32** %24, align 8
  %25 = load %struct.ixl_pf_qmgr*, %struct.ixl_pf_qmgr** %4, align 8
  %26 = getelementptr inbounds %struct.ixl_pf_qmgr, %struct.ixl_pf_qmgr* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %10
  %30 = load i32, i32* @ENOMEM, align 4
  store i32 %30, i32* %3, align 4
  br label %32

31:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %29, %8
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32* @malloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
