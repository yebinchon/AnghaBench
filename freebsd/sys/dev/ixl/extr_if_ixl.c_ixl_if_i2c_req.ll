; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_ixl.c_ixl_if_i2c_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_ixl.c_ixl_if_i2c_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifi2creq = type { i32, i32*, i32, i64 }
%struct.ixl_pf = type { i64 (%struct.ixl_pf*, i64, i32, i32*)* }

@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.ifi2creq*)* @ixl_if_i2c_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixl_if_i2c_req(i32 %0, %struct.ifi2creq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifi2creq*, align 8
  %6 = alloca %struct.ixl_pf*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.ifi2creq* %1, %struct.ifi2creq** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.ixl_pf* @iflib_get_softc(i32 %8)
  store %struct.ixl_pf* %9, %struct.ixl_pf** %6, align 8
  %10 = load %struct.ixl_pf*, %struct.ixl_pf** %6, align 8
  %11 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %10, i32 0, i32 0
  %12 = load i64 (%struct.ixl_pf*, i64, i32, i32*)*, i64 (%struct.ixl_pf*, i64, i32, i32*)** %11, align 8
  %13 = icmp eq i64 (%struct.ixl_pf*, i64, i32, i32*)* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %3, align 4
  br label %52

16:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %48, %16
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.ifi2creq*, %struct.ifi2creq** %5, align 8
  %20 = getelementptr inbounds %struct.ifi2creq, %struct.ifi2creq* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %51

23:                                               ; preds = %17
  %24 = load %struct.ixl_pf*, %struct.ixl_pf** %6, align 8
  %25 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %24, i32 0, i32 0
  %26 = load i64 (%struct.ixl_pf*, i64, i32, i32*)*, i64 (%struct.ixl_pf*, i64, i32, i32*)** %25, align 8
  %27 = load %struct.ixl_pf*, %struct.ixl_pf** %6, align 8
  %28 = load %struct.ifi2creq*, %struct.ifi2creq** %5, align 8
  %29 = getelementptr inbounds %struct.ifi2creq, %struct.ifi2creq* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %30, %32
  %34 = load %struct.ifi2creq*, %struct.ifi2creq** %5, align 8
  %35 = getelementptr inbounds %struct.ifi2creq, %struct.ifi2creq* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.ifi2creq*, %struct.ifi2creq** %5, align 8
  %38 = getelementptr inbounds %struct.ifi2creq, %struct.ifi2creq* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = call i64 %26(%struct.ixl_pf* %27, i64 %33, i32 %36, i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %23
  %46 = load i32, i32* @EIO, align 4
  store i32 %46, i32* %3, align 4
  br label %52

47:                                               ; preds = %23
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %7, align 4
  br label %17

51:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %45, %14
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.ixl_pf* @iflib_get_softc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
