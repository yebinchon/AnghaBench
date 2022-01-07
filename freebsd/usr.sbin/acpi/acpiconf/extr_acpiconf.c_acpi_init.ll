; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/acpi/acpiconf/extr_acpiconf.c_acpi_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/acpi/acpiconf/extr_acpiconf.c_acpi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ACPIDEV = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@acpifd = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@EX_OSFILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @acpi_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_init() #0 {
  %1 = load i32, i32* @ACPIDEV, align 4
  %2 = load i32, i32* @O_RDWR, align 4
  %3 = call i32 @open(i32 %1, i32 %2)
  store i32 %3, i32* @acpifd, align 4
  %4 = load i32, i32* @acpifd, align 4
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %6, label %10

6:                                                ; preds = %0
  %7 = load i32, i32* @ACPIDEV, align 4
  %8 = load i32, i32* @O_RDONLY, align 4
  %9 = call i32 @open(i32 %7, i32 %8)
  store i32 %9, i32* @acpifd, align 4
  br label %10

10:                                               ; preds = %6, %0
  %11 = load i32, i32* @acpifd, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = load i32, i32* @EX_OSFILE, align 4
  %15 = load i32, i32* @ACPIDEV, align 4
  %16 = call i32 @err(i32 %14, i32 %15)
  br label %17

17:                                               ; preds = %13, %10
  ret void
}

declare dso_local i32 @open(i32, i32) #1

declare dso_local i32 @err(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
