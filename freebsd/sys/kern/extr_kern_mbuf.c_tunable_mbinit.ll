; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_mbuf.c_tunable_mbinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_mbuf.c_tunable_mbinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@physmem = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@vm_kmem_size = common dso_local global i32 0, align 4
@maxmbufmem = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"kern.ipc.maxmbufmem\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"kern.ipc.nmbclusters\00", align 1
@nmbclusters = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"kern.ipc.nmbjumbop\00", align 1
@nmbjumbop = common dso_local global i32 0, align 4
@MJUMPAGESIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"kern.ipc.nmbjumbo9\00", align 1
@nmbjumbo9 = common dso_local global i32 0, align 4
@MJUM9BYTES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"kern.ipc.nmbjumbo16\00", align 1
@nmbjumbo16 = common dso_local global i32 0, align 4
@MJUM16BYTES = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"kern.ipc.nmbufs\00", align 1
@nmbufs = common dso_local global i32 0, align 4
@MSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @tunable_mbinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tunable_mbinit(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i64, i64* @physmem, align 8
  %5 = trunc i64 %4 to i32
  %6 = load i32, i32* @PAGE_SIZE, align 4
  %7 = mul nsw i32 %5, %6
  %8 = load i32, i32* @vm_kmem_size, align 4
  %9 = call i32 @qmin(i32 %7, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = sdiv i32 %10, 2
  store i32 %11, i32* @maxmbufmem, align 4
  %12 = call i32 @TUNABLE_QUAD_FETCH(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32* @maxmbufmem)
  %13 = load i32, i32* @maxmbufmem, align 4
  %14 = load i32, i32* %3, align 4
  %15 = sdiv i32 %14, 4
  %16 = mul nsw i32 %15, 3
  %17 = icmp sgt i32 %13, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = sdiv i32 %19, 4
  %21 = mul nsw i32 %20, 3
  store i32 %21, i32* @maxmbufmem, align 4
  br label %22

22:                                               ; preds = %18, %1
  %23 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32* @nmbclusters)
  %24 = load i32, i32* @nmbclusters, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load i32, i32* @maxmbufmem, align 4
  %28 = load i32, i32* @MCLBYTES, align 4
  %29 = sdiv i32 %27, %28
  %30 = sdiv i32 %29, 4
  store i32 %30, i32* @nmbclusters, align 4
  br label %31

31:                                               ; preds = %26, %22
  %32 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32* @nmbjumbop)
  %33 = load i32, i32* @nmbjumbop, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load i32, i32* @maxmbufmem, align 4
  %37 = load i32, i32* @MJUMPAGESIZE, align 4
  %38 = sdiv i32 %36, %37
  %39 = sdiv i32 %38, 4
  store i32 %39, i32* @nmbjumbop, align 4
  br label %40

40:                                               ; preds = %35, %31
  %41 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32* @nmbjumbo9)
  %42 = load i32, i32* @nmbjumbo9, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load i32, i32* @maxmbufmem, align 4
  %46 = load i32, i32* @MJUM9BYTES, align 4
  %47 = sdiv i32 %45, %46
  %48 = sdiv i32 %47, 6
  store i32 %48, i32* @nmbjumbo9, align 4
  br label %49

49:                                               ; preds = %44, %40
  %50 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32* @nmbjumbo16)
  %51 = load i32, i32* @nmbjumbo16, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = load i32, i32* @maxmbufmem, align 4
  %55 = load i32, i32* @MJUM16BYTES, align 4
  %56 = sdiv i32 %54, %55
  %57 = sdiv i32 %56, 6
  store i32 %57, i32* @nmbjumbo16, align 4
  br label %58

58:                                               ; preds = %53, %49
  %59 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32* @nmbufs)
  %60 = load i32, i32* @nmbufs, align 4
  %61 = load i32, i32* @nmbclusters, align 4
  %62 = load i32, i32* @nmbjumbop, align 4
  %63 = add nsw i32 %61, %62
  %64 = load i32, i32* @nmbjumbo9, align 4
  %65 = add nsw i32 %63, %64
  %66 = load i32, i32* @nmbjumbo16, align 4
  %67 = add nsw i32 %65, %66
  %68 = icmp slt i32 %60, %67
  br i1 %68, label %69, label %82

69:                                               ; preds = %58
  %70 = load i32, i32* @maxmbufmem, align 4
  %71 = load i32, i32* @MSIZE, align 4
  %72 = sdiv i32 %70, %71
  %73 = sdiv i32 %72, 5
  %74 = load i32, i32* @nmbclusters, align 4
  %75 = load i32, i32* @nmbjumbop, align 4
  %76 = add nsw i32 %74, %75
  %77 = load i32, i32* @nmbjumbo9, align 4
  %78 = add nsw i32 %76, %77
  %79 = load i32, i32* @nmbjumbo16, align 4
  %80 = add nsw i32 %78, %79
  %81 = call i32 @lmax(i32 %73, i32 %80)
  store i32 %81, i32* @nmbufs, align 4
  br label %82

82:                                               ; preds = %69, %58
  ret void
}

declare dso_local i32 @qmin(i32, i32) #1

declare dso_local i32 @TUNABLE_QUAD_FETCH(i8*, i32*) #1

declare dso_local i32 @TUNABLE_INT_FETCH(i8*, i32*) #1

declare dso_local i32 @lmax(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
