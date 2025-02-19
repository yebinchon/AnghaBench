; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/siba/extr_siba_subr.c_siba_addrspace_index.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/siba/extr_siba_subr.c_siba_addrspace_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siba_core_id = type { i32 }

@BHND_PORT_DEVICE = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @siba_addrspace_index(%struct.siba_core_id* %0, i64 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.siba_core_id*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.siba_core_id* %0, %struct.siba_core_id** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %13 = load i64, i64* %8, align 8
  %14 = load i64, i64* @BHND_PORT_DEVICE, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %5
  %17 = load i32, i32* @ENOENT, align 4
  store i32 %17, i32* %6, align 4
  br label %51

18:                                               ; preds = %5
  %19 = load %struct.siba_core_id*, %struct.siba_core_id** %7, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @siba_is_port_valid(%struct.siba_core_id* %19, i64 %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* @ENOENT, align 4
  store i32 %25, i32* %6, align 4
  br label %51

26:                                               ; preds = %18
  %27 = load i32, i32* %9, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %12, align 4
  br label %40

31:                                               ; preds = %26
  %32 = load i32, i32* %9, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32, i32* %10, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %12, align 4
  br label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @ENOENT, align 4
  store i32 %38, i32* %6, align 4
  br label %51

39:                                               ; preds = %34
  br label %40

40:                                               ; preds = %39, %29
  %41 = load i32, i32* %12, align 4
  %42 = load %struct.siba_core_id*, %struct.siba_core_id** %7, align 8
  %43 = getelementptr inbounds %struct.siba_core_id, %struct.siba_core_id* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp sge i32 %41, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* @ENOENT, align 4
  store i32 %47, i32* %6, align 4
  br label %51

48:                                               ; preds = %40
  %49 = load i32, i32* %12, align 4
  %50 = load i32*, i32** %11, align 8
  store i32 %49, i32* %50, align 4
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %48, %46, %37, %24, %16
  %52 = load i32, i32* %6, align 4
  ret i32 %52
}

declare dso_local i32 @siba_is_port_valid(%struct.siba_core_id*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
