; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sge.c_init_fl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sge.c_init_fl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sge_fl = type { i32, i32, i32, i32 }

@EQ_ESIZE = common dso_local global i32 0, align 4
@BUF_PACKING_OK = common dso_local global i32 0, align 4
@buffer_packing = common dso_local global i32 0, align 4
@FL_BUF_PACKING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, %struct.sge_fl*, i32, i32, i8*)* @init_fl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_fl(%struct.adapter* %0, %struct.sge_fl* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca %struct.sge_fl*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.adapter* %0, %struct.adapter** %6, align 8
  store %struct.sge_fl* %1, %struct.sge_fl** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %11 = load i32, i32* %8, align 4
  %12 = load %struct.sge_fl*, %struct.sge_fl** %7, align 8
  %13 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.adapter*, %struct.adapter** %6, align 8
  %16 = getelementptr inbounds %struct.adapter, %struct.adapter* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @EQ_ESIZE, align 4
  %21 = sdiv i32 %19, %20
  %22 = sub nsw i32 %14, %21
  %23 = load %struct.sge_fl*, %struct.sge_fl** %7, align 8
  %24 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.sge_fl*, %struct.sge_fl** %7, align 8
  %26 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load i8*, i8** %10, align 8
  %29 = call i32 @strlcpy(i32 %27, i8* %28, i32 4)
  %30 = load %struct.adapter*, %struct.adapter** %6, align 8
  %31 = getelementptr inbounds %struct.adapter, %struct.adapter* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @BUF_PACKING_OK, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %56

36:                                               ; preds = %5
  %37 = load %struct.adapter*, %struct.adapter** %6, align 8
  %38 = call i64 @is_t4(%struct.adapter* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* @buffer_packing, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %40, %36
  %44 = load %struct.adapter*, %struct.adapter** %6, align 8
  %45 = call i64 @is_t4(%struct.adapter* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %43
  %48 = load i32, i32* @buffer_packing, align 4
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %56

50:                                               ; preds = %47, %40
  %51 = load i32, i32* @FL_BUF_PACKING, align 4
  %52 = load %struct.sge_fl*, %struct.sge_fl** %7, align 8
  %53 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %50, %47, %43, %5
  %57 = load %struct.adapter*, %struct.adapter** %6, align 8
  %58 = load %struct.sge_fl*, %struct.sge_fl** %7, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @find_best_refill_source(%struct.adapter* %57, %struct.sge_fl* %58, i32 %59)
  %61 = load %struct.adapter*, %struct.adapter** %6, align 8
  %62 = load %struct.sge_fl*, %struct.sge_fl** %7, align 8
  %63 = call i32 @find_safe_refill_source(%struct.adapter* %61, %struct.sge_fl* %62)
  ret void
}

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i64 @is_t4(%struct.adapter*) #1

declare dso_local i32 @find_best_refill_source(%struct.adapter*, %struct.sge_fl*, i32) #1

declare dso_local i32 @find_safe_refill_source(%struct.adapter*, %struct.sge_fl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
