; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_cpuset.c_domainset_empty_vm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_cpuset.c_domainset_empty_vm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domainset = type { i32*, i64, i32, i32, i32 }

@vm_ndomains = common dso_local global i32 0, align 4
@DOMAINSET_POLICY_PREFER = common dso_local global i64 0, align 8
@DOMAINSET_POLICY_ROUNDROBIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.domainset*)* @domainset_empty_vm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @domainset_empty_vm(%struct.domainset* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.domainset*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.domainset* %0, %struct.domainset** %3, align 8
  %7 = call i32 @DOMAINSET_ZERO(i32* %4)
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %20, %1
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @vm_ndomains, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %23

12:                                               ; preds = %8
  %13 = load i32, i32* %5, align 4
  %14 = call i64 @VM_DOMAIN_EMPTY(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @DOMAINSET_SET(i32 %17, i32* %4)
  br label %19

19:                                               ; preds = %16, %12
  br label %20

20:                                               ; preds = %19
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %5, align 4
  br label %8

23:                                               ; preds = %8
  %24 = load %struct.domainset*, %struct.domainset** %3, align 8
  %25 = getelementptr inbounds %struct.domainset, %struct.domainset* %24, i32 0, i32 3
  %26 = call i64 @DOMAINSET_SUBSET(i32* %4, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 1, i32* %2, align 4
  br label %82

29:                                               ; preds = %23
  %30 = load %struct.domainset*, %struct.domainset** %3, align 8
  %31 = getelementptr inbounds %struct.domainset, %struct.domainset* %30, i32 0, i32 3
  %32 = call i32 @DOMAINSET_NAND(i32* %31, i32* %4)
  %33 = load %struct.domainset*, %struct.domainset** %3, align 8
  %34 = getelementptr inbounds %struct.domainset, %struct.domainset* %33, i32 0, i32 3
  %35 = call i32 @DOMAINSET_COUNT(i32* %34)
  %36 = load %struct.domainset*, %struct.domainset** %3, align 8
  %37 = getelementptr inbounds %struct.domainset, %struct.domainset* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %60, %29
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.domainset*, %struct.domainset** %3, align 8
  %41 = getelementptr inbounds %struct.domainset, %struct.domainset* %40, i32 0, i32 3
  %42 = call i32 @DOMAINSET_FLS(i32* %41)
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %63

44:                                               ; preds = %38
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.domainset*, %struct.domainset** %3, align 8
  %47 = getelementptr inbounds %struct.domainset, %struct.domainset* %46, i32 0, i32 3
  %48 = call i64 @DOMAINSET_ISSET(i32 %45, i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %44
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.domainset*, %struct.domainset** %3, align 8
  %53 = getelementptr inbounds %struct.domainset, %struct.domainset* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i32, i32* %54, i64 %57
  store i32 %51, i32* %58, align 4
  br label %59

59:                                               ; preds = %50, %44
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %38

63:                                               ; preds = %38
  %64 = load %struct.domainset*, %struct.domainset** %3, align 8
  %65 = getelementptr inbounds %struct.domainset, %struct.domainset* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @DOMAINSET_POLICY_PREFER, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %81

69:                                               ; preds = %63
  %70 = load %struct.domainset*, %struct.domainset** %3, align 8
  %71 = getelementptr inbounds %struct.domainset, %struct.domainset* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @DOMAINSET_ISSET(i32 %72, i32* %4)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %69
  %76 = load i64, i64* @DOMAINSET_POLICY_ROUNDROBIN, align 8
  %77 = load %struct.domainset*, %struct.domainset** %3, align 8
  %78 = getelementptr inbounds %struct.domainset, %struct.domainset* %77, i32 0, i32 1
  store i64 %76, i64* %78, align 8
  %79 = load %struct.domainset*, %struct.domainset** %3, align 8
  %80 = getelementptr inbounds %struct.domainset, %struct.domainset* %79, i32 0, i32 2
  store i32 -1, i32* %80, align 8
  br label %81

81:                                               ; preds = %75, %69, %63
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %81, %28
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @DOMAINSET_ZERO(i32*) #1

declare dso_local i64 @VM_DOMAIN_EMPTY(i32) #1

declare dso_local i32 @DOMAINSET_SET(i32, i32*) #1

declare dso_local i64 @DOMAINSET_SUBSET(i32*, i32*) #1

declare dso_local i32 @DOMAINSET_NAND(i32*, i32*) #1

declare dso_local i32 @DOMAINSET_COUNT(i32*) #1

declare dso_local i32 @DOMAINSET_FLS(i32*) #1

declare dso_local i64 @DOMAINSET_ISSET(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
