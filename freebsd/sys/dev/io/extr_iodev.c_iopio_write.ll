; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/io/extr_iodev.c_iopio_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/io/extr_iodev.c_iopio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iodev_pio_req = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iodev_pio_req*)* @iopio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iopio_write(%struct.iodev_pio_req* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iodev_pio_req*, align 8
  store %struct.iodev_pio_req* %0, %struct.iodev_pio_req** %3, align 8
  %4 = load %struct.iodev_pio_req*, %struct.iodev_pio_req** %3, align 8
  %5 = getelementptr inbounds %struct.iodev_pio_req, %struct.iodev_pio_req* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %112 [
    i32 1, label %7
    i32 2, label %15
    i32 4, label %47
  ]

7:                                                ; preds = %1
  %8 = load %struct.iodev_pio_req*, %struct.iodev_pio_req** %3, align 8
  %9 = getelementptr inbounds %struct.iodev_pio_req, %struct.iodev_pio_req* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.iodev_pio_req*, %struct.iodev_pio_req** %3, align 8
  %12 = getelementptr inbounds %struct.iodev_pio_req, %struct.iodev_pio_req* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @iodev_write_1(i32 %10, i32 %13)
  br label %114

15:                                               ; preds = %1
  %16 = load %struct.iodev_pio_req*, %struct.iodev_pio_req** %3, align 8
  %17 = getelementptr inbounds %struct.iodev_pio_req, %struct.iodev_pio_req* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, 1
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %15
  %22 = load %struct.iodev_pio_req*, %struct.iodev_pio_req** %3, align 8
  %23 = getelementptr inbounds %struct.iodev_pio_req, %struct.iodev_pio_req* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.iodev_pio_req*, %struct.iodev_pio_req** %3, align 8
  %26 = getelementptr inbounds %struct.iodev_pio_req, %struct.iodev_pio_req* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @iodev_write_1(i32 %24, i32 %27)
  %29 = load %struct.iodev_pio_req*, %struct.iodev_pio_req** %3, align 8
  %30 = getelementptr inbounds %struct.iodev_pio_req, %struct.iodev_pio_req* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  %33 = load %struct.iodev_pio_req*, %struct.iodev_pio_req** %3, align 8
  %34 = getelementptr inbounds %struct.iodev_pio_req, %struct.iodev_pio_req* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = ashr i32 %35, 8
  %37 = call i32 @iodev_write_1(i32 %32, i32 %36)
  br label %46

38:                                               ; preds = %15
  %39 = load %struct.iodev_pio_req*, %struct.iodev_pio_req** %3, align 8
  %40 = getelementptr inbounds %struct.iodev_pio_req, %struct.iodev_pio_req* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.iodev_pio_req*, %struct.iodev_pio_req** %3, align 8
  %43 = getelementptr inbounds %struct.iodev_pio_req, %struct.iodev_pio_req* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @iodev_write_2(i32 %41, i32 %44)
  br label %46

46:                                               ; preds = %38, %21
  br label %114

47:                                               ; preds = %1
  %48 = load %struct.iodev_pio_req*, %struct.iodev_pio_req** %3, align 8
  %49 = getelementptr inbounds %struct.iodev_pio_req, %struct.iodev_pio_req* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, 1
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %79

53:                                               ; preds = %47
  %54 = load %struct.iodev_pio_req*, %struct.iodev_pio_req** %3, align 8
  %55 = getelementptr inbounds %struct.iodev_pio_req, %struct.iodev_pio_req* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.iodev_pio_req*, %struct.iodev_pio_req** %3, align 8
  %58 = getelementptr inbounds %struct.iodev_pio_req, %struct.iodev_pio_req* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @iodev_write_1(i32 %56, i32 %59)
  %61 = load %struct.iodev_pio_req*, %struct.iodev_pio_req** %3, align 8
  %62 = getelementptr inbounds %struct.iodev_pio_req, %struct.iodev_pio_req* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  %65 = load %struct.iodev_pio_req*, %struct.iodev_pio_req** %3, align 8
  %66 = getelementptr inbounds %struct.iodev_pio_req, %struct.iodev_pio_req* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = ashr i32 %67, 8
  %69 = call i32 @iodev_write_2(i32 %64, i32 %68)
  %70 = load %struct.iodev_pio_req*, %struct.iodev_pio_req** %3, align 8
  %71 = getelementptr inbounds %struct.iodev_pio_req, %struct.iodev_pio_req* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 3
  %74 = load %struct.iodev_pio_req*, %struct.iodev_pio_req** %3, align 8
  %75 = getelementptr inbounds %struct.iodev_pio_req, %struct.iodev_pio_req* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = ashr i32 %76, 24
  %78 = call i32 @iodev_write_1(i32 %73, i32 %77)
  br label %111

79:                                               ; preds = %47
  %80 = load %struct.iodev_pio_req*, %struct.iodev_pio_req** %3, align 8
  %81 = getelementptr inbounds %struct.iodev_pio_req, %struct.iodev_pio_req* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, 2
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %102

85:                                               ; preds = %79
  %86 = load %struct.iodev_pio_req*, %struct.iodev_pio_req** %3, align 8
  %87 = getelementptr inbounds %struct.iodev_pio_req, %struct.iodev_pio_req* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.iodev_pio_req*, %struct.iodev_pio_req** %3, align 8
  %90 = getelementptr inbounds %struct.iodev_pio_req, %struct.iodev_pio_req* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @iodev_write_2(i32 %88, i32 %91)
  %93 = load %struct.iodev_pio_req*, %struct.iodev_pio_req** %3, align 8
  %94 = getelementptr inbounds %struct.iodev_pio_req, %struct.iodev_pio_req* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 2
  %97 = load %struct.iodev_pio_req*, %struct.iodev_pio_req** %3, align 8
  %98 = getelementptr inbounds %struct.iodev_pio_req, %struct.iodev_pio_req* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = ashr i32 %99, 16
  %101 = call i32 @iodev_write_2(i32 %96, i32 %100)
  br label %110

102:                                              ; preds = %79
  %103 = load %struct.iodev_pio_req*, %struct.iodev_pio_req** %3, align 8
  %104 = getelementptr inbounds %struct.iodev_pio_req, %struct.iodev_pio_req* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.iodev_pio_req*, %struct.iodev_pio_req** %3, align 8
  %107 = getelementptr inbounds %struct.iodev_pio_req, %struct.iodev_pio_req* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @iodev_write_4(i32 %105, i32 %108)
  br label %110

110:                                              ; preds = %102, %85
  br label %111

111:                                              ; preds = %110, %53
  br label %114

112:                                              ; preds = %1
  %113 = load i32, i32* @EINVAL, align 4
  store i32 %113, i32* %2, align 4
  br label %115

114:                                              ; preds = %111, %46, %7
  store i32 0, i32* %2, align 4
  br label %115

115:                                              ; preds = %114, %112
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local i32 @iodev_write_1(i32, i32) #1

declare dso_local i32 @iodev_write_2(i32, i32) #1

declare dso_local i32 @iodev_write_4(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
