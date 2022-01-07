; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_inq.c_ttyinq_findchar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_inq.c_ttyinq_findchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttyinq = type { i32, i64, %struct.ttyinq_block* }
%struct.ttyinq_block = type { i8* }

@TTYINQ_DATASIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ttyinq_findchar(%struct.ttyinq* %0, i8* %1, i64 %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.ttyinq*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ttyinq_block*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ttyinq* %0, %struct.ttyinq** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.ttyinq*, %struct.ttyinq** %6, align 8
  %14 = getelementptr inbounds %struct.ttyinq, %struct.ttyinq* %13, i32 0, i32 2
  %15 = load %struct.ttyinq_block*, %struct.ttyinq_block** %14, align 8
  store %struct.ttyinq_block* %15, %struct.ttyinq_block** %10, align 8
  %16 = load %struct.ttyinq*, %struct.ttyinq** %6, align 8
  %17 = getelementptr inbounds %struct.ttyinq, %struct.ttyinq* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* @TTYINQ_DATASIZE, align 4
  %20 = load %struct.ttyinq*, %struct.ttyinq** %6, align 8
  %21 = getelementptr inbounds %struct.ttyinq, %struct.ttyinq* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @MIN(i32 %19, i64 %22)
  %24 = load %struct.ttyinq*, %struct.ttyinq** %6, align 8
  %25 = getelementptr inbounds %struct.ttyinq, %struct.ttyinq* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = zext i32 %26 to i64
  %28 = load i64, i64* %8, align 8
  %29 = add i64 %27, %28
  %30 = call i32 @MIN(i32 %23, i64 %29)
  store i32 %30, i32* %12, align 4
  %31 = load i64, i64* %8, align 8
  %32 = icmp ugt i64 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @MPASS(i32 %33)
  %35 = load %struct.ttyinq_block*, %struct.ttyinq_block** %10, align 8
  %36 = icmp eq %struct.ttyinq_block* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  br label %85

38:                                               ; preds = %4
  br label %39

39:                                               ; preds = %75, %38
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %43, label %78

43:                                               ; preds = %39
  %44 = load i8*, i8** %7, align 8
  %45 = load %struct.ttyinq_block*, %struct.ttyinq_block** %10, align 8
  %46 = getelementptr inbounds %struct.ttyinq_block, %struct.ttyinq_block* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = load i32, i32* %11, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = call i64 @strchr(i8* %44, i8 signext %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %75

54:                                               ; preds = %43
  %55 = load %struct.ttyinq_block*, %struct.ttyinq_block** %10, align 8
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @GETBIT(%struct.ttyinq_block* %55, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %75, label %59

59:                                               ; preds = %54
  %60 = load %struct.ttyinq_block*, %struct.ttyinq_block** %10, align 8
  %61 = getelementptr inbounds %struct.ttyinq_block, %struct.ttyinq_block* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = load i32, i32* %11, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = load i8*, i8** %9, align 8
  store i8 %66, i8* %67, align 1
  %68 = load i32, i32* %11, align 4
  %69 = load %struct.ttyinq*, %struct.ttyinq** %6, align 8
  %70 = getelementptr inbounds %struct.ttyinq, %struct.ttyinq* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sub i32 %68, %71
  %73 = add i32 %72, 1
  %74 = zext i32 %73 to i64
  store i64 %74, i64* %5, align 8
  br label %85

75:                                               ; preds = %54, %43
  %76 = load i32, i32* %11, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %11, align 4
  br label %39

78:                                               ; preds = %39
  %79 = load i32, i32* %12, align 4
  %80 = load %struct.ttyinq*, %struct.ttyinq** %6, align 8
  %81 = getelementptr inbounds %struct.ttyinq, %struct.ttyinq* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sub i32 %79, %82
  %84 = zext i32 %83 to i64
  store i64 %84, i64* %5, align 8
  br label %85

85:                                               ; preds = %78, %59, %37
  %86 = load i64, i64* %5, align 8
  ret i64 %86
}

declare dso_local i32 @MIN(i32, i64) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i32 @GETBIT(%struct.ttyinq_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
