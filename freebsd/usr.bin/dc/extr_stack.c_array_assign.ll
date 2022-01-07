; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_stack.c_array_assign.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_stack.c_array_assign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.array = type { i64, %struct.value* }
%struct.value = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.array*, i64, %struct.value*)* @array_assign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @array_assign(%struct.array* %0, i64 %1, %struct.value* %2) #0 {
  %4 = alloca %struct.array*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.value*, align 8
  store %struct.array* %0, %struct.array** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.value* %2, %struct.value** %6, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load %struct.array*, %struct.array** %4, align 8
  %9 = getelementptr inbounds %struct.array, %struct.array* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp uge i64 %7, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load %struct.array*, %struct.array** %4, align 8
  %14 = load i64, i64* %5, align 8
  %15 = add i64 %14, 1
  %16 = call i32 @array_grow(%struct.array* %13, i64 %15)
  br label %17

17:                                               ; preds = %12, %3
  %18 = load %struct.array*, %struct.array** %4, align 8
  %19 = getelementptr inbounds %struct.array, %struct.array* %18, i32 0, i32 1
  %20 = load %struct.value*, %struct.value** %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = getelementptr inbounds %struct.value, %struct.value* %20, i64 %21
  %23 = call i32 @stack_free_value(%struct.value* %22)
  %24 = load %struct.array*, %struct.array** %4, align 8
  %25 = getelementptr inbounds %struct.array, %struct.array* %24, i32 0, i32 1
  %26 = load %struct.value*, %struct.value** %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = getelementptr inbounds %struct.value, %struct.value* %26, i64 %27
  %29 = load %struct.value*, %struct.value** %6, align 8
  %30 = bitcast %struct.value* %28 to i8*
  %31 = bitcast %struct.value* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 %31, i64 4, i1 false)
  ret void
}

declare dso_local i32 @array_grow(%struct.array*, i64) #1

declare dso_local i32 @stack_free_value(%struct.value*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
