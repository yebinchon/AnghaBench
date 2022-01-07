; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_dump.c_dumpsys_buf_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_dump.c_dumpsys_buf_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dumperinfo = type { i32, i64 }

@fragsz = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dumpsys_buf_write(%struct.dumperinfo* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dumperinfo*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.dumperinfo* %0, %struct.dumperinfo** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  br label %10

10:                                               ; preds = %66, %3
  %11 = load i64, i64* %7, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %67

13:                                               ; preds = %10
  %14 = load %struct.dumperinfo*, %struct.dumperinfo** %5, align 8
  %15 = getelementptr inbounds %struct.dumperinfo, %struct.dumperinfo* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @fragsz, align 4
  %18 = sub nsw i32 %16, %17
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* %7, align 8
  %22 = icmp ugt i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %13
  %24 = load i64, i64* %7, align 8
  store i64 %24, i64* %8, align 8
  br label %25

25:                                               ; preds = %23, %13
  %26 = load %struct.dumperinfo*, %struct.dumperinfo** %5, align 8
  %27 = getelementptr inbounds %struct.dumperinfo, %struct.dumperinfo* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i8*
  %30 = load i32, i32* @fragsz, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = load i8*, i8** %6, align 8
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @memcpy(i8* %32, i8* %33, i64 %34)
  %36 = load i64, i64* %8, align 8
  %37 = load i32, i32* @fragsz, align 4
  %38 = sext i32 %37 to i64
  %39 = add i64 %38, %36
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* @fragsz, align 4
  %41 = load i64, i64* %8, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 %41
  store i8* %43, i8** %6, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* %7, align 8
  %46 = sub i64 %45, %44
  store i64 %46, i64* %7, align 8
  %47 = load i32, i32* @fragsz, align 4
  %48 = load %struct.dumperinfo*, %struct.dumperinfo** %5, align 8
  %49 = getelementptr inbounds %struct.dumperinfo, %struct.dumperinfo* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp eq i32 %47, %50
  br i1 %51, label %52, label %66

52:                                               ; preds = %25
  %53 = load %struct.dumperinfo*, %struct.dumperinfo** %5, align 8
  %54 = load %struct.dumperinfo*, %struct.dumperinfo** %5, align 8
  %55 = getelementptr inbounds %struct.dumperinfo, %struct.dumperinfo* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.dumperinfo*, %struct.dumperinfo** %5, align 8
  %58 = getelementptr inbounds %struct.dumperinfo, %struct.dumperinfo* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @dump_append(%struct.dumperinfo* %53, i64 %56, i32 0, i32 %59)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %52
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %4, align 4
  br label %68

65:                                               ; preds = %52
  store i32 0, i32* @fragsz, align 4
  br label %66

66:                                               ; preds = %65, %25
  br label %10

67:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %67, %63
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @dump_append(%struct.dumperinfo*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
