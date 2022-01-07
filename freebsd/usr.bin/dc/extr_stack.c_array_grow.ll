; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_stack.c_array_grow.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_stack.c_array_grow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.array = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32*, i32 }

@BCODE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.array*, i64)* @array_grow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @array_grow(%struct.array* %0, i64 %1) #0 {
  %3 = alloca %struct.array*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.array* %0, %struct.array** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.array*, %struct.array** %3, align 8
  %7 = getelementptr inbounds %struct.array, %struct.array* %6, i32 0, i32 1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = load i64, i64* %4, align 8
  %10 = call %struct.TYPE_3__* @breallocarray(%struct.TYPE_3__* %8, i64 %9, i32 16)
  %11 = load %struct.array*, %struct.array** %3, align 8
  %12 = getelementptr inbounds %struct.array, %struct.array* %11, i32 0, i32 1
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** %12, align 8
  %13 = load %struct.array*, %struct.array** %3, align 8
  %14 = getelementptr inbounds %struct.array, %struct.array* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %5, align 8
  br label %16

16:                                               ; preds = %34, %2
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* %4, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %37

20:                                               ; preds = %16
  %21 = load i32, i32* @BCODE_NONE, align 4
  %22 = load %struct.array*, %struct.array** %3, align 8
  %23 = getelementptr inbounds %struct.array, %struct.array* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  store i32 %21, i32* %27, align 8
  %28 = load %struct.array*, %struct.array** %3, align 8
  %29 = getelementptr inbounds %struct.array, %struct.array* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = load i64, i64* %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i32* null, i32** %33, align 8
  br label %34

34:                                               ; preds = %20
  %35 = load i64, i64* %5, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %5, align 8
  br label %16

37:                                               ; preds = %16
  %38 = load i64, i64* %4, align 8
  %39 = load %struct.array*, %struct.array** %3, align 8
  %40 = getelementptr inbounds %struct.array, %struct.array* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  ret void
}

declare dso_local %struct.TYPE_3__* @breallocarray(%struct.TYPE_3__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
