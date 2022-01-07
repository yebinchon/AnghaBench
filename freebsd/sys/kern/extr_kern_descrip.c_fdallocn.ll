; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c_fdallocn.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c_fdallocn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.proc* }
%struct.proc = type { %struct.filedesc* }
%struct.filedesc = type { i32 }

@EMFILE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fdallocn(%struct.thread* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.thread*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.proc*, align 8
  %11 = alloca %struct.filedesc*, align 8
  %12 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.thread*, %struct.thread** %6, align 8
  %14 = getelementptr inbounds %struct.thread, %struct.thread* %13, i32 0, i32 0
  %15 = load %struct.proc*, %struct.proc** %14, align 8
  store %struct.proc* %15, %struct.proc** %10, align 8
  %16 = load %struct.proc*, %struct.proc** %10, align 8
  %17 = getelementptr inbounds %struct.proc, %struct.proc* %16, i32 0, i32 0
  %18 = load %struct.filedesc*, %struct.filedesc** %17, align 8
  store %struct.filedesc* %18, %struct.filedesc** %11, align 8
  %19 = load %struct.filedesc*, %struct.filedesc** %11, align 8
  %20 = call i32 @FILEDESC_XLOCK_ASSERT(%struct.filedesc* %19)
  store i32 0, i32* %12, align 4
  br label %21

21:                                               ; preds = %35, %4
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %21
  %26 = load %struct.thread*, %struct.thread** %6, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %12, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = call i64 @fdalloc(%struct.thread* %26, i32 0, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %38

34:                                               ; preds = %25
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %12, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %12, align 4
  br label %21

38:                                               ; preds = %33, %21
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %61

42:                                               ; preds = %38
  %43 = load i32, i32* %12, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %12, align 4
  br label %45

45:                                               ; preds = %56, %42
  %46 = load i32, i32* %12, align 4
  %47 = icmp sge i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %45
  %49 = load %struct.filedesc*, %struct.filedesc** %11, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @fdunused(%struct.filedesc* %49, i32 %54)
  br label %56

56:                                               ; preds = %48
  %57 = load i32, i32* %12, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %12, align 4
  br label %45

59:                                               ; preds = %45
  %60 = load i32, i32* @EMFILE, align 4
  store i32 %60, i32* %5, align 4
  br label %62

61:                                               ; preds = %38
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %61, %59
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i32 @FILEDESC_XLOCK_ASSERT(%struct.filedesc*) #1

declare dso_local i64 @fdalloc(%struct.thread*, i32, i32*) #1

declare dso_local i32 @fdunused(%struct.filedesc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
