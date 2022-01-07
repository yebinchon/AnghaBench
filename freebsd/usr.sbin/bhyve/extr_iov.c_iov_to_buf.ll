; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_iov.c_iov_to_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_iov.c_iov_to_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iovec = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iov_to_buf(%struct.iovec* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iovec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.iovec* %0, %struct.iovec** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %11 = load %struct.iovec*, %struct.iovec** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i64 @count_iov(%struct.iovec* %11, i32 %12)
  store i64 %13, i64* %9, align 8
  %14 = load i8**, i8*** %7, align 8
  %15 = load i8*, i8** %14, align 8
  %16 = load i64, i64* %9, align 8
  %17 = call i8* @realloc(i8* %15, i64 %16)
  %18 = load i8**, i8*** %7, align 8
  store i8* %17, i8** %18, align 8
  %19 = load i8**, i8*** %7, align 8
  %20 = load i8*, i8** %19, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %60

23:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  store i64 0, i64* %8, align 8
  br label %24

24:                                               ; preds = %54, %23
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %57

28:                                               ; preds = %24
  %29 = load i8**, i8*** %7, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = load i64, i64* %8, align 8
  %32 = getelementptr i8, i8* %30, i64 %31
  %33 = load %struct.iovec*, %struct.iovec** %5, align 8
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.iovec, %struct.iovec* %33, i64 %35
  %37 = getelementptr inbounds %struct.iovec, %struct.iovec* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.iovec*, %struct.iovec** %5, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.iovec, %struct.iovec* %39, i64 %41
  %43 = getelementptr inbounds %struct.iovec, %struct.iovec* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @memcpy(i8* %32, i32 %38, i64 %44)
  %46 = load %struct.iovec*, %struct.iovec** %5, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.iovec, %struct.iovec* %46, i64 %48
  %50 = getelementptr inbounds %struct.iovec, %struct.iovec* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %8, align 8
  %53 = add i64 %52, %51
  store i64 %53, i64* %8, align 8
  br label %54

54:                                               ; preds = %28
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %10, align 4
  br label %24

57:                                               ; preds = %24
  %58 = load i64, i64* %9, align 8
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %57, %22
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i64 @count_iov(%struct.iovec*, i32) #1

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
