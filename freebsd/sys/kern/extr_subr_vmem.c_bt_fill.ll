; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_vmem.c_bt_fill.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_vmem.c_bt_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, %struct.TYPE_7__* }

@BT_FLAGS = common dso_local global i32 0, align 4
@kernel_arena = common dso_local global %struct.TYPE_7__* null, align 8
@M_USE_RESERVE = common dso_local global i32 0, align 4
@BT_MAXALLOC = common dso_local global i64 0, align 8
@vmem_bt_zone = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_NOVM = common dso_local global i32 0, align 4
@bt_freelist = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32)* @bt_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bt_fill(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %8 = call i32 @VMEM_ASSERT_LOCKED(%struct.TYPE_7__* %7)
  %9 = load i32, i32* @BT_FLAGS, align 4
  %10 = load i32, i32* %5, align 4
  %11 = and i32 %10, %9
  store i32 %11, i32* %5, align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** @kernel_arena, align 8
  %14 = icmp ne %struct.TYPE_7__* %12, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %2
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** @kernel_arena, align 8
  %20 = icmp ne %struct.TYPE_7__* %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load i32, i32* @M_USE_RESERVE, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %21, %15, %2
  br label %27

27:                                               ; preds = %57, %26
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @BT_MAXALLOC, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %33, label %67

33:                                               ; preds = %27
  %34 = load i32, i32* @vmem_bt_zone, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @M_USE_RESERVE, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* @M_NOWAIT, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @M_NOVM, align 4
  %41 = or i32 %39, %40
  %42 = call i32* @uma_zalloc(i32 %34, i32 %41)
  store i32* %42, i32** %6, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %57

45:                                               ; preds = %33
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %47 = call i32 @VMEM_UNLOCK(%struct.TYPE_7__* %46)
  %48 = load i32, i32* @vmem_bt_zone, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32* @uma_zalloc(i32 %48, i32 %49)
  store i32* %50, i32** %6, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %52 = call i32 @VMEM_LOCK(%struct.TYPE_7__* %51)
  %53 = load i32*, i32** %6, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  br label %67

56:                                               ; preds = %45
  br label %57

57:                                               ; preds = %56, %33
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* @bt_freelist, align 4
  %62 = call i32 @LIST_INSERT_HEAD(i32* %59, i32* %60, i32 %61)
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %64, align 8
  br label %27

67:                                               ; preds = %55, %27
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @BT_MAXALLOC, align 8
  %72 = icmp slt i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load i32, i32* @ENOMEM, align 4
  store i32 %74, i32* %3, align 4
  br label %76

75:                                               ; preds = %67
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %75, %73
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @VMEM_ASSERT_LOCKED(%struct.TYPE_7__*) #1

declare dso_local i32* @uma_zalloc(i32, i32) #1

declare dso_local i32 @VMEM_UNLOCK(%struct.TYPE_7__*) #1

declare dso_local i32 @VMEM_LOCK(%struct.TYPE_7__*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
