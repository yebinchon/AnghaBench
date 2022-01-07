; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_util.c_alter.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_util.c_alter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i64 }

@CLOCK_REALTIME = common dso_local global i32 0, align 4
@UTIME_OMIT = common dso_local global i32 0, align 4
@AT_FDCWD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @alter(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [2 x %struct.timespec], align 16
  store i8* %0, i8** %2, align 8
  %4 = load i32, i32* @CLOCK_REALTIME, align 4
  %5 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %3, i64 0, i64 0
  %6 = call i32 @clock_gettime(i32 %4, %struct.timespec* %5)
  %7 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %3, i64 0, i64 0
  %8 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = add nsw i64 %9, 1
  store i64 %10, i64* %8, align 8
  %11 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %3, i64 0, i64 1
  %12 = getelementptr inbounds %struct.timespec, %struct.timespec* %11, i32 0, i32 1
  store i64 0, i64* %12, align 8
  %13 = load i32, i32* @UTIME_OMIT, align 4
  %14 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %3, i64 0, i64 1
  %15 = getelementptr inbounds %struct.timespec, %struct.timespec* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 16
  %16 = load i32, i32* @AT_FDCWD, align 4
  %17 = load i8*, i8** %2, align 8
  %18 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %3, i64 0, i64 0
  %19 = call i32 @utimensat(i32 %16, i8* %17, %struct.timespec* %18, i32 0)
  ret void
}

declare dso_local i32 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i32 @utimensat(i32, i8*, %struct.timespec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
