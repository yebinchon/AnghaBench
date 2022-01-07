; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_algo.c_ta_prepare_add_fhash.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_algo.c_ta_prepare_add_fhash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.tentry_info = type { i64 }
%struct.ta_buf_fhash = type { %struct.fhashentry* }
%struct.fhashentry = type { i32 }

@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@M_IPFW_TBL = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_fw_chain*, %struct.tentry_info*, i8*)* @ta_prepare_add_fhash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ta_prepare_add_fhash(%struct.ip_fw_chain* %0, %struct.tentry_info* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_fw_chain*, align 8
  %6 = alloca %struct.tentry_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ta_buf_fhash*, align 8
  %9 = alloca %struct.fhashentry*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %5, align 8
  store %struct.tentry_info* %1, %struct.tentry_info** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.ta_buf_fhash*
  store %struct.ta_buf_fhash* %13, %struct.ta_buf_fhash** %8, align 8
  %14 = load %struct.tentry_info*, %struct.tentry_info** %6, align 8
  %15 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @AF_INET, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i64 4, i64* %10, align 8
  br label %30

20:                                               ; preds = %3
  %21 = load %struct.tentry_info*, %struct.tentry_info** %6, align 8
  %22 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @AF_INET6, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i64 4, i64* %10, align 8
  br label %29

27:                                               ; preds = %20
  %28 = load i32, i32* @EINVAL, align 4
  store i32 %28, i32* %4, align 4
  br label %51

29:                                               ; preds = %26
  br label %30

30:                                               ; preds = %29, %19
  %31 = load i64, i64* %10, align 8
  %32 = load i32, i32* @M_IPFW_TBL, align 4
  %33 = load i32, i32* @M_WAITOK, align 4
  %34 = load i32, i32* @M_ZERO, align 4
  %35 = or i32 %33, %34
  %36 = call %struct.fhashentry* @malloc(i64 %31, i32 %32, i32 %35)
  store %struct.fhashentry* %36, %struct.fhashentry** %9, align 8
  %37 = load %struct.tentry_info*, %struct.tentry_info** %6, align 8
  %38 = load %struct.fhashentry*, %struct.fhashentry** %9, align 8
  %39 = call i32 @tei_to_fhash_ent(%struct.tentry_info* %37, %struct.fhashentry* %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %30
  %43 = load %struct.fhashentry*, %struct.fhashentry** %9, align 8
  %44 = load i32, i32* @M_IPFW_TBL, align 4
  %45 = call i32 @free(%struct.fhashentry* %43, i32 %44)
  %46 = load i32, i32* %11, align 4
  store i32 %46, i32* %4, align 4
  br label %51

47:                                               ; preds = %30
  %48 = load %struct.fhashentry*, %struct.fhashentry** %9, align 8
  %49 = load %struct.ta_buf_fhash*, %struct.ta_buf_fhash** %8, align 8
  %50 = getelementptr inbounds %struct.ta_buf_fhash, %struct.ta_buf_fhash* %49, i32 0, i32 0
  store %struct.fhashentry* %48, %struct.fhashentry** %50, align 8
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %47, %42, %27
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local %struct.fhashentry* @malloc(i64, i32, i32) #1

declare dso_local i32 @tei_to_fhash_ent(%struct.tentry_info*, %struct.fhashentry*) #1

declare dso_local i32 @free(%struct.fhashentry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
