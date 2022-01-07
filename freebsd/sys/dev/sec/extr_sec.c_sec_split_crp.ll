; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sec/extr_sec.c_sec_split_crp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sec/extr_sec.c_sec_split_crp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cryptop = type { %struct.cryptodesc* }
%struct.cryptodesc = type { i32, %struct.cryptodesc* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cryptop*, %struct.cryptodesc**, %struct.cryptodesc**)* @sec_split_crp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sec_split_crp(%struct.cryptop* %0, %struct.cryptodesc** %1, %struct.cryptodesc** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cryptop*, align 8
  %6 = alloca %struct.cryptodesc**, align 8
  %7 = alloca %struct.cryptodesc**, align 8
  %8 = alloca %struct.cryptodesc*, align 8
  %9 = alloca %struct.cryptodesc*, align 8
  %10 = alloca %struct.cryptodesc*, align 8
  store %struct.cryptop* %0, %struct.cryptop** %5, align 8
  store %struct.cryptodesc** %1, %struct.cryptodesc*** %6, align 8
  store %struct.cryptodesc** %2, %struct.cryptodesc*** %7, align 8
  %11 = load %struct.cryptop*, %struct.cryptop** %5, align 8
  %12 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %11, i32 0, i32 0
  %13 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  store %struct.cryptodesc* %13, %struct.cryptodesc** %8, align 8
  %14 = load %struct.cryptodesc*, %struct.cryptodesc** %8, align 8
  %15 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %14, i32 0, i32 1
  %16 = load %struct.cryptodesc*, %struct.cryptodesc** %15, align 8
  store %struct.cryptodesc* %16, %struct.cryptodesc** %9, align 8
  %17 = load %struct.cryptodesc*, %struct.cryptodesc** %9, align 8
  %18 = icmp ne %struct.cryptodesc* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %3
  %20 = load %struct.cryptodesc*, %struct.cryptodesc** %9, align 8
  %21 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %20, i32 0, i32 1
  %22 = load %struct.cryptodesc*, %struct.cryptodesc** %21, align 8
  %23 = icmp ne %struct.cryptodesc* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* %4, align 4
  br label %52

26:                                               ; preds = %19, %3
  %27 = load %struct.cryptodesc*, %struct.cryptodesc** %8, align 8
  %28 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @sec_mdeu_can_handle(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load %struct.cryptodesc*, %struct.cryptodesc** %9, align 8
  store %struct.cryptodesc* %33, %struct.cryptodesc** %10, align 8
  %34 = load %struct.cryptodesc*, %struct.cryptodesc** %8, align 8
  store %struct.cryptodesc* %34, %struct.cryptodesc** %9, align 8
  %35 = load %struct.cryptodesc*, %struct.cryptodesc** %10, align 8
  store %struct.cryptodesc* %35, %struct.cryptodesc** %8, align 8
  br label %36

36:                                               ; preds = %32, %26
  %37 = load %struct.cryptodesc*, %struct.cryptodesc** %9, align 8
  %38 = icmp ne %struct.cryptodesc* %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %36
  %40 = load %struct.cryptodesc*, %struct.cryptodesc** %9, align 8
  %41 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @sec_mdeu_can_handle(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %39
  %46 = load i32, i32* @EINVAL, align 4
  store i32 %46, i32* %4, align 4
  br label %52

47:                                               ; preds = %39, %36
  %48 = load %struct.cryptodesc*, %struct.cryptodesc** %8, align 8
  %49 = load %struct.cryptodesc**, %struct.cryptodesc*** %6, align 8
  store %struct.cryptodesc* %48, %struct.cryptodesc** %49, align 8
  %50 = load %struct.cryptodesc*, %struct.cryptodesc** %9, align 8
  %51 = load %struct.cryptodesc**, %struct.cryptodesc*** %7, align 8
  store %struct.cryptodesc* %50, %struct.cryptodesc** %51, align 8
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %47, %45, %24
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i64 @sec_mdeu_can_handle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
