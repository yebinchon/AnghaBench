; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/spi/extr_spi.c__read_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/spi/extr_spi.c__read_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spigen_transfer = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8* }

@SPIGENIOC_TRANSFER = common dso_local global i32 0, align 4
@reversebits = common dso_local global i64* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Error performing SPI transaction, errno=%d\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*, i32, i32)* @_read_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_read_write(i32 %0, i8* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.spigen_transfer, align 8
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %80

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = load i8*, i8** %8, align 8
  store i8* %22, i8** %9, align 8
  br label %28

23:                                               ; preds = %18
  %24 = load i8*, i8** %9, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @memcpy(i8* %24, i8* %25, i32 %26)
  br label %28

28:                                               ; preds = %23, %21
  %29 = call i32 @bzero(%struct.spigen_transfer* %14, i32 16)
  %30 = load i8*, i8** %9, align 8
  %31 = getelementptr inbounds %struct.spigen_transfer, %struct.spigen_transfer* %14, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  %33 = load i32, i32* %10, align 4
  %34 = getelementptr inbounds %struct.spigen_transfer, %struct.spigen_transfer* %14, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @SPIGENIOC_TRANSFER, align 4
  %38 = call i64 @ioctl(i32 %36, i32 %37, %struct.spigen_transfer* %14)
  %39 = icmp slt i64 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 -1, i32 0
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %71, label %44

44:                                               ; preds = %28
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %71

47:                                               ; preds = %44
  store i32 0, i32* %13, align 4
  br label %48

48:                                               ; preds = %67, %47
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %70

52:                                               ; preds = %48
  %53 = load i64*, i64** @reversebits, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = bitcast i8* %54 to i64*
  %56 = load i32, i32* %13, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds i64, i64* %53, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = bitcast i8* %62 to i64*
  %64 = load i32, i32* %13, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  store i64 %61, i64* %66, align 8
  br label %67

67:                                               ; preds = %52
  %68 = load i32, i32* %13, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %13, align 4
  br label %48

70:                                               ; preds = %48
  br label %71

71:                                               ; preds = %70, %44, %28
  %72 = load i32, i32* %12, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load i32, i32* @stderr, align 4
  %76 = load i32, i32* @errno, align 4
  %77 = call i32 @fprintf(i32 %75, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %76)
  br label %78

78:                                               ; preds = %74, %71
  %79 = load i32, i32* %12, align 4
  store i32 %79, i32* %6, align 4
  br label %80

80:                                               ; preds = %78, %17
  %81 = load i32, i32* %6, align 4
  ret i32 %81
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @bzero(%struct.spigen_transfer*, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.spigen_transfer*) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
