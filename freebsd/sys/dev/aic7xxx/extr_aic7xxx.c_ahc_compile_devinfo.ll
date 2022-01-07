; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx.c_ahc_compile_devinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx.c_ahc_compile_devinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_devinfo = type { i32, i8, i32, i32, i8*, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ahc_compile_devinfo(%struct.ahc_devinfo* %0, i8* %1, i8* %2, i8* %3, i8 signext %4, i32 %5) #0 {
  %7 = alloca %struct.ahc_devinfo*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  store %struct.ahc_devinfo* %0, %struct.ahc_devinfo** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8 %4, i8* %11, align 1
  store i32 %5, i32* %12, align 4
  %13 = load i8*, i8** %8, align 8
  %14 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %7, align 8
  %15 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %14, i32 0, i32 6
  store i8* %13, i8** %15, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %7, align 8
  %18 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %17, i32 0, i32 5
  store i8* %16, i8** %18, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %7, align 8
  %21 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %20, i32 0, i32 4
  store i8* %19, i8** %21, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = ptrtoint i8* %22 to i32
  %24 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %7, align 8
  %25 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load i8, i8* %11, align 1
  %27 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %7, align 8
  %28 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %27, i32 0, i32 1
  store i8 %26, i8* %28, align 4
  %29 = load i32, i32* %12, align 4
  %30 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %7, align 8
  %31 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load i8, i8* %11, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 66
  br i1 %34, label %35, label %40

35:                                               ; preds = %6
  %36 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %7, align 8
  %37 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, 8
  store i32 %39, i32* %37, align 8
  br label %40

40:                                               ; preds = %35, %6
  %41 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %7, align 8
  %42 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = shl i32 1, %43
  %45 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %7, align 8
  %46 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
