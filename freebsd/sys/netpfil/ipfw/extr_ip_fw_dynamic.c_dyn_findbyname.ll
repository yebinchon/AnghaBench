; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_dynamic.c_dyn_findbyname.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_dynamic.c_dyn_findbyname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.tid_info = type { i64, i32, i32* }
%struct.named_object = type { i32 }
%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [8 x i8] c"uidx %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IPFW_TLV_STATE_NAME = common dso_local global i32 0, align 4
@default_state_name = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_fw_chain*, %struct.tid_info*, %struct.named_object**)* @dyn_findbyname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dyn_findbyname(%struct.ip_fw_chain* %0, %struct.tid_info* %1, %struct.named_object** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_fw_chain*, align 8
  %6 = alloca %struct.tid_info*, align 8
  %7 = alloca %struct.named_object**, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i8*, align 8
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %5, align 8
  store %struct.tid_info* %1, %struct.tid_info** %6, align 8
  store %struct.named_object** %2, %struct.named_object*** %7, align 8
  %10 = load %struct.tid_info*, %struct.tid_info** %6, align 8
  %11 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @DYN_DEBUG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %12)
  %14 = load %struct.tid_info*, %struct.tid_info** %6, align 8
  %15 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %45

18:                                               ; preds = %3
  %19 = load %struct.tid_info*, %struct.tid_info** %6, align 8
  %20 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %4, align 4
  br label %54

25:                                               ; preds = %18
  %26 = load %struct.tid_info*, %struct.tid_info** %6, align 8
  %27 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.tid_info*, %struct.tid_info** %6, align 8
  %30 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.tid_info*, %struct.tid_info** %6, align 8
  %33 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* @IPFW_TLV_STATE_NAME, align 4
  %36 = call %struct.TYPE_3__* @ipfw_find_name_tlv_type(i32* %28, i32 %31, i64 %34, i32 %35)
  store %struct.TYPE_3__* %36, %struct.TYPE_3__** %8, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %38 = icmp eq %struct.TYPE_3__* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %25
  %40 = load i32, i32* @EINVAL, align 4
  store i32 %40, i32* %4, align 4
  br label %54

41:                                               ; preds = %25
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %9, align 8
  br label %47

45:                                               ; preds = %3
  %46 = load i8*, i8** @default_state_name, align 8
  store i8* %46, i8** %9, align 8
  br label %47

47:                                               ; preds = %45, %41
  %48 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %49 = call i32 @CHAIN_TO_SRV(%struct.ip_fw_chain* %48)
  %50 = load i32, i32* @IPFW_TLV_STATE_NAME, align 4
  %51 = load i8*, i8** %9, align 8
  %52 = call %struct.named_object* @ipfw_objhash_lookup_name_type(i32 %49, i32 0, i32 %50, i8* %51)
  %53 = load %struct.named_object**, %struct.named_object*** %7, align 8
  store %struct.named_object* %52, %struct.named_object** %53, align 8
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %47, %39, %23
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @DYN_DEBUG(i8*, i64) #1

declare dso_local %struct.TYPE_3__* @ipfw_find_name_tlv_type(i32*, i32, i64, i32) #1

declare dso_local %struct.named_object* @ipfw_objhash_lookup_name_type(i32, i32, i32, i8*) #1

declare dso_local i32 @CHAIN_TO_SRV(%struct.ip_fw_chain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
