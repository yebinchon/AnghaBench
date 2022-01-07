; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_export_objhash_ntlv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_export_objhash_ntlv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.namedobj_instance = type { i32 }
%struct.sockopt_data = type { i32 }
%struct.named_object = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"invalid object kernel index passed\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.namedobj_instance*, i32, %struct.sockopt_data*)* @export_objhash_ntlv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @export_objhash_ntlv(%struct.namedobj_instance* %0, i32 %1, %struct.sockopt_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.namedobj_instance*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockopt_data*, align 8
  %8 = alloca %struct.named_object*, align 8
  %9 = alloca i32*, align 8
  store %struct.namedobj_instance* %0, %struct.namedobj_instance** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sockopt_data* %2, %struct.sockopt_data** %7, align 8
  %10 = load %struct.namedobj_instance*, %struct.namedobj_instance** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.named_object* @ipfw_objhash_lookup_kidx(%struct.namedobj_instance* %10, i32 %11)
  store %struct.named_object* %12, %struct.named_object** %8, align 8
  %13 = load %struct.named_object*, %struct.named_object** %8, align 8
  %14 = icmp ne %struct.named_object* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @KASSERT(i32 %15, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %18 = call i64 @ipfw_get_sopt_space(%struct.sockopt_data* %17, i32 4)
  %19 = inttoptr i64 %18 to i32*
  store i32* %19, i32** %9, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* @ENOMEM, align 4
  store i32 %23, i32* %4, align 4
  br label %28

24:                                               ; preds = %3
  %25 = load %struct.named_object*, %struct.named_object** %8, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = call i32 @ipfw_export_obj_ntlv(%struct.named_object* %25, i32* %26)
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %24, %22
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local %struct.named_object* @ipfw_objhash_lookup_kidx(%struct.namedobj_instance*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @ipfw_get_sopt_space(%struct.sockopt_data*, i32) #1

declare dso_local i32 @ipfw_export_obj_ntlv(%struct.named_object*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
