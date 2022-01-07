; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_in_pcb.c_in_pcblbgroup_resize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_in_pcb.c_in_pcblbgroup_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcblbgrouphead = type { i32 }
%struct.inpcblbgroup = type { i32, i32, i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [61 x i8] c"invalid new local group size %d and old local group count %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inpcblbgroup* (%struct.inpcblbgrouphead*, %struct.inpcblbgroup*, i32)* @in_pcblbgroup_resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inpcblbgroup* @in_pcblbgroup_resize(%struct.inpcblbgrouphead* %0, %struct.inpcblbgroup* %1, i32 %2) #0 {
  %4 = alloca %struct.inpcblbgroup*, align 8
  %5 = alloca %struct.inpcblbgrouphead*, align 8
  %6 = alloca %struct.inpcblbgroup*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inpcblbgroup*, align 8
  %9 = alloca i32, align 4
  store %struct.inpcblbgrouphead* %0, %struct.inpcblbgrouphead** %5, align 8
  store %struct.inpcblbgroup* %1, %struct.inpcblbgroup** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.inpcblbgrouphead*, %struct.inpcblbgrouphead** %5, align 8
  %11 = load %struct.inpcblbgroup*, %struct.inpcblbgroup** %6, align 8
  %12 = getelementptr inbounds %struct.inpcblbgroup, %struct.inpcblbgroup* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.inpcblbgroup*, %struct.inpcblbgroup** %6, align 8
  %15 = getelementptr inbounds %struct.inpcblbgroup, %struct.inpcblbgroup* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.inpcblbgroup*, %struct.inpcblbgroup** %6, align 8
  %18 = getelementptr inbounds %struct.inpcblbgroup, %struct.inpcblbgroup* %17, i32 0, i32 3
  %19 = load i32, i32* %7, align 4
  %20 = call %struct.inpcblbgroup* @in_pcblbgroup_alloc(%struct.inpcblbgrouphead* %10, i32 %13, i32 %16, i32* %18, i32 %19)
  store %struct.inpcblbgroup* %20, %struct.inpcblbgroup** %8, align 8
  %21 = load %struct.inpcblbgroup*, %struct.inpcblbgroup** %8, align 8
  %22 = icmp eq %struct.inpcblbgroup* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store %struct.inpcblbgroup* null, %struct.inpcblbgroup** %4, align 8
  br label %74

24:                                               ; preds = %3
  %25 = load %struct.inpcblbgroup*, %struct.inpcblbgroup** %6, align 8
  %26 = getelementptr inbounds %struct.inpcblbgroup, %struct.inpcblbgroup* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.inpcblbgroup*, %struct.inpcblbgroup** %8, align 8
  %29 = getelementptr inbounds %struct.inpcblbgroup, %struct.inpcblbgroup* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %27, %30
  %32 = zext i1 %31 to i32
  %33 = load %struct.inpcblbgroup*, %struct.inpcblbgroup** %8, align 8
  %34 = getelementptr inbounds %struct.inpcblbgroup, %struct.inpcblbgroup* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.inpcblbgroup*, %struct.inpcblbgroup** %6, align 8
  %37 = getelementptr inbounds %struct.inpcblbgroup, %struct.inpcblbgroup* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to i8*
  %41 = call i32 @KASSERT(i32 %32, i8* %40)
  store i32 0, i32* %9, align 4
  br label %42

42:                                               ; preds = %62, %24
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.inpcblbgroup*, %struct.inpcblbgroup** %6, align 8
  %45 = getelementptr inbounds %struct.inpcblbgroup, %struct.inpcblbgroup* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %65

48:                                               ; preds = %42
  %49 = load %struct.inpcblbgroup*, %struct.inpcblbgroup** %6, align 8
  %50 = getelementptr inbounds %struct.inpcblbgroup, %struct.inpcblbgroup* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.inpcblbgroup*, %struct.inpcblbgroup** %8, align 8
  %57 = getelementptr inbounds %struct.inpcblbgroup, %struct.inpcblbgroup* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  store i32 %55, i32* %61, align 4
  br label %62

62:                                               ; preds = %48
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %9, align 4
  br label %42

65:                                               ; preds = %42
  %66 = load %struct.inpcblbgroup*, %struct.inpcblbgroup** %6, align 8
  %67 = getelementptr inbounds %struct.inpcblbgroup, %struct.inpcblbgroup* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.inpcblbgroup*, %struct.inpcblbgroup** %8, align 8
  %70 = getelementptr inbounds %struct.inpcblbgroup, %struct.inpcblbgroup* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.inpcblbgroup*, %struct.inpcblbgroup** %6, align 8
  %72 = call i32 @in_pcblbgroup_free(%struct.inpcblbgroup* %71)
  %73 = load %struct.inpcblbgroup*, %struct.inpcblbgroup** %8, align 8
  store %struct.inpcblbgroup* %73, %struct.inpcblbgroup** %4, align 8
  br label %74

74:                                               ; preds = %65, %23
  %75 = load %struct.inpcblbgroup*, %struct.inpcblbgroup** %4, align 8
  ret %struct.inpcblbgroup* %75
}

declare dso_local %struct.inpcblbgroup* @in_pcblbgroup_alloc(%struct.inpcblbgrouphead*, i32, i32, i32*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @in_pcblbgroup_free(%struct.inpcblbgroup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
