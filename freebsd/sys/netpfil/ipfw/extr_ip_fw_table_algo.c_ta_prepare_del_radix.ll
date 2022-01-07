; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_algo.c_ta_prepare_del_radix.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_algo.c_ta_prepare_del_radix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.tentry_info = type { i32, i64 }
%struct.ta_buf_radix = type { %struct.sockaddr*, %struct.sockaddr*, %struct.TYPE_6__ }
%struct.sockaddr = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@AF_INET = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_fw_chain*, %struct.tentry_info*, i8*)* @ta_prepare_del_radix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ta_prepare_del_radix(%struct.ip_fw_chain* %0, %struct.tentry_info* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_fw_chain*, align 8
  %6 = alloca %struct.tentry_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ta_buf_radix*, align 8
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca %struct.sockaddr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %5, align 8
  store %struct.tentry_info* %1, %struct.tentry_info** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.ta_buf_radix*
  store %struct.ta_buf_radix* %14, %struct.ta_buf_radix** %8, align 8
  %15 = load %struct.tentry_info*, %struct.tentry_info** %6, align 8
  %16 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %18 = load %struct.tentry_info*, %struct.tentry_info** %6, align 8
  %19 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @AF_INET, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %39

23:                                               ; preds = %3
  %24 = load i32, i32* %11, align 4
  %25 = icmp sgt i32 %24, 32
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* @EINVAL, align 4
  store i32 %27, i32* %4, align 4
  br label %56

28:                                               ; preds = %23
  %29 = load %struct.ta_buf_radix*, %struct.ta_buf_radix** %8, align 8
  %30 = getelementptr inbounds %struct.ta_buf_radix, %struct.ta_buf_radix* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = bitcast i32* %32 to %struct.sockaddr*
  store %struct.sockaddr* %33, %struct.sockaddr** %9, align 8
  %34 = load %struct.ta_buf_radix*, %struct.ta_buf_radix** %8, align 8
  %35 = getelementptr inbounds %struct.ta_buf_radix, %struct.ta_buf_radix* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = bitcast i32* %37 to %struct.sockaddr*
  store %struct.sockaddr* %38, %struct.sockaddr** %10, align 8
  br label %41

39:                                               ; preds = %3
  %40 = load i32, i32* @EINVAL, align 4
  store i32 %40, i32* %4, align 4
  br label %56

41:                                               ; preds = %28
  %42 = load %struct.tentry_info*, %struct.tentry_info** %6, align 8
  %43 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %44 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %45 = call i32 @tei_to_sockaddr_ent(%struct.tentry_info* %42, %struct.sockaddr* %43, %struct.sockaddr* %44, i32* %12)
  %46 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %47 = load %struct.ta_buf_radix*, %struct.ta_buf_radix** %8, align 8
  %48 = getelementptr inbounds %struct.ta_buf_radix, %struct.ta_buf_radix* %47, i32 0, i32 1
  store %struct.sockaddr* %46, %struct.sockaddr** %48, align 8
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %41
  %52 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %53 = load %struct.ta_buf_radix*, %struct.ta_buf_radix** %8, align 8
  %54 = getelementptr inbounds %struct.ta_buf_radix, %struct.ta_buf_radix* %53, i32 0, i32 0
  store %struct.sockaddr* %52, %struct.sockaddr** %54, align 8
  br label %55

55:                                               ; preds = %51, %41
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %55, %39, %26
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @tei_to_sockaddr_ent(%struct.tentry_info*, %struct.sockaddr*, %struct.sockaddr*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
