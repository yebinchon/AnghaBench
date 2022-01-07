; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/console/extr_xen_console.c_xencons_write_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/console/extr_xen_console.c_xencons_write_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xencons_priv = type { %struct.xencons_interface* }
%struct.xencons_interface = type { i32, i32, i8* }

@.str = private unnamed_addr constant [31 x i8] c"console send ring inconsistent\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xencons_priv*, i8*, i32)* @xencons_write_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xencons_write_ring(%struct.xencons_priv* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.xencons_priv*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.xencons_interface*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
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
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %8, align 4
  %19 = load %struct.xencons_interface*, %struct.xencons_interface** %7, align 8
  %20 = getelementptr inbounds %struct.xencons_interface, %struct.xencons_interface* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %9, align 4
  %22 = call i32 (...) @mb()
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %8, align 4
  %25 = sub nsw i32 %23, %24
  %26 = sext i32 %25 to i64
  %27 = icmp ule i64 %26, 8
  %28 = zext i1 %27 to i32
  %29 = call i32 @KASSERT(i32 %28, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %30

30:                                               ; preds = %56, %3
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %61

34:                                               ; preds = %30
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %8, align 4
  %37 = sub nsw i32 %35, %36
  %38 = sext i32 %37 to i64
  %39 = icmp uge i64 %38, 8
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %61

41:                                               ; preds = %34
  %42 = load i8*, i8** %5, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = load %struct.xencons_interface*, %struct.xencons_interface** %7, align 8
  %48 = getelementptr inbounds %struct.xencons_interface, %struct.xencons_interface* %47, i32 0, i32 2
  %49 = load i8*, i8** %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.xencons_interface*, %struct.xencons_interface** %7, align 8
  %52 = getelementptr inbounds %struct.xencons_interface, %struct.xencons_interface* %51, i32 0, i32 2
  %53 = load i8*, i8** %52, align 8
  %54 = call i64 @MASK_XENCONS_IDX(i32 %50, i8* %53)
  %55 = getelementptr inbounds i8, i8* %49, i64 %54
  store i8 %46, i8* %55, align 1
  br label %56

56:                                               ; preds = %41
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %9, align 4
  br label %30

61:                                               ; preds = %40, %30
  %62 = call i32 (...) @wmb()
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.xencons_interface*, %struct.xencons_interface** %7, align 8
  %65 = getelementptr inbounds %struct.xencons_interface, %struct.xencons_interface* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.xencons_priv*, %struct.xencons_priv** %4, align 8
  %67 = call i32 @xencons_notify_ring(%struct.xencons_priv* %66)
  %68 = load i32, i32* %10, align 4
  ret i32 %68
}

declare dso_local i32 @xencons_lock_assert(%struct.xencons_priv*) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @MASK_XENCONS_IDX(i32, i8*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @xencons_notify_ring(%struct.xencons_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
