; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_ipfw_del_obj_rewriter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_ipfw_del_obj_rewriter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opcode_obj_rewrite = type { i64, i32 }

@ctl3_rewriters = common dso_local global %struct.opcode_obj_rewrite* null, align 8
@ctl3_rsize = common dso_local global i32 0, align 4
@M_IPFW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipfw_del_obj_rewriter(%struct.opcode_obj_rewrite* %0, i64 %1) #0 {
  %3 = alloca %struct.opcode_obj_rewrite*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.opcode_obj_rewrite*, align 8
  %7 = alloca %struct.opcode_obj_rewrite*, align 8
  %8 = alloca %struct.opcode_obj_rewrite*, align 8
  %9 = alloca %struct.opcode_obj_rewrite*, align 8
  %10 = alloca i32, align 4
  store %struct.opcode_obj_rewrite* %0, %struct.opcode_obj_rewrite** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = call i32 (...) @CTL3_LOCK()
  store i32 0, i32* %10, align 4
  br label %12

12:                                               ; preds = %69, %2
  %13 = load i32, i32* %10, align 4
  %14 = sext i32 %13 to i64
  %15 = load i64, i64* %4, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %72

17:                                               ; preds = %12
  %18 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** %3, align 8
  %19 = load i32, i32* %10, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.opcode_obj_rewrite, %struct.opcode_obj_rewrite* %18, i64 %20
  %22 = getelementptr inbounds %struct.opcode_obj_rewrite, %struct.opcode_obj_rewrite* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @find_op_rw_range(i32 %23, %struct.opcode_obj_rewrite** %8, %struct.opcode_obj_rewrite** %9)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  br label %69

27:                                               ; preds = %17
  %28 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** %8, align 8
  store %struct.opcode_obj_rewrite* %28, %struct.opcode_obj_rewrite** %7, align 8
  br label %29

29:                                               ; preds = %65, %27
  %30 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** %7, align 8
  %31 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** %9, align 8
  %32 = icmp ule %struct.opcode_obj_rewrite* %30, %31
  br i1 %32, label %33, label %68

33:                                               ; preds = %29
  %34 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** %7, align 8
  %35 = getelementptr inbounds %struct.opcode_obj_rewrite, %struct.opcode_obj_rewrite* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** %3, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.opcode_obj_rewrite, %struct.opcode_obj_rewrite* %37, i64 %39
  %41 = getelementptr inbounds %struct.opcode_obj_rewrite, %struct.opcode_obj_rewrite* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %36, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  br label %65

45:                                               ; preds = %33
  %46 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** @ctl3_rewriters, align 8
  %47 = load i32, i32* @ctl3_rsize, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.opcode_obj_rewrite, %struct.opcode_obj_rewrite* %46, i64 %48
  store %struct.opcode_obj_rewrite* %49, %struct.opcode_obj_rewrite** %6, align 8
  %50 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** %6, align 8
  %51 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** %7, align 8
  %52 = getelementptr inbounds %struct.opcode_obj_rewrite, %struct.opcode_obj_rewrite* %51, i64 1
  %53 = ptrtoint %struct.opcode_obj_rewrite* %50 to i64
  %54 = ptrtoint %struct.opcode_obj_rewrite* %52 to i64
  %55 = sub i64 %53, %54
  %56 = sdiv exact i64 %55, 16
  %57 = mul i64 %56, 16
  store i64 %57, i64* %5, align 8
  %58 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** %7, align 8
  %59 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** %7, align 8
  %60 = getelementptr inbounds %struct.opcode_obj_rewrite, %struct.opcode_obj_rewrite* %59, i64 1
  %61 = load i64, i64* %5, align 8
  %62 = call i32 @memmove(%struct.opcode_obj_rewrite* %58, %struct.opcode_obj_rewrite* %60, i64 %61)
  %63 = load i32, i32* @ctl3_rsize, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* @ctl3_rsize, align 4
  br label %68

65:                                               ; preds = %44
  %66 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** %7, align 8
  %67 = getelementptr inbounds %struct.opcode_obj_rewrite, %struct.opcode_obj_rewrite* %66, i32 1
  store %struct.opcode_obj_rewrite* %67, %struct.opcode_obj_rewrite** %7, align 8
  br label %29

68:                                               ; preds = %45, %29
  br label %69

69:                                               ; preds = %68, %26
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %10, align 4
  br label %12

72:                                               ; preds = %12
  %73 = load i32, i32* @ctl3_rsize, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %72
  %76 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** @ctl3_rewriters, align 8
  %77 = icmp ne %struct.opcode_obj_rewrite* %76, null
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** @ctl3_rewriters, align 8
  %80 = load i32, i32* @M_IPFW, align 4
  %81 = call i32 @free(%struct.opcode_obj_rewrite* %79, i32 %80)
  br label %82

82:                                               ; preds = %78, %75
  store %struct.opcode_obj_rewrite* null, %struct.opcode_obj_rewrite** @ctl3_rewriters, align 8
  br label %83

83:                                               ; preds = %82, %72
  %84 = call i32 (...) @CTL3_UNLOCK()
  ret i32 0
}

declare dso_local i32 @CTL3_LOCK(...) #1

declare dso_local i64 @find_op_rw_range(i32, %struct.opcode_obj_rewrite**, %struct.opcode_obj_rewrite**) #1

declare dso_local i32 @memmove(%struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite*, i64) #1

declare dso_local i32 @free(%struct.opcode_obj_rewrite*, i32) #1

declare dso_local i32 @CTL3_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
