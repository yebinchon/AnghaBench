; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp_library.c_isp_fc_runstate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp_library.c_isp_fc_runstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@ISP_ROLE_NONE = common dso_local global i64 0, align 8
@ISPCTL_FCLINK_TEST = common dso_local global i32 0, align 4
@ISPCTL_SCAN_LOOP = common dso_local global i32 0, align 4
@ISPCTL_SCAN_FABRIC = common dso_local global i32 0, align 4
@ISPCTL_PDB_SYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isp_fc_runstate(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.TYPE_3__* @FCPARAM(i32* %10, i32 %11)
  store %struct.TYPE_3__* %12, %struct.TYPE_3__** %8, align 8
  br label %13

13:                                               ; preds = %73, %58, %43, %28, %3
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ISP_ROLE_NONE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 -1, i32* %4, align 4
  br label %78

20:                                               ; preds = %13
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* @ISPCTL_FCLINK_TEST, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 (i32*, i32, i32, ...) @isp_control(i32* %21, i32 %22, i32 %23, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %13

29:                                               ; preds = %20
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %4, align 4
  br label %78

36:                                               ; preds = %29
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* @ISPCTL_SCAN_LOOP, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 (i32*, i32, i32, ...) @isp_control(i32* %37, i32 %38, i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %13

44:                                               ; preds = %36
  %45 = load i32, i32* %9, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %4, align 4
  br label %78

51:                                               ; preds = %44
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* @ISPCTL_SCAN_FABRIC, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i32 (i32*, i32, i32, ...) @isp_control(i32* %52, i32 %53, i32 %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  br label %13

59:                                               ; preds = %51
  %60 = load i32, i32* %9, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %4, align 4
  br label %78

66:                                               ; preds = %59
  %67 = load i32*, i32** %5, align 8
  %68 = load i32, i32* @ISPCTL_PDB_SYNC, align 4
  %69 = load i32, i32* %6, align 4
  %70 = call i32 (i32*, i32, i32, ...) @isp_control(i32* %67, i32 %68, i32 %69)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  br label %13

74:                                               ; preds = %66
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %74, %62, %47, %32, %19
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local %struct.TYPE_3__* @FCPARAM(i32*, i32) #1

declare dso_local i32 @isp_control(i32*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
