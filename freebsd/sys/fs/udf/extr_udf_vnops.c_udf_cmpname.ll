; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/udf/extr_udf_vnops.c_udf_cmpname.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/udf/extr_udf_vnops.c_udf_cmpname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udf_mnt = type { i32 }

@udf_zone_trans = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32, %struct.udf_mnt*)* @udf_cmpname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_cmpname(i8* %0, i8* %1, i32 %2, i32 %3, %struct.udf_mnt* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.udf_mnt*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.udf_mnt* %4, %struct.udf_mnt** %10, align 8
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* @udf_zone_trans, align 4
  %14 = load i32, i32* @M_WAITOK, align 4
  %15 = call i8* @uma_zalloc(i32 %13, i32 %14)
  store i8* %15, i8** %11, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load i8*, i8** %11, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.udf_mnt*, %struct.udf_mnt** %10, align 8
  %20 = call i32 @udf_transname(i8* %16, i8* %17, i32 %18, %struct.udf_mnt* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %5
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %5
  store i32 -1, i32* %12, align 4
  br label %33

28:                                               ; preds = %23
  %29 = load i8*, i8** %11, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @bcmp(i8* %29, i8* %30, i32 %31)
  store i32 %32, i32* %12, align 4
  br label %33

33:                                               ; preds = %28, %27
  %34 = load i32, i32* @udf_zone_trans, align 4
  %35 = load i8*, i8** %11, align 8
  %36 = call i32 @uma_zfree(i32 %34, i8* %35)
  %37 = load i32, i32* %12, align 4
  ret i32 %37
}

declare dso_local i8* @uma_zalloc(i32, i32) #1

declare dso_local i32 @udf_transname(i8*, i8*, i32, %struct.udf_mnt*) #1

declare dso_local i32 @bcmp(i8*, i8*, i32) #1

declare dso_local i32 @uma_zfree(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
