; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_vmem.c_vmem_import.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_vmem.c_vmem_import.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (i32, i64, i32, i32*)*, i64, i64, i64, i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BT_MAXALLOC = common dso_local global i64 0, align 8
@BT_TYPE_SPAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i64, i64, i32)* @vmem_import to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmem_import(%struct.TYPE_6__* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32 (i32, i64, i32, i32*)*, i32 (i32, i64, i32, i32*)** %13, align 8
  %15 = icmp eq i32 (i32, i64, i32, i32*)* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %5, align 4
  br label %93

18:                                               ; preds = %4
  %19 = load i64, i64* %8, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 1
  %24 = icmp ne i64 %19, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = load i64, i64* %8, align 8
  %27 = mul nsw i64 %26, 2
  %28 = load i64, i64* %7, align 8
  %29 = add nsw i64 %27, %28
  store i64 %29, i64* %7, align 8
  br label %30

30:                                               ; preds = %25, %18
  %31 = load i64, i64* %7, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @roundup(i64 %31, i32 %34)
  store i64 %35, i64* %7, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %30
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %7, align 8
  %48 = add nsw i64 %46, %47
  %49 = icmp slt i64 %43, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %40
  %51 = load i32, i32* @ENOMEM, align 4
  store i32 %51, i32* %5, align 4
  br label %93

52:                                               ; preds = %40, %30
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @BT_MAXALLOC, align 8
  %57 = icmp sge i64 %55, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 @MPASS(i32 %58)
  %60 = load i64, i64* @BT_MAXALLOC, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = sub nsw i64 %63, %60
  store i64 %64, i64* %62, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %66 = call i32 @VMEM_UNLOCK(%struct.TYPE_6__* %65)
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32 (i32, i64, i32, i32*)*, i32 (i32, i64, i32, i32*)** %68, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 8
  %73 = load i64, i64* %7, align 8
  %74 = load i32, i32* %9, align 4
  %75 = call i32 %69(i32 %72, i64 %73, i32 %74, i32* %10)
  store i32 %75, i32* %11, align 4
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %77 = call i32 @VMEM_LOCK(%struct.TYPE_6__* %76)
  %78 = load i64, i64* @BT_MAXALLOC, align 8
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 4
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %81, %78
  store i64 %82, i64* %80, align 8
  %83 = load i32, i32* %11, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %52
  %86 = load i32, i32* @ENOMEM, align 4
  store i32 %86, i32* %5, align 4
  br label %93

87:                                               ; preds = %52
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %89 = load i32, i32* %10, align 4
  %90 = load i64, i64* %7, align 8
  %91 = load i32, i32* @BT_TYPE_SPAN, align 4
  %92 = call i32 @vmem_add1(%struct.TYPE_6__* %88, i32 %89, i64 %90, i32 %91)
  store i32 0, i32* %5, align 4
  br label %93

93:                                               ; preds = %87, %85, %50, %16
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local i64 @roundup(i64, i32) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @VMEM_UNLOCK(%struct.TYPE_6__*) #1

declare dso_local i32 @VMEM_LOCK(%struct.TYPE_6__*) #1

declare dso_local i32 @vmem_add1(%struct.TYPE_6__*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
