; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_find_op_rw_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_find_op_rw_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opcode_obj_rewrite = type { i64 }

@ctl3_rewriters = common dso_local global %struct.opcode_obj_rewrite* null, align 8
@ctl3_rsize = common dso_local global i32 0, align 4
@compare_opcodes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.opcode_obj_rewrite**, %struct.opcode_obj_rewrite**)* @find_op_rw_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_op_rw_range(i64 %0, %struct.opcode_obj_rewrite** %1, %struct.opcode_obj_rewrite** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.opcode_obj_rewrite**, align 8
  %7 = alloca %struct.opcode_obj_rewrite**, align 8
  %8 = alloca %struct.opcode_obj_rewrite*, align 8
  %9 = alloca %struct.opcode_obj_rewrite*, align 8
  %10 = alloca %struct.opcode_obj_rewrite*, align 8
  %11 = alloca %struct.opcode_obj_rewrite, align 8
  %12 = alloca %struct.opcode_obj_rewrite*, align 8
  store i64 %0, i64* %5, align 8
  store %struct.opcode_obj_rewrite** %1, %struct.opcode_obj_rewrite*** %6, align 8
  store %struct.opcode_obj_rewrite** %2, %struct.opcode_obj_rewrite*** %7, align 8
  %13 = call i32 @memset(%struct.opcode_obj_rewrite* %11, i32 0, i32 8)
  %14 = load i64, i64* %5, align 8
  %15 = getelementptr inbounds %struct.opcode_obj_rewrite, %struct.opcode_obj_rewrite* %11, i32 0, i32 0
  store i64 %14, i64* %15, align 8
  %16 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** @ctl3_rewriters, align 8
  %17 = load i32, i32* @ctl3_rsize, align 4
  %18 = load i32, i32* @compare_opcodes, align 4
  %19 = call i64 @bsearch(%struct.opcode_obj_rewrite* %11, %struct.opcode_obj_rewrite* %16, i32 %17, i32 8, i32 %18)
  %20 = inttoptr i64 %19 to %struct.opcode_obj_rewrite*
  store %struct.opcode_obj_rewrite* %20, %struct.opcode_obj_rewrite** %12, align 8
  %21 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** %12, align 8
  %22 = icmp eq %struct.opcode_obj_rewrite* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %72

24:                                               ; preds = %3
  %25 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** %12, align 8
  store %struct.opcode_obj_rewrite* %25, %struct.opcode_obj_rewrite** %9, align 8
  br label %26

26:                                               ; preds = %40, %24
  %27 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** %9, align 8
  %28 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** @ctl3_rewriters, align 8
  %29 = icmp ugt %struct.opcode_obj_rewrite* %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** %9, align 8
  %32 = getelementptr inbounds %struct.opcode_obj_rewrite, %struct.opcode_obj_rewrite* %31, i64 -1
  %33 = getelementptr inbounds %struct.opcode_obj_rewrite, %struct.opcode_obj_rewrite* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %5, align 8
  %36 = icmp eq i64 %34, %35
  br label %37

37:                                               ; preds = %30, %26
  %38 = phi i1 [ false, %26 ], [ %36, %30 ]
  br i1 %38, label %39, label %43

39:                                               ; preds = %37
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** %9, align 8
  %42 = getelementptr inbounds %struct.opcode_obj_rewrite, %struct.opcode_obj_rewrite* %41, i32 -1
  store %struct.opcode_obj_rewrite* %42, %struct.opcode_obj_rewrite** %9, align 8
  br label %26

43:                                               ; preds = %37
  %44 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** %12, align 8
  store %struct.opcode_obj_rewrite* %44, %struct.opcode_obj_rewrite** %10, align 8
  %45 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** @ctl3_rewriters, align 8
  %46 = load i32, i32* @ctl3_rsize, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.opcode_obj_rewrite, %struct.opcode_obj_rewrite* %45, i64 %47
  store %struct.opcode_obj_rewrite* %48, %struct.opcode_obj_rewrite** %8, align 8
  br label %49

49:                                               ; preds = %64, %43
  %50 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** %10, align 8
  %51 = getelementptr inbounds %struct.opcode_obj_rewrite, %struct.opcode_obj_rewrite* %50, i64 1
  %52 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** %8, align 8
  %53 = icmp ult %struct.opcode_obj_rewrite* %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** %10, align 8
  %56 = getelementptr inbounds %struct.opcode_obj_rewrite, %struct.opcode_obj_rewrite* %55, i64 1
  %57 = getelementptr inbounds %struct.opcode_obj_rewrite, %struct.opcode_obj_rewrite* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %5, align 8
  %60 = icmp eq i64 %58, %59
  br label %61

61:                                               ; preds = %54, %49
  %62 = phi i1 [ false, %49 ], [ %60, %54 ]
  br i1 %62, label %63, label %67

63:                                               ; preds = %61
  br label %64

64:                                               ; preds = %63
  %65 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** %10, align 8
  %66 = getelementptr inbounds %struct.opcode_obj_rewrite, %struct.opcode_obj_rewrite* %65, i32 1
  store %struct.opcode_obj_rewrite* %66, %struct.opcode_obj_rewrite** %10, align 8
  br label %49

67:                                               ; preds = %61
  %68 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** %9, align 8
  %69 = load %struct.opcode_obj_rewrite**, %struct.opcode_obj_rewrite*** %6, align 8
  store %struct.opcode_obj_rewrite* %68, %struct.opcode_obj_rewrite** %69, align 8
  %70 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** %10, align 8
  %71 = load %struct.opcode_obj_rewrite**, %struct.opcode_obj_rewrite*** %7, align 8
  store %struct.opcode_obj_rewrite* %70, %struct.opcode_obj_rewrite** %71, align 8
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %67, %23
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @memset(%struct.opcode_obj_rewrite*, i32, i32) #1

declare dso_local i64 @bsearch(%struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
