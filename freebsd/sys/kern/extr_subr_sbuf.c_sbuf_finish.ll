; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_sbuf.c_sbuf_finish.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_sbuf.c_sbuf_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i8*, i64, i64, i32* }

@SBUF_FINISHED = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sbuf_finish(%struct.sbuf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sbuf*, align 8
  store %struct.sbuf* %0, %struct.sbuf** %3, align 8
  %4 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %5 = call i32 @assert_sbuf_integrity(%struct.sbuf* %4)
  %6 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %7 = call i32 @assert_sbuf_state(%struct.sbuf* %6, i32 0)
  %8 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %9 = getelementptr inbounds %struct.sbuf, %struct.sbuf* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %12 = getelementptr inbounds %struct.sbuf, %struct.sbuf* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds i8, i8* %10, i64 %13
  store i8 0, i8* %14, align 1
  %15 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %16 = call i64 @SBUF_NULINCLUDED(%struct.sbuf* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %20 = getelementptr inbounds %struct.sbuf, %struct.sbuf* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* %20, align 8
  br label %23

23:                                               ; preds = %18, %1
  %24 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %25 = getelementptr inbounds %struct.sbuf, %struct.sbuf* %24, i32 0, i32 3
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %47

28:                                               ; preds = %23
  br label %29

29:                                               ; preds = %41, %28
  %30 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %31 = getelementptr inbounds %struct.sbuf, %struct.sbuf* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ugt i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %36 = getelementptr inbounds %struct.sbuf, %struct.sbuf* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br label %39

39:                                               ; preds = %34, %29
  %40 = phi i1 [ false, %29 ], [ %38, %34 ]
  br i1 %40, label %41, label %46

41:                                               ; preds = %39
  %42 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %43 = call i64 @sbuf_drain(%struct.sbuf* %42)
  %44 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %45 = getelementptr inbounds %struct.sbuf, %struct.sbuf* %44, i32 0, i32 2
  store i64 %43, i64* %45, align 8
  br label %29

46:                                               ; preds = %39
  br label %47

47:                                               ; preds = %46, %23
  %48 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %49 = load i32, i32* @SBUF_FINISHED, align 4
  %50 = call i32 @SBUF_SETFLAG(%struct.sbuf* %48, i32 %49)
  %51 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %52 = getelementptr inbounds %struct.sbuf, %struct.sbuf* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %47
  %56 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %57 = getelementptr inbounds %struct.sbuf, %struct.sbuf* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* @errno, align 8
  store i32 -1, i32* %2, align 4
  br label %60

59:                                               ; preds = %47
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %55
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @assert_sbuf_integrity(%struct.sbuf*) #1

declare dso_local i32 @assert_sbuf_state(%struct.sbuf*, i32) #1

declare dso_local i64 @SBUF_NULINCLUDED(%struct.sbuf*) #1

declare dso_local i64 @sbuf_drain(%struct.sbuf*) #1

declare dso_local i32 @SBUF_SETFLAG(%struct.sbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
