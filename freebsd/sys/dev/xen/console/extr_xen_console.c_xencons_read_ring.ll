; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/console/extr_xen_console.c_xencons_read_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/console/extr_xen_console.c_xencons_read_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xencons_priv = type { %struct.xencons_interface* }
%struct.xencons_interface = type { i64, i64, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xencons_priv*, i8*, i32)* @xencons_read_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xencons_read_ring(%struct.xencons_priv* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.xencons_priv*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.xencons_interface*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.xencons_priv* %0, %struct.xencons_priv** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.xencons_priv*, %struct.xencons_priv** %4, align 8
  %12 = getelementptr inbounds %struct.xencons_priv, %struct.xencons_priv* %11, i32 0, i32 0
  %13 = load %struct.xencons_interface*, %struct.xencons_interface** %12, align 8
  store %struct.xencons_interface* %13, %struct.xencons_interface** %7, align 8
  %14 = load %struct.xencons_priv*, %struct.xencons_priv** %4, align 8
  %15 = call i32 @xencons_lock_assert(%struct.xencons_priv* %14)
  %16 = load %struct.xencons_interface*, %struct.xencons_interface** %7, align 8
  %17 = getelementptr inbounds %struct.xencons_interface, %struct.xencons_interface* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %8, align 8
  %19 = load %struct.xencons_interface*, %struct.xencons_interface** %7, align 8
  %20 = getelementptr inbounds %struct.xencons_interface, %struct.xencons_interface* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %9, align 8
  %22 = call i32 (...) @rmb()
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %47, %3
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %52

27:                                               ; preds = %23
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* %8, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %52

32:                                               ; preds = %27
  %33 = load %struct.xencons_interface*, %struct.xencons_interface** %7, align 8
  %34 = getelementptr inbounds %struct.xencons_interface, %struct.xencons_interface* %33, i32 0, i32 2
  %35 = load i8*, i8** %34, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load %struct.xencons_interface*, %struct.xencons_interface** %7, align 8
  %38 = getelementptr inbounds %struct.xencons_interface, %struct.xencons_interface* %37, i32 0, i32 2
  %39 = load i8*, i8** %38, align 8
  %40 = call i64 @MASK_XENCONS_IDX(i64 %36, i8* %39)
  %41 = getelementptr inbounds i8, i8* %35, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = load i8*, i8** %5, align 8
  %44 = load i32, i32* %10, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  store i8 %42, i8* %46, align 1
  br label %47

47:                                               ; preds = %32
  %48 = load i32, i32* %10, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %10, align 4
  %50 = load i64, i64* %8, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %8, align 8
  br label %23

52:                                               ; preds = %31, %23
  %53 = call i32 (...) @wmb()
  %54 = load i64, i64* %8, align 8
  %55 = load %struct.xencons_interface*, %struct.xencons_interface** %7, align 8
  %56 = getelementptr inbounds %struct.xencons_interface, %struct.xencons_interface* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load %struct.xencons_priv*, %struct.xencons_priv** %4, align 8
  %61 = call i32 @xencons_notify_ring(%struct.xencons_priv* %60)
  br label %62

62:                                               ; preds = %59, %52
  %63 = load i32, i32* %10, align 4
  ret i32 %63
}

declare dso_local i32 @xencons_lock_assert(%struct.xencons_priv*) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i64 @MASK_XENCONS_IDX(i64, i8*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @xencons_notify_ring(%struct.xencons_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
