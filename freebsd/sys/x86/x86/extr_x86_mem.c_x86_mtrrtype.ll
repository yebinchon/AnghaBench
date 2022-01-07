; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_x86_mem.c_x86_mtrrtype.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_x86_mem.c_x86_mtrrtype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MDF_ATTRMASK = common dso_local global i32 0, align 4
@MTRRTOMRTLEN = common dso_local global i32 0, align 4
@x86_mtrrtomrt = common dso_local global i32* null, align 8
@MDF_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @x86_mtrrtype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x86_mtrrtype(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @MDF_ATTRMASK, align 4
  %6 = load i32, i32* %3, align 4
  %7 = and i32 %6, %5
  store i32 %7, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %32, %1
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @MTRRTOMRTLEN, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %35

12:                                               ; preds = %8
  %13 = load i32*, i32** @x86_mtrrtomrt, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @MDF_UNKNOWN, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  br label %32

21:                                               ; preds = %12
  %22 = load i32, i32* %3, align 4
  %23 = load i32*, i32** @x86_mtrrtomrt, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %22, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %36

31:                                               ; preds = %21
  br label %32

32:                                               ; preds = %31, %20
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %8

35:                                               ; preds = %8
  store i32 -1, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %29
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
