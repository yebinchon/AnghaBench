; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_acpi.c_basl_load.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_acpi.c_basl_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }
%struct.stat = type { i32 }

@errno = common dso_local global i32 0, align 4
@basl_acpi_base = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmctx*, i32, i64)* @basl_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @basl_load(%struct.vmctx* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.stat, align 4
  %9 = alloca i8*, align 8
  store %struct.vmctx* %0, %struct.vmctx** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i64 @fstat(i32 %10, %struct.stat* %8)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @errno, align 4
  store i32 %14, i32* %4, align 4
  br label %37

15:                                               ; preds = %3
  %16 = load %struct.vmctx*, %struct.vmctx** %5, align 8
  %17 = load i64, i64* @basl_acpi_base, align 8
  %18 = load i64, i64* %7, align 8
  %19 = add nsw i64 %17, %18
  %20 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @paddr_guest2host(%struct.vmctx* %16, i64 %19, i32 %21)
  store i8* %22, i8** %9, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %15
  %26 = load i32, i32* @EFAULT, align 4
  store i32 %26, i32* %4, align 4
  br label %37

27:                                               ; preds = %15
  %28 = load i32, i32* %6, align 4
  %29 = load i8*, i8** %9, align 8
  %30 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @read(i32 %28, i8* %29, i32 %31)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* @errno, align 4
  store i32 %35, i32* %4, align 4
  br label %37

36:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %36, %34, %25, %13
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i8* @paddr_guest2host(%struct.vmctx*, i64, i32) #1

declare dso_local i64 @read(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
