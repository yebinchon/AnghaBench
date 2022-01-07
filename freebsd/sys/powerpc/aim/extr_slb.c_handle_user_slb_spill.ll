; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_slb.c_handle_user_slb_spill.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_slb.c_handle_user_slb_spill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.slb** }
%struct.slb = type { i32 }

@ADDR_SR_SHFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @handle_user_slb_spill(%struct.TYPE_8__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.slb*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %11 = load %struct.slb**, %struct.slb*** %10, align 8
  %12 = icmp eq %struct.slb** %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %65

14:                                               ; preds = %2
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @ADDR_SR_SHFT, align 8
  %17 = lshr i64 %15, %16
  store i64 %17, i64* %7, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %19 = call i32 @PMAP_LOCK(%struct.TYPE_8__* %18)
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %21 = load i64, i64* %5, align 8
  %22 = call %struct.slb* @user_va_to_slb_entry(%struct.TYPE_8__* %20, i64 %21)
  store %struct.slb* %22, %struct.slb** %6, align 8
  %23 = load %struct.slb*, %struct.slb** %6, align 8
  %24 = icmp eq %struct.slb* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %14
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @allocate_user_vsid(%struct.TYPE_8__* %26, i64 %27, i32 0)
  br label %62

29:                                               ; preds = %14
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %48, %29
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %51

36:                                               ; preds = %30
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load %struct.slb**, %struct.slb*** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.slb*, %struct.slb** %39, i64 %41
  %43 = load %struct.slb*, %struct.slb** %42, align 8
  %44 = load %struct.slb*, %struct.slb** %6, align 8
  %45 = icmp eq %struct.slb* %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  br label %51

47:                                               ; preds = %36
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %8, align 4
  br label %30

51:                                               ; preds = %46, %30
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp eq i32 %52, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %59 = load %struct.slb*, %struct.slb** %6, align 8
  %60 = call i32 @slb_insert_user(%struct.TYPE_8__* %58, %struct.slb* %59)
  br label %61

61:                                               ; preds = %57, %51
  br label %62

62:                                               ; preds = %61, %25
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %64 = call i32 @PMAP_UNLOCK(%struct.TYPE_8__* %63)
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %62, %13
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @PMAP_LOCK(%struct.TYPE_8__*) #1

declare dso_local %struct.slb* @user_va_to_slb_entry(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @allocate_user_vsid(%struct.TYPE_8__*, i64, i32) #1

declare dso_local i32 @slb_insert_user(%struct.TYPE_8__*, %struct.slb*) #1

declare dso_local i32 @PMAP_UNLOCK(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
