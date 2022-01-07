; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_export_named_objects.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_export_named_objects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.namedobj_instance = type { i32 }
%struct.dump_args = type { i64, i32* }
%struct.sockopt_data = type { i32 }

@IPFW_TABLES_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.namedobj_instance*, %struct.dump_args*, %struct.sockopt_data*)* @export_named_objects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @export_named_objects(%struct.namedobj_instance* %0, %struct.dump_args* %1, %struct.sockopt_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.namedobj_instance*, align 8
  %6 = alloca %struct.dump_args*, align 8
  %7 = alloca %struct.sockopt_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.namedobj_instance* %0, %struct.namedobj_instance** %5, align 8
  store %struct.dump_args* %1, %struct.dump_args** %6, align 8
  store %struct.sockopt_data* %2, %struct.sockopt_data** %7, align 8
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %49, %3
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* @IPFW_TABLES_MAX, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = load %struct.dump_args*, %struct.dump_args** %6, align 8
  %16 = getelementptr inbounds %struct.dump_args, %struct.dump_args* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %17, 0
  br label %19

19:                                               ; preds = %14, %10
  %20 = phi i1 [ false, %10 ], [ %18, %14 ]
  br i1 %20, label %21, label %52

21:                                               ; preds = %19
  %22 = load %struct.dump_args*, %struct.dump_args** %6, align 8
  %23 = getelementptr inbounds %struct.dump_args, %struct.dump_args* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sdiv i32 %25, 32
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %9, align 4
  %31 = srem i32 %30, 32
  %32 = shl i32 1, %31
  %33 = and i32 %29, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %21
  br label %49

36:                                               ; preds = %21
  %37 = load %struct.namedobj_instance*, %struct.namedobj_instance** %5, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %40 = call i32 @export_objhash_ntlv(%struct.namedobj_instance* %37, i32 %38, %struct.sockopt_data* %39)
  store i32 %40, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %4, align 4
  br label %53

44:                                               ; preds = %36
  %45 = load %struct.dump_args*, %struct.dump_args** %6, align 8
  %46 = getelementptr inbounds %struct.dump_args, %struct.dump_args* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, -1
  store i64 %48, i64* %46, align 8
  br label %49

49:                                               ; preds = %44, %35
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %9, align 4
  br label %10

52:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %52, %42
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @export_objhash_ntlv(%struct.namedobj_instance*, i32, %struct.sockopt_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
