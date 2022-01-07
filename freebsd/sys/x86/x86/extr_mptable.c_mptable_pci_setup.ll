; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mptable.c_mptable_pci_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mptable.c_mptable_pci_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@mptable_maxbusid = common dso_local global i32 0, align 4
@busses = common dso_local global %struct.TYPE_2__* null, align 8
@PCI = common dso_local global i64 0, align 8
@pci0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"MPTable contains multiple PCI buses but no PCI bus 0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mptable_pci_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mptable_pci_setup() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %28, %0
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* @mptable_maxbusid, align 4
  %5 = icmp sle i32 %3, %4
  br i1 %5, label %6, label %31

6:                                                ; preds = %2
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @busses, align 8
  %8 = load i32, i32* %1, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @PCI, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %6
  %16 = load i32, i32* @pci0, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load i32, i32* %1, align 4
  store i32 %19, i32* @pci0, align 4
  br label %26

20:                                               ; preds = %15
  %21 = load i32, i32* @pci0, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = call i32 @panic(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %20
  br label %26

26:                                               ; preds = %25, %18
  br label %27

27:                                               ; preds = %26, %6
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %1, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %1, align 4
  br label %2

31:                                               ; preds = %2
  ret void
}

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
