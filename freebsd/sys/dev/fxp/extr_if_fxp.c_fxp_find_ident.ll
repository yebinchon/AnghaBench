; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fxp/extr_if_fxp.c_fxp_find_ident.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fxp/extr_if_fxp.c_fxp_find_ident.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fxp_ident = type { i64, i64, i32, i32* }

@fxp_ident_table = common dso_local global %struct.fxp_ident* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fxp_ident* (i32)* @fxp_find_ident to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fxp_ident* @fxp_find_ident(i32 %0) #0 {
  %2 = alloca %struct.fxp_ident*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fxp_ident*, align 8
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i64 @pci_get_vendor(i32 %8)
  store i64 %9, i64* %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call i64 @pci_get_device(i32 %10)
  store i64 %11, i64* %5, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @pci_get_revid(i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.fxp_ident*, %struct.fxp_ident** @fxp_ident_table, align 8
  store %struct.fxp_ident* %14, %struct.fxp_ident** %7, align 8
  br label %15

15:                                               ; preds = %46, %1
  %16 = load %struct.fxp_ident*, %struct.fxp_ident** %7, align 8
  %17 = getelementptr inbounds %struct.fxp_ident, %struct.fxp_ident* %16, i32 0, i32 3
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %49

20:                                               ; preds = %15
  %21 = load %struct.fxp_ident*, %struct.fxp_ident** %7, align 8
  %22 = getelementptr inbounds %struct.fxp_ident, %struct.fxp_ident* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %4, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %45

26:                                               ; preds = %20
  %27 = load %struct.fxp_ident*, %struct.fxp_ident** %7, align 8
  %28 = getelementptr inbounds %struct.fxp_ident, %struct.fxp_ident* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %5, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %26
  %33 = load %struct.fxp_ident*, %struct.fxp_ident** %7, align 8
  %34 = getelementptr inbounds %struct.fxp_ident, %struct.fxp_ident* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %43, label %38

38:                                               ; preds = %32
  %39 = load %struct.fxp_ident*, %struct.fxp_ident** %7, align 8
  %40 = getelementptr inbounds %struct.fxp_ident, %struct.fxp_ident* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %45

43:                                               ; preds = %38, %32
  %44 = load %struct.fxp_ident*, %struct.fxp_ident** %7, align 8
  store %struct.fxp_ident* %44, %struct.fxp_ident** %2, align 8
  br label %50

45:                                               ; preds = %38, %26, %20
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.fxp_ident*, %struct.fxp_ident** %7, align 8
  %48 = getelementptr inbounds %struct.fxp_ident, %struct.fxp_ident* %47, i32 1
  store %struct.fxp_ident* %48, %struct.fxp_ident** %7, align 8
  br label %15

49:                                               ; preds = %15
  store %struct.fxp_ident* null, %struct.fxp_ident** %2, align 8
  br label %50

50:                                               ; preds = %49, %43
  %51 = load %struct.fxp_ident*, %struct.fxp_ident** %2, align 8
  ret %struct.fxp_ident* %51
}

declare dso_local i64 @pci_get_vendor(i32) #1

declare dso_local i64 @pci_get_device(i32) #1

declare dso_local i32 @pci_get_revid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
