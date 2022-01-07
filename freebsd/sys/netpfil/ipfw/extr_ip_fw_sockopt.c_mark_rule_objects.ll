; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_mark_rule_objects.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_mark_rule_objects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.ip_fw = type { i32, i32* }
%struct.dump_args = type { i32, i32 }
%struct.opcode_obj_rewrite = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip_fw_chain*, %struct.ip_fw*, %struct.dump_args*)* @mark_rule_objects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_rule_objects(%struct.ip_fw_chain* %0, %struct.ip_fw* %1, %struct.dump_args* %2) #0 {
  %4 = alloca %struct.ip_fw_chain*, align 8
  %5 = alloca %struct.ip_fw*, align 8
  %6 = alloca %struct.dump_args*, align 8
  %7 = alloca %struct.opcode_obj_rewrite*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %4, align 8
  store %struct.ip_fw* %1, %struct.ip_fw** %5, align 8
  store %struct.dump_args* %2, %struct.dump_args** %6, align 8
  %13 = load %struct.ip_fw*, %struct.ip_fw** %5, align 8
  %14 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %10, align 4
  %16 = load %struct.ip_fw*, %struct.ip_fw** %5, align 8
  %17 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %8, align 8
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %46, %3
  %20 = load i32, i32* %10, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %54

22:                                               ; preds = %19
  %23 = load i32*, i32** %8, align 8
  %24 = call i32 @F_LEN(i32* %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32*, i32** %8, align 8
  %26 = call %struct.opcode_obj_rewrite* @find_op_rw(i32* %25, i32* %11, i32* %12)
  store %struct.opcode_obj_rewrite* %26, %struct.opcode_obj_rewrite** %7, align 8
  %27 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** %7, align 8
  %28 = icmp eq %struct.opcode_obj_rewrite* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %46

30:                                               ; preds = %22
  %31 = load %struct.dump_args*, %struct.dump_args** %6, align 8
  %32 = getelementptr inbounds %struct.dump_args, %struct.dump_args* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** %7, align 8
  %35 = getelementptr inbounds %struct.opcode_obj_rewrite, %struct.opcode_obj_rewrite* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %11, align 4
  %38 = call i64 @ipfw_mark_object_kidx(i32 %33, i32 %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %30
  %41 = load %struct.dump_args*, %struct.dump_args** %6, align 8
  %42 = getelementptr inbounds %struct.dump_args, %struct.dump_args* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %40, %30
  br label %46

46:                                               ; preds = %45, %29
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %10, align 4
  %49 = sub nsw i32 %48, %47
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32*, i32** %8, align 8
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  store i32* %53, i32** %8, align 8
  br label %19

54:                                               ; preds = %19
  ret void
}

declare dso_local i32 @F_LEN(i32*) #1

declare dso_local %struct.opcode_obj_rewrite* @find_op_rw(i32*, i32*, i32*) #1

declare dso_local i64 @ipfw_mark_object_kidx(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
