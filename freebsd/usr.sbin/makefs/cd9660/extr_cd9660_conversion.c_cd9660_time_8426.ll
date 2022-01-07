; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/cd9660/extr_cd9660_conversion.c_cd9660_time_8426.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/cd9660/extr_cd9660_conversion.c_cd9660_time_8426.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [29 x i8] c"%04i%02i%02i%02i%02i%02i%02i\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cd9660_time_8426(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tm, align 8
  %6 = alloca [18 x i8], align 16
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call i32 @localtime_r(i32* %4, %struct.tm* %5)
  %8 = getelementptr inbounds [18 x i8], [18 x i8]* %6, i64 0, i64 0
  %9 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = trunc i64 %10 to i32
  %12 = add nsw i32 1900, %11
  %13 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = trunc i64 %14 to i32
  %16 = add nsw i32 %15, 1
  %17 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = trunc i64 %18 to i32
  %20 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i32
  %23 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 5
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  %29 = call i32 @snprintf(i8* %8, i32 18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %16, i32 %19, i32 %22, i32 %25, i32 %28, i32 0)
  %30 = load i8*, i8** %3, align 8
  %31 = getelementptr inbounds [18 x i8], [18 x i8]* %6, i64 0, i64 0
  %32 = call i32 @memcpy(i8* %30, i8* %31, i32 16)
  %33 = load i32, i32* %4, align 4
  %34 = call zeroext i8 @cd9660_compute_gm_offset(i32 %33)
  %35 = load i8*, i8** %3, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 16
  store i8 %34, i8* %36, align 1
  ret void
}

declare dso_local i32 @localtime_r(i32*, %struct.tm*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local zeroext i8 @cd9660_compute_gm_offset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
