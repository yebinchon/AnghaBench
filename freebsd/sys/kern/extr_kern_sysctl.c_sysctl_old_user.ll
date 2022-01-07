; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sysctl.c_sysctl_old_user.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sysctl.c_sysctl_old_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysctl_req = type { i64, i64, i64, i32* }

@REQ_WIRED = common dso_local global i64 0, align 8
@WARN_GIANTOK = common dso_local global i32 0, align 4
@WARN_SLEEPOK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"sysctl_old_user()\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sysctl_req*, i8*, i64)* @sysctl_old_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysctl_old_user(%struct.sysctl_req* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sysctl_req*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.sysctl_req* %0, %struct.sysctl_req** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.sysctl_req*, %struct.sysctl_req** %5, align 8
  %13 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %10, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load %struct.sysctl_req*, %struct.sysctl_req** %5, align 8
  %17 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add i64 %18, %15
  store i64 %19, i64* %17, align 8
  %20 = load %struct.sysctl_req*, %struct.sysctl_req** %5, align 8
  %21 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %94

25:                                               ; preds = %3
  %26 = load %struct.sysctl_req*, %struct.sysctl_req** %5, align 8
  %27 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @REQ_WIRED, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = load i32, i32* @WARN_GIANTOK, align 4
  %33 = load i32, i32* @WARN_SLEEPOK, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @WITNESS_WARN(i32 %34, i32* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %31, %25
  %37 = load i64, i64* %7, align 8
  store i64 %37, i64* %8, align 8
  %38 = load %struct.sysctl_req*, %struct.sysctl_req** %5, align 8
  %39 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %9, align 8
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* %10, align 8
  %43 = icmp ule i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  store i64 0, i64* %8, align 8
  br label %87

45:                                               ; preds = %36
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* %10, align 8
  %49 = sub i64 %47, %48
  %50 = icmp ugt i64 %46, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* %10, align 8
  %54 = sub i64 %52, %53
  store i64 %54, i64* %8, align 8
  br label %55

55:                                               ; preds = %51, %45
  %56 = load %struct.sysctl_req*, %struct.sysctl_req** %5, align 8
  %57 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @REQ_WIRED, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %55
  %62 = load i8*, i8** %6, align 8
  %63 = load %struct.sysctl_req*, %struct.sysctl_req** %5, align 8
  %64 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %63, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  %66 = bitcast i32* %65 to i8*
  %67 = load i64, i64* %10, align 8
  %68 = getelementptr inbounds i8, i8* %66, i64 %67
  %69 = load i64, i64* %8, align 8
  %70 = call i32 @copyout_nofault(i8* %62, i8* %68, i64 %69)
  store i32 %70, i32* %11, align 4
  br label %81

71:                                               ; preds = %55
  %72 = load i8*, i8** %6, align 8
  %73 = load %struct.sysctl_req*, %struct.sysctl_req** %5, align 8
  %74 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %73, i32 0, i32 3
  %75 = load i32*, i32** %74, align 8
  %76 = bitcast i32* %75 to i8*
  %77 = load i64, i64* %10, align 8
  %78 = getelementptr inbounds i8, i8* %76, i64 %77
  %79 = load i64, i64* %8, align 8
  %80 = call i32 @copyout(i8* %72, i8* %78, i64 %79)
  store i32 %80, i32* %11, align 4
  br label %81

81:                                               ; preds = %71, %61
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = load i32, i32* %11, align 4
  store i32 %85, i32* %4, align 4
  br label %94

86:                                               ; preds = %81
  br label %87

87:                                               ; preds = %86, %44
  %88 = load i64, i64* %8, align 8
  %89 = load i64, i64* %7, align 8
  %90 = icmp ult i64 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %87
  %92 = load i32, i32* @ENOMEM, align 4
  store i32 %92, i32* %4, align 4
  br label %94

93:                                               ; preds = %87
  store i32 0, i32* %4, align 4
  br label %94

94:                                               ; preds = %93, %91, %84, %24
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @WITNESS_WARN(i32, i32*, i8*) #1

declare dso_local i32 @copyout_nofault(i8*, i8*, i64) #1

declare dso_local i32 @copyout(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
