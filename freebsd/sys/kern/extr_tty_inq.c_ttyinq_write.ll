; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_inq.c_ttyinq_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_inq.c_ttyinq_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttyinq = type { i32, i64, %struct.ttyinq_block*, %struct.ttyinq_block* }
%struct.ttyinq_block = type { i64, %struct.ttyinq_block* }

@TTYINQ_DATASIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ttyinq_write(%struct.ttyinq* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.ttyinq*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ttyinq_block*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.ttyinq* %0, %struct.ttyinq** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i8*, i8** %6, align 8
  store i8* %13, i8** %9, align 8
  br label %14

14:                                               ; preds = %65, %4
  %15 = load i64, i64* %7, align 8
  %16 = icmp ugt i64 %15, 0
  br i1 %16, label %17, label %102

17:                                               ; preds = %14
  %18 = load %struct.ttyinq*, %struct.ttyinq** %5, align 8
  %19 = getelementptr inbounds %struct.ttyinq, %struct.ttyinq* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @TTYINQ_DATASIZE, align 4
  %22 = urem i32 %20, %21
  store i32 %22, i32* %11, align 4
  %23 = load %struct.ttyinq*, %struct.ttyinq** %5, align 8
  %24 = getelementptr inbounds %struct.ttyinq, %struct.ttyinq* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %17
  %28 = load %struct.ttyinq*, %struct.ttyinq** %5, align 8
  %29 = getelementptr inbounds %struct.ttyinq, %struct.ttyinq* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @MPASS(i32 %32)
  %34 = load %struct.ttyinq*, %struct.ttyinq** %5, align 8
  %35 = getelementptr inbounds %struct.ttyinq, %struct.ttyinq* %34, i32 0, i32 3
  %36 = load %struct.ttyinq_block*, %struct.ttyinq_block** %35, align 8
  store %struct.ttyinq_block* %36, %struct.ttyinq_block** %10, align 8
  %37 = load %struct.ttyinq_block*, %struct.ttyinq_block** %10, align 8
  %38 = icmp eq %struct.ttyinq_block* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %27
  br label %102

40:                                               ; preds = %27
  %41 = load %struct.ttyinq_block*, %struct.ttyinq_block** %10, align 8
  %42 = load %struct.ttyinq*, %struct.ttyinq** %5, align 8
  %43 = getelementptr inbounds %struct.ttyinq, %struct.ttyinq* %42, i32 0, i32 2
  store %struct.ttyinq_block* %41, %struct.ttyinq_block** %43, align 8
  br label %65

44:                                               ; preds = %17
  %45 = load i32, i32* %11, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %44
  %48 = load %struct.ttyinq*, %struct.ttyinq** %5, align 8
  %49 = getelementptr inbounds %struct.ttyinq, %struct.ttyinq* %48, i32 0, i32 2
  %50 = load %struct.ttyinq_block*, %struct.ttyinq_block** %49, align 8
  %51 = getelementptr inbounds %struct.ttyinq_block, %struct.ttyinq_block* %50, i32 0, i32 1
  %52 = load %struct.ttyinq_block*, %struct.ttyinq_block** %51, align 8
  store %struct.ttyinq_block* %52, %struct.ttyinq_block** %10, align 8
  %53 = load %struct.ttyinq_block*, %struct.ttyinq_block** %10, align 8
  %54 = icmp eq %struct.ttyinq_block* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  br label %102

56:                                               ; preds = %47
  %57 = load %struct.ttyinq_block*, %struct.ttyinq_block** %10, align 8
  %58 = load %struct.ttyinq*, %struct.ttyinq** %5, align 8
  %59 = getelementptr inbounds %struct.ttyinq, %struct.ttyinq* %58, i32 0, i32 2
  store %struct.ttyinq_block* %57, %struct.ttyinq_block** %59, align 8
  br label %64

60:                                               ; preds = %44
  %61 = load %struct.ttyinq*, %struct.ttyinq** %5, align 8
  %62 = getelementptr inbounds %struct.ttyinq, %struct.ttyinq* %61, i32 0, i32 2
  %63 = load %struct.ttyinq_block*, %struct.ttyinq_block** %62, align 8
  store %struct.ttyinq_block* %63, %struct.ttyinq_block** %10, align 8
  br label %64

64:                                               ; preds = %60, %56
  br label %65

65:                                               ; preds = %64, %40
  %66 = load i64, i64* %7, align 8
  %67 = load i32, i32* @TTYINQ_DATASIZE, align 4
  %68 = load i32, i32* %11, align 4
  %69 = sub i32 %67, %68
  %70 = call i64 @MIN(i64 %66, i32 %69)
  store i64 %70, i64* %12, align 8
  %71 = load i64, i64* %12, align 8
  %72 = icmp ugt i64 %71, 0
  %73 = zext i1 %72 to i32
  %74 = call i32 @MPASS(i32 %73)
  %75 = load %struct.ttyinq_block*, %struct.ttyinq_block** %10, align 8
  %76 = getelementptr inbounds %struct.ttyinq_block, %struct.ttyinq_block* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* %11, align 4
  %79 = zext i32 %78 to i64
  %80 = add nsw i64 %77, %79
  %81 = load i8*, i8** %9, align 8
  %82 = load i64, i64* %12, align 8
  %83 = call i32 @memcpy(i64 %80, i8* %81, i64 %82)
  %84 = load %struct.ttyinq_block*, %struct.ttyinq_block** %10, align 8
  %85 = load i32, i32* %11, align 4
  %86 = load i64, i64* %12, align 8
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @ttyinq_set_quotes(%struct.ttyinq_block* %84, i32 %85, i64 %86, i32 %87)
  %89 = load i64, i64* %12, align 8
  %90 = load i8*, i8** %9, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 %89
  store i8* %91, i8** %9, align 8
  %92 = load i64, i64* %12, align 8
  %93 = load i64, i64* %7, align 8
  %94 = sub i64 %93, %92
  store i64 %94, i64* %7, align 8
  %95 = load i64, i64* %12, align 8
  %96 = load %struct.ttyinq*, %struct.ttyinq** %5, align 8
  %97 = getelementptr inbounds %struct.ttyinq, %struct.ttyinq* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = zext i32 %98 to i64
  %100 = add i64 %99, %95
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %97, align 8
  br label %14

102:                                              ; preds = %55, %39, %14
  %103 = load i8*, i8** %9, align 8
  %104 = load i8*, i8** %6, align 8
  %105 = ptrtoint i8* %103 to i64
  %106 = ptrtoint i8* %104 to i64
  %107 = sub i64 %105, %106
  ret i64 %107
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i64 @MIN(i64, i32) #1

declare dso_local i32 @memcpy(i64, i8*, i64) #1

declare dso_local i32 @ttyinq_set_quotes(%struct.ttyinq_block*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
