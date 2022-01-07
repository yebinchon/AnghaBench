; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/xen/extr_xen_msi.c_xen_msi_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/xen/extr_xen_msi.c_xen_msi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@num_io_irqs = common dso_local global i64 0, align 8
@first_msi_irq = common dso_local global i64 0, align 8
@num_msi_irqs = common dso_local global i64 0, align 8
@UINT_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"num_msi_irqs too high\00", align 1
@msi_lock = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"msi\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xen_msi_init() #0 {
  %1 = load i64, i64* @num_io_irqs, align 8
  %2 = icmp sgt i64 %1, 0
  %3 = zext i1 %2 to i32
  %4 = call i32 @MPASS(i32 %3)
  %5 = load i64, i64* @num_io_irqs, align 8
  store i64 %5, i64* @first_msi_irq, align 8
  %6 = load i64, i64* @num_msi_irqs, align 8
  %7 = load i64, i64* @UINT_MAX, align 8
  %8 = load i64, i64* @first_msi_irq, align 8
  %9 = sub nsw i64 %7, %8
  %10 = icmp sgt i64 %6, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %0
  %12 = call i32 @panic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %0
  %14 = load i64, i64* @first_msi_irq, align 8
  %15 = load i64, i64* @num_msi_irqs, align 8
  %16 = add nsw i64 %14, %15
  store i64 %16, i64* @num_io_irqs, align 8
  %17 = load i32, i32* @MTX_DEF, align 4
  %18 = call i32 @mtx_init(i32* @msi_lock, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %17)
  ret void
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
