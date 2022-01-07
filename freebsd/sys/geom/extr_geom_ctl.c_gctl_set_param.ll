; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_ctl.c_gctl_set_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_ctl.c_gctl_set_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i64, %struct.gctl_req_arg* }
%struct.gctl_req_arg = type { i32, i32, i32, i32 }

@GCTL_PARAM_WR = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@GCTL_PARAM_CHANGED = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gctl_set_param(%struct.gctl_req* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gctl_req*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.gctl_req_arg*, align 8
  store %struct.gctl_req* %0, %struct.gctl_req** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 0, i64* %10, align 8
  br label %12

12:                                               ; preds = %68, %4
  %13 = load i64, i64* %10, align 8
  %14 = load %struct.gctl_req*, %struct.gctl_req** %6, align 8
  %15 = getelementptr inbounds %struct.gctl_req, %struct.gctl_req* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ult i64 %13, %16
  br i1 %17, label %18, label %71

18:                                               ; preds = %12
  %19 = load %struct.gctl_req*, %struct.gctl_req** %6, align 8
  %20 = getelementptr inbounds %struct.gctl_req, %struct.gctl_req* %19, i32 0, i32 1
  %21 = load %struct.gctl_req_arg*, %struct.gctl_req_arg** %20, align 8
  %22 = load i64, i64* %10, align 8
  %23 = getelementptr inbounds %struct.gctl_req_arg, %struct.gctl_req_arg* %21, i64 %22
  store %struct.gctl_req_arg* %23, %struct.gctl_req_arg** %11, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load %struct.gctl_req_arg*, %struct.gctl_req_arg** %11, align 8
  %26 = getelementptr inbounds %struct.gctl_req_arg, %struct.gctl_req_arg* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @strcmp(i8* %24, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %18
  br label %68

31:                                               ; preds = %18
  %32 = load %struct.gctl_req_arg*, %struct.gctl_req_arg** %11, align 8
  %33 = getelementptr inbounds %struct.gctl_req_arg, %struct.gctl_req_arg* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @GCTL_PARAM_WR, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %31
  %39 = load i32, i32* @EPERM, align 4
  store i32 %39, i32* %5, align 4
  br label %73

40:                                               ; preds = %31
  %41 = load i32, i32* @GCTL_PARAM_CHANGED, align 4
  %42 = load %struct.gctl_req_arg*, %struct.gctl_req_arg** %11, align 8
  %43 = getelementptr inbounds %struct.gctl_req_arg, %struct.gctl_req_arg* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load %struct.gctl_req_arg*, %struct.gctl_req_arg** %11, align 8
  %47 = getelementptr inbounds %struct.gctl_req_arg, %struct.gctl_req_arg* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %40
  %52 = load i8*, i8** %8, align 8
  %53 = load %struct.gctl_req_arg*, %struct.gctl_req_arg** %11, align 8
  %54 = getelementptr inbounds %struct.gctl_req_arg, %struct.gctl_req_arg* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.gctl_req_arg*, %struct.gctl_req_arg** %11, align 8
  %57 = getelementptr inbounds %struct.gctl_req_arg, %struct.gctl_req_arg* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @bcopy(i8* %52, i32 %55, i32 %58)
  %60 = load i32, i32* @ENOSPC, align 4
  store i32 %60, i32* %5, align 4
  br label %73

61:                                               ; preds = %40
  %62 = load i8*, i8** %8, align 8
  %63 = load %struct.gctl_req_arg*, %struct.gctl_req_arg** %11, align 8
  %64 = getelementptr inbounds %struct.gctl_req_arg, %struct.gctl_req_arg* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @bcopy(i8* %62, i32 %65, i32 %66)
  store i32 0, i32* %5, align 4
  br label %73

68:                                               ; preds = %30
  %69 = load i64, i64* %10, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %10, align 8
  br label %12

71:                                               ; preds = %12
  %72 = load i32, i32* @EINVAL, align 4
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %71, %61, %51, %38
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @bcopy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
