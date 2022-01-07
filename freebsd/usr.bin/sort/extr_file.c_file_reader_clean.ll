; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_file.c_file_reader_clean.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_file.c_file_reader_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_reader = type { i64, i64, i64, i64, i32, i64 }

@stdin = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.file_reader*)* @file_reader_clean to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @file_reader_clean(%struct.file_reader* %0) #0 {
  %2 = alloca %struct.file_reader*, align 8
  store %struct.file_reader* %0, %struct.file_reader** %2, align 8
  %3 = load %struct.file_reader*, %struct.file_reader** %2, align 8
  %4 = icmp ne %struct.file_reader* %3, null
  br i1 %4, label %5, label %71

5:                                                ; preds = %1
  %6 = load %struct.file_reader*, %struct.file_reader** %2, align 8
  %7 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %6, i32 0, i32 5
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %5
  %11 = load %struct.file_reader*, %struct.file_reader** %2, align 8
  %12 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %11, i32 0, i32 5
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.file_reader*, %struct.file_reader** %2, align 8
  %15 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @munmap(i64 %13, i32 %16)
  br label %18

18:                                               ; preds = %10, %5
  %19 = load %struct.file_reader*, %struct.file_reader** %2, align 8
  %20 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.file_reader*, %struct.file_reader** %2, align 8
  %25 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @close(i64 %26)
  br label %28

28:                                               ; preds = %23, %18
  %29 = load %struct.file_reader*, %struct.file_reader** %2, align 8
  %30 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.file_reader*, %struct.file_reader** %2, align 8
  %35 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @sort_free(i64 %36)
  br label %38

38:                                               ; preds = %33, %28
  %39 = load %struct.file_reader*, %struct.file_reader** %2, align 8
  %40 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %38
  %44 = load %struct.file_reader*, %struct.file_reader** %2, align 8
  %45 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @stdin, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %43
  %50 = load %struct.file_reader*, %struct.file_reader** %2, align 8
  %51 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.file_reader*, %struct.file_reader** %2, align 8
  %54 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @closefile(i64 %52, i64 %55)
  br label %57

57:                                               ; preds = %49, %43
  br label %58

58:                                               ; preds = %57, %38
  %59 = load %struct.file_reader*, %struct.file_reader** %2, align 8
  %60 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load %struct.file_reader*, %struct.file_reader** %2, align 8
  %65 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @sort_free(i64 %66)
  br label %68

68:                                               ; preds = %63, %58
  %69 = load %struct.file_reader*, %struct.file_reader** %2, align 8
  %70 = call i32 @memset(%struct.file_reader* %69, i32 0, i32 48)
  br label %71

71:                                               ; preds = %68, %1
  ret void
}

declare dso_local i32 @munmap(i64, i32) #1

declare dso_local i32 @close(i64) #1

declare dso_local i32 @sort_free(i64) #1

declare dso_local i32 @closefile(i64, i64) #1

declare dso_local i32 @memset(%struct.file_reader*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
