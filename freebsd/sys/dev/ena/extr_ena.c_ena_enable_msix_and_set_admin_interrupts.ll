; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_enable_msix_and_set_admin_interrupts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_enable_msix_and_set_admin_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_adapter = type { i32, %struct.ena_com_dev* }
%struct.ena_com_dev = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Error with MSI-X enablement\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Cannot setup mgmnt queue intr\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ena_adapter*, i32)* @ena_enable_msix_and_set_admin_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_enable_msix_and_set_admin_interrupts(%struct.ena_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ena_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ena_com_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.ena_adapter* %0, %struct.ena_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %9 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %8, i32 0, i32 1
  %10 = load %struct.ena_com_dev*, %struct.ena_com_dev** %9, align 8
  store %struct.ena_com_dev* %10, %struct.ena_com_dev** %6, align 8
  %11 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %12 = call i32 @ena_enable_msix(%struct.ena_adapter* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %20 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @device_printf(i32 %21, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %3, align 4
  br label %48

24:                                               ; preds = %2
  %25 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %26 = call i32 @ena_setup_mgmnt_intr(%struct.ena_adapter* %25)
  %27 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %28 = call i32 @ena_request_mgmnt_irq(%struct.ena_adapter* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %24
  %35 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %36 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @device_printf(i32 %37, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %44

39:                                               ; preds = %24
  %40 = load %struct.ena_com_dev*, %struct.ena_com_dev** %6, align 8
  %41 = call i32 @ena_com_set_admin_polling_mode(%struct.ena_com_dev* %40, i32 0)
  %42 = load %struct.ena_com_dev*, %struct.ena_com_dev** %6, align 8
  %43 = call i32 @ena_com_admin_aenq_enable(%struct.ena_com_dev* %42)
  store i32 0, i32* %3, align 4
  br label %48

44:                                               ; preds = %34
  %45 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %46 = call i32 @ena_disable_msix(%struct.ena_adapter* %45)
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %44, %39, %18
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @ena_enable_msix(%struct.ena_adapter*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @ena_setup_mgmnt_intr(%struct.ena_adapter*) #1

declare dso_local i32 @ena_request_mgmnt_irq(%struct.ena_adapter*) #1

declare dso_local i32 @ena_com_set_admin_polling_mode(%struct.ena_com_dev*, i32) #1

declare dso_local i32 @ena_com_admin_aenq_enable(%struct.ena_com_dev*) #1

declare dso_local i32 @ena_disable_msix(%struct.ena_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
