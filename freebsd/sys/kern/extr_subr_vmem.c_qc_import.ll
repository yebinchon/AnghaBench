; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_vmem.c_qc_import.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_vmem.c_qc_import.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@M_WAITOK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"blocking allocation\00", align 1
@VMEM_ADDR_QCACHE_MIN = common dso_local global i32 0, align 4
@VMEM_ADDR_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i32, i32, i32)* @qc_import to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qc_import(i8* %0, i8** %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_2__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* @M_WAITOK, align 4
  %16 = and i32 %14, %15
  %17 = icmp eq i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @KASSERT(i32 %18, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %20 = load i8*, i8** %6, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %21, %struct.TYPE_2__** %11, align 8
  store i32 0, i32* %13, align 4
  br label %22

22:                                               ; preds = %46, %5
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %49

26:                                               ; preds = %22
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @VMEM_ADDR_QCACHE_MIN, align 4
  %34 = load i32, i32* @VMEM_ADDR_MAX, align 4
  %35 = load i32, i32* %10, align 4
  %36 = call i64 @vmem_xalloc(i32 %29, i32 %32, i32 0, i32 0, i32 0, i32 %33, i32 %34, i32 %35, i64* %12)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %26
  br label %49

39:                                               ; preds = %26
  %40 = load i64, i64* %12, align 8
  %41 = inttoptr i64 %40 to i8*
  %42 = load i8**, i8*** %7, align 8
  %43 = load i32, i32* %13, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %42, i64 %44
  store i8* %41, i8** %45, align 8
  br label %46

46:                                               ; preds = %39
  %47 = load i32, i32* %13, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %13, align 4
  br label %22

49:                                               ; preds = %38, %22
  %50 = load i32, i32* %13, align 4
  ret i32 %50
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @vmem_xalloc(i32, i32, i32, i32, i32, i32, i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
