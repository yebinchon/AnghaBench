; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_ipfw_add_obj_rewriter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_ipfw_add_obj_rewriter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opcode_obj_rewrite = type { i32 }

@ctl3_rsize = common dso_local global i64 0, align 8
@M_IPFW = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ctl3_rewriters = common dso_local global %struct.opcode_obj_rewrite* null, align 8
@compare_opcodes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipfw_add_obj_rewriter(%struct.opcode_obj_rewrite* %0, i64 %1) #0 {
  %3 = alloca %struct.opcode_obj_rewrite*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.opcode_obj_rewrite*, align 8
  store %struct.opcode_obj_rewrite* %0, %struct.opcode_obj_rewrite** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = call i32 (...) @CTL3_LOCK()
  br label %8

8:                                                ; preds = %28, %2
  %9 = load i64, i64* @ctl3_rsize, align 8
  %10 = load i64, i64* %4, align 8
  %11 = add i64 %9, %10
  store i64 %11, i64* %5, align 8
  %12 = call i32 (...) @CTL3_UNLOCK()
  %13 = load i64, i64* %5, align 8
  %14 = mul i64 4, %13
  %15 = trunc i64 %14 to i32
  %16 = load i32, i32* @M_IPFW, align 4
  %17 = load i32, i32* @M_WAITOK, align 4
  %18 = load i32, i32* @M_ZERO, align 4
  %19 = or i32 %17, %18
  %20 = call %struct.opcode_obj_rewrite* @malloc(i32 %15, i32 %16, i32 %19)
  store %struct.opcode_obj_rewrite* %20, %struct.opcode_obj_rewrite** %6, align 8
  %21 = call i32 (...) @CTL3_LOCK()
  %22 = load i64, i64* @ctl3_rsize, align 8
  %23 = load i64, i64* %4, align 8
  %24 = add i64 %22, %23
  %25 = load i64, i64* %5, align 8
  %26 = icmp ule i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %8
  br label %32

28:                                               ; preds = %8
  %29 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** %6, align 8
  %30 = load i32, i32* @M_IPFW, align 4
  %31 = call i32 @free(%struct.opcode_obj_rewrite* %29, i32 %30)
  br label %8

32:                                               ; preds = %27
  %33 = load i64, i64* @ctl3_rsize, align 8
  %34 = load i64, i64* %4, align 8
  %35 = add i64 %33, %34
  store i64 %35, i64* %5, align 8
  %36 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** %6, align 8
  %37 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** @ctl3_rewriters, align 8
  %38 = load i64, i64* @ctl3_rsize, align 8
  %39 = mul i64 %38, 4
  %40 = call i32 @memcpy(%struct.opcode_obj_rewrite* %36, %struct.opcode_obj_rewrite* %37, i64 %39)
  %41 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** %6, align 8
  %42 = load i64, i64* @ctl3_rsize, align 8
  %43 = getelementptr inbounds %struct.opcode_obj_rewrite, %struct.opcode_obj_rewrite* %41, i64 %42
  %44 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** %3, align 8
  %45 = load i64, i64* %4, align 8
  %46 = mul i64 %45, 4
  %47 = call i32 @memcpy(%struct.opcode_obj_rewrite* %43, %struct.opcode_obj_rewrite* %44, i64 %46)
  %48 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** %6, align 8
  %49 = load i64, i64* %5, align 8
  %50 = load i32, i32* @compare_opcodes, align 4
  %51 = call i32 @qsort(%struct.opcode_obj_rewrite* %48, i64 %49, i32 4, i32 %50)
  %52 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** @ctl3_rewriters, align 8
  %53 = icmp ne %struct.opcode_obj_rewrite* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %32
  %55 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** @ctl3_rewriters, align 8
  %56 = load i32, i32* @M_IPFW, align 4
  %57 = call i32 @free(%struct.opcode_obj_rewrite* %55, i32 %56)
  br label %58

58:                                               ; preds = %54, %32
  %59 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** %6, align 8
  store %struct.opcode_obj_rewrite* %59, %struct.opcode_obj_rewrite** @ctl3_rewriters, align 8
  %60 = load i64, i64* %5, align 8
  store i64 %60, i64* @ctl3_rsize, align 8
  %61 = call i32 (...) @CTL3_UNLOCK()
  ret void
}

declare dso_local i32 @CTL3_LOCK(...) #1

declare dso_local i32 @CTL3_UNLOCK(...) #1

declare dso_local %struct.opcode_obj_rewrite* @malloc(i32, i32, i32) #1

declare dso_local i32 @free(%struct.opcode_obj_rewrite*, i32) #1

declare dso_local i32 @memcpy(%struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite*, i64) #1

declare dso_local i32 @qsort(%struct.opcode_obj_rewrite*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
