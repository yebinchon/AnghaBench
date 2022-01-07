; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_eaction.c_eaction_findbyname.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_eaction.c_eaction_findbyname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.tid_info = type { i32, i32, i32, i32* }
%struct.named_object = type { i32 }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@IPFW_TLV_EACTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"name %s, uidx %u, type %u\00", align 1
@ESRCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_fw_chain*, %struct.tid_info*, %struct.named_object**)* @eaction_findbyname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eaction_findbyname(%struct.ip_fw_chain* %0, %struct.tid_info* %1, %struct.named_object** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_fw_chain*, align 8
  %6 = alloca %struct.tid_info*, align 8
  %7 = alloca %struct.named_object**, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %5, align 8
  store %struct.tid_info* %1, %struct.tid_info** %6, align 8
  store %struct.named_object** %2, %struct.named_object*** %7, align 8
  %9 = load %struct.tid_info*, %struct.tid_info** %6, align 8
  %10 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %9, i32 0, i32 3
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* %4, align 4
  br label %56

15:                                               ; preds = %3
  %16 = load %struct.tid_info*, %struct.tid_info** %6, align 8
  %17 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %16, i32 0, i32 3
  %18 = load i32*, i32** %17, align 8
  %19 = load %struct.tid_info*, %struct.tid_info** %6, align 8
  %20 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.tid_info*, %struct.tid_info** %6, align 8
  %23 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @IPFW_TLV_EACTION, align 4
  %26 = call %struct.TYPE_3__* @ipfw_find_name_tlv_type(i32* %18, i32 %21, i32 %24, i32 %25)
  store %struct.TYPE_3__* %26, %struct.TYPE_3__** %8, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %28 = icmp eq %struct.TYPE_3__* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %15
  %30 = load i32, i32* @EINVAL, align 4
  store i32 %30, i32* %4, align 4
  br label %56

31:                                               ; preds = %15
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.tid_info*, %struct.tid_info** %6, align 8
  %36 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.tid_info*, %struct.tid_info** %6, align 8
  %39 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @EACTION_DEBUG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %37, i32 %40)
  %42 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %43 = call i32 @CHAIN_TO_SRV(%struct.ip_fw_chain* %42)
  %44 = load i32, i32* @IPFW_TLV_EACTION, align 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.named_object* @ipfw_objhash_lookup_name_type(i32 %43, i32 0, i32 %44, i32 %47)
  %49 = load %struct.named_object**, %struct.named_object*** %7, align 8
  store %struct.named_object* %48, %struct.named_object** %49, align 8
  %50 = load %struct.named_object**, %struct.named_object*** %7, align 8
  %51 = load %struct.named_object*, %struct.named_object** %50, align 8
  %52 = icmp eq %struct.named_object* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %31
  %54 = load i32, i32* @ESRCH, align 4
  store i32 %54, i32* %4, align 4
  br label %56

55:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %55, %53, %29, %13
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local %struct.TYPE_3__* @ipfw_find_name_tlv_type(i32*, i32, i32, i32) #1

declare dso_local i32 @EACTION_DEBUG(i8*, i32, i32, i32) #1

declare dso_local %struct.named_object* @ipfw_objhash_lookup_name_type(i32, i32, i32, i32) #1

declare dso_local i32 @CHAIN_TO_SRV(%struct.ip_fw_chain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
