; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sysctl.c_sysctl_new_user.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sysctl.c_sysctl_new_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysctl_req = type { i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@WARN_GIANTOK = common dso_local global i32 0, align 4
@WARN_SLEEPOK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"sysctl_new_user()\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sysctl_req*, i8*, i64)* @sysctl_new_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysctl_new_user(%struct.sysctl_req* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sysctl_req*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.sysctl_req* %0, %struct.sysctl_req** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.sysctl_req*, %struct.sysctl_req** %5, align 8
  %10 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %48

14:                                               ; preds = %3
  %15 = load %struct.sysctl_req*, %struct.sysctl_req** %5, align 8
  %16 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.sysctl_req*, %struct.sysctl_req** %5, align 8
  %19 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = sub i64 %17, %20
  %22 = load i64, i64* %7, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %14
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* %4, align 4
  br label %48

26:                                               ; preds = %14
  %27 = load i32, i32* @WARN_GIANTOK, align 4
  %28 = load i32, i32* @WARN_SLEEPOK, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @WITNESS_WARN(i32 %29, i32* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.sysctl_req*, %struct.sysctl_req** %5, align 8
  %32 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i8*
  %35 = load %struct.sysctl_req*, %struct.sysctl_req** %5, align 8
  %36 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds i8, i8* %34, i64 %37
  %39 = load i8*, i8** %6, align 8
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @copyin(i8* %38, i8* %39, i64 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i64, i64* %7, align 8
  %43 = load %struct.sysctl_req*, %struct.sysctl_req** %5, align 8
  %44 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = add i64 %45, %42
  store i64 %46, i64* %44, align 8
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %26, %24, %13
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @WITNESS_WARN(i32, i32*, i8*) #1

declare dso_local i32 @copyin(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
