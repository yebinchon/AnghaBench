; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part.c_g_part_parm_uint32.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part.c_g_part_parm_uint32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }

@ENOATTR = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"%d %s '%u'\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gctl_req*, i8*, i64*)* @g_part_parm_uint32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_part_parm_uint32(%struct.gctl_req* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gctl_req*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  store %struct.gctl_req* %0, %struct.gctl_req** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i64* @gctl_get_param(%struct.gctl_req* %10, i8* %11, i32* %9)
  store i64* %12, i64** %8, align 8
  %13 = load i64*, i64** %8, align 8
  %14 = icmp eq i64* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOATTR, align 4
  store i32 %16, i32* %4, align 4
  br label %39

17:                                               ; preds = %3
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  %20 = icmp ne i64 %19, 8
  br i1 %20, label %26, label %21

21:                                               ; preds = %17
  %22 = load i64*, i64** %8, align 8
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @INT_MAX, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %21, %17
  %27 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %28 = load i32, i32* @EINVAL, align 4
  %29 = load i8*, i8** %6, align 8
  %30 = load i64*, i64** %8, align 8
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = call i32 @gctl_error(%struct.gctl_req* %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %28, i8* %29, i32 %32)
  %34 = load i32, i32* @EINVAL, align 4
  store i32 %34, i32* %4, align 4
  br label %39

35:                                               ; preds = %21
  %36 = load i64*, i64** %8, align 8
  %37 = load i64, i64* %36, align 8
  %38 = load i64*, i64** %7, align 8
  store i64 %37, i64* %38, align 8
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %35, %26, %15
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i64* @gctl_get_param(%struct.gctl_req*, i8*, i32*) #1

declare dso_local i32 @gctl_error(%struct.gctl_req*, i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
