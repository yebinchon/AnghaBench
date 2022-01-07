; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_sbuf.c_sbuf_put_bytes.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_sbuf.c_sbuf_put_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i64, i64, i64, i32*, i32* }

@INT_MAX = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sbuf*, i8*, i64)* @sbuf_put_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sbuf_put_bytes(%struct.sbuf* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.sbuf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.sbuf* %0, %struct.sbuf** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %9 = call i32 @assert_sbuf_integrity(%struct.sbuf* %8)
  %10 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %11 = call i32 @assert_sbuf_state(%struct.sbuf* %10, i32 0)
  %12 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %13 = getelementptr inbounds %struct.sbuf, %struct.sbuf* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %98

17:                                               ; preds = %3
  br label %18

18:                                               ; preds = %91, %17
  %19 = load i64, i64* %6, align 8
  %20 = icmp ugt i64 %19, 0
  br i1 %20, label %21, label %98

21:                                               ; preds = %18
  %22 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %23 = call i64 @SBUF_FREESPACE(%struct.sbuf* %22)
  %24 = icmp ule i64 %23, 0
  br i1 %24, label %25, label %58

25:                                               ; preds = %21
  %26 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %27 = getelementptr inbounds %struct.sbuf, %struct.sbuf* %26, i32 0, i32 4
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %32 = call i32 @sbuf_drain(%struct.sbuf* %31)
  br label %51

33:                                               ; preds = %25
  %34 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* @INT_MAX, align 8
  %37 = icmp ugt i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i64, i64* @INT_MAX, align 8
  br label %42

40:                                               ; preds = %33
  %41 = load i64, i64* %6, align 8
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i64 [ %39, %38 ], [ %41, %40 ]
  %44 = call i64 @sbuf_extend(%struct.sbuf* %34, i64 %43)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i64, i64* @ENOMEM, align 8
  %48 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %49 = getelementptr inbounds %struct.sbuf, %struct.sbuf* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  br label %50

50:                                               ; preds = %46, %42
  br label %51

51:                                               ; preds = %50, %30
  %52 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %53 = getelementptr inbounds %struct.sbuf, %struct.sbuf* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %98

57:                                               ; preds = %51
  br label %58

58:                                               ; preds = %57, %21
  %59 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %60 = call i64 @SBUF_FREESPACE(%struct.sbuf* %59)
  store i64 %60, i64* %7, align 8
  %61 = load i64, i64* %6, align 8
  %62 = load i64, i64* %7, align 8
  %63 = icmp ult i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i64, i64* %6, align 8
  store i64 %65, i64* %7, align 8
  br label %66

66:                                               ; preds = %64, %58
  %67 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %68 = getelementptr inbounds %struct.sbuf, %struct.sbuf* %67, i32 0, i32 3
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %71 = getelementptr inbounds %struct.sbuf, %struct.sbuf* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  %74 = load i8*, i8** %5, align 8
  %75 = load i64, i64* %7, align 8
  %76 = call i32 @memcpy(i32* %73, i8* %74, i64 %75)
  %77 = load i64, i64* %7, align 8
  %78 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %79 = getelementptr inbounds %struct.sbuf, %struct.sbuf* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = add i64 %80, %77
  store i64 %81, i64* %79, align 8
  %82 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %83 = call i64 @SBUF_ISSECTION(%struct.sbuf* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %66
  %86 = load i64, i64* %7, align 8
  %87 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %88 = getelementptr inbounds %struct.sbuf, %struct.sbuf* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = add i64 %89, %86
  store i64 %90, i64* %88, align 8
  br label %91

91:                                               ; preds = %85, %66
  %92 = load i64, i64* %7, align 8
  %93 = load i64, i64* %6, align 8
  %94 = sub i64 %93, %92
  store i64 %94, i64* %6, align 8
  %95 = load i64, i64* %7, align 8
  %96 = load i8*, i8** %5, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 %95
  store i8* %97, i8** %5, align 8
  br label %18

98:                                               ; preds = %16, %56, %18
  ret void
}

declare dso_local i32 @assert_sbuf_integrity(%struct.sbuf*) #1

declare dso_local i32 @assert_sbuf_state(%struct.sbuf*, i32) #1

declare dso_local i64 @SBUF_FREESPACE(%struct.sbuf*) #1

declare dso_local i32 @sbuf_drain(%struct.sbuf*) #1

declare dso_local i64 @sbuf_extend(%struct.sbuf*, i64) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

declare dso_local i64 @SBUF_ISSECTION(%struct.sbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
