; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_in_pcb.c_in_pcblbgroup_reorder.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_in_pcb.c_in_pcblbgroup_reorder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcblbgrouphead = type { i32 }
%struct.inpcblbgroup = type { i32, i32, i32* }

@INPCBLBGROUP_SIZMIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inpcblbgrouphead*, %struct.inpcblbgroup**, i32)* @in_pcblbgroup_reorder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @in_pcblbgroup_reorder(%struct.inpcblbgrouphead* %0, %struct.inpcblbgroup** %1, i32 %2) #0 {
  %4 = alloca %struct.inpcblbgrouphead*, align 8
  %5 = alloca %struct.inpcblbgroup**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.inpcblbgroup*, align 8
  %8 = alloca %struct.inpcblbgroup*, align 8
  store %struct.inpcblbgrouphead* %0, %struct.inpcblbgrouphead** %4, align 8
  store %struct.inpcblbgroup** %1, %struct.inpcblbgroup*** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.inpcblbgroup**, %struct.inpcblbgroup*** %5, align 8
  %10 = load %struct.inpcblbgroup*, %struct.inpcblbgroup** %9, align 8
  store %struct.inpcblbgroup* %10, %struct.inpcblbgroup** %7, align 8
  br label %11

11:                                               ; preds = %33, %3
  %12 = load i32, i32* %6, align 4
  %13 = add nsw i32 %12, 1
  %14 = load %struct.inpcblbgroup*, %struct.inpcblbgroup** %7, align 8
  %15 = getelementptr inbounds %struct.inpcblbgroup, %struct.inpcblbgroup* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %36

18:                                               ; preds = %11
  %19 = load %struct.inpcblbgroup*, %struct.inpcblbgroup** %7, align 8
  %20 = getelementptr inbounds %struct.inpcblbgroup, %struct.inpcblbgroup* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.inpcblbgroup*, %struct.inpcblbgroup** %7, align 8
  %28 = getelementptr inbounds %struct.inpcblbgroup, %struct.inpcblbgroup* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  store i32 %26, i32* %32, align 4
  br label %33

33:                                               ; preds = %18
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %11

36:                                               ; preds = %11
  %37 = load %struct.inpcblbgroup*, %struct.inpcblbgroup** %7, align 8
  %38 = getelementptr inbounds %struct.inpcblbgroup, %struct.inpcblbgroup* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %38, align 8
  %41 = load %struct.inpcblbgroup*, %struct.inpcblbgroup** %7, align 8
  %42 = getelementptr inbounds %struct.inpcblbgroup, %struct.inpcblbgroup* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @INPCBLBGROUP_SIZMIN, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %69

46:                                               ; preds = %36
  %47 = load %struct.inpcblbgroup*, %struct.inpcblbgroup** %7, align 8
  %48 = getelementptr inbounds %struct.inpcblbgroup, %struct.inpcblbgroup* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.inpcblbgroup*, %struct.inpcblbgroup** %7, align 8
  %51 = getelementptr inbounds %struct.inpcblbgroup, %struct.inpcblbgroup* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = sdiv i32 %52, 4
  %54 = icmp sle i32 %49, %53
  br i1 %54, label %55, label %69

55:                                               ; preds = %46
  %56 = load %struct.inpcblbgrouphead*, %struct.inpcblbgrouphead** %4, align 8
  %57 = load %struct.inpcblbgroup*, %struct.inpcblbgroup** %7, align 8
  %58 = load %struct.inpcblbgroup*, %struct.inpcblbgroup** %7, align 8
  %59 = getelementptr inbounds %struct.inpcblbgroup, %struct.inpcblbgroup* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = sdiv i32 %60, 2
  %62 = call %struct.inpcblbgroup* @in_pcblbgroup_resize(%struct.inpcblbgrouphead* %56, %struct.inpcblbgroup* %57, i32 %61)
  store %struct.inpcblbgroup* %62, %struct.inpcblbgroup** %8, align 8
  %63 = load %struct.inpcblbgroup*, %struct.inpcblbgroup** %8, align 8
  %64 = icmp ne %struct.inpcblbgroup* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %55
  %66 = load %struct.inpcblbgroup*, %struct.inpcblbgroup** %8, align 8
  %67 = load %struct.inpcblbgroup**, %struct.inpcblbgroup*** %5, align 8
  store %struct.inpcblbgroup* %66, %struct.inpcblbgroup** %67, align 8
  br label %68

68:                                               ; preds = %65, %55
  br label %69

69:                                               ; preds = %68, %46, %36
  ret void
}

declare dso_local %struct.inpcblbgroup* @in_pcblbgroup_resize(%struct.inpcblbgrouphead*, %struct.inpcblbgroup*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
