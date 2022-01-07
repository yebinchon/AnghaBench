; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/acpica/extr_acpi_apm.c_apmpoll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/acpica/extr_acpi_apm.c_apmpoll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.thread = type { i32 }
%struct.apm_clone_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@acpi = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, %struct.thread*)* @apmpoll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apmpoll(%struct.cdev* %0, i32 %1, %struct.thread* %2) #0 {
  %4 = alloca %struct.cdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.thread*, align 8
  %7 = alloca %struct.apm_clone_data*, align 8
  %8 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.thread* %2, %struct.thread** %6, align 8
  store i32 0, i32* %8, align 4
  %9 = bitcast %struct.apm_clone_data** %7 to i8**
  %10 = call i32 @devfs_get_cdevpriv(i8** %9)
  %11 = load i32, i32* @acpi, align 4
  %12 = call i32 @ACPI_LOCK(i32 %11)
  %13 = load %struct.apm_clone_data*, %struct.apm_clone_data** %7, align 8
  %14 = getelementptr inbounds %struct.apm_clone_data, %struct.apm_clone_data* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %3
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @POLLIN, align 4
  %22 = load i32, i32* @POLLRDNORM, align 4
  %23 = or i32 %21, %22
  %24 = and i32 %20, %23
  %25 = load i32, i32* %8, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %8, align 4
  br label %32

27:                                               ; preds = %3
  %28 = load %struct.thread*, %struct.thread** %6, align 8
  %29 = load %struct.apm_clone_data*, %struct.apm_clone_data** %7, align 8
  %30 = getelementptr inbounds %struct.apm_clone_data, %struct.apm_clone_data* %29, i32 0, i32 0
  %31 = call i32 @selrecord(%struct.thread* %28, i32* %30)
  br label %32

32:                                               ; preds = %27, %19
  %33 = load i32, i32* @acpi, align 4
  %34 = call i32 @ACPI_UNLOCK(i32 %33)
  %35 = load i32, i32* %8, align 4
  ret i32 %35
}

declare dso_local i32 @devfs_get_cdevpriv(i8**) #1

declare dso_local i32 @ACPI_LOCK(i32) #1

declare dso_local i32 @selrecord(%struct.thread*, i32*) #1

declare dso_local i32 @ACPI_UNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
