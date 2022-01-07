; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_sbuf.c_sbuf_end_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_sbuf.c_sbuf_end_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i64, i64, i64 }

@.str = private unnamed_addr constant [47 x i8] c"attempt to end a section when not in a section\00", align 1
@SBUF_INSECTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sbuf_end_section(%struct.sbuf* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.sbuf*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.sbuf* %0, %struct.sbuf** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %12 = call i32 @assert_sbuf_integrity(%struct.sbuf* %11)
  %13 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %14 = call i32 @assert_sbuf_state(%struct.sbuf* %13, i32 0)
  %15 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %16 = call i32 @SBUF_ISSECTION(%struct.sbuf* %15)
  %17 = call i32 @KASSERT(i32 %16, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %18 = load i64, i64* %8, align 8
  %19 = icmp ugt i64 %18, 1
  br i1 %19, label %20, label %48

20:                                               ; preds = %4
  %21 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %22 = getelementptr inbounds %struct.sbuf, %struct.sbuf* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %8, align 8
  %25 = call i64 @roundup(i64 %23, i64 %24)
  %26 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %27 = getelementptr inbounds %struct.sbuf, %struct.sbuf* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = sub nsw i64 %25, %28
  store i64 %29, i64* %10, align 8
  br label %30

30:                                               ; preds = %44, %20
  %31 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %32 = getelementptr inbounds %struct.sbuf, %struct.sbuf* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i64, i64* %10, align 8
  %37 = icmp sgt i64 %36, 0
  br label %38

38:                                               ; preds = %35, %30
  %39 = phi i1 [ false, %30 ], [ %37, %35 ]
  br i1 %39, label %40, label %47

40:                                               ; preds = %38
  %41 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @sbuf_put_byte(%struct.sbuf* %41, i32 %42)
  br label %44

44:                                               ; preds = %40
  %45 = load i64, i64* %10, align 8
  %46 = add nsw i64 %45, -1
  store i64 %46, i64* %10, align 8
  br label %30

47:                                               ; preds = %38
  br label %48

48:                                               ; preds = %47, %4
  %49 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %50 = getelementptr inbounds %struct.sbuf, %struct.sbuf* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %10, align 8
  %52 = load i64, i64* %7, align 8
  %53 = icmp eq i64 %52, -1
  br i1 %53, label %54, label %62

54:                                               ; preds = %48
  %55 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %56 = getelementptr inbounds %struct.sbuf, %struct.sbuf* %55, i32 0, i32 0
  store i64 0, i64* %56, align 8
  %57 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %58 = getelementptr inbounds %struct.sbuf, %struct.sbuf* %57, i32 0, i32 2
  store i64 0, i64* %58, align 8
  %59 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %60 = load i32, i32* @SBUF_INSECTION, align 4
  %61 = call i32 @SBUF_CLEARFLAG(%struct.sbuf* %59, i32 %60)
  br label %68

62:                                               ; preds = %48
  %63 = load i64, i64* %7, align 8
  %64 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %65 = getelementptr inbounds %struct.sbuf, %struct.sbuf* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, %63
  store i64 %67, i64* %65, align 8
  br label %68

68:                                               ; preds = %62, %54
  %69 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %70 = getelementptr inbounds %struct.sbuf, %struct.sbuf* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  store i64 -1, i64* %5, align 8
  br label %76

74:                                               ; preds = %68
  %75 = load i64, i64* %10, align 8
  store i64 %75, i64* %5, align 8
  br label %76

76:                                               ; preds = %74, %73
  %77 = load i64, i64* %5, align 8
  ret i64 %77
}

declare dso_local i32 @assert_sbuf_integrity(%struct.sbuf*) #1

declare dso_local i32 @assert_sbuf_state(%struct.sbuf*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @SBUF_ISSECTION(%struct.sbuf*) #1

declare dso_local i64 @roundup(i64, i64) #1

declare dso_local i32 @sbuf_put_byte(%struct.sbuf*, i32) #1

declare dso_local i32 @SBUF_CLEARFLAG(%struct.sbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
