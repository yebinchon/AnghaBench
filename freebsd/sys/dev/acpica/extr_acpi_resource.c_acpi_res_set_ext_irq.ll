; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_resource.c_acpi_res_set_ext_irq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_resource.c_acpi_res_set_ext_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_res_context = type { i32 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i32*, i32, i32, i32)* @acpi_res_set_ext_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_res_set_ext_irq(i32 %0, i8* %1, i32* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.acpi_res_context*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i8*, i8** %8, align 8
  %16 = bitcast i8* %15 to %struct.acpi_res_context*
  store %struct.acpi_res_context* %16, %struct.acpi_res_context** %13, align 8
  %17 = load %struct.acpi_res_context*, %struct.acpi_res_context** %13, align 8
  %18 = icmp eq %struct.acpi_res_context* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %6
  %20 = load i32*, i32** %9, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %6
  br label %38

23:                                               ; preds = %19
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 1
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  br label %38

27:                                               ; preds = %23
  %28 = load i32*, i32** %9, align 8
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @SYS_RES_IRQ, align 4
  %32 = load %struct.acpi_res_context*, %struct.acpi_res_context** %13, align 8
  %33 = getelementptr inbounds %struct.acpi_res_context, %struct.acpi_res_context* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* %14, align 4
  %37 = call i32 @bus_set_resource(i32 %30, i32 %31, i32 %34, i32 %36, i32 1)
  br label %38

38:                                               ; preds = %27, %26, %22
  ret void
}

declare dso_local i32 @bus_set_resource(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
