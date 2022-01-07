; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_mmap.c_kern_mprotect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_mmap.c_kern_mprotect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@_PROT_ALL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SV_ILP32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_mprotect(%struct.thread* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.thread*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i64, i64* %7, align 8
  store i64 %14, i64* %10, align 8
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @_PROT_ALL, align 4
  %17 = load i32, i32* @_PROT_ALL, align 4
  %18 = call i32 @PROT_MAX(i32 %17)
  %19 = or i32 %16, %18
  %20 = xor i32 %19, -1
  %21 = and i32 %15, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %5, align 4
  br label %99

25:                                               ; preds = %4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @PROT_MAX_EXTRACT(i32 %26)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @PROT_EXTRACT(i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i64, i64* %10, align 8
  %31 = load i64, i64* @PAGE_MASK, align 8
  %32 = and i64 %30, %31
  store i64 %32, i64* %11, align 8
  %33 = load i64, i64* %11, align 8
  %34 = load i64, i64* %10, align 8
  %35 = sub i64 %34, %33
  store i64 %35, i64* %10, align 8
  %36 = load i64, i64* %11, align 8
  %37 = load i64, i64* %8, align 8
  %38 = add i64 %37, %36
  store i64 %38, i64* %8, align 8
  %39 = load i64, i64* %8, align 8
  %40 = call i64 @round_page(i64 %39)
  store i64 %40, i64* %8, align 8
  %41 = load i64, i64* %10, align 8
  %42 = load i64, i64* %8, align 8
  %43 = add i64 %41, %42
  %44 = load i64, i64* %10, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %25
  %47 = load i32, i32* @EINVAL, align 4
  store i32 %47, i32* %5, align 4
  br label %99

48:                                               ; preds = %25
  store i32 128, i32* %12, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %73

51:                                               ; preds = %48
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %9, align 4
  %54 = and i32 %52, %53
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* @EINVAL, align 4
  store i32 %58, i32* %5, align 4
  br label %99

59:                                               ; preds = %51
  %60 = load %struct.thread*, %struct.thread** %6, align 8
  %61 = getelementptr inbounds %struct.thread, %struct.thread* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i64, i64* %10, align 8
  %67 = load i64, i64* %10, align 8
  %68 = load i64, i64* %8, align 8
  %69 = add i64 %67, %68
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* @TRUE, align 4
  %72 = call i32 @vm_map_protect(i32* %65, i64 %66, i64 %69, i32 %70, i32 %71)
  store i32 %72, i32* %12, align 4
  br label %73

73:                                               ; preds = %59, %48
  %74 = load i32, i32* %12, align 4
  %75 = icmp eq i32 %74, 128
  br i1 %75, label %76, label %90

76:                                               ; preds = %73
  %77 = load %struct.thread*, %struct.thread** %6, align 8
  %78 = getelementptr inbounds %struct.thread, %struct.thread* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i64, i64* %10, align 8
  %84 = load i64, i64* %10, align 8
  %85 = load i64, i64* %8, align 8
  %86 = add i64 %84, %85
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* @FALSE, align 4
  %89 = call i32 @vm_map_protect(i32* %82, i64 %83, i64 %86, i32 %87, i32 %88)
  store i32 %89, i32* %12, align 4
  br label %90

90:                                               ; preds = %76, %73
  %91 = load i32, i32* %12, align 4
  switch i32 %91, label %97 [
    i32 128, label %92
    i32 130, label %93
    i32 129, label %95
  ]

92:                                               ; preds = %90
  store i32 0, i32* %5, align 4
  br label %99

93:                                               ; preds = %90
  %94 = load i32, i32* @EACCES, align 4
  store i32 %94, i32* %5, align 4
  br label %99

95:                                               ; preds = %90
  %96 = load i32, i32* @ENOMEM, align 4
  store i32 %96, i32* %5, align 4
  br label %99

97:                                               ; preds = %90
  %98 = load i32, i32* @EINVAL, align 4
  store i32 %98, i32* %5, align 4
  br label %99

99:                                               ; preds = %97, %95, %93, %92, %57, %46, %23
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local i32 @PROT_MAX(i32) #1

declare dso_local i32 @PROT_MAX_EXTRACT(i32) #1

declare dso_local i32 @PROT_EXTRACT(i32) #1

declare dso_local i64 @round_page(i64) #1

declare dso_local i32 @vm_map_protect(i32*, i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
