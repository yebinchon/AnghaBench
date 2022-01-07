; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/linux_lvm/extr_g_linux_lvm.c_g_llvm_read_label.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/linux_lvm/extr_g_linux_lvm.c_g_llvm_read_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_consumer = type { %struct.g_provider* }
%struct.g_provider = type { i32, i32 }
%struct.g_llvm_label = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"Cannot read metadata from %s (error=%d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @g_llvm_read_label(%struct.g_consumer* %0, %struct.g_llvm_label* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.g_consumer*, align 8
  %5 = alloca %struct.g_llvm_label*, align 8
  %6 = alloca %struct.g_provider*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.g_consumer* %0, %struct.g_consumer** %4, align 8
  store %struct.g_llvm_label* %1, %struct.g_llvm_label** %5, align 8
  store i32 0, i32* %9, align 4
  %10 = call i32 (...) @g_topology_assert()
  %11 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %12 = call i32 @g_access(%struct.g_consumer* %11, i32 1, i32 0, i32 0)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* %3, align 4
  br label %67

17:                                               ; preds = %2
  %18 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %19 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %18, i32 0, i32 0
  %20 = load %struct.g_provider*, %struct.g_provider** %19, align 8
  store %struct.g_provider* %20, %struct.g_provider** %6, align 8
  %21 = call i32 (...) @g_topology_unlock()
  %22 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %23 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %24 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 %25, 4
  %27 = call i32* @g_read_data(%struct.g_consumer* %22, i32 0, i32 %26, i32* %9)
  store i32* %27, i32** %7, align 8
  %28 = call i32 (...) @g_topology_lock()
  %29 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %30 = call i32 @g_access(%struct.g_consumer* %29, i32 -1, i32 0, i32 0)
  %31 = load i32*, i32** %7, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %17
  %34 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %35 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @G_LLVM_DEBUG(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %37)
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %3, align 4
  br label %67

40:                                               ; preds = %17
  store i32 0, i32* %8, align 4
  br label %41

41:                                               ; preds = %60, %40
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %42, 4
  br i1 %43, label %44, label %63

44:                                               ; preds = %41
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %48 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = mul nsw i32 %46, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %45, i64 %51
  %53 = load %struct.g_llvm_label*, %struct.g_llvm_label** %5, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @llvm_label_decode(i32* %52, %struct.g_llvm_label* %53, i32 %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %44
  br label %63

59:                                               ; preds = %44
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %8, align 4
  br label %41

63:                                               ; preds = %58, %41
  %64 = load i32*, i32** %7, align 8
  %65 = call i32 @g_free(i32* %64)
  %66 = load i32, i32* %9, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %63, %33, %15
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local i32 @g_access(%struct.g_consumer*, i32, i32, i32) #1

declare dso_local i32 @g_topology_unlock(...) #1

declare dso_local i32* @g_read_data(%struct.g_consumer*, i32, i32, i32*) #1

declare dso_local i32 @g_topology_lock(...) #1

declare dso_local i32 @G_LLVM_DEBUG(i32, i8*, i32, i32) #1

declare dso_local i32 @llvm_label_decode(i32*, %struct.g_llvm_label*, i32) #1

declare dso_local i32 @g_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
