; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_ipfw_objhash_find_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_ipfw_objhash_find_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.namedobj_instance = type { i32 }
%struct.tid_info = type { i32, i32, i32, i32* }
%struct.named_object = type { i32 }
%struct.TYPE_3__ = type { i8* }

@EINVAL = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipfw_objhash_find_type(%struct.namedobj_instance* %0, %struct.tid_info* %1, i32 %2, %struct.named_object** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.namedobj_instance*, align 8
  %7 = alloca %struct.tid_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.named_object**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i32, align 4
  store %struct.namedobj_instance* %0, %struct.namedobj_instance** %6, align 8
  store %struct.tid_info* %1, %struct.tid_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.named_object** %3, %struct.named_object*** %9, align 8
  %13 = load %struct.tid_info*, %struct.tid_info** %7, align 8
  %14 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %13, i32 0, i32 3
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %5, align 4
  br label %53

19:                                               ; preds = %4
  %20 = load %struct.tid_info*, %struct.tid_info** %7, align 8
  %21 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.tid_info*, %struct.tid_info** %7, align 8
  %24 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.tid_info*, %struct.tid_info** %7, align 8
  %27 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call %struct.TYPE_3__* @ipfw_find_name_tlv_type(i32* %22, i32 %25, i32 %28, i32 %29)
  store %struct.TYPE_3__* %30, %struct.TYPE_3__** %11, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %32 = icmp eq %struct.TYPE_3__* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %19
  %34 = load i32, i32* @EINVAL, align 4
  store i32 %34, i32* %5, align 4
  br label %53

35:                                               ; preds = %19
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %10, align 8
  %39 = load %struct.tid_info*, %struct.tid_info** %7, align 8
  %40 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %12, align 4
  %42 = load %struct.namedobj_instance*, %struct.namedobj_instance** %6, align 8
  %43 = load i32, i32* %12, align 4
  %44 = load i8*, i8** %10, align 8
  %45 = call %struct.named_object* @ipfw_objhash_lookup_name(%struct.namedobj_instance* %42, i32 %43, i8* %44)
  %46 = load %struct.named_object**, %struct.named_object*** %9, align 8
  store %struct.named_object* %45, %struct.named_object** %46, align 8
  %47 = load %struct.named_object**, %struct.named_object*** %9, align 8
  %48 = load %struct.named_object*, %struct.named_object** %47, align 8
  %49 = icmp eq %struct.named_object* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %35
  %51 = load i32, i32* @ESRCH, align 4
  store i32 %51, i32* %5, align 4
  br label %53

52:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %52, %50, %33, %17
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local %struct.TYPE_3__* @ipfw_find_name_tlv_type(i32*, i32, i32, i32) #1

declare dso_local %struct.named_object* @ipfw_objhash_lookup_name(%struct.namedobj_instance*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
