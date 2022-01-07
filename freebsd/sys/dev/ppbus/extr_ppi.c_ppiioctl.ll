; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_ppi.c_ppiioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_ppi.c_ppiioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.ppi_data* }
%struct.ppi_data = type { i32 }
%struct.thread = type { i32 }

@ENOTTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i64, i32, %struct.thread*)* @ppiioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppiioctl(%struct.cdev* %0, i32 %1, i64 %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca %struct.cdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.thread*, align 8
  %11 = alloca %struct.ppi_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store %struct.cdev* %0, %struct.cdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.thread* %4, %struct.thread** %10, align 8
  %16 = load %struct.cdev*, %struct.cdev** %6, align 8
  %17 = getelementptr inbounds %struct.cdev, %struct.cdev* %16, i32 0, i32 0
  %18 = load %struct.ppi_data*, %struct.ppi_data** %17, align 8
  store %struct.ppi_data* %18, %struct.ppi_data** %11, align 8
  %19 = load %struct.ppi_data*, %struct.ppi_data** %11, align 8
  %20 = getelementptr inbounds %struct.ppi_data, %struct.ppi_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = call i32 @device_get_parent(i32 %22)
  store i32 %23, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %24 = load i64, i64* %8, align 8
  %25 = inttoptr i64 %24 to i32*
  store i32* %25, i32** %15, align 8
  %26 = load i32, i32* %13, align 4
  %27 = call i32 @ppb_lock(i32 %26)
  %28 = load i32, i32* %7, align 4
  switch i32 %28, label %92 [
    i32 140, label %29
    i32 135, label %33
    i32 141, label %37
    i32 137, label %41
    i32 139, label %45
    i32 136, label %49
    i32 133, label %53
    i32 128, label %58
    i32 134, label %63
    i32 130, label %68
    i32 132, label %73
    i32 129, label %78
    i32 138, label %83
    i32 131, label %87
  ]

29:                                               ; preds = %5
  %30 = load i32, i32* %13, align 4
  %31 = call i32 @ppb_rdtr(i32 %30)
  %32 = load i32*, i32** %15, align 8
  store i32 %31, i32* %32, align 4
  br label %94

33:                                               ; preds = %5
  %34 = load i32, i32* %13, align 4
  %35 = call i32 @ppb_rstr(i32 %34)
  %36 = load i32*, i32** %15, align 8
  store i32 %35, i32* %36, align 4
  br label %94

37:                                               ; preds = %5
  %38 = load i32, i32* %13, align 4
  %39 = call i32 @ppb_rctr(i32 %38)
  %40 = load i32*, i32** %15, align 8
  store i32 %39, i32* %40, align 4
  br label %94

41:                                               ; preds = %5
  %42 = load i32, i32* %13, align 4
  %43 = call i32 @ppb_repp_D(i32 %42)
  %44 = load i32*, i32** %15, align 8
  store i32 %43, i32* %44, align 4
  br label %94

45:                                               ; preds = %5
  %46 = load i32, i32* %13, align 4
  %47 = call i32 @ppb_recr(i32 %46)
  %48 = load i32*, i32** %15, align 8
  store i32 %47, i32* %48, align 4
  br label %94

49:                                               ; preds = %5
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @ppb_rfifo(i32 %50)
  %52 = load i32*, i32** %15, align 8
  store i32 %51, i32* %52, align 4
  br label %94

53:                                               ; preds = %5
  %54 = load i32, i32* %13, align 4
  %55 = load i32*, i32** %15, align 8
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @ppb_wdtr(i32 %54, i32 %56)
  br label %94

58:                                               ; preds = %5
  %59 = load i32, i32* %13, align 4
  %60 = load i32*, i32** %15, align 8
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @ppb_wstr(i32 %59, i32 %61)
  br label %94

63:                                               ; preds = %5
  %64 = load i32, i32* %13, align 4
  %65 = load i32*, i32** %15, align 8
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @ppb_wctr(i32 %64, i32 %66)
  br label %94

68:                                               ; preds = %5
  %69 = load i32, i32* %13, align 4
  %70 = load i32*, i32** %15, align 8
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @ppb_wepp_D(i32 %69, i32 %71)
  br label %94

73:                                               ; preds = %5
  %74 = load i32, i32* %13, align 4
  %75 = load i32*, i32** %15, align 8
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @ppb_wecr(i32 %74, i32 %76)
  br label %94

78:                                               ; preds = %5
  %79 = load i32, i32* %13, align 4
  %80 = load i32*, i32** %15, align 8
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @ppb_wfifo(i32 %79, i32 %81)
  br label %94

83:                                               ; preds = %5
  %84 = load i32, i32* %13, align 4
  %85 = call i32 @ppb_repp_A(i32 %84)
  %86 = load i32*, i32** %15, align 8
  store i32 %85, i32* %86, align 4
  br label %94

87:                                               ; preds = %5
  %88 = load i32, i32* %13, align 4
  %89 = load i32*, i32** %15, align 8
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @ppb_wepp_A(i32 %88, i32 %90)
  br label %94

92:                                               ; preds = %5
  %93 = load i32, i32* @ENOTTY, align 4
  store i32 %93, i32* %14, align 4
  br label %94

94:                                               ; preds = %92, %87, %83, %78, %73, %68, %63, %58, %53, %49, %45, %41, %37, %33, %29
  %95 = load i32, i32* %13, align 4
  %96 = call i32 @ppb_unlock(i32 %95)
  %97 = load i32, i32* %14, align 4
  ret i32 %97
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @ppb_lock(i32) #1

declare dso_local i32 @ppb_rdtr(i32) #1

declare dso_local i32 @ppb_rstr(i32) #1

declare dso_local i32 @ppb_rctr(i32) #1

declare dso_local i32 @ppb_repp_D(i32) #1

declare dso_local i32 @ppb_recr(i32) #1

declare dso_local i32 @ppb_rfifo(i32) #1

declare dso_local i32 @ppb_wdtr(i32, i32) #1

declare dso_local i32 @ppb_wstr(i32, i32) #1

declare dso_local i32 @ppb_wctr(i32, i32) #1

declare dso_local i32 @ppb_wepp_D(i32, i32) #1

declare dso_local i32 @ppb_wecr(i32, i32) #1

declare dso_local i32 @ppb_wfifo(i32, i32) #1

declare dso_local i32 @ppb_repp_A(i32) #1

declare dso_local i32 @ppb_wepp_A(i32, i32) #1

declare dso_local i32 @ppb_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
