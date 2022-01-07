; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_id.c_ip_randomid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_id.c_ip_randomid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@V_ip_id_mtx = common dso_local global i32 0, align 4
@V_random_id_collisions = common dso_local global i32 0, align 4
@V_id_bits = common dso_local global i32 0, align 4
@V_id_array = common dso_local global i64* null, align 8
@V_array_ptr = common dso_local global i64 0, align 8
@V_array_size = common dso_local global i64 0, align 8
@V_random_id_total = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @ip_randomid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ip_randomid() #0 {
  %1 = alloca i64, align 8
  %2 = call i32 @mtx_lock(i32* @V_ip_id_mtx)
  store i64 0, i64* %1, align 8
  br label %3

3:                                                ; preds = %19, %0
  %4 = load i64, i64* %1, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = load i32, i32* @V_random_id_collisions, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* @V_random_id_collisions, align 4
  br label %9

9:                                                ; preds = %6, %3
  %10 = call i32 @arc4rand(i64* %1, i32 8, i32 0)
  br label %11

11:                                               ; preds = %9
  %12 = load i32, i32* @V_id_bits, align 4
  %13 = load i64, i64* %1, align 8
  %14 = call i64 @bit_test(i32 %12, i64 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = load i64, i64* %1, align 8
  %18 = icmp eq i64 %17, 0
  br label %19

19:                                               ; preds = %16, %11
  %20 = phi i1 [ true, %11 ], [ %18, %16 ]
  br i1 %20, label %3, label %21

21:                                               ; preds = %19
  %22 = load i32, i32* @V_id_bits, align 4
  %23 = load i64*, i64** @V_id_array, align 8
  %24 = load i64, i64* @V_array_ptr, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @bit_clear(i32 %22, i64 %26)
  %28 = load i32, i32* @V_id_bits, align 4
  %29 = load i64, i64* %1, align 8
  %30 = call i32 @bit_set(i32 %28, i64 %29)
  %31 = load i64, i64* %1, align 8
  %32 = load i64*, i64** @V_id_array, align 8
  %33 = load i64, i64* @V_array_ptr, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  store i64 %31, i64* %34, align 8
  %35 = load i64, i64* @V_array_ptr, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* @V_array_ptr, align 8
  %37 = load i64, i64* @V_array_ptr, align 8
  %38 = load i64, i64* @V_array_size, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %21
  store i64 0, i64* @V_array_ptr, align 8
  br label %41

41:                                               ; preds = %40, %21
  %42 = load i32, i32* @V_random_id_total, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* @V_random_id_total, align 4
  %44 = call i32 @mtx_unlock(i32* @V_ip_id_mtx)
  %45 = load i64, i64* %1, align 8
  ret i64 %45
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @arc4rand(i64*, i32, i32) #1

declare dso_local i64 @bit_test(i32, i64) #1

declare dso_local i32 @bit_clear(i32, i64) #1

declare dso_local i32 @bit_set(i32, i64) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
