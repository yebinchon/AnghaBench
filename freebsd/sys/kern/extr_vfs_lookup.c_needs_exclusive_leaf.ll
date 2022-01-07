; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_lookup.c_needs_exclusive_leaf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_lookup.c_needs_exclusive_leaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { i32 }

@ISLASTCN = common dso_local global i32 0, align 4
@LOCKLEAF = common dso_local global i32 0, align 4
@LOCKSHARED = common dso_local global i32 0, align 4
@ISOPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mount*, i32)* @needs_exclusive_leaf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @needs_exclusive_leaf(%struct.mount* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mount*, align 8
  %5 = alloca i32, align 4
  store %struct.mount* %0, %struct.mount** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @ISLASTCN, align 4
  %8 = load i32, i32* @LOCKLEAF, align 4
  %9 = or i32 %7, %8
  %10 = and i32 %6, %9
  %11 = load i32, i32* @ISLASTCN, align 4
  %12 = load i32, i32* @LOCKLEAF, align 4
  %13 = or i32 %11, %12
  %14 = icmp ne i32 %10, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %34

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @LOCKSHARED, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  store i32 1, i32* %3, align 4
  br label %34

22:                                               ; preds = %16
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @ISOPEN, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load %struct.mount*, %struct.mount** %4, align 8
  %29 = call i32 @MNT_EXTENDED_SHARED(%struct.mount* %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %3, align 4
  br label %34

33:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %27, %21, %15
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @MNT_EXTENDED_SHARED(%struct.mount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
