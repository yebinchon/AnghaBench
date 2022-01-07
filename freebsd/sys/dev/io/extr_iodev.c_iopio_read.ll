; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/io/extr_iodev.c_iopio_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/io/extr_iodev.c_iopio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iodev_pio_req = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iodev_pio_req*)* @iopio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iopio_read(%struct.iodev_pio_req* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iodev_pio_req*, align 8
  store %struct.iodev_pio_req* %0, %struct.iodev_pio_req** %3, align 8
  %4 = load %struct.iodev_pio_req*, %struct.iodev_pio_req** %3, align 8
  %5 = getelementptr inbounds %struct.iodev_pio_req, %struct.iodev_pio_req* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %110 [
    i32 1, label %7
    i32 2, label %14
    i32 4, label %45
  ]

7:                                                ; preds = %1
  %8 = load %struct.iodev_pio_req*, %struct.iodev_pio_req** %3, align 8
  %9 = getelementptr inbounds %struct.iodev_pio_req, %struct.iodev_pio_req* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @iodev_read_1(i32 %10)
  %12 = load %struct.iodev_pio_req*, %struct.iodev_pio_req** %3, align 8
  %13 = getelementptr inbounds %struct.iodev_pio_req, %struct.iodev_pio_req* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  br label %112

14:                                               ; preds = %1
  %15 = load %struct.iodev_pio_req*, %struct.iodev_pio_req** %3, align 8
  %16 = getelementptr inbounds %struct.iodev_pio_req, %struct.iodev_pio_req* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 1
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %14
  %21 = load %struct.iodev_pio_req*, %struct.iodev_pio_req** %3, align 8
  %22 = getelementptr inbounds %struct.iodev_pio_req, %struct.iodev_pio_req* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @iodev_read_1(i32 %23)
  %25 = load %struct.iodev_pio_req*, %struct.iodev_pio_req** %3, align 8
  %26 = getelementptr inbounds %struct.iodev_pio_req, %struct.iodev_pio_req* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.iodev_pio_req*, %struct.iodev_pio_req** %3, align 8
  %28 = getelementptr inbounds %struct.iodev_pio_req, %struct.iodev_pio_req* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  %31 = call i32 @iodev_read_1(i32 %30)
  %32 = shl i32 %31, 8
  %33 = load %struct.iodev_pio_req*, %struct.iodev_pio_req** %3, align 8
  %34 = getelementptr inbounds %struct.iodev_pio_req, %struct.iodev_pio_req* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  br label %44

37:                                               ; preds = %14
  %38 = load %struct.iodev_pio_req*, %struct.iodev_pio_req** %3, align 8
  %39 = getelementptr inbounds %struct.iodev_pio_req, %struct.iodev_pio_req* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @iodev_read_2(i32 %40)
  %42 = load %struct.iodev_pio_req*, %struct.iodev_pio_req** %3, align 8
  %43 = getelementptr inbounds %struct.iodev_pio_req, %struct.iodev_pio_req* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %37, %20
  br label %112

45:                                               ; preds = %1
  %46 = load %struct.iodev_pio_req*, %struct.iodev_pio_req** %3, align 8
  %47 = getelementptr inbounds %struct.iodev_pio_req, %struct.iodev_pio_req* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 1
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %78

51:                                               ; preds = %45
  %52 = load %struct.iodev_pio_req*, %struct.iodev_pio_req** %3, align 8
  %53 = getelementptr inbounds %struct.iodev_pio_req, %struct.iodev_pio_req* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @iodev_read_1(i32 %54)
  %56 = load %struct.iodev_pio_req*, %struct.iodev_pio_req** %3, align 8
  %57 = getelementptr inbounds %struct.iodev_pio_req, %struct.iodev_pio_req* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.iodev_pio_req*, %struct.iodev_pio_req** %3, align 8
  %59 = getelementptr inbounds %struct.iodev_pio_req, %struct.iodev_pio_req* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  %62 = call i32 @iodev_read_2(i32 %61)
  %63 = shl i32 %62, 8
  %64 = load %struct.iodev_pio_req*, %struct.iodev_pio_req** %3, align 8
  %65 = getelementptr inbounds %struct.iodev_pio_req, %struct.iodev_pio_req* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 4
  %68 = load %struct.iodev_pio_req*, %struct.iodev_pio_req** %3, align 8
  %69 = getelementptr inbounds %struct.iodev_pio_req, %struct.iodev_pio_req* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 3
  %72 = call i32 @iodev_read_1(i32 %71)
  %73 = shl i32 %72, 24
  %74 = load %struct.iodev_pio_req*, %struct.iodev_pio_req** %3, align 8
  %75 = getelementptr inbounds %struct.iodev_pio_req, %struct.iodev_pio_req* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 4
  br label %109

78:                                               ; preds = %45
  %79 = load %struct.iodev_pio_req*, %struct.iodev_pio_req** %3, align 8
  %80 = getelementptr inbounds %struct.iodev_pio_req, %struct.iodev_pio_req* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, 2
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %101

84:                                               ; preds = %78
  %85 = load %struct.iodev_pio_req*, %struct.iodev_pio_req** %3, align 8
  %86 = getelementptr inbounds %struct.iodev_pio_req, %struct.iodev_pio_req* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @iodev_read_2(i32 %87)
  %89 = load %struct.iodev_pio_req*, %struct.iodev_pio_req** %3, align 8
  %90 = getelementptr inbounds %struct.iodev_pio_req, %struct.iodev_pio_req* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load %struct.iodev_pio_req*, %struct.iodev_pio_req** %3, align 8
  %92 = getelementptr inbounds %struct.iodev_pio_req, %struct.iodev_pio_req* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 2
  %95 = call i32 @iodev_read_2(i32 %94)
  %96 = shl i32 %95, 16
  %97 = load %struct.iodev_pio_req*, %struct.iodev_pio_req** %3, align 8
  %98 = getelementptr inbounds %struct.iodev_pio_req, %struct.iodev_pio_req* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 4
  br label %108

101:                                              ; preds = %78
  %102 = load %struct.iodev_pio_req*, %struct.iodev_pio_req** %3, align 8
  %103 = getelementptr inbounds %struct.iodev_pio_req, %struct.iodev_pio_req* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @iodev_read_4(i32 %104)
  %106 = load %struct.iodev_pio_req*, %struct.iodev_pio_req** %3, align 8
  %107 = getelementptr inbounds %struct.iodev_pio_req, %struct.iodev_pio_req* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  br label %108

108:                                              ; preds = %101, %84
  br label %109

109:                                              ; preds = %108, %51
  br label %112

110:                                              ; preds = %1
  %111 = load i32, i32* @EINVAL, align 4
  store i32 %111, i32* %2, align 4
  br label %113

112:                                              ; preds = %109, %44, %7
  store i32 0, i32* %2, align 4
  br label %113

113:                                              ; preds = %112, %110
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local i32 @iodev_read_1(i32) #1

declare dso_local i32 @iodev_read_2(i32) #1

declare dso_local i32 @iodev_read_4(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
