; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/syscons/fire/extr_fire_saver.c_fire_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/syscons/fire/extr_fire_saver.c_fire_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@M_VGA_CG320 = common dso_local global i32 0, align 4
@scrmode = common dso_local global i32 0, align 4
@LOG_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"%s: the console does not support M_VGA_CG320\0A\00", align 1
@SAVER_NAME = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@scrw = common dso_local global i32 0, align 4
@scrh = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@buf = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"%s: buffer allocation is failed\0A\00", align 1
@fire_pal = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @fire_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fire_init(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = load i32, i32* @M_VGA_CG320, align 4
  %11 = call i32 @vidd_get_info(i32* %9, i32 %10, %struct.TYPE_3__* %4)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @M_VGA_CG320, align 4
  store i32 %14, i32* @scrmode, align 4
  br label %20

15:                                               ; preds = %1
  %16 = load i32, i32* @LOG_NOTICE, align 4
  %17 = load i32, i32* @SAVER_NAME, align 4
  %18 = call i32 @log(i32 %16, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @ENODEV, align 4
  store i32 %19, i32* %2, align 4
  br label %79

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* @scrw, align 4
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* @scrh, align 4
  %25 = load i32, i32* @scrw, align 4
  %26 = load i32, i32* @scrh, align 4
  %27 = add nsw i32 %26, 1
  %28 = mul nsw i32 %25, %27
  %29 = load i32, i32* @M_DEVBUF, align 4
  %30 = load i32, i32* @M_NOWAIT, align 4
  %31 = call i64 @malloc(i32 %28, i32 %29, i32 %30)
  %32 = inttoptr i64 %31 to i32*
  store i32* %32, i32** @buf, align 8
  %33 = load i32*, i32** @buf, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %20
  %36 = load i32*, i32** @buf, align 8
  %37 = load i32, i32* @scrw, align 4
  %38 = load i32, i32* @scrh, align 4
  %39 = add nsw i32 %38, 1
  %40 = mul nsw i32 %37, %39
  %41 = call i32 @bzero(i32* %36, i32 %40)
  br label %47

42:                                               ; preds = %20
  %43 = load i32, i32* @LOG_NOTICE, align 4
  %44 = load i32, i32* @SAVER_NAME, align 4
  %45 = call i32 @log(i32 %43, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @ENODEV, align 4
  store i32 %46, i32* %2, align 4
  br label %79

47:                                               ; preds = %35
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %75, %47
  %49 = load i32, i32* %5, align 4
  %50 = icmp slt i32 %49, 256
  br i1 %50, label %51, label %78

51:                                               ; preds = %48
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp sgt i32 %54, 128
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 2
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %56, %51
  %60 = load i32, i32* %6, align 4
  %61 = load i32*, i32** @fire_pal, align 8
  %62 = load i32, i32* %5, align 4
  %63 = call i64 @RED(i32 %62)
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32 %60, i32* %64, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32*, i32** @fire_pal, align 8
  %67 = load i32, i32* %5, align 4
  %68 = call i64 @GREEN(i32 %67)
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 %65, i32* %69, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32*, i32** @fire_pal, align 8
  %72 = load i32, i32* %5, align 4
  %73 = call i64 @BLUE(i32 %72)
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32 %70, i32* %74, align 4
  br label %75

75:                                               ; preds = %59
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %5, align 4
  br label %48

78:                                               ; preds = %48
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %78, %42, %15
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @vidd_get_info(i32*, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @log(i32, i8*, i32) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i64 @RED(i32) #1

declare dso_local i64 @GREEN(i32) #1

declare dso_local i64 @BLUE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
