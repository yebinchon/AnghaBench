; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_set_legacy_obj_kidx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_set_legacy_obj_kidx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.ip_fw_rule0 = type { i32, i32* }
%struct.opcode_obj_rewrite = type { i32 (i32*, i32)*, %struct.named_object* (%struct.ip_fw_chain.0*, i32)* }
%struct.named_object = type { i32 }
%struct.ip_fw_chain.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_fw_chain*, %struct.ip_fw_rule0*)* @set_legacy_obj_kidx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_legacy_obj_kidx(%struct.ip_fw_chain* %0, %struct.ip_fw_rule0* %1) #0 {
  %3 = alloca %struct.ip_fw_chain*, align 8
  %4 = alloca %struct.ip_fw_rule0*, align 8
  %5 = alloca %struct.opcode_obj_rewrite*, align 8
  %6 = alloca %struct.named_object*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %3, align 8
  store %struct.ip_fw_rule0* %1, %struct.ip_fw_rule0** %4, align 8
  store i32 0, i32* %11, align 4
  %16 = load %struct.ip_fw_rule0*, %struct.ip_fw_rule0** %4, align 8
  %17 = getelementptr inbounds %struct.ip_fw_rule0, %struct.ip_fw_rule0* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %12, align 4
  %19 = load %struct.ip_fw_rule0*, %struct.ip_fw_rule0** %4, align 8
  %20 = getelementptr inbounds %struct.ip_fw_rule0, %struct.ip_fw_rule0* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %7, align 8
  store i32 0, i32* %10, align 4
  br label %22

22:                                               ; preds = %67, %2
  %23 = load i32, i32* %12, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %75

25:                                               ; preds = %22
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @F_LEN(i32* %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32*, i32** %7, align 8
  %29 = call %struct.opcode_obj_rewrite* @find_op_rw(i32* %28, i32* %13, i32* %15)
  store %struct.opcode_obj_rewrite* %29, %struct.opcode_obj_rewrite** %5, align 8
  %30 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** %5, align 8
  %31 = icmp eq %struct.opcode_obj_rewrite* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %67

33:                                               ; preds = %25
  %34 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** %5, align 8
  %35 = getelementptr inbounds %struct.opcode_obj_rewrite, %struct.opcode_obj_rewrite* %34, i32 0, i32 1
  %36 = load %struct.named_object* (%struct.ip_fw_chain.0*, i32)*, %struct.named_object* (%struct.ip_fw_chain.0*, i32)** %35, align 8
  %37 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %3, align 8
  %38 = bitcast %struct.ip_fw_chain* %37 to %struct.ip_fw_chain.0*
  %39 = load i32, i32* %13, align 4
  %40 = call %struct.named_object* %36(%struct.ip_fw_chain.0* %38, i32 %39)
  store %struct.named_object* %40, %struct.named_object** %6, align 8
  %41 = load %struct.named_object*, %struct.named_object** %6, align 8
  %42 = icmp eq %struct.named_object* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  br label %67

44:                                               ; preds = %33
  %45 = load %struct.named_object*, %struct.named_object** %6, align 8
  %46 = getelementptr inbounds %struct.named_object, %struct.named_object* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @strtol(i32 %47, i8** %8, i32 10)
  store i64 %48, i64* %9, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %44
  %54 = load i64, i64* %9, align 8
  %55 = icmp slt i64 %54, 65535
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i64, i64* %9, align 8
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %14, align 4
  br label %60

59:                                               ; preds = %53, %44
  store i32 65535, i32* %14, align 4
  store i32 2, i32* %11, align 4
  br label %60

60:                                               ; preds = %59, %56
  %61 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** %5, align 8
  %62 = getelementptr inbounds %struct.opcode_obj_rewrite, %struct.opcode_obj_rewrite* %61, i32 0, i32 0
  %63 = load i32 (i32*, i32)*, i32 (i32*, i32)** %62, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* %14, align 4
  %66 = call i32 %63(i32* %64, i32 %65)
  br label %67

67:                                               ; preds = %60, %43, %32
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %12, align 4
  %70 = sub nsw i32 %69, %68
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load i32*, i32** %7, align 8
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  store i32* %74, i32** %7, align 8
  br label %22

75:                                               ; preds = %22
  %76 = load i32, i32* %11, align 4
  ret i32 %76
}

declare dso_local i32 @F_LEN(i32*) #1

declare dso_local %struct.opcode_obj_rewrite* @find_op_rw(i32*, i32*, i32*) #1

declare dso_local i64 @strtol(i32, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
