; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mpsutil/extr_mps_cmd.c_mps_map_btdh.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mpsutil/extr_mps_cmd.c_mps_map_btdh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mprs_btdh_mapping = type { i8*, i8*, i8* }

@MPTIOCTL_BTDH_MAPPING = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to map bus/target/device\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mps_map_btdh(i32 %0, i8** %1, i8** %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mprs_btdh_mapping, align 8
  store i32 %0, i32* %6, align 4
  store i8** %1, i8*** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i8** %3, i8*** %9, align 8
  %12 = load i8**, i8*** %8, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr inbounds %struct.mprs_btdh_mapping, %struct.mprs_btdh_mapping* %11, i32 0, i32 2
  store i8* %13, i8** %14, align 8
  %15 = load i8**, i8*** %9, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds %struct.mprs_btdh_mapping, %struct.mprs_btdh_mapping* %11, i32 0, i32 1
  store i8* %16, i8** %17, align 8
  %18 = load i8**, i8*** %7, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds %struct.mprs_btdh_mapping, %struct.mprs_btdh_mapping* %11, i32 0, i32 0
  store i8* %19, i8** %20, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @MPTIOCTL_BTDH_MAPPING, align 4
  %23 = call i32 @ioctl(i32 %21, i32 %22, %struct.mprs_btdh_mapping* %11)
  store i32 %23, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %4
  %26 = load i32, i32* @errno, align 4
  store i32 %26, i32* %10, align 4
  %27 = call i32 @warn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %5, align 4
  br label %39

29:                                               ; preds = %4
  %30 = getelementptr inbounds %struct.mprs_btdh_mapping, %struct.mprs_btdh_mapping* %11, i32 0, i32 2
  %31 = load i8*, i8** %30, align 8
  %32 = load i8**, i8*** %8, align 8
  store i8* %31, i8** %32, align 8
  %33 = getelementptr inbounds %struct.mprs_btdh_mapping, %struct.mprs_btdh_mapping* %11, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = load i8**, i8*** %9, align 8
  store i8* %34, i8** %35, align 8
  %36 = getelementptr inbounds %struct.mprs_btdh_mapping, %struct.mprs_btdh_mapping* %11, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load i8**, i8*** %7, align 8
  store i8* %37, i8** %38, align 8
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %29, %25
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i32 @ioctl(i32, i32, %struct.mprs_btdh_mapping*) #1

declare dso_local i32 @warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
