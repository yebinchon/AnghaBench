; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_in_pcbgroup.c_in_pcbgroup_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_in_pcbgroup.c_in_pcbgroup_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcbinfo = type { i64, i64, %struct.inpcbgroup*, i32, i32, i32 }
%struct.inpcbgroup = type { i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"in_pcbinfo_destroy: listhead not empty\00", align 1
@M_PCB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @in_pcbgroup_destroy(%struct.inpcbinfo* %0) #0 {
  %2 = alloca %struct.inpcbinfo*, align 8
  %3 = alloca %struct.inpcbgroup*, align 8
  %4 = alloca i64, align 8
  store %struct.inpcbinfo* %0, %struct.inpcbinfo** %2, align 8
  %5 = load %struct.inpcbinfo*, %struct.inpcbinfo** %2, align 8
  %6 = getelementptr inbounds %struct.inpcbinfo, %struct.inpcbinfo* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %61

10:                                               ; preds = %1
  store i64 0, i64* %4, align 8
  br label %11

11:                                               ; preds = %38, %10
  %12 = load i64, i64* %4, align 8
  %13 = load %struct.inpcbinfo*, %struct.inpcbinfo** %2, align 8
  %14 = getelementptr inbounds %struct.inpcbinfo, %struct.inpcbinfo* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %12, %15
  br i1 %16, label %17, label %41

17:                                               ; preds = %11
  %18 = load %struct.inpcbinfo*, %struct.inpcbinfo** %2, align 8
  %19 = getelementptr inbounds %struct.inpcbinfo, %struct.inpcbinfo* %18, i32 0, i32 2
  %20 = load %struct.inpcbgroup*, %struct.inpcbgroup** %19, align 8
  %21 = load i64, i64* %4, align 8
  %22 = getelementptr inbounds %struct.inpcbgroup, %struct.inpcbgroup* %20, i64 %21
  store %struct.inpcbgroup* %22, %struct.inpcbgroup** %3, align 8
  %23 = load %struct.inpcbinfo*, %struct.inpcbinfo** %2, align 8
  %24 = getelementptr inbounds %struct.inpcbinfo, %struct.inpcbinfo* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @CK_LIST_EMPTY(i32 %25)
  %27 = call i32 @KASSERT(i32 %26, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.inpcbgroup*, %struct.inpcbgroup** %3, align 8
  %29 = call i32 @INP_GROUP_LOCK_DESTROY(%struct.inpcbgroup* %28)
  %30 = load %struct.inpcbgroup*, %struct.inpcbgroup** %3, align 8
  %31 = getelementptr inbounds %struct.inpcbgroup, %struct.inpcbgroup* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @M_PCB, align 4
  %34 = load %struct.inpcbgroup*, %struct.inpcbgroup** %3, align 8
  %35 = getelementptr inbounds %struct.inpcbgroup, %struct.inpcbgroup* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @hashdestroy(i32 %32, i32 %33, i32 %36)
  br label %38

38:                                               ; preds = %17
  %39 = load i64, i64* %4, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %4, align 8
  br label %11

41:                                               ; preds = %11
  %42 = load %struct.inpcbinfo*, %struct.inpcbinfo** %2, align 8
  %43 = getelementptr inbounds %struct.inpcbinfo, %struct.inpcbinfo* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @M_PCB, align 4
  %46 = load %struct.inpcbinfo*, %struct.inpcbinfo** %2, align 8
  %47 = getelementptr inbounds %struct.inpcbinfo, %struct.inpcbinfo* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @hashdestroy(i32 %44, i32 %45, i32 %48)
  %50 = load %struct.inpcbinfo*, %struct.inpcbinfo** %2, align 8
  %51 = getelementptr inbounds %struct.inpcbinfo, %struct.inpcbinfo* %50, i32 0, i32 2
  %52 = load %struct.inpcbgroup*, %struct.inpcbgroup** %51, align 8
  %53 = load i32, i32* @M_PCB, align 4
  %54 = call i32 @free(%struct.inpcbgroup* %52, i32 %53)
  %55 = load %struct.inpcbinfo*, %struct.inpcbinfo** %2, align 8
  %56 = getelementptr inbounds %struct.inpcbinfo, %struct.inpcbinfo* %55, i32 0, i32 2
  store %struct.inpcbgroup* null, %struct.inpcbgroup** %56, align 8
  %57 = load %struct.inpcbinfo*, %struct.inpcbinfo** %2, align 8
  %58 = getelementptr inbounds %struct.inpcbinfo, %struct.inpcbinfo* %57, i32 0, i32 0
  store i64 0, i64* %58, align 8
  %59 = load %struct.inpcbinfo*, %struct.inpcbinfo** %2, align 8
  %60 = getelementptr inbounds %struct.inpcbinfo, %struct.inpcbinfo* %59, i32 0, i32 1
  store i64 0, i64* %60, align 8
  br label %61

61:                                               ; preds = %41, %9
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @CK_LIST_EMPTY(i32) #1

declare dso_local i32 @INP_GROUP_LOCK_DESTROY(%struct.inpcbgroup*) #1

declare dso_local i32 @hashdestroy(i32, i32, i32) #1

declare dso_local i32 @free(%struct.inpcbgroup*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
