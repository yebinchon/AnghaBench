; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_vspace.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_vspace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@desiredvnodes = common dso_local global i64 0, align 8
@wantfreevnodes = common dso_local global i64 0, align 8
@gapvnodes = common dso_local global i32 0, align 4
@vhiwat = common dso_local global i32 0, align 4
@vlowat = common dso_local global i32 0, align 4
@numvnodes = common dso_local global i64 0, align 8
@freevnodes = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @vspace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vspace() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64, i64* @desiredvnodes, align 8
  %4 = load i64, i64* @wantfreevnodes, align 8
  %5 = sub nsw i64 %3, %4
  %6 = call i32 @imax(i64 %5, i32 100)
  store i32 %6, i32* @gapvnodes, align 4
  %7 = load i32, i32* @gapvnodes, align 4
  %8 = sdiv i32 %7, 11
  store i32 %8, i32* @vhiwat, align 4
  %9 = load i32, i32* @vhiwat, align 4
  %10 = sdiv i32 %9, 2
  store i32 %10, i32* @vlowat, align 4
  %11 = load i64, i64* @numvnodes, align 8
  %12 = load i64, i64* @desiredvnodes, align 8
  %13 = icmp sgt i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %33

15:                                               ; preds = %0
  %16 = load i64, i64* @desiredvnodes, align 8
  %17 = load i64, i64* @numvnodes, align 8
  %18 = sub nsw i64 %16, %17
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %2, align 4
  %20 = load i64, i64* @freevnodes, align 8
  %21 = load i64, i64* @wantfreevnodes, align 8
  %22 = icmp sgt i64 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %15
  %24 = load i64, i64* @freevnodes, align 8
  %25 = load i64, i64* @wantfreevnodes, align 8
  %26 = sub nsw i64 %24, %25
  %27 = load i32, i32* %2, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %28, %26
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %23, %15
  %32 = load i32, i32* %2, align 4
  store i32 %32, i32* %1, align 4
  br label %33

33:                                               ; preds = %31, %14
  %34 = load i32, i32* %1, align 4
  ret i32 %34
}

declare dso_local i32 @imax(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
