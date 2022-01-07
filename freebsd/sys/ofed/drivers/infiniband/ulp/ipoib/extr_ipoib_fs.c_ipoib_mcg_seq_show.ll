; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_fs.c_ipoib_mcg_seq_show.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_fs.c_ipoib_mcg_seq_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.ipoib_mcast_iter = type { i32 }
%union.ib_gid = type { i32 }

@.str = private unnamed_addr constant [76 x i8] c"GID: %s\0A  created: %10ld\0A  queuelen: %9d\0A  complete: %9s\0A  send_only: %8s\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @ipoib_mcg_seq_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipoib_mcg_seq_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ipoib_mcast_iter*, align 8
  %7 = alloca [40 x i8], align 16
  %8 = alloca %union.ib_gid, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.ipoib_mcast_iter*
  store %struct.ipoib_mcast_iter* %14, %struct.ipoib_mcast_iter** %6, align 8
  %15 = load %struct.ipoib_mcast_iter*, %struct.ipoib_mcast_iter** %6, align 8
  %16 = icmp ne %struct.ipoib_mcast_iter* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %36

18:                                               ; preds = %2
  %19 = load %struct.ipoib_mcast_iter*, %struct.ipoib_mcast_iter** %6, align 8
  %20 = call i32 @ipoib_mcast_iter_read(%struct.ipoib_mcast_iter* %19, %union.ib_gid* %8, i64* %9, i32* %10, i32* %11, i32* %12)
  %21 = getelementptr inbounds [40 x i8], [40 x i8]* %7, i64 0, i64 0
  %22 = call i32 @format_gid(%union.ib_gid* %8, i8* %21)
  %23 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %24 = getelementptr inbounds [40 x i8], [40 x i8]* %7, i64 0, i64 0
  %25 = load i64, i64* %9, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %31 = load i32, i32* %12, align 4
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %35 = call i32 @seq_printf(%struct.seq_file* %23, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i8* %24, i64 %25, i32 %26, i8* %30, i8* %34)
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %18, %17
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @ipoib_mcast_iter_read(%struct.ipoib_mcast_iter*, %union.ib_gid*, i64*, i32*, i32*, i32*) #1

declare dso_local i32 @format_gid(%union.ib_gid*, i8*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*, i64, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
