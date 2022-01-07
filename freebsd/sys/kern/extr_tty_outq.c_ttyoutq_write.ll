; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_outq.c_ttyoutq_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_outq.c_ttyoutq_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttyoutq = type { i32, i64, %struct.ttyoutq_block*, %struct.ttyoutq_block* }
%struct.ttyoutq_block = type { i64, %struct.ttyoutq_block* }

@TTYOUTQ_DATASIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ttyoutq_write(%struct.ttyoutq* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.ttyoutq*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ttyoutq_block*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.ttyoutq* %0, %struct.ttyoutq** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i8*, i8** %5, align 8
  store i8* %11, i8** %7, align 8
  br label %12

12:                                               ; preds = %63, %3
  %13 = load i64, i64* %6, align 8
  %14 = icmp ugt i64 %13, 0
  br i1 %14, label %15, label %95

15:                                               ; preds = %12
  %16 = load %struct.ttyoutq*, %struct.ttyoutq** %4, align 8
  %17 = getelementptr inbounds %struct.ttyoutq, %struct.ttyoutq* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @TTYOUTQ_DATASIZE, align 4
  %20 = urem i32 %18, %19
  store i32 %20, i32* %9, align 4
  %21 = load %struct.ttyoutq*, %struct.ttyoutq** %4, align 8
  %22 = getelementptr inbounds %struct.ttyoutq, %struct.ttyoutq* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %15
  %26 = load %struct.ttyoutq*, %struct.ttyoutq** %4, align 8
  %27 = getelementptr inbounds %struct.ttyoutq, %struct.ttyoutq* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @MPASS(i32 %30)
  %32 = load %struct.ttyoutq*, %struct.ttyoutq** %4, align 8
  %33 = getelementptr inbounds %struct.ttyoutq, %struct.ttyoutq* %32, i32 0, i32 3
  %34 = load %struct.ttyoutq_block*, %struct.ttyoutq_block** %33, align 8
  store %struct.ttyoutq_block* %34, %struct.ttyoutq_block** %8, align 8
  %35 = load %struct.ttyoutq_block*, %struct.ttyoutq_block** %8, align 8
  %36 = icmp eq %struct.ttyoutq_block* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %25
  br label %95

38:                                               ; preds = %25
  %39 = load %struct.ttyoutq_block*, %struct.ttyoutq_block** %8, align 8
  %40 = load %struct.ttyoutq*, %struct.ttyoutq** %4, align 8
  %41 = getelementptr inbounds %struct.ttyoutq, %struct.ttyoutq* %40, i32 0, i32 2
  store %struct.ttyoutq_block* %39, %struct.ttyoutq_block** %41, align 8
  br label %63

42:                                               ; preds = %15
  %43 = load i32, i32* %9, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %42
  %46 = load %struct.ttyoutq*, %struct.ttyoutq** %4, align 8
  %47 = getelementptr inbounds %struct.ttyoutq, %struct.ttyoutq* %46, i32 0, i32 2
  %48 = load %struct.ttyoutq_block*, %struct.ttyoutq_block** %47, align 8
  %49 = getelementptr inbounds %struct.ttyoutq_block, %struct.ttyoutq_block* %48, i32 0, i32 1
  %50 = load %struct.ttyoutq_block*, %struct.ttyoutq_block** %49, align 8
  store %struct.ttyoutq_block* %50, %struct.ttyoutq_block** %8, align 8
  %51 = load %struct.ttyoutq_block*, %struct.ttyoutq_block** %8, align 8
  %52 = icmp eq %struct.ttyoutq_block* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  br label %95

54:                                               ; preds = %45
  %55 = load %struct.ttyoutq_block*, %struct.ttyoutq_block** %8, align 8
  %56 = load %struct.ttyoutq*, %struct.ttyoutq** %4, align 8
  %57 = getelementptr inbounds %struct.ttyoutq, %struct.ttyoutq* %56, i32 0, i32 2
  store %struct.ttyoutq_block* %55, %struct.ttyoutq_block** %57, align 8
  br label %62

58:                                               ; preds = %42
  %59 = load %struct.ttyoutq*, %struct.ttyoutq** %4, align 8
  %60 = getelementptr inbounds %struct.ttyoutq, %struct.ttyoutq* %59, i32 0, i32 2
  %61 = load %struct.ttyoutq_block*, %struct.ttyoutq_block** %60, align 8
  store %struct.ttyoutq_block* %61, %struct.ttyoutq_block** %8, align 8
  br label %62

62:                                               ; preds = %58, %54
  br label %63

63:                                               ; preds = %62, %38
  %64 = load i64, i64* %6, align 8
  %65 = load i32, i32* @TTYOUTQ_DATASIZE, align 4
  %66 = load i32, i32* %9, align 4
  %67 = sub i32 %65, %66
  %68 = call i64 @MIN(i64 %64, i32 %67)
  store i64 %68, i64* %10, align 8
  %69 = load i64, i64* %10, align 8
  %70 = icmp ugt i64 %69, 0
  %71 = zext i1 %70 to i32
  %72 = call i32 @MPASS(i32 %71)
  %73 = load %struct.ttyoutq_block*, %struct.ttyoutq_block** %8, align 8
  %74 = getelementptr inbounds %struct.ttyoutq_block, %struct.ttyoutq_block* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = zext i32 %76 to i64
  %78 = add nsw i64 %75, %77
  %79 = load i8*, i8** %7, align 8
  %80 = load i64, i64* %10, align 8
  %81 = call i32 @memcpy(i64 %78, i8* %79, i64 %80)
  %82 = load i64, i64* %10, align 8
  %83 = load i8*, i8** %7, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 %82
  store i8* %84, i8** %7, align 8
  %85 = load i64, i64* %10, align 8
  %86 = load i64, i64* %6, align 8
  %87 = sub i64 %86, %85
  store i64 %87, i64* %6, align 8
  %88 = load i64, i64* %10, align 8
  %89 = load %struct.ttyoutq*, %struct.ttyoutq** %4, align 8
  %90 = getelementptr inbounds %struct.ttyoutq, %struct.ttyoutq* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = zext i32 %91 to i64
  %93 = add i64 %92, %88
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %90, align 8
  br label %12

95:                                               ; preds = %53, %37, %12
  %96 = load i8*, i8** %7, align 8
  %97 = load i8*, i8** %5, align 8
  %98 = ptrtoint i8* %96 to i64
  %99 = ptrtoint i8* %97 to i64
  %100 = sub i64 %98, %99
  ret i64 %100
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i64 @MIN(i64, i32) #1

declare dso_local i32 @memcpy(i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
