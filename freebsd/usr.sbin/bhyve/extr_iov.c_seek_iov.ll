; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_iov.c_seek_iov.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_iov.c_seek_iov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iovec = type { i64, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @seek_iov(%struct.iovec* %0, i32 %1, %struct.iovec* %2, i32* %3, i64 %4) #0 {
  %6 = alloca %struct.iovec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.iovec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.iovec* %0, %struct.iovec** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.iovec* %2, %struct.iovec** %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %16 = load i64, i64* %10, align 8
  store i64 %16, i64* %12, align 8
  store i32 0, i32* %13, align 4
  br label %17

17:                                               ; preds = %48, %5
  %18 = load i32, i32* %13, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %51

21:                                               ; preds = %17
  %22 = load i64, i64* %12, align 8
  %23 = load %struct.iovec*, %struct.iovec** %6, align 8
  %24 = load i32, i32* %13, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.iovec, %struct.iovec* %23, i64 %25
  %27 = getelementptr inbounds %struct.iovec, %struct.iovec* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @MIN(i64 %22, i64 %28)
  store i64 %29, i64* %15, align 8
  %30 = load i64, i64* %15, align 8
  %31 = load i64, i64* %12, align 8
  %32 = sub i64 %31, %30
  store i64 %32, i64* %12, align 8
  %33 = load i64, i64* %15, align 8
  %34 = load %struct.iovec*, %struct.iovec** %6, align 8
  %35 = load i32, i32* %13, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.iovec, %struct.iovec* %34, i64 %36
  %38 = getelementptr inbounds %struct.iovec, %struct.iovec* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %33, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %21
  br label %48

42:                                               ; preds = %21
  %43 = load i64, i64* %12, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i64, i64* %15, align 8
  store i64 %46, i64* %11, align 8
  br label %51

47:                                               ; preds = %42
  br label %48

48:                                               ; preds = %47, %41
  %49 = load i32, i32* %13, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %13, align 4
  br label %17

51:                                               ; preds = %45, %17
  %52 = load i32, i32* %13, align 4
  store i32 %52, i32* %14, align 4
  br label %53

53:                                               ; preds = %88, %51
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %91

57:                                               ; preds = %53
  %58 = load %struct.iovec*, %struct.iovec** %6, align 8
  %59 = load i32, i32* %14, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.iovec, %struct.iovec* %58, i64 %60
  %62 = getelementptr inbounds %struct.iovec, %struct.iovec* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = load i64, i64* %11, align 8
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  %66 = load %struct.iovec*, %struct.iovec** %8, align 8
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* %13, align 4
  %69 = sub nsw i32 %67, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.iovec, %struct.iovec* %66, i64 %70
  %72 = getelementptr inbounds %struct.iovec, %struct.iovec* %71, i32 0, i32 1
  store i8* %65, i8** %72, align 8
  %73 = load %struct.iovec*, %struct.iovec** %6, align 8
  %74 = load i32, i32* %14, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.iovec, %struct.iovec* %73, i64 %75
  %77 = getelementptr inbounds %struct.iovec, %struct.iovec* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* %11, align 8
  %80 = sub i64 %78, %79
  %81 = load %struct.iovec*, %struct.iovec** %8, align 8
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* %13, align 4
  %84 = sub nsw i32 %82, %83
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.iovec, %struct.iovec* %81, i64 %85
  %87 = getelementptr inbounds %struct.iovec, %struct.iovec* %86, i32 0, i32 0
  store i64 %80, i64* %87, align 8
  store i64 0, i64* %11, align 8
  br label %88

88:                                               ; preds = %57
  %89 = load i32, i32* %14, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %14, align 4
  br label %53

91:                                               ; preds = %53
  %92 = load i32, i32* %14, align 4
  %93 = load i32, i32* %13, align 4
  %94 = sub nsw i32 %92, %93
  %95 = load i32*, i32** %9, align 8
  store i32 %94, i32* %95, align 4
  ret void
}

declare dso_local i64 @MIN(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
