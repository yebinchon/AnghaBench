; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_proxy.c_RuleAdd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_proxy.c_RuleAdd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libalias = type { %struct.proxy_entry* }
%struct.proxy_entry = type { i32, %struct.proxy_entry*, %struct.proxy_entry*, %struct.libalias* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RuleAdd(%struct.libalias* %0, %struct.proxy_entry* %1) #0 {
  %3 = alloca %struct.libalias*, align 8
  %4 = alloca %struct.proxy_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.proxy_entry*, align 8
  %7 = alloca %struct.proxy_entry*, align 8
  store %struct.libalias* %0, %struct.libalias** %3, align 8
  store %struct.proxy_entry* %1, %struct.proxy_entry** %4, align 8
  %8 = load %struct.libalias*, %struct.libalias** %3, align 8
  %9 = call i32 @LIBALIAS_LOCK_ASSERT(%struct.libalias* %8)
  %10 = load %struct.libalias*, %struct.libalias** %3, align 8
  %11 = load %struct.proxy_entry*, %struct.proxy_entry** %4, align 8
  %12 = getelementptr inbounds %struct.proxy_entry, %struct.proxy_entry* %11, i32 0, i32 3
  store %struct.libalias* %10, %struct.libalias** %12, align 8
  %13 = load %struct.libalias*, %struct.libalias** %3, align 8
  %14 = getelementptr inbounds %struct.libalias, %struct.libalias* %13, i32 0, i32 0
  %15 = load %struct.proxy_entry*, %struct.proxy_entry** %14, align 8
  %16 = icmp eq %struct.proxy_entry* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = load %struct.proxy_entry*, %struct.proxy_entry** %4, align 8
  %19 = load %struct.libalias*, %struct.libalias** %3, align 8
  %20 = getelementptr inbounds %struct.libalias, %struct.libalias* %19, i32 0, i32 0
  store %struct.proxy_entry* %18, %struct.proxy_entry** %20, align 8
  %21 = load %struct.proxy_entry*, %struct.proxy_entry** %4, align 8
  %22 = getelementptr inbounds %struct.proxy_entry, %struct.proxy_entry* %21, i32 0, i32 2
  store %struct.proxy_entry* null, %struct.proxy_entry** %22, align 8
  %23 = load %struct.proxy_entry*, %struct.proxy_entry** %4, align 8
  %24 = getelementptr inbounds %struct.proxy_entry, %struct.proxy_entry* %23, i32 0, i32 1
  store %struct.proxy_entry* null, %struct.proxy_entry** %24, align 8
  br label %89

25:                                               ; preds = %2
  %26 = load %struct.proxy_entry*, %struct.proxy_entry** %4, align 8
  %27 = getelementptr inbounds %struct.proxy_entry, %struct.proxy_entry* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %5, align 4
  %29 = load %struct.libalias*, %struct.libalias** %3, align 8
  %30 = getelementptr inbounds %struct.libalias, %struct.libalias* %29, i32 0, i32 0
  %31 = load %struct.proxy_entry*, %struct.proxy_entry** %30, align 8
  store %struct.proxy_entry* %31, %struct.proxy_entry** %6, align 8
  store %struct.proxy_entry* null, %struct.proxy_entry** %7, align 8
  br label %32

32:                                               ; preds = %75, %25
  %33 = load %struct.proxy_entry*, %struct.proxy_entry** %6, align 8
  %34 = icmp ne %struct.proxy_entry* %33, null
  br i1 %34, label %35, label %80

35:                                               ; preds = %32
  %36 = load %struct.proxy_entry*, %struct.proxy_entry** %6, align 8
  %37 = getelementptr inbounds %struct.proxy_entry, %struct.proxy_entry* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = icmp sge i32 %38, %39
  br i1 %40, label %41, label %75

41:                                               ; preds = %35
  %42 = load %struct.proxy_entry*, %struct.proxy_entry** %7, align 8
  %43 = icmp eq %struct.proxy_entry* %42, null
  br i1 %43, label %44, label %60

44:                                               ; preds = %41
  %45 = load %struct.libalias*, %struct.libalias** %3, align 8
  %46 = getelementptr inbounds %struct.libalias, %struct.libalias* %45, i32 0, i32 0
  %47 = load %struct.proxy_entry*, %struct.proxy_entry** %46, align 8
  %48 = load %struct.proxy_entry*, %struct.proxy_entry** %4, align 8
  %49 = getelementptr inbounds %struct.proxy_entry, %struct.proxy_entry* %48, i32 0, i32 1
  store %struct.proxy_entry* %47, %struct.proxy_entry** %49, align 8
  %50 = load %struct.proxy_entry*, %struct.proxy_entry** %4, align 8
  %51 = getelementptr inbounds %struct.proxy_entry, %struct.proxy_entry* %50, i32 0, i32 2
  store %struct.proxy_entry* null, %struct.proxy_entry** %51, align 8
  %52 = load %struct.proxy_entry*, %struct.proxy_entry** %4, align 8
  %53 = load %struct.libalias*, %struct.libalias** %3, align 8
  %54 = getelementptr inbounds %struct.libalias, %struct.libalias* %53, i32 0, i32 0
  %55 = load %struct.proxy_entry*, %struct.proxy_entry** %54, align 8
  %56 = getelementptr inbounds %struct.proxy_entry, %struct.proxy_entry* %55, i32 0, i32 2
  store %struct.proxy_entry* %52, %struct.proxy_entry** %56, align 8
  %57 = load %struct.proxy_entry*, %struct.proxy_entry** %4, align 8
  %58 = load %struct.libalias*, %struct.libalias** %3, align 8
  %59 = getelementptr inbounds %struct.libalias, %struct.libalias* %58, i32 0, i32 0
  store %struct.proxy_entry* %57, %struct.proxy_entry** %59, align 8
  br label %89

60:                                               ; preds = %41
  %61 = load %struct.proxy_entry*, %struct.proxy_entry** %4, align 8
  %62 = load %struct.proxy_entry*, %struct.proxy_entry** %7, align 8
  %63 = getelementptr inbounds %struct.proxy_entry, %struct.proxy_entry* %62, i32 0, i32 1
  store %struct.proxy_entry* %61, %struct.proxy_entry** %63, align 8
  %64 = load %struct.proxy_entry*, %struct.proxy_entry** %4, align 8
  %65 = load %struct.proxy_entry*, %struct.proxy_entry** %6, align 8
  %66 = getelementptr inbounds %struct.proxy_entry, %struct.proxy_entry* %65, i32 0, i32 2
  store %struct.proxy_entry* %64, %struct.proxy_entry** %66, align 8
  %67 = load %struct.proxy_entry*, %struct.proxy_entry** %6, align 8
  %68 = getelementptr inbounds %struct.proxy_entry, %struct.proxy_entry* %67, i32 0, i32 2
  %69 = load %struct.proxy_entry*, %struct.proxy_entry** %68, align 8
  %70 = load %struct.proxy_entry*, %struct.proxy_entry** %4, align 8
  %71 = getelementptr inbounds %struct.proxy_entry, %struct.proxy_entry* %70, i32 0, i32 2
  store %struct.proxy_entry* %69, %struct.proxy_entry** %71, align 8
  %72 = load %struct.proxy_entry*, %struct.proxy_entry** %6, align 8
  %73 = load %struct.proxy_entry*, %struct.proxy_entry** %4, align 8
  %74 = getelementptr inbounds %struct.proxy_entry, %struct.proxy_entry* %73, i32 0, i32 1
  store %struct.proxy_entry* %72, %struct.proxy_entry** %74, align 8
  br label %89

75:                                               ; preds = %35
  %76 = load %struct.proxy_entry*, %struct.proxy_entry** %6, align 8
  store %struct.proxy_entry* %76, %struct.proxy_entry** %7, align 8
  %77 = load %struct.proxy_entry*, %struct.proxy_entry** %6, align 8
  %78 = getelementptr inbounds %struct.proxy_entry, %struct.proxy_entry* %77, i32 0, i32 1
  %79 = load %struct.proxy_entry*, %struct.proxy_entry** %78, align 8
  store %struct.proxy_entry* %79, %struct.proxy_entry** %6, align 8
  br label %32

80:                                               ; preds = %32
  %81 = load %struct.proxy_entry*, %struct.proxy_entry** %4, align 8
  %82 = load %struct.proxy_entry*, %struct.proxy_entry** %7, align 8
  %83 = getelementptr inbounds %struct.proxy_entry, %struct.proxy_entry* %82, i32 0, i32 1
  store %struct.proxy_entry* %81, %struct.proxy_entry** %83, align 8
  %84 = load %struct.proxy_entry*, %struct.proxy_entry** %7, align 8
  %85 = load %struct.proxy_entry*, %struct.proxy_entry** %4, align 8
  %86 = getelementptr inbounds %struct.proxy_entry, %struct.proxy_entry* %85, i32 0, i32 2
  store %struct.proxy_entry* %84, %struct.proxy_entry** %86, align 8
  %87 = load %struct.proxy_entry*, %struct.proxy_entry** %4, align 8
  %88 = getelementptr inbounds %struct.proxy_entry, %struct.proxy_entry* %87, i32 0, i32 1
  store %struct.proxy_entry* null, %struct.proxy_entry** %88, align 8
  br label %89

89:                                               ; preds = %80, %60, %44, %17
  ret void
}

declare dso_local i32 @LIBALIAS_LOCK_ASSERT(%struct.libalias*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
