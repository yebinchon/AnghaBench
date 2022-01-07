; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/spi/extr_spi.c_perform_readwrite.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/spi/extr_spi.c_perform_readwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_options = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.spi_options*)* @perform_readwrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perform_readwrite(i32 %0, %struct.spi_options* %1) #0 {
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
  %10 = call i8* @prep_write_buffer(%struct.spi_options* %9)
  store i8* %10, i8** %8, align 8
  %11 = load %struct.spi_options*, %struct.spi_options** %4, align 8
  %12 = getelementptr inbounds %struct.spi_options, %struct.spi_options* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.spi_options*, %struct.spi_options** %4, align 8
  %15 = getelementptr inbounds %struct.spi_options, %struct.spi_options* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %13, %16
  store i32 %17, i32* %5, align 4
  %18 = load i8*, i8** %8, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store i32 -1, i32* %6, align 4
  br label %47

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, 1
  %24 = call i8* @malloc(i32 %23)
  store i8* %24, i8** %7, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  store i32 -2, i32* %6, align 4
  br label %47

28:                                               ; preds = %21
  %29 = load i8*, i8** %7, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @bzero(i8* %29, i32 %30)
  %32 = load i32, i32* %3, align 4
  %33 = load i8*, i8** %8, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.spi_options*, %struct.spi_options** %4, align 8
  %37 = getelementptr inbounds %struct.spi_options, %struct.spi_options* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @_read_write(i32 %32, i8* %33, i8* %34, i32 %35, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %28
  %43 = load i8*, i8** %7, align 8
  %44 = load %struct.spi_options*, %struct.spi_options** %4, align 8
  %45 = call i32 @_do_data_output(i8* %43, %struct.spi_options* %44)
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %42, %28
  br label %47

47:                                               ; preds = %46, %27, %20
  %48 = load i8*, i8** %7, align 8
  %49 = call i32 @free(i8* %48)
  %50 = load i8*, i8** %8, align 8
  %51 = call i32 @free(i8* %50)
  %52 = load i32, i32* %6, align 4
  ret i32 %52
}

declare dso_local i8* @prep_write_buffer(%struct.spi_options*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @_read_write(i32, i8*, i8*, i32, i32) #1

declare dso_local i32 @_do_data_output(i8*, %struct.spi_options*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
