; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_cmd.c_mfi_query_disk.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_cmd.c_mfi_query_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_query_disk = type { i32, i32 }

@MFIIO_QUERY_DISK = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.mfi_query_disk*)* @mfi_query_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mfi_query_disk(i32 %0, i32 %1, %struct.mfi_query_disk* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mfi_query_disk*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.mfi_query_disk* %2, %struct.mfi_query_disk** %7, align 8
  %8 = load %struct.mfi_query_disk*, %struct.mfi_query_disk** %7, align 8
  %9 = call i32 @bzero(%struct.mfi_query_disk* %8, i32 8)
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.mfi_query_disk*, %struct.mfi_query_disk** %7, align 8
  %12 = getelementptr inbounds %struct.mfi_query_disk, %struct.mfi_query_disk* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @MFIIO_QUERY_DISK, align 4
  %15 = load %struct.mfi_query_disk*, %struct.mfi_query_disk** %7, align 8
  %16 = call i64 @ioctl(i32 %13, i32 %14, %struct.mfi_query_disk* %15)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %27

19:                                               ; preds = %3
  %20 = load %struct.mfi_query_disk*, %struct.mfi_query_disk** %7, align 8
  %21 = getelementptr inbounds %struct.mfi_query_disk, %struct.mfi_query_disk* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @ENXIO, align 4
  store i32 %25, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %27

26:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %26, %24, %18
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i32 @bzero(%struct.mfi_query_disk*, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.mfi_query_disk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
