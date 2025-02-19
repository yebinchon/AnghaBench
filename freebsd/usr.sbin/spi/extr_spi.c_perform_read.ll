; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/spi/extr_spi.c_perform_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/spi/extr_spi.c_perform_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_options = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.spi_options*)* @perform_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perform_read(i32 %0, %struct.spi_options* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_options*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.spi_options* %1, %struct.spi_options** %4, align 8
  store i8* null, i8** %7, align 8
  %9 = load %struct.spi_options*, %struct.spi_options** %4, align 8
  %10 = getelementptr inbounds %struct.spi_options, %struct.spi_options* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.spi_options*, %struct.spi_options** %4, align 8
  %13 = getelementptr inbounds %struct.spi_options, %struct.spi_options* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %11, %14
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i8* @malloc(i32 %16)
  store i8* %17, i8** %8, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store i32 -1, i32* %6, align 4
  br label %74

21:                                               ; preds = %2
  %22 = load i8*, i8** %8, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @bzero(i8* %22, i32 %23)
  %25 = load %struct.spi_options*, %struct.spi_options** %4, align 8
  %26 = getelementptr inbounds %struct.spi_options, %struct.spi_options* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %21
  %30 = load %struct.spi_options*, %struct.spi_options** %4, align 8
  %31 = getelementptr inbounds %struct.spi_options, %struct.spi_options* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %29
  %35 = load i8*, i8** %8, align 8
  %36 = load %struct.spi_options*, %struct.spi_options** %4, align 8
  %37 = getelementptr inbounds %struct.spi_options, %struct.spi_options* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.spi_options*, %struct.spi_options** %4, align 8
  %40 = getelementptr inbounds %struct.spi_options, %struct.spi_options* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @memcpy(i8* %35, i32 %38, i32 %41)
  br label %43

43:                                               ; preds = %34, %29, %21
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  %46 = call i8* @malloc(i32 %45)
  store i8* %46, i8** %7, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %43
  store i32 -2, i32* %6, align 4
  br label %74

50:                                               ; preds = %43
  %51 = load i8*, i8** %7, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @bzero(i8* %51, i32 %52)
  %54 = load i32, i32* %3, align 4
  %55 = load i8*, i8** %8, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.spi_options*, %struct.spi_options** %4, align 8
  %59 = getelementptr inbounds %struct.spi_options, %struct.spi_options* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @_read_write(i32 %54, i8* %55, i8* %56, i32 %57, i32 %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %73, label %64

64:                                               ; preds = %50
  %65 = load %struct.spi_options*, %struct.spi_options** %4, align 8
  %66 = getelementptr inbounds %struct.spi_options, %struct.spi_options* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load i8*, i8** %7, align 8
  %71 = load %struct.spi_options*, %struct.spi_options** %4, align 8
  %72 = call i32 @_do_data_output(i8* %70, %struct.spi_options* %71)
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %69, %64, %50
  br label %74

74:                                               ; preds = %73, %49, %20
  %75 = load i8*, i8** %7, align 8
  %76 = call i32 @free(i8* %75)
  %77 = load i8*, i8** %8, align 8
  %78 = call i32 @free(i8* %77)
  %79 = load i32, i32* %6, align 4
  ret i32 %79
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @_read_write(i32, i8*, i8*, i32, i32) #1

declare dso_local i32 @_do_data_output(i8*, %struct.spi_options*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
