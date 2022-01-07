; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_stack.c_stack_set_tos.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_stack.c_stack_set_tos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stack = type { i32, %struct.value* }
%struct.value = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stack_set_tos(%struct.stack* %0, %struct.value* %1) #0 {
  %3 = alloca %struct.stack*, align 8
  %4 = alloca %struct.value*, align 8
  store %struct.stack* %0, %struct.stack** %3, align 8
  store %struct.value* %1, %struct.value** %4, align 8
  %5 = load %struct.stack*, %struct.stack** %3, align 8
  %6 = getelementptr inbounds %struct.stack, %struct.stack* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.stack*, %struct.stack** %3, align 8
  %11 = load %struct.value*, %struct.value** %4, align 8
  %12 = call i32 @stack_push(%struct.stack* %10, %struct.value* %11)
  br label %55

13:                                               ; preds = %2
  %14 = load %struct.stack*, %struct.stack** %3, align 8
  %15 = getelementptr inbounds %struct.stack, %struct.stack* %14, i32 0, i32 1
  %16 = load %struct.value*, %struct.value** %15, align 8
  %17 = load %struct.stack*, %struct.stack** %3, align 8
  %18 = getelementptr inbounds %struct.stack, %struct.stack* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.value, %struct.value* %16, i64 %20
  %22 = call i32 @stack_free_value(%struct.value* %21)
  %23 = load %struct.stack*, %struct.stack** %3, align 8
  %24 = getelementptr inbounds %struct.stack, %struct.stack* %23, i32 0, i32 1
  %25 = load %struct.value*, %struct.value** %24, align 8
  %26 = load %struct.stack*, %struct.stack** %3, align 8
  %27 = getelementptr inbounds %struct.stack, %struct.stack* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.value, %struct.value* %25, i64 %29
  %31 = load %struct.value*, %struct.value** %4, align 8
  %32 = bitcast %struct.value* %30 to i8*
  %33 = bitcast %struct.value* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 8 %33, i64 8, i1 false)
  %34 = load %struct.value*, %struct.value** %4, align 8
  %35 = getelementptr inbounds %struct.value, %struct.value* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %13
  br label %44

39:                                               ; preds = %13
  %40 = load %struct.value*, %struct.value** %4, align 8
  %41 = getelementptr inbounds %struct.value, %struct.value* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = call i32* @array_dup(i32* %42)
  br label %44

44:                                               ; preds = %39, %38
  %45 = phi i32* [ null, %38 ], [ %43, %39 ]
  %46 = load %struct.stack*, %struct.stack** %3, align 8
  %47 = getelementptr inbounds %struct.stack, %struct.stack* %46, i32 0, i32 1
  %48 = load %struct.value*, %struct.value** %47, align 8
  %49 = load %struct.stack*, %struct.stack** %3, align 8
  %50 = getelementptr inbounds %struct.stack, %struct.stack* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.value, %struct.value* %48, i64 %52
  %54 = getelementptr inbounds %struct.value, %struct.value* %53, i32 0, i32 0
  store i32* %45, i32** %54, align 8
  br label %55

55:                                               ; preds = %44, %9
  ret void
}

declare dso_local i32 @stack_push(%struct.stack*, %struct.value*) #1

declare dso_local i32 @stack_free_value(%struct.value*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @array_dup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
