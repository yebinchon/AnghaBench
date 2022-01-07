; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/amdsmn/extr_amdsmn.c_amdsmn_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/amdsmn/extr_amdsmn.c_amdsmn_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pciid = type { i64, i64 }

@amdsmn_ids = common dso_local global %struct.pciid* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.pciid**)* @amdsmn_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdsmn_match(i32 %0, %struct.pciid** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.pciid**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.pciid** %1, %struct.pciid*** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i64 @pci_get_vendor(i32 %9)
  store i64 %10, i64* %6, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i64 @pci_get_device(i32 %11)
  store i64 %12, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %13

13:                                               ; preds = %44, %2
  %14 = load i64, i64* %8, align 8
  %15 = load %struct.pciid*, %struct.pciid** @amdsmn_ids, align 8
  %16 = call i64 @nitems(%struct.pciid* %15)
  %17 = icmp ult i64 %14, %16
  br i1 %17, label %18, label %47

18:                                               ; preds = %13
  %19 = load i64, i64* %6, align 8
  %20 = load %struct.pciid*, %struct.pciid** @amdsmn_ids, align 8
  %21 = load i64, i64* %8, align 8
  %22 = getelementptr inbounds %struct.pciid, %struct.pciid* %20, i64 %21
  %23 = getelementptr inbounds %struct.pciid, %struct.pciid* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %19, %24
  br i1 %25, label %26, label %43

26:                                               ; preds = %18
  %27 = load i64, i64* %7, align 8
  %28 = load %struct.pciid*, %struct.pciid** @amdsmn_ids, align 8
  %29 = load i64, i64* %8, align 8
  %30 = getelementptr inbounds %struct.pciid, %struct.pciid* %28, i64 %29
  %31 = getelementptr inbounds %struct.pciid, %struct.pciid* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %27, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %26
  %35 = load %struct.pciid**, %struct.pciid*** %5, align 8
  %36 = icmp ne %struct.pciid** %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load %struct.pciid*, %struct.pciid** @amdsmn_ids, align 8
  %39 = load i64, i64* %8, align 8
  %40 = getelementptr inbounds %struct.pciid, %struct.pciid* %38, i64 %39
  %41 = load %struct.pciid**, %struct.pciid*** %5, align 8
  store %struct.pciid* %40, %struct.pciid** %41, align 8
  br label %42

42:                                               ; preds = %37, %34
  store i32 1, i32* %3, align 4
  br label %48

43:                                               ; preds = %26, %18
  br label %44

44:                                               ; preds = %43
  %45 = load i64, i64* %8, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %8, align 8
  br label %13

47:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %42
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i64 @pci_get_vendor(i32) #1

declare dso_local i64 @pci_get_device(i32) #1

declare dso_local i64 @nitems(%struct.pciid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
