; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_exec.c_exec_args_adjust_args.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_exec.c_exec_args_adjust_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image_args = type { i64, i64, i32*, i32, i32* }

@.str = private unnamed_addr constant [21 x i8] c"endp not initialized\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"begin_argp not initialized\00", align 1
@E2BIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @exec_args_adjust_args(%struct.image_args* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.image_args*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.image_args* %0, %struct.image_args** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.image_args*, %struct.image_args** %5, align 8
  %10 = getelementptr inbounds %struct.image_args, %struct.image_args* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @KASSERT(i32 %13, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.image_args*, %struct.image_args** %5, align 8
  %16 = getelementptr inbounds %struct.image_args, %struct.image_args* %15, i32 0, i32 4
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @KASSERT(i32 %19, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* %6, align 8
  %23 = sub i64 %21, %22
  store i64 %23, i64* %8, align 8
  %24 = load %struct.image_args*, %struct.image_args** %5, align 8
  %25 = getelementptr inbounds %struct.image_args, %struct.image_args* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %8, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %3
  %30 = load i32, i32* @E2BIG, align 4
  store i32 %30, i32* %4, align 4
  br label %79

31:                                               ; preds = %3
  %32 = load %struct.image_args*, %struct.image_args** %5, align 8
  %33 = getelementptr inbounds %struct.image_args, %struct.image_args* %32, i32 0, i32 4
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* %7, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load %struct.image_args*, %struct.image_args** %5, align 8
  %38 = getelementptr inbounds %struct.image_args, %struct.image_args* %37, i32 0, i32 4
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* %6, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load %struct.image_args*, %struct.image_args** %5, align 8
  %43 = getelementptr inbounds %struct.image_args, %struct.image_args* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.image_args*, %struct.image_args** %5, align 8
  %46 = getelementptr inbounds %struct.image_args, %struct.image_args* %45, i32 0, i32 4
  %47 = load i32*, i32** %46, align 8
  %48 = ptrtoint i32* %44 to i64
  %49 = ptrtoint i32* %47 to i64
  %50 = sub i64 %48, %49
  %51 = sdiv exact i64 %50, 4
  %52 = load i64, i64* %6, align 8
  %53 = add i64 %51, %52
  %54 = trunc i64 %53 to i32
  %55 = call i32 @memmove(i32* %36, i32* %41, i32 %54)
  %56 = load %struct.image_args*, %struct.image_args** %5, align 8
  %57 = getelementptr inbounds %struct.image_args, %struct.image_args* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp sgt i64 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %31
  %61 = load i64, i64* %8, align 8
  %62 = load %struct.image_args*, %struct.image_args** %5, align 8
  %63 = getelementptr inbounds %struct.image_args, %struct.image_args* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %65, %61
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %63, align 8
  br label %68

68:                                               ; preds = %60, %31
  %69 = load i64, i64* %8, align 8
  %70 = load %struct.image_args*, %struct.image_args** %5, align 8
  %71 = getelementptr inbounds %struct.image_args, %struct.image_args* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 %69
  store i32* %73, i32** %71, align 8
  %74 = load i64, i64* %8, align 8
  %75 = load %struct.image_args*, %struct.image_args** %5, align 8
  %76 = getelementptr inbounds %struct.image_args, %struct.image_args* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = sub nsw i64 %77, %74
  store i64 %78, i64* %76, align 8
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %68, %29
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
