; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/ipcs/extr_ipc.c_sysctlgatherstruct.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/ipcs/extr_ipc.c_sysctlgatherstruct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scgs_vector = type { i64, i64, i32* }

@.str = private unnamed_addr constant [17 x i8] c"sysctlbyname: %s\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"%s size mismatch (expected %zu, got %zu)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sysctlgatherstruct(i8* %0, i64 %1, %struct.scgs_vector* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.scgs_vector*, align 8
  %7 = alloca %struct.scgs_vector*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.scgs_vector* %2, %struct.scgs_vector** %6, align 8
  %10 = load %struct.scgs_vector*, %struct.scgs_vector** %6, align 8
  store %struct.scgs_vector* %10, %struct.scgs_vector** %7, align 8
  br label %11

11:                                               ; preds = %59, %3
  %12 = load %struct.scgs_vector*, %struct.scgs_vector** %7, align 8
  %13 = getelementptr inbounds %struct.scgs_vector, %struct.scgs_vector* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %62

16:                                               ; preds = %11
  %17 = load %struct.scgs_vector*, %struct.scgs_vector** %7, align 8
  %18 = getelementptr inbounds %struct.scgs_vector, %struct.scgs_vector* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %5, align 8
  %21 = icmp ule i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.scgs_vector*, %struct.scgs_vector** %7, align 8
  %25 = getelementptr inbounds %struct.scgs_vector, %struct.scgs_vector* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %8, align 8
  %27 = load %struct.scgs_vector*, %struct.scgs_vector** %7, align 8
  %28 = getelementptr inbounds %struct.scgs_vector, %struct.scgs_vector* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = load %struct.scgs_vector*, %struct.scgs_vector** %7, align 8
  %32 = getelementptr inbounds %struct.scgs_vector, %struct.scgs_vector* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds i8, i8* %30, i64 %33
  %35 = call i32 @sysctlbyname(i32* %29, i8* %34, i64* %8, i32* null, i32 0)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %43

38:                                               ; preds = %16
  %39 = load %struct.scgs_vector*, %struct.scgs_vector** %7, align 8
  %40 = getelementptr inbounds %struct.scgs_vector, %struct.scgs_vector* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @err(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* %41)
  br label %43

43:                                               ; preds = %38, %16
  %44 = load i64, i64* %8, align 8
  %45 = load %struct.scgs_vector*, %struct.scgs_vector** %7, align 8
  %46 = getelementptr inbounds %struct.scgs_vector, %struct.scgs_vector* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %44, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %43
  %50 = load %struct.scgs_vector*, %struct.scgs_vector** %7, align 8
  %51 = getelementptr inbounds %struct.scgs_vector, %struct.scgs_vector* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.scgs_vector*, %struct.scgs_vector** %7, align 8
  %54 = getelementptr inbounds %struct.scgs_vector, %struct.scgs_vector* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %8, align 8
  %57 = call i32 @errx(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32* %52, i64 %55, i64 %56)
  br label %58

58:                                               ; preds = %49, %43
  br label %59

59:                                               ; preds = %58
  %60 = load %struct.scgs_vector*, %struct.scgs_vector** %7, align 8
  %61 = getelementptr inbounds %struct.scgs_vector, %struct.scgs_vector* %60, i32 1
  store %struct.scgs_vector* %61, %struct.scgs_vector** %7, align 8
  br label %11

62:                                               ; preds = %11
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sysctlbyname(i32*, i8*, i64*, i32*, i32) #1

declare dso_local i32 @err(i32, i8*, i32*) #1

declare dso_local i32 @errx(i32, i8*, i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
