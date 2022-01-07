; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_msi.c_msi_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_msi.c_msi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cpu_vendor_id = common dso_local global i32 0, align 4
@cpu_id = common dso_local global i32 0, align 4
@num_msi_irqs = common dso_local global i64 0, align 8
@num_io_irqs = common dso_local global i64 0, align 8
@first_msi_irq = common dso_local global i64 0, align 8
@UINT_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"num_msi_irqs too high\00", align 1
@msi_enabled = common dso_local global i32 0, align 4
@msi_pic = common dso_local global i32 0, align 4
@msi_lock = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"msi\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@msix_disable_migration = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @msi_init() #0 {
  %1 = load i32, i32* @cpu_vendor_id, align 4
  switch i32 %1, label %13 [
    i32 128, label %2
    i32 130, label %2
    i32 129, label %3
  ]

2:                                                ; preds = %0, %0
  br label %14

3:                                                ; preds = %0
  %4 = load i32, i32* @cpu_id, align 4
  %5 = call i32 @CPUID_TO_FAMILY(i32 %4)
  %6 = icmp eq i32 %5, 6
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = load i32, i32* @cpu_id, align 4
  %9 = call i32 @CPUID_TO_MODEL(i32 %8)
  %10 = icmp sge i32 %9, 15
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  br label %14

12:                                               ; preds = %7, %3
  br label %13

13:                                               ; preds = %0, %12
  br label %34

14:                                               ; preds = %11, %2
  %15 = load i64, i64* @num_msi_irqs, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  br label %34

18:                                               ; preds = %14
  %19 = load i64, i64* @num_io_irqs, align 8
  store i64 %19, i64* @first_msi_irq, align 8
  %20 = load i64, i64* @num_msi_irqs, align 8
  %21 = load i64, i64* @UINT_MAX, align 8
  %22 = load i64, i64* @first_msi_irq, align 8
  %23 = sub nsw i64 %21, %22
  %24 = icmp sgt i64 %20, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = call i32 @panic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %18
  %28 = load i64, i64* @first_msi_irq, align 8
  %29 = load i64, i64* @num_msi_irqs, align 8
  %30 = add nsw i64 %28, %29
  store i64 %30, i64* @num_io_irqs, align 8
  store i32 1, i32* @msi_enabled, align 4
  %31 = call i32 @intr_register_pic(i32* @msi_pic)
  %32 = load i32, i32* @MTX_DEF, align 4
  %33 = call i32 @mtx_init(i32* @msi_lock, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %32)
  br label %34

34:                                               ; preds = %27, %17, %13
  ret void
}

declare dso_local i32 @CPUID_TO_FAMILY(i32) #1

declare dso_local i32 @CPUID_TO_MODEL(i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @intr_register_pic(i32*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
