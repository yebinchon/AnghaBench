; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/fdread/extr_fdutil.c_get_fmt.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/fdread/extr_fdutil.c_get_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd_type = type { i32, i32, i32, i32, i32 }

@fd_types_360k = common dso_local global %struct.fd_type* null, align 8
@fd_types_720k = common dso_local global %struct.fd_type* null, align 8
@fd_types_12m = common dso_local global %struct.fd_type* null, align 8
@fd_types_144m = common dso_local global %struct.fd_type* null, align 8
@fd_types_288m = common dso_local global %struct.fd_type* null, align 8
@fd_types_auto = common dso_local global %struct.fd_type* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fd_type* @get_fmt(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.fd_type*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.fd_type*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %10 [
    i32 129, label %11
    i32 128, label %13
    i32 132, label %15
    i32 131, label %17
    i32 130, label %19
  ]

10:                                               ; preds = %2
  store %struct.fd_type* null, %struct.fd_type** %3, align 8
  br label %65

11:                                               ; preds = %2
  %12 = load %struct.fd_type*, %struct.fd_type** @fd_types_360k, align 8
  store %struct.fd_type* %12, %struct.fd_type** %8, align 8
  store i32 0, i32* %7, align 4
  br label %21

13:                                               ; preds = %2
  %14 = load %struct.fd_type*, %struct.fd_type** @fd_types_720k, align 8
  store %struct.fd_type* %14, %struct.fd_type** %8, align 8
  store i32 0, i32* %7, align 4
  br label %21

15:                                               ; preds = %2
  %16 = load %struct.fd_type*, %struct.fd_type** @fd_types_12m, align 8
  store %struct.fd_type* %16, %struct.fd_type** %8, align 8
  store i32 0, i32* %7, align 4
  br label %21

17:                                               ; preds = %2
  %18 = load %struct.fd_type*, %struct.fd_type** @fd_types_144m, align 8
  store %struct.fd_type* %18, %struct.fd_type** %8, align 8
  store i32 0, i32* %7, align 4
  br label %21

19:                                               ; preds = %2
  %20 = load %struct.fd_type*, %struct.fd_type** @fd_types_288m, align 8
  store %struct.fd_type* %20, %struct.fd_type** %8, align 8
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %19, %17, %15, %13, %11
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load %struct.fd_type*, %struct.fd_type** @fd_types_auto, align 8
  store %struct.fd_type* %25, %struct.fd_type** %3, align 8
  br label %65

26:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %59, %26
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %64

31:                                               ; preds = %27
  %32 = load %struct.fd_type*, %struct.fd_type** %8, align 8
  %33 = getelementptr inbounds %struct.fd_type, %struct.fd_type* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.fd_type*, %struct.fd_type** %8, align 8
  %36 = getelementptr inbounds %struct.fd_type, %struct.fd_type* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 %34, %37
  %39 = load %struct.fd_type*, %struct.fd_type** %8, align 8
  %40 = getelementptr inbounds %struct.fd_type, %struct.fd_type* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = mul nsw i32 %38, %41
  %43 = load %struct.fd_type*, %struct.fd_type** %8, align 8
  %44 = getelementptr inbounds %struct.fd_type, %struct.fd_type* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.fd_type*, %struct.fd_type** %8, align 8
  %46 = getelementptr inbounds %struct.fd_type, %struct.fd_type* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 128, %47
  %49 = load %struct.fd_type*, %struct.fd_type** %8, align 8
  %50 = getelementptr inbounds %struct.fd_type, %struct.fd_type* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = mul nsw i32 %48, %51
  %53 = sdiv i32 %52, 1024
  %54 = load i32, i32* %4, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %31
  %57 = load %struct.fd_type*, %struct.fd_type** %8, align 8
  store %struct.fd_type* %57, %struct.fd_type** %3, align 8
  br label %65

58:                                               ; preds = %31
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  %62 = load %struct.fd_type*, %struct.fd_type** %8, align 8
  %63 = getelementptr inbounds %struct.fd_type, %struct.fd_type* %62, i32 1
  store %struct.fd_type* %63, %struct.fd_type** %8, align 8
  br label %27

64:                                               ; preds = %27
  store %struct.fd_type* null, %struct.fd_type** %3, align 8
  br label %65

65:                                               ; preds = %64, %56, %24, %10
  %66 = load %struct.fd_type*, %struct.fd_type** %3, align 8
  ret %struct.fd_type* %66
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
