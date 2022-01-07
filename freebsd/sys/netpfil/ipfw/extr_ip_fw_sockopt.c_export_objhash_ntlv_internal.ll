; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_export_objhash_ntlv_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_export_objhash_ntlv_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.namedobj_instance = type { i32 }
%struct.named_object = type { i32 }
%struct.sockopt_data = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.namedobj_instance*, %struct.named_object*, i8*)* @export_objhash_ntlv_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @export_objhash_ntlv_internal(%struct.namedobj_instance* %0, %struct.named_object* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.namedobj_instance*, align 8
  %6 = alloca %struct.named_object*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sockopt_data*, align 8
  %9 = alloca i32*, align 8
  store %struct.namedobj_instance* %0, %struct.namedobj_instance** %5, align 8
  store %struct.named_object* %1, %struct.named_object** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = bitcast i8* %10 to %struct.sockopt_data*
  store %struct.sockopt_data* %11, %struct.sockopt_data** %8, align 8
  %12 = load %struct.sockopt_data*, %struct.sockopt_data** %8, align 8
  %13 = call i64 @ipfw_get_sopt_space(%struct.sockopt_data* %12, i32 4)
  %14 = inttoptr i64 %13 to i32*
  store i32* %14, i32** %9, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOMEM, align 4
  store i32 %18, i32* %4, align 4
  br label %23

19:                                               ; preds = %3
  %20 = load %struct.named_object*, %struct.named_object** %6, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = call i32 @ipfw_export_obj_ntlv(%struct.named_object* %20, i32* %21)
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %19, %17
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

declare dso_local i64 @ipfw_get_sopt_space(%struct.sockopt_data*, i32) #1

declare dso_local i32 @ipfw_export_obj_ntlv(%struct.named_object*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
