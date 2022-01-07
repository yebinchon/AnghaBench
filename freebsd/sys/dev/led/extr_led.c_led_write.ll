; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/led/extr_led.c_led_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/led/extr_led.c_led_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.ledsc* }
%struct.ledsc = type { i32 }
%struct.uio = type { i32 }
%struct.sbuf = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@led_mtx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, %struct.uio*, i32)* @led_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @led_write(%struct.cdev* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ledsc*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.sbuf*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store %struct.uio* %1, %struct.uio** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.sbuf* null, %struct.sbuf** %10, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.uio*, %struct.uio** %6, align 8
  %14 = getelementptr inbounds %struct.uio, %struct.uio* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp sgt i32 %15, 512
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %4, align 4
  br label %77

19:                                               ; preds = %3
  %20 = load %struct.uio*, %struct.uio** %6, align 8
  %21 = getelementptr inbounds %struct.uio, %struct.uio* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  %24 = load i32, i32* @M_DEVBUF, align 4
  %25 = load i32, i32* @M_WAITOK, align 4
  %26 = call i8* @malloc(i32 %23, i32 %24, i32 %25)
  store i8* %26, i8** %9, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = load %struct.uio*, %struct.uio** %6, align 8
  %29 = getelementptr inbounds %struct.uio, %struct.uio* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %27, i64 %31
  store i8 0, i8* %32, align 1
  %33 = load i8*, i8** %9, align 8
  %34 = load %struct.uio*, %struct.uio** %6, align 8
  %35 = getelementptr inbounds %struct.uio, %struct.uio* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = load %struct.uio*, %struct.uio** %6, align 8
  %39 = call i32 @uiomove(i8* %33, i64 %37, %struct.uio* %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %19
  %43 = load i8*, i8** %9, align 8
  %44 = load i32, i32* @M_DEVBUF, align 4
  %45 = call i32 @free(i8* %43, i32 %44)
  %46 = load i32, i32* %11, align 4
  store i32 %46, i32* %4, align 4
  br label %77

47:                                               ; preds = %19
  %48 = load i8*, i8** %9, align 8
  %49 = call i32 @led_parse(i8* %48, %struct.sbuf** %10, i32* %12)
  store i32 %49, i32* %11, align 4
  %50 = load i8*, i8** %9, align 8
  %51 = load i32, i32* @M_DEVBUF, align 4
  %52 = call i32 @free(i8* %50, i32 %51)
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = load i32, i32* %11, align 4
  store i32 %56, i32* %4, align 4
  br label %77

57:                                               ; preds = %47
  %58 = call i32 @mtx_lock(i32* @led_mtx)
  %59 = load %struct.cdev*, %struct.cdev** %5, align 8
  %60 = getelementptr inbounds %struct.cdev, %struct.cdev* %59, i32 0, i32 0
  %61 = load %struct.ledsc*, %struct.ledsc** %60, align 8
  store %struct.ledsc* %61, %struct.ledsc** %8, align 8
  %62 = load %struct.ledsc*, %struct.ledsc** %8, align 8
  %63 = icmp ne %struct.ledsc* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %57
  %65 = load %struct.ledsc*, %struct.ledsc** %8, align 8
  %66 = load i32, i32* %12, align 4
  %67 = call i32 @led_state(%struct.ledsc* %65, %struct.sbuf** %10, i32 %66)
  store i32 %67, i32* %11, align 4
  br label %68

68:                                               ; preds = %64, %57
  %69 = call i32 @mtx_unlock(i32* @led_mtx)
  %70 = load %struct.sbuf*, %struct.sbuf** %10, align 8
  %71 = icmp ne %struct.sbuf* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load %struct.sbuf*, %struct.sbuf** %10, align 8
  %74 = call i32 @sbuf_delete(%struct.sbuf* %73)
  br label %75

75:                                               ; preds = %72, %68
  %76 = load i32, i32* %11, align 4
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %75, %55, %42, %17
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @uiomove(i8*, i64, %struct.uio*) #1

declare dso_local i32 @free(i8*, i32) #1

declare dso_local i32 @led_parse(i8*, %struct.sbuf**, i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @led_state(%struct.ledsc*, %struct.sbuf**, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @sbuf_delete(%struct.sbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
