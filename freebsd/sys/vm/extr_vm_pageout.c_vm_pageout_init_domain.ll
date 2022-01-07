; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_pageout.c_vm_pageout_init_domain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_pageout.c_vm_pageout_init_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_domain = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.sysctl_oid* }
%struct.sysctl_oid = type { i32 }

@MAXBSIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@vm_pageout_page_count = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@VM_INACT_SCAN_RATE = common dso_local global i32 0, align 4
@PIDCTRL_BOUND = common dso_local global i32 0, align 4
@PIDCTRL_KPD = common dso_local global i32 0, align 4
@PIDCTRL_KID = common dso_local global i32 0, align 4
@PIDCTRL_KDD = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"pidctrl\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @vm_pageout_init_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vm_pageout_init_domain(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vm_domain*, align 8
  %4 = alloca %struct.sysctl_oid*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.vm_domain* @VM_DOMAIN(i32 %5)
  store %struct.vm_domain* %6, %struct.vm_domain** %3, align 8
  %7 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %8 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %7, i32 0, i32 0
  store i32 2, i32* %8, align 8
  %9 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %10 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp sgt i32 %11, 1024
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  %14 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %15 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = sub nsw i32 %16, 1024
  %18 = sdiv i32 %17, 200
  %19 = add nsw i32 4, %18
  %20 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %21 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  br label %25

22:                                               ; preds = %1
  %23 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %24 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %23, i32 0, i32 2
  store i32 4, i32* %24, align 8
  br label %25

25:                                               ; preds = %22, %13
  %26 = load i32, i32* @MAXBSIZE, align 4
  %27 = mul nsw i32 2, %26
  %28 = load i32, i32* @PAGE_SIZE, align 4
  %29 = sdiv i32 %27, %28
  %30 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %31 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %29, %32
  %34 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %35 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @vm_pageout_page_count, align 4
  %37 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %38 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %36, %39
  %41 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %42 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sdiv i32 %43, 768
  %45 = add nsw i32 %40, %44
  %46 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %47 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 8
  %48 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %49 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = sdiv i32 %50, 2
  %52 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %53 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %52, i32 0, i32 5
  store i32 %51, i32* %53, align 4
  %54 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %55 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = mul nsw i32 4, %56
  %58 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %59 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %57, %60
  %62 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %63 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %62, i32 0, i32 6
  store i32 %61, i32* %63, align 8
  %64 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %65 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %68 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, %66
  store i32 %70, i32* %68, align 8
  %71 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %72 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %75 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, %73
  store i32 %77, i32* %75, align 4
  %78 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %79 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 8
  %81 = mul nsw i32 3, %80
  %82 = sdiv i32 %81, 2
  %83 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %84 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %83, i32 0, i32 7
  store i32 %82, i32* %84, align 4
  %85 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %86 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %85, i32 0, i32 7
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %89 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %88, i32 0, i32 8
  %90 = load i32, i32* %89, align 8
  %91 = sdiv i32 %90, 3
  %92 = icmp sgt i32 %87, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %25
  %94 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %95 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %94, i32 0, i32 8
  %96 = load i32, i32* %95, align 8
  %97 = sdiv i32 %96, 3
  %98 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %99 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %98, i32 0, i32 7
  store i32 %97, i32* %99, align 4
  br label %100

100:                                              ; preds = %93, %25
  %101 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %102 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 8
  %104 = sdiv i32 %103, 10
  %105 = mul nsw i32 %104, 9
  %106 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %107 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %106, i32 0, i32 9
  store i32 %105, i32* %107, align 4
  %108 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %109 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %108, i32 0, i32 6
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %112 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = sub nsw i32 %110, %113
  %115 = sdiv i32 %114, 10
  %116 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %117 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %116, i32 0, i32 10
  store i32 %115, i32* %117, align 8
  %118 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %119 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %118, i32 0, i32 11
  %120 = load i32, i32* @hz, align 4
  %121 = load i32, i32* @VM_INACT_SCAN_RATE, align 4
  %122 = sdiv i32 %120, %121
  %123 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %124 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %123, i32 0, i32 6
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @PIDCTRL_BOUND, align 4
  %127 = load i32, i32* @PIDCTRL_KPD, align 4
  %128 = load i32, i32* @PIDCTRL_KID, align 4
  %129 = load i32, i32* @PIDCTRL_KDD, align 4
  %130 = call i32 @pidctrl_init(i32* %119, i32 %122, i32 %125, i32 %126, i32 %127, i32 %128, i32 %129)
  %131 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %132 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %131, i32 0, i32 12
  %133 = load %struct.sysctl_oid*, %struct.sysctl_oid** %132, align 8
  %134 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %133)
  %135 = load i32, i32* @OID_AUTO, align 4
  %136 = load i32, i32* @CTLFLAG_RD, align 4
  %137 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(i32* null, i32 %134, i32 %135, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %136, i32* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store %struct.sysctl_oid* %137, %struct.sysctl_oid** %4, align 8
  %138 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %139 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %138, i32 0, i32 11
  %140 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %141 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %140)
  %142 = call i32 @pidctrl_init_sysctl(i32* %139, i32 %141)
  ret void
}

declare dso_local %struct.vm_domain* @VM_DOMAIN(i32) #1

declare dso_local i32 @pidctrl_init(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.sysctl_oid* @SYSCTL_ADD_NODE(i32*, i32, i32, i8*, i32, i32*, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i32 @pidctrl_init_sysctl(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
