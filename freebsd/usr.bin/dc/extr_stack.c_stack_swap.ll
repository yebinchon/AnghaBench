; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_stack.c_stack_swap.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_stack.c_stack_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stack = type { i32, %struct.value* }
%struct.value = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"stack empty\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stack_swap(%struct.stack* %0) #0 {
  %2 = alloca %struct.stack*, align 8
  %3 = alloca %struct.value, align 4
  store %struct.stack* %0, %struct.stack** %2, align 8
  %4 = load %struct.stack*, %struct.stack** %2, align 8
  %5 = getelementptr inbounds %struct.stack, %struct.stack* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp slt i32 %6, 1
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 @warnx(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %51

10:                                               ; preds = %1
  %11 = load %struct.stack*, %struct.stack** %2, align 8
  %12 = getelementptr inbounds %struct.stack, %struct.stack* %11, i32 0, i32 1
  %13 = load %struct.value*, %struct.value** %12, align 8
  %14 = load %struct.stack*, %struct.stack** %2, align 8
  %15 = getelementptr inbounds %struct.stack, %struct.stack* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.value, %struct.value* %13, i64 %17
  %19 = bitcast %struct.value* %3 to i8*
  %20 = bitcast %struct.value* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 %20, i64 4, i1 false)
  %21 = load %struct.stack*, %struct.stack** %2, align 8
  %22 = getelementptr inbounds %struct.stack, %struct.stack* %21, i32 0, i32 1
  %23 = load %struct.value*, %struct.value** %22, align 8
  %24 = load %struct.stack*, %struct.stack** %2, align 8
  %25 = getelementptr inbounds %struct.stack, %struct.stack* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.value, %struct.value* %23, i64 %27
  %29 = load %struct.stack*, %struct.stack** %2, align 8
  %30 = getelementptr inbounds %struct.stack, %struct.stack* %29, i32 0, i32 1
  %31 = load %struct.value*, %struct.value** %30, align 8
  %32 = load %struct.stack*, %struct.stack** %2, align 8
  %33 = getelementptr inbounds %struct.stack, %struct.stack* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.value, %struct.value* %31, i64 %36
  %38 = bitcast %struct.value* %28 to i8*
  %39 = bitcast %struct.value* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %38, i8* align 4 %39, i64 4, i1 false)
  %40 = load %struct.stack*, %struct.stack** %2, align 8
  %41 = getelementptr inbounds %struct.stack, %struct.stack* %40, i32 0, i32 1
  %42 = load %struct.value*, %struct.value** %41, align 8
  %43 = load %struct.stack*, %struct.stack** %2, align 8
  %44 = getelementptr inbounds %struct.stack, %struct.stack* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.value, %struct.value* %42, i64 %47
  %49 = bitcast %struct.value* %48 to i8*
  %50 = bitcast %struct.value* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %49, i8* align 4 %50, i64 4, i1 false)
  br label %51

51:                                               ; preds = %10, %8
  ret void
}

declare dso_local i32 @warnx(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
