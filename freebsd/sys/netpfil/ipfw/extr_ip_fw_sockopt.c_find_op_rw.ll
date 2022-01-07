; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_find_op_rw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_find_op_rw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opcode_obj_rewrite = type { i64 (%struct.TYPE_4__*, i32*, i32*)* }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.opcode_obj_rewrite* (%struct.TYPE_4__*, i32*, i32*)* @find_op_rw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.opcode_obj_rewrite* @find_op_rw(%struct.TYPE_4__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.opcode_obj_rewrite*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.opcode_obj_rewrite*, align 8
  %9 = alloca %struct.opcode_obj_rewrite*, align 8
  %10 = alloca %struct.opcode_obj_rewrite*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @find_op_rw_range(i32 %15, %struct.opcode_obj_rewrite** %9, %struct.opcode_obj_rewrite** %10)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store %struct.opcode_obj_rewrite* null, %struct.opcode_obj_rewrite** %4, align 8
  br label %51

19:                                               ; preds = %3
  %20 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** %9, align 8
  store %struct.opcode_obj_rewrite* %20, %struct.opcode_obj_rewrite** %8, align 8
  br label %21

21:                                               ; preds = %47, %19
  %22 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** %8, align 8
  %23 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** %10, align 8
  %24 = icmp ule %struct.opcode_obj_rewrite* %22, %23
  br i1 %24, label %25, label %50

25:                                               ; preds = %21
  %26 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** %8, align 8
  %27 = getelementptr inbounds %struct.opcode_obj_rewrite, %struct.opcode_obj_rewrite* %26, i32 0, i32 0
  %28 = load i64 (%struct.TYPE_4__*, i32*, i32*)*, i64 (%struct.TYPE_4__*, i32*, i32*)** %27, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %30 = call i64 %28(%struct.TYPE_4__* %29, i32* %11, i32* %12)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %25
  %33 = load i32*, i32** %6, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* %11, align 4
  %37 = load i32*, i32** %6, align 8
  store i32 %36, i32* %37, align 4
  br label %38

38:                                               ; preds = %35, %32
  %39 = load i32*, i32** %7, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* %12, align 4
  %43 = load i32*, i32** %7, align 8
  store i32 %42, i32* %43, align 4
  br label %44

44:                                               ; preds = %41, %38
  %45 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** %8, align 8
  store %struct.opcode_obj_rewrite* %45, %struct.opcode_obj_rewrite** %4, align 8
  br label %51

46:                                               ; preds = %25
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** %8, align 8
  %49 = getelementptr inbounds %struct.opcode_obj_rewrite, %struct.opcode_obj_rewrite* %48, i32 1
  store %struct.opcode_obj_rewrite* %49, %struct.opcode_obj_rewrite** %8, align 8
  br label %21

50:                                               ; preds = %21
  store %struct.opcode_obj_rewrite* null, %struct.opcode_obj_rewrite** %4, align 8
  br label %51

51:                                               ; preds = %50, %44, %18
  %52 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** %4, align 8
  ret %struct.opcode_obj_rewrite* %52
}

declare dso_local i64 @find_op_rw_range(i32, %struct.opcode_obj_rewrite**, %struct.opcode_obj_rewrite**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
