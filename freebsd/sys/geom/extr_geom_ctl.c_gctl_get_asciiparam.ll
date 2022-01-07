; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_ctl.c_gctl_get_asciiparam.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_ctl.c_gctl_get_asciiparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i64, %struct.gctl_req_arg* }
%struct.gctl_req_arg = type { i32, i8*, i32, i32 }

@GCTL_PARAM_RD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"No length argument (%s)\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Unterminated argument (%s)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @gctl_get_asciiparam(%struct.gctl_req* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.gctl_req*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.gctl_req_arg*, align 8
  store %struct.gctl_req* %0, %struct.gctl_req** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 0, i64* %6, align 8
  br label %9

9:                                                ; preds = %65, %2
  %10 = load i64, i64* %6, align 8
  %11 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %12 = getelementptr inbounds %struct.gctl_req, %struct.gctl_req* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ult i64 %10, %13
  br i1 %14, label %15, label %68

15:                                               ; preds = %9
  %16 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %17 = getelementptr inbounds %struct.gctl_req, %struct.gctl_req* %16, i32 0, i32 1
  %18 = load %struct.gctl_req_arg*, %struct.gctl_req_arg** %17, align 8
  %19 = load i64, i64* %6, align 8
  %20 = getelementptr inbounds %struct.gctl_req_arg, %struct.gctl_req_arg* %18, i64 %19
  store %struct.gctl_req_arg* %20, %struct.gctl_req_arg** %8, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = load %struct.gctl_req_arg*, %struct.gctl_req_arg** %8, align 8
  %23 = getelementptr inbounds %struct.gctl_req_arg, %struct.gctl_req_arg* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @strcmp(i8* %21, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %15
  br label %65

28:                                               ; preds = %15
  %29 = load %struct.gctl_req_arg*, %struct.gctl_req_arg** %8, align 8
  %30 = getelementptr inbounds %struct.gctl_req_arg, %struct.gctl_req_arg* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @GCTL_PARAM_RD, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %28
  br label %65

36:                                               ; preds = %28
  %37 = load %struct.gctl_req_arg*, %struct.gctl_req_arg** %8, align 8
  %38 = getelementptr inbounds %struct.gctl_req_arg, %struct.gctl_req_arg* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %7, align 8
  %40 = load %struct.gctl_req_arg*, %struct.gctl_req_arg** %8, align 8
  %41 = getelementptr inbounds %struct.gctl_req_arg, %struct.gctl_req_arg* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %42, 1
  br i1 %43, label %44, label %48

44:                                               ; preds = %36
  %45 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = call i32 @gctl_error(%struct.gctl_req* %45, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %46)
  store i8* null, i8** %3, align 8
  br label %69

48:                                               ; preds = %36
  %49 = load i8*, i8** %7, align 8
  %50 = load %struct.gctl_req_arg*, %struct.gctl_req_arg** %8, align 8
  %51 = getelementptr inbounds %struct.gctl_req_arg, %struct.gctl_req_arg* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = sub nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %49, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %48
  %60 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %61 = load i8*, i8** %5, align 8
  %62 = call i32 @gctl_error(%struct.gctl_req* %60, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %61)
  store i8* null, i8** %3, align 8
  br label %69

63:                                               ; preds = %48
  %64 = load i8*, i8** %7, align 8
  store i8* %64, i8** %3, align 8
  br label %69

65:                                               ; preds = %35, %27
  %66 = load i64, i64* %6, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %6, align 8
  br label %9

68:                                               ; preds = %9
  store i8* null, i8** %3, align 8
  br label %69

69:                                               ; preds = %68, %63, %59, %44
  %70 = load i8*, i8** %3, align 8
  ret i8* %70
}

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @gctl_error(%struct.gctl_req*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
